; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_gpu.c_a5xx_cp_err_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_gpu.c_a5xx_cp_err_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@REG_A5XX_CP_INTERRUPT_STATUS = common dso_local global i32 0, align 4
@A5XX_CP_INT_CP_OPCODE_ERROR = common dso_local global i32 0, align 4
@REG_A5XX_CP_PFP_STAT_ADDR = common dso_local global i32 0, align 4
@REG_A5XX_CP_PFP_STAT_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"CP | opcode error | possible opcode=0x%8.8X\0A\00", align 1
@A5XX_CP_INT_CP_HW_FAULT_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"CP | HW fault | status=0x%8.8X\0A\00", align 1
@REG_A5XX_CP_HW_FAULT = common dso_local global i32 0, align 4
@A5XX_CP_INT_CP_DMA_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"CP | DMA error\0A\00", align 1
@A5XX_CP_INT_CP_REGISTER_PROTECTION_ERROR = common dso_local global i32 0, align 4
@REG_A5XX_CP_PROTECT_STATUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [64 x i8] c"CP | protected mode error | %s | addr=0x%8.8X | status=0x%8.8X\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@A5XX_CP_INT_CP_AHB_ERROR = common dso_local global i32 0, align 4
@REG_A5XX_CP_AHB_FAULT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"timestamp lo\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"timestamp hi\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"pfp read\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"pfp write\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"me read\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"me write\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"crashdump read\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"crashdump write\00", align 1
@__const.a5xx_cp_err_irq.access = private unnamed_addr constant [16 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* null], align 16
@.str.16 = private unnamed_addr constant [62 x i8] c"CP | AHB error | addr=%X access=%s error=%d | status=0x%8.8X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_gpu*)* @a5xx_cp_err_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a5xx_cp_err_irq(%struct.msm_gpu* %0) #0 {
  %2 = alloca %struct.msm_gpu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [16 x i8*], align 16
  store %struct.msm_gpu* %0, %struct.msm_gpu** %2, align 8
  %8 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %9 = load i32, i32* @REG_A5XX_CP_INTERRUPT_STATUS, align 4
  %10 = call i32 @gpu_read(%struct.msm_gpu* %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @A5XX_CP_INT_CP_OPCODE_ERROR, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %1
  %16 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %17 = load i32, i32* @REG_A5XX_CP_PFP_STAT_ADDR, align 4
  %18 = call i32 @gpu_write(%struct.msm_gpu* %16, i32 %17, i32 0)
  %19 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %20 = load i32, i32* @REG_A5XX_CP_PFP_STAT_DATA, align 4
  %21 = call i32 @gpu_read(%struct.msm_gpu* %19, i32 %20)
  %22 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %23 = load i32, i32* @REG_A5XX_CP_PFP_STAT_DATA, align 4
  %24 = call i32 @gpu_read(%struct.msm_gpu* %22, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %26 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 (i32, i8*, ...) @dev_err_ratelimited(i32 %29, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %15, %1
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @A5XX_CP_INT_CP_HW_FAULT_ERROR, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %39 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %44 = load i32, i32* @REG_A5XX_CP_HW_FAULT, align 4
  %45 = call i32 @gpu_read(%struct.msm_gpu* %43, i32 %44)
  %46 = call i32 (i32, i8*, ...) @dev_err_ratelimited(i32 %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %37, %32
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @A5XX_CP_INT_CP_DMA_ERROR, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %54 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32, i8*, ...) @dev_err_ratelimited(i32 %57, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %52, %47
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @A5XX_CP_INT_CP_REGISTER_PROTECTION_ERROR, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %83

64:                                               ; preds = %59
  %65 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %66 = load i32, i32* @REG_A5XX_CP_PROTECT_STATUS, align 4
  %67 = call i32 @gpu_read(%struct.msm_gpu* %65, i32 %66)
  store i32 %67, i32* %5, align 4
  %68 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %69 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %5, align 4
  %74 = and i32 %73, 16777216
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  %78 = load i32, i32* %5, align 4
  %79 = and i32 %78, 1048575
  %80 = ashr i32 %79, 2
  %81 = load i32, i32* %5, align 4
  %82 = call i32 (i32, i8*, ...) @dev_err_ratelimited(i32 %72, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i8* %77, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %64, %59
  %84 = load i32, i32* %3, align 4
  %85 = load i32, i32* @A5XX_CP_INT_CP_AHB_ERROR, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %110

88:                                               ; preds = %83
  %89 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %90 = load i32, i32* @REG_A5XX_CP_AHB_FAULT, align 4
  %91 = call i32 @gpu_read(%struct.msm_gpu* %89, i32 %90)
  store i32 %91, i32* %6, align 4
  %92 = bitcast [16 x i8*]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %92, i8* align 16 bitcast ([16 x i8*]* @__const.a5xx_cp_err_irq.access to i8*), i64 128, i1 false)
  %93 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %94 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %6, align 4
  %99 = and i32 %98, 1048575
  %100 = load i32, i32* %6, align 4
  %101 = ashr i32 %100, 24
  %102 = and i32 %101, 15
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [16 x i8*], [16 x i8*]* %7, i64 0, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = and i32 %106, -2147483648
  %108 = load i32, i32* %6, align 4
  %109 = call i32 (i32, i8*, ...) @dev_err_ratelimited(i32 %97, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.16, i64 0, i64 0), i32 %99, i8* %105, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %88, %83
  ret void
}

declare dso_local i32 @gpu_read(%struct.msm_gpu*, i32) #1

declare dso_local i32 @gpu_write(%struct.msm_gpu*, i32, i32) #1

declare dso_local i32 @dev_err_ratelimited(i32, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
