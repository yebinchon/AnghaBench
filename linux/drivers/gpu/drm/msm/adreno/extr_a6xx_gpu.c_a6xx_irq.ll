; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu.c_a6xx_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu.c_a6xx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@REG_A6XX_RBBM_INT_0_STATUS = common dso_local global i32 0, align 4
@REG_A6XX_RBBM_INT_CLEAR_CMD = common dso_local global i32 0, align 4
@A6XX_RBBM_INT_0_MASK_RBBM_HANG_DETECT = common dso_local global i32 0, align 4
@A6XX_RBBM_INT_0_MASK_CP_AHB_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"CP | AHB bus error\0A\00", align 1
@A6XX_RBBM_INT_0_MASK_CP_HW_ERROR = common dso_local global i32 0, align 4
@A6XX_RBBM_INT_0_MASK_RBBM_ATB_ASYNCFIFO_OVERFLOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"RBBM | ATB ASYNC overflow\0A\00", align 1
@A6XX_RBBM_INT_0_MASK_RBBM_ATB_BUS_OVERFLOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"RBBM | ATB bus overflow\0A\00", align 1
@A6XX_RBBM_INT_0_MASK_UCHE_OOB_ACCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"UCHE | Out of bounds access\0A\00", align 1
@A6XX_RBBM_INT_0_MASK_CP_CACHE_FLUSH_TS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_gpu*)* @a6xx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a6xx_irq(%struct.msm_gpu* %0) #0 {
  %2 = alloca %struct.msm_gpu*, align 8
  %3 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %2, align 8
  %4 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %5 = load i32, i32* @REG_A6XX_RBBM_INT_0_STATUS, align 4
  %6 = call i32 @gpu_read(%struct.msm_gpu* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %8 = load i32, i32* @REG_A6XX_RBBM_INT_CLEAR_CMD, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @gpu_write(%struct.msm_gpu* %7, i32 %8, i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @A6XX_RBBM_INT_0_MASK_RBBM_HANG_DETECT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %17 = call i32 @a6xx_fault_detect_irq(%struct.msm_gpu* %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @A6XX_RBBM_INT_0_MASK_CP_AHB_ERROR, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %25 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @dev_err_ratelimited(i32* %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %23, %18
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @A6XX_RBBM_INT_0_MASK_CP_HW_ERROR, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %36 = call i32 @a6xx_cp_hw_err_irq(%struct.msm_gpu* %35)
  br label %37

37:                                               ; preds = %34, %29
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @A6XX_RBBM_INT_0_MASK_RBBM_ATB_ASYNCFIFO_OVERFLOW, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %44 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @dev_err_ratelimited(i32* %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %42, %37
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @A6XX_RBBM_INT_0_MASK_RBBM_ATB_BUS_OVERFLOW, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %55 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = call i32 @dev_err_ratelimited(i32* %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %53, %48
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @A6XX_RBBM_INT_0_MASK_UCHE_OOB_ACCESS, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %66 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = call i32 @dev_err_ratelimited(i32* %68, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %70

70:                                               ; preds = %64, %59
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @A6XX_RBBM_INT_0_MASK_CP_CACHE_FLUSH_TS, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %77 = call i32 @msm_gpu_retire(%struct.msm_gpu* %76)
  br label %78

78:                                               ; preds = %75, %70
  %79 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %79
}

declare dso_local i32 @gpu_read(%struct.msm_gpu*, i32) #1

declare dso_local i32 @gpu_write(%struct.msm_gpu*, i32, i32) #1

declare dso_local i32 @a6xx_fault_detect_irq(%struct.msm_gpu*) #1

declare dso_local i32 @dev_err_ratelimited(i32*, i8*) #1

declare dso_local i32 @a6xx_cp_hw_err_irq(%struct.msm_gpu*) #1

declare dso_local i32 @msm_gpu_retire(%struct.msm_gpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
