; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_gpu.c_a5xx_rbbm_err_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_gpu.c_a5xx_rbbm_err_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@A5XX_RBBM_INT_0_MASK_RBBM_AHB_ERROR = common dso_local global i32 0, align 4
@REG_A5XX_RBBM_AHB_ERROR_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"RBBM | AHB bus error | %s | addr=0x%X | ports=0x%X:0x%X\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@REG_A5XX_RBBM_AHB_CMD = common dso_local global i32 0, align 4
@REG_A5XX_RBBM_INT_CLEAR_CMD = common dso_local global i32 0, align 4
@A5XX_RBBM_INT_0_MASK_RBBM_TRANSFER_TIMEOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"RBBM | AHB transfer timeout\0A\00", align 1
@A5XX_RBBM_INT_0_MASK_RBBM_ME_MS_TIMEOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"RBBM | ME master split | status=0x%X\0A\00", align 1
@REG_A5XX_RBBM_AHB_ME_SPLIT_STATUS = common dso_local global i32 0, align 4
@A5XX_RBBM_INT_0_MASK_RBBM_PFP_MS_TIMEOUT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"RBBM | PFP master split | status=0x%X\0A\00", align 1
@REG_A5XX_RBBM_AHB_PFP_SPLIT_STATUS = common dso_local global i32 0, align 4
@A5XX_RBBM_INT_0_MASK_RBBM_ETS_MS_TIMEOUT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"RBBM | ETS master split | status=0x%X\0A\00", align 1
@REG_A5XX_RBBM_AHB_ETS_SPLIT_STATUS = common dso_local global i32 0, align 4
@A5XX_RBBM_INT_0_MASK_RBBM_ATB_ASYNC_OVERFLOW = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"RBBM | ATB ASYNC overflow\0A\00", align 1
@A5XX_RBBM_INT_0_MASK_RBBM_ATB_BUS_OVERFLOW = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"RBBM | ATB bus overflow\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_gpu*, i32)* @a5xx_rbbm_err_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a5xx_rbbm_err_irq(%struct.msm_gpu* %0, i32 %1) #0 {
  %3 = alloca %struct.msm_gpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @A5XX_RBBM_INT_0_MASK_RBBM_AHB_ERROR, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %41

10:                                               ; preds = %2
  %11 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %12 = load i32, i32* @REG_A5XX_RBBM_AHB_ERROR_STATUS, align 4
  %13 = call i32 @gpu_read(%struct.msm_gpu* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %15 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, 268435456
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, 1048575
  %26 = ashr i32 %25, 2
  %27 = load i32, i32* %5, align 4
  %28 = ashr i32 %27, 20
  %29 = and i32 %28, 3
  %30 = load i32, i32* %5, align 4
  %31 = ashr i32 %30, 24
  %32 = and i32 %31, 15
  %33 = call i32 (i32, i8*, ...) @dev_err_ratelimited(i32 %18, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %26, i32 %29, i32 %32)
  %34 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %35 = load i32, i32* @REG_A5XX_RBBM_AHB_CMD, align 4
  %36 = call i32 @gpu_write(%struct.msm_gpu* %34, i32 %35, i32 16)
  %37 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %38 = load i32, i32* @REG_A5XX_RBBM_INT_CLEAR_CMD, align 4
  %39 = load i32, i32* @A5XX_RBBM_INT_0_MASK_RBBM_AHB_ERROR, align 4
  %40 = call i32 @gpu_write(%struct.msm_gpu* %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %10, %2
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @A5XX_RBBM_INT_0_MASK_RBBM_TRANSFER_TIMEOUT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %48 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i32, i8*, ...) @dev_err_ratelimited(i32 %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %53

53:                                               ; preds = %46, %41
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @A5XX_RBBM_INT_0_MASK_RBBM_ME_MS_TIMEOUT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %60 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %65 = load i32, i32* @REG_A5XX_RBBM_AHB_ME_SPLIT_STATUS, align 4
  %66 = call i32 @gpu_read(%struct.msm_gpu* %64, i32 %65)
  %67 = call i32 (i32, i8*, ...) @dev_err_ratelimited(i32 %63, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %58, %53
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @A5XX_RBBM_INT_0_MASK_RBBM_PFP_MS_TIMEOUT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %68
  %74 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %75 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %80 = load i32, i32* @REG_A5XX_RBBM_AHB_PFP_SPLIT_STATUS, align 4
  %81 = call i32 @gpu_read(%struct.msm_gpu* %79, i32 %80)
  %82 = call i32 (i32, i8*, ...) @dev_err_ratelimited(i32 %78, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %73, %68
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @A5XX_RBBM_INT_0_MASK_RBBM_ETS_MS_TIMEOUT, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %83
  %89 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %90 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %95 = load i32, i32* @REG_A5XX_RBBM_AHB_ETS_SPLIT_STATUS, align 4
  %96 = call i32 @gpu_read(%struct.msm_gpu* %94, i32 %95)
  %97 = call i32 (i32, i8*, ...) @dev_err_ratelimited(i32 %93, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %88, %83
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @A5XX_RBBM_INT_0_MASK_RBBM_ATB_ASYNC_OVERFLOW, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %105 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i32, i8*, ...) @dev_err_ratelimited(i32 %108, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %110

110:                                              ; preds = %103, %98
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* @A5XX_RBBM_INT_0_MASK_RBBM_ATB_BUS_OVERFLOW, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %110
  %116 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %117 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %116, i32 0, i32 0
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (i32, i8*, ...) @dev_err_ratelimited(i32 %120, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %122

122:                                              ; preds = %115, %110
  ret void
}

declare dso_local i32 @gpu_read(%struct.msm_gpu*, i32) #1

declare dso_local i32 @dev_err_ratelimited(i32, i8*, ...) #1

declare dso_local i32 @gpu_write(%struct.msm_gpu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
