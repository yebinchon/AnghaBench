; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-stm32-exti.c_stm32_exti_to_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-stm32-exti.c_stm32_exti_to_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_exti_drv_data = type { i32, %struct.stm32_desc_irq* }
%struct.stm32_desc_irq = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_exti_drv_data*, i64)* @stm32_exti_to_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_exti_to_irq(%struct.stm32_exti_drv_data* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stm32_exti_drv_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.stm32_desc_irq*, align 8
  %7 = alloca i32, align 4
  store %struct.stm32_exti_drv_data* %0, %struct.stm32_exti_drv_data** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.stm32_exti_drv_data*, %struct.stm32_exti_drv_data** %4, align 8
  %9 = getelementptr inbounds %struct.stm32_exti_drv_data, %struct.stm32_exti_drv_data* %8, i32 0, i32 1
  %10 = load %struct.stm32_desc_irq*, %struct.stm32_desc_irq** %9, align 8
  %11 = icmp ne %struct.stm32_desc_irq* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %45

15:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %39, %15
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.stm32_exti_drv_data*, %struct.stm32_exti_drv_data** %4, align 8
  %19 = getelementptr inbounds %struct.stm32_exti_drv_data, %struct.stm32_exti_drv_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %16
  %23 = load %struct.stm32_exti_drv_data*, %struct.stm32_exti_drv_data** %4, align 8
  %24 = getelementptr inbounds %struct.stm32_exti_drv_data, %struct.stm32_exti_drv_data* %23, i32 0, i32 1
  %25 = load %struct.stm32_desc_irq*, %struct.stm32_desc_irq** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.stm32_desc_irq, %struct.stm32_desc_irq* %25, i64 %27
  store %struct.stm32_desc_irq* %28, %struct.stm32_desc_irq** %6, align 8
  %29 = load %struct.stm32_desc_irq*, %struct.stm32_desc_irq** %6, align 8
  %30 = getelementptr inbounds %struct.stm32_desc_irq, %struct.stm32_desc_irq* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %22
  %35 = load %struct.stm32_desc_irq*, %struct.stm32_desc_irq** %6, align 8
  %36 = getelementptr inbounds %struct.stm32_desc_irq, %struct.stm32_desc_irq* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %3, align 4
  br label %45

38:                                               ; preds = %22
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %16

42:                                               ; preds = %16
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %34, %12
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
