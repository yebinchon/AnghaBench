; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-s3c24xx.c_s3c_irq_unmask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-s3c24xx.c_s3c_irq_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.s3c_irq_data = type { i64, i32, %struct.s3c_irq_intc* }
%struct.s3c_irq_intc = type { i32, i32, %struct.s3c_irq_intc* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @s3c_irq_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c_irq_unmask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.s3c_irq_data*, align 8
  %4 = alloca %struct.s3c_irq_intc*, align 8
  %5 = alloca %struct.s3c_irq_intc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %9 = call %struct.s3c_irq_data* @irq_data_get_irq_chip_data(%struct.irq_data* %8)
  store %struct.s3c_irq_data* %9, %struct.s3c_irq_data** %3, align 8
  %10 = load %struct.s3c_irq_data*, %struct.s3c_irq_data** %3, align 8
  %11 = getelementptr inbounds %struct.s3c_irq_data, %struct.s3c_irq_data* %10, i32 0, i32 2
  %12 = load %struct.s3c_irq_intc*, %struct.s3c_irq_intc** %11, align 8
  store %struct.s3c_irq_intc* %12, %struct.s3c_irq_intc** %4, align 8
  %13 = load %struct.s3c_irq_intc*, %struct.s3c_irq_intc** %4, align 8
  %14 = getelementptr inbounds %struct.s3c_irq_intc, %struct.s3c_irq_intc* %13, i32 0, i32 2
  %15 = load %struct.s3c_irq_intc*, %struct.s3c_irq_intc** %14, align 8
  store %struct.s3c_irq_intc* %15, %struct.s3c_irq_intc** %5, align 8
  %16 = load %struct.s3c_irq_intc*, %struct.s3c_irq_intc** %4, align 8
  %17 = getelementptr inbounds %struct.s3c_irq_intc, %struct.s3c_irq_intc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @readl_relaxed(i32 %18)
  store i64 %19, i64* %6, align 8
  %20 = load %struct.s3c_irq_data*, %struct.s3c_irq_data** %3, align 8
  %21 = getelementptr inbounds %struct.s3c_irq_data, %struct.s3c_irq_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = shl i64 1, %22
  %24 = xor i64 %23, -1
  %25 = load i64, i64* %6, align 8
  %26 = and i64 %25, %24
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.s3c_irq_intc*, %struct.s3c_irq_intc** %4, align 8
  %29 = getelementptr inbounds %struct.s3c_irq_intc, %struct.s3c_irq_intc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @writel_relaxed(i64 %27, i32 %30)
  %32 = load %struct.s3c_irq_intc*, %struct.s3c_irq_intc** %5, align 8
  %33 = icmp ne %struct.s3c_irq_intc* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %1
  %35 = load %struct.s3c_irq_intc*, %struct.s3c_irq_intc** %5, align 8
  %36 = getelementptr inbounds %struct.s3c_irq_intc, %struct.s3c_irq_intc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.s3c_irq_data*, %struct.s3c_irq_data** %3, align 8
  %39 = getelementptr inbounds %struct.s3c_irq_data, %struct.s3c_irq_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @irq_find_mapping(i32 %37, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call %struct.irq_data* @irq_get_irq_data(i32 %42)
  call void @s3c_irq_unmask(%struct.irq_data* %43)
  br label %44

44:                                               ; preds = %34, %1
  ret void
}

declare dso_local %struct.s3c_irq_data* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i64 @readl_relaxed(i32) #1

declare dso_local i32 @writel_relaxed(i64, i32) #1

declare dso_local i32 @irq_find_mapping(i32, i32) #1

declare dso_local %struct.irq_data* @irq_get_irq_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
