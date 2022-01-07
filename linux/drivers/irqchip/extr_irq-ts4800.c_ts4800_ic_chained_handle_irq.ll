; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-ts4800.c_ts4800_ic_chained_handle_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-ts4800.c_ts4800_ic_chained_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.ts4800_irq_data = type { i32, i64 }
%struct.irq_chip = type { i32 }

@IRQ_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @ts4800_ic_chained_handle_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ts4800_ic_chained_handle_irq(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.ts4800_irq_data*, align 8
  %4 = alloca %struct.irq_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %8 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %9 = call %struct.ts4800_irq_data* @irq_desc_get_handler_data(%struct.irq_desc* %8)
  store %struct.ts4800_irq_data* %9, %struct.ts4800_irq_data** %3, align 8
  %10 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %11 = call %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* %10)
  store %struct.irq_chip* %11, %struct.irq_chip** %4, align 8
  %12 = load %struct.ts4800_irq_data*, %struct.ts4800_irq_data** %3, align 8
  %13 = getelementptr inbounds %struct.ts4800_irq_data, %struct.ts4800_irq_data* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @IRQ_STATUS, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readw(i64 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.irq_chip*, %struct.irq_chip** %4, align 8
  %19 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %20 = call i32 @chained_irq_enter(%struct.irq_chip* %18, %struct.irq_desc* %19)
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %28 = call i32 @handle_bad_irq(%struct.irq_desc* %27)
  br label %49

29:                                               ; preds = %1
  br label %30

30:                                               ; preds = %45, %29
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @__ffs(i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load %struct.ts4800_irq_data*, %struct.ts4800_irq_data** %3, align 8
  %34 = getelementptr inbounds %struct.ts4800_irq_data, %struct.ts4800_irq_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @irq_find_mapping(i32 %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %6, align 4
  %39 = shl i32 1, %38
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %5, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @generic_handle_irq(i32 %43)
  br label %45

45:                                               ; preds = %30
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %30, label %48

48:                                               ; preds = %45
  br label %49

49:                                               ; preds = %48, %26
  %50 = load %struct.irq_chip*, %struct.irq_chip** %4, align 8
  %51 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %52 = call i32 @chained_irq_exit(%struct.irq_chip* %50, %struct.irq_desc* %51)
  ret void
}

declare dso_local %struct.ts4800_irq_data* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc*) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @chained_irq_enter(%struct.irq_chip*, %struct.irq_desc*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @handle_bad_irq(%struct.irq_desc*) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @irq_find_mapping(i32, i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @chained_irq_exit(%struct.irq_chip*, %struct.irq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
