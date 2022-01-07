; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-goldfish-pic.c_goldfish_pic_cascade.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-goldfish-pic.c_goldfish_pic_cascade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.goldfish_pic_data = type { i32, i64 }
%struct.irq_chip = type { i32 }

@GFPIC_REG_IRQ_PENDING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @goldfish_pic_cascade to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goldfish_pic_cascade(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.goldfish_pic_data*, align 8
  %4 = alloca %struct.irq_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %8 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %9 = call %struct.goldfish_pic_data* @irq_desc_get_handler_data(%struct.irq_desc* %8)
  store %struct.goldfish_pic_data* %9, %struct.goldfish_pic_data** %3, align 8
  %10 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %11 = call %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* %10)
  store %struct.irq_chip* %11, %struct.irq_chip** %4, align 8
  %12 = load %struct.irq_chip*, %struct.irq_chip** %4, align 8
  %13 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %14 = call i32 @chained_irq_enter(%struct.irq_chip* %12, %struct.irq_desc* %13)
  %15 = load %struct.goldfish_pic_data*, %struct.goldfish_pic_data** %3, align 8
  %16 = getelementptr inbounds %struct.goldfish_pic_data, %struct.goldfish_pic_data* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @GFPIC_REG_IRQ_PENDING, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %24, %1
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @__fls(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.goldfish_pic_data*, %struct.goldfish_pic_data** %3, align 8
  %28 = getelementptr inbounds %struct.goldfish_pic_data, %struct.goldfish_pic_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @irq_linear_revmap(i32 %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @generic_handle_irq(i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = shl i32 1, %34
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %5, align 4
  br label %21

39:                                               ; preds = %21
  %40 = load %struct.irq_chip*, %struct.irq_chip** %4, align 8
  %41 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %42 = call i32 @chained_irq_exit(%struct.irq_chip* %40, %struct.irq_desc* %41)
  ret void
}

declare dso_local %struct.goldfish_pic_data* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc*) #1

declare dso_local i32 @chained_irq_enter(%struct.irq_chip*, %struct.irq_desc*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @__fls(i32) #1

declare dso_local i32 @irq_linear_revmap(i32, i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @chained_irq_exit(%struct.irq_chip*, %struct.irq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
