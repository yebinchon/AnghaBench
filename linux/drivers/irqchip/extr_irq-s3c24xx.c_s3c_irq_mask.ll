; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-s3c24xx.c_s3c_irq_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-s3c24xx.c_s3c_irq_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.s3c_irq_data = type { i64, i64, i64, %struct.s3c_irq_intc* }
%struct.s3c_irq_intc = type { i32, %struct.s3c_irq_data*, i32, %struct.s3c_irq_intc* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @s3c_irq_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c_irq_mask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.s3c_irq_data*, align 8
  %4 = alloca %struct.s3c_irq_intc*, align 8
  %5 = alloca %struct.s3c_irq_intc*, align 8
  %6 = alloca %struct.s3c_irq_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %9 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %10 = call %struct.s3c_irq_data* @irq_data_get_irq_chip_data(%struct.irq_data* %9)
  store %struct.s3c_irq_data* %10, %struct.s3c_irq_data** %3, align 8
  %11 = load %struct.s3c_irq_data*, %struct.s3c_irq_data** %3, align 8
  %12 = getelementptr inbounds %struct.s3c_irq_data, %struct.s3c_irq_data* %11, i32 0, i32 3
  %13 = load %struct.s3c_irq_intc*, %struct.s3c_irq_intc** %12, align 8
  store %struct.s3c_irq_intc* %13, %struct.s3c_irq_intc** %4, align 8
  %14 = load %struct.s3c_irq_intc*, %struct.s3c_irq_intc** %4, align 8
  %15 = getelementptr inbounds %struct.s3c_irq_intc, %struct.s3c_irq_intc* %14, i32 0, i32 3
  %16 = load %struct.s3c_irq_intc*, %struct.s3c_irq_intc** %15, align 8
  store %struct.s3c_irq_intc* %16, %struct.s3c_irq_intc** %5, align 8
  %17 = load %struct.s3c_irq_intc*, %struct.s3c_irq_intc** %4, align 8
  %18 = getelementptr inbounds %struct.s3c_irq_intc, %struct.s3c_irq_intc* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @readl_relaxed(i32 %19)
  store i64 %20, i64* %7, align 8
  %21 = load %struct.s3c_irq_data*, %struct.s3c_irq_data** %3, align 8
  %22 = getelementptr inbounds %struct.s3c_irq_data, %struct.s3c_irq_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = shl i64 1, %23
  %25 = load i64, i64* %7, align 8
  %26 = or i64 %25, %24
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.s3c_irq_intc*, %struct.s3c_irq_intc** %4, align 8
  %29 = getelementptr inbounds %struct.s3c_irq_intc, %struct.s3c_irq_intc* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @writel_relaxed(i64 %27, i32 %30)
  %32 = load %struct.s3c_irq_intc*, %struct.s3c_irq_intc** %5, align 8
  %33 = icmp ne %struct.s3c_irq_intc* %32, null
  br i1 %33, label %34, label %62

34:                                               ; preds = %1
  %35 = load %struct.s3c_irq_intc*, %struct.s3c_irq_intc** %5, align 8
  %36 = getelementptr inbounds %struct.s3c_irq_intc, %struct.s3c_irq_intc* %35, i32 0, i32 1
  %37 = load %struct.s3c_irq_data*, %struct.s3c_irq_data** %36, align 8
  %38 = load %struct.s3c_irq_data*, %struct.s3c_irq_data** %3, align 8
  %39 = getelementptr inbounds %struct.s3c_irq_data, %struct.s3c_irq_data* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.s3c_irq_data, %struct.s3c_irq_data* %37, i64 %40
  store %struct.s3c_irq_data* %41, %struct.s3c_irq_data** %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.s3c_irq_data*, %struct.s3c_irq_data** %6, align 8
  %44 = getelementptr inbounds %struct.s3c_irq_data, %struct.s3c_irq_data* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = and i64 %42, %45
  %47 = load %struct.s3c_irq_data*, %struct.s3c_irq_data** %6, align 8
  %48 = getelementptr inbounds %struct.s3c_irq_data, %struct.s3c_irq_data* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %46, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %34
  %52 = load %struct.s3c_irq_intc*, %struct.s3c_irq_intc** %5, align 8
  %53 = getelementptr inbounds %struct.s3c_irq_intc, %struct.s3c_irq_intc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.s3c_irq_data*, %struct.s3c_irq_data** %3, align 8
  %56 = getelementptr inbounds %struct.s3c_irq_data, %struct.s3c_irq_data* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @irq_find_mapping(i32 %54, i64 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call %struct.irq_data* @irq_get_irq_data(i32 %59)
  call void @s3c_irq_mask(%struct.irq_data* %60)
  br label %61

61:                                               ; preds = %51, %34
  br label %62

62:                                               ; preds = %61, %1
  ret void
}

declare dso_local %struct.s3c_irq_data* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i64 @readl_relaxed(i32) #1

declare dso_local i32 @writel_relaxed(i64, i32) #1

declare dso_local i32 @irq_find_mapping(i32, i64) #1

declare dso_local %struct.irq_data* @irq_get_irq_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
