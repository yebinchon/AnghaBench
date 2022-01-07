; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu.c_a6xx_cp_hw_err_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu.c_a6xx_cp_hw_err_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@REG_A6XX_CP_INTERRUPT_STATUS = common dso_local global i32 0, align 4
@A6XX_CP_INT_CP_OPCODE_ERROR = common dso_local global i32 0, align 4
@REG_A6XX_CP_SQE_STAT_ADDR = common dso_local global i32 0, align 4
@REG_A6XX_CP_SQE_STAT_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"CP | opcode error | possible opcode=0x%8.8X\0A\00", align 1
@A6XX_CP_INT_CP_UCODE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"CP ucode error interrupt\0A\00", align 1
@A6XX_CP_INT_CP_HW_FAULT_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"CP | HW fault | status=0x%8.8X\0A\00", align 1
@REG_A6XX_CP_HW_FAULT = common dso_local global i32 0, align 4
@A6XX_CP_INT_CP_REGISTER_PROTECTION_ERROR = common dso_local global i32 0, align 4
@REG_A6XX_CP_PROTECT_STATUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [64 x i8] c"CP | protected mode error | %s | addr=0x%8.8X | status=0x%8.8X\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1
@A6XX_CP_INT_CP_AHB_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"CP AHB error interrupt\0A\00", align 1
@A6XX_CP_INT_CP_VSD_PARITY_ERROR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"CP VSD decoder parity error\0A\00", align 1
@A6XX_CP_INT_CP_ILLEGAL_INSTR_ERROR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"CP illegal instruction error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_gpu*)* @a6xx_cp_hw_err_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a6xx_cp_hw_err_irq(%struct.msm_gpu* %0) #0 {
  %2 = alloca %struct.msm_gpu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %2, align 8
  %6 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %7 = load i32, i32* @REG_A6XX_CP_INTERRUPT_STATUS, align 4
  %8 = call i32 @gpu_read(%struct.msm_gpu* %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @A6XX_CP_INT_CP_OPCODE_ERROR, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %15 = load i32, i32* @REG_A6XX_CP_SQE_STAT_ADDR, align 4
  %16 = call i32 @gpu_write(%struct.msm_gpu* %14, i32 %15, i32 1)
  %17 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %18 = load i32, i32* @REG_A6XX_CP_SQE_STAT_DATA, align 4
  %19 = call i32 @gpu_read(%struct.msm_gpu* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %21 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %4, align 4
  %25 = call i32 (i32*, i8*, ...) @dev_err_ratelimited(i32* %23, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %13, %1
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @A6XX_CP_INT_CP_UCODE_ERROR, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %33 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 (i32*, i8*, ...) @dev_err_ratelimited(i32* %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %31, %26
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @A6XX_CP_INT_CP_HW_FAULT_ERROR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %44 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %48 = load i32, i32* @REG_A6XX_CP_HW_FAULT, align 4
  %49 = call i32 @gpu_read(%struct.msm_gpu* %47, i32 %48)
  %50 = call i32 (i32*, i8*, ...) @dev_err_ratelimited(i32* %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %42, %37
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @A6XX_CP_INT_CP_REGISTER_PROTECTION_ERROR, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %51
  %57 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %58 = load i32, i32* @REG_A6XX_CP_PROTECT_STATUS, align 4
  %59 = call i32 @gpu_read(%struct.msm_gpu* %57, i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %61 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %5, align 4
  %65 = and i32 %64, 1048576
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)
  %69 = load i32, i32* %5, align 4
  %70 = and i32 %69, 262143
  %71 = load i32, i32* %5, align 4
  %72 = call i32 (i32*, i8*, ...) @dev_err_ratelimited(i32* %63, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i8* %68, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %56, %51
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @A6XX_CP_INT_CP_AHB_ERROR, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %80 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = call i32 (i32*, i8*, ...) @dev_err_ratelimited(i32* %82, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %84

84:                                               ; preds = %78, %73
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @A6XX_CP_INT_CP_VSD_PARITY_ERROR, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %91 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = call i32 (i32*, i8*, ...) @dev_err_ratelimited(i32* %93, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %95

95:                                               ; preds = %89, %84
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* @A6XX_CP_INT_CP_ILLEGAL_INSTR_ERROR, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %102 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = call i32 (i32*, i8*, ...) @dev_err_ratelimited(i32* %104, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  br label %106

106:                                              ; preds = %100, %95
  ret void
}

declare dso_local i32 @gpu_read(%struct.msm_gpu*, i32) #1

declare dso_local i32 @gpu_write(%struct.msm_gpu*, i32, i32) #1

declare dso_local i32 @dev_err_ratelimited(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
