; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_gpu.c_a5xx_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_gpu.c_a5xx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32 }

@REG_A5XX_RBBM_INT_0_STATUS = common dso_local global i32 0, align 4
@REG_A5XX_RBBM_INT_CLEAR_CMD = common dso_local global i32 0, align 4
@A5XX_RBBM_INT_0_MASK_RBBM_AHB_ERROR = common dso_local global i32 0, align 4
@RBBM_ERROR_MASK = common dso_local global i32 0, align 4
@A5XX_RBBM_INT_0_MASK_CP_HW_ERROR = common dso_local global i32 0, align 4
@A5XX_RBBM_INT_0_MASK_MISC_HANG_DETECT = common dso_local global i32 0, align 4
@A5XX_RBBM_INT_0_MASK_UCHE_OOB_ACCESS = common dso_local global i32 0, align 4
@A5XX_RBBM_INT_0_MASK_GPMU_VOLTAGE_DROOP = common dso_local global i32 0, align 4
@A5XX_RBBM_INT_0_MASK_CP_CACHE_FLUSH_TS = common dso_local global i32 0, align 4
@A5XX_RBBM_INT_0_MASK_CP_SW = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_gpu*)* @a5xx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a5xx_irq(%struct.msm_gpu* %0) #0 {
  %2 = alloca %struct.msm_gpu*, align 8
  %3 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %2, align 8
  %4 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %5 = load i32, i32* @REG_A5XX_RBBM_INT_0_STATUS, align 4
  %6 = call i32 @gpu_read(%struct.msm_gpu* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %8 = load i32, i32* @REG_A5XX_RBBM_INT_CLEAR_CMD, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @A5XX_RBBM_INT_0_MASK_RBBM_AHB_ERROR, align 4
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  %13 = call i32 @gpu_write(%struct.msm_gpu* %7, i32 %8, i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @RBBM_ERROR_MASK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @a5xx_rbbm_err_irq(%struct.msm_gpu* %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %1
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @A5XX_RBBM_INT_0_MASK_CP_HW_ERROR, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %29 = call i32 @a5xx_cp_err_irq(%struct.msm_gpu* %28)
  br label %30

30:                                               ; preds = %27, %22
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @A5XX_RBBM_INT_0_MASK_MISC_HANG_DETECT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %37 = call i32 @a5xx_fault_detect_irq(%struct.msm_gpu* %36)
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @A5XX_RBBM_INT_0_MASK_UCHE_OOB_ACCESS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %45 = call i32 @a5xx_uche_err_irq(%struct.msm_gpu* %44)
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @A5XX_RBBM_INT_0_MASK_GPMU_VOLTAGE_DROOP, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %53 = call i32 @a5xx_gpmu_err_irq(%struct.msm_gpu* %52)
  br label %54

54:                                               ; preds = %51, %46
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @A5XX_RBBM_INT_0_MASK_CP_CACHE_FLUSH_TS, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %61 = call i32 @a5xx_preempt_trigger(%struct.msm_gpu* %60)
  %62 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %63 = call i32 @msm_gpu_retire(%struct.msm_gpu* %62)
  br label %64

64:                                               ; preds = %59, %54
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @A5XX_RBBM_INT_0_MASK_CP_SW, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %71 = call i32 @a5xx_preempt_irq(%struct.msm_gpu* %70)
  br label %72

72:                                               ; preds = %69, %64
  %73 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %73
}

declare dso_local i32 @gpu_read(%struct.msm_gpu*, i32) #1

declare dso_local i32 @gpu_write(%struct.msm_gpu*, i32, i32) #1

declare dso_local i32 @a5xx_rbbm_err_irq(%struct.msm_gpu*, i32) #1

declare dso_local i32 @a5xx_cp_err_irq(%struct.msm_gpu*) #1

declare dso_local i32 @a5xx_fault_detect_irq(%struct.msm_gpu*) #1

declare dso_local i32 @a5xx_uche_err_irq(%struct.msm_gpu*) #1

declare dso_local i32 @a5xx_gpmu_err_irq(%struct.msm_gpu*) #1

declare dso_local i32 @a5xx_preempt_trigger(%struct.msm_gpu*) #1

declare dso_local i32 @msm_gpu_retire(%struct.msm_gpu*) #1

declare dso_local i32 @a5xx_preempt_irq(%struct.msm_gpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
