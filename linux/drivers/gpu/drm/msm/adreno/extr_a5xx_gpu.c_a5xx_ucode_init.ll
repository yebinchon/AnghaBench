; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_gpu.c_a5xx_ucode_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_gpu.c_a5xx_ucode_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.adreno_gpu = type { i32* }
%struct.a5xx_gpu = type { i32, i32, i32*, i32* }

@ADRENO_FW_PM4 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"could not allocate PM4: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"pm4fw\00", align 1
@ADRENO_FW_PFP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"could not allocate PFP: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"pfpfw\00", align 1
@REG_A5XX_CP_ME_INSTR_BASE_LO = common dso_local global i32 0, align 4
@REG_A5XX_CP_ME_INSTR_BASE_HI = common dso_local global i32 0, align 4
@REG_A5XX_CP_PFP_INSTR_BASE_LO = common dso_local global i32 0, align 4
@REG_A5XX_CP_PFP_INSTR_BASE_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_gpu*)* @a5xx_ucode_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a5xx_ucode_init(%struct.msm_gpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msm_gpu*, align 8
  %4 = alloca %struct.adreno_gpu*, align 8
  %5 = alloca %struct.a5xx_gpu*, align 8
  %6 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %3, align 8
  %7 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %8 = call %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu* %7)
  store %struct.adreno_gpu* %8, %struct.adreno_gpu** %4, align 8
  %9 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %10 = call %struct.a5xx_gpu* @to_a5xx_gpu(%struct.adreno_gpu* %9)
  store %struct.a5xx_gpu* %10, %struct.a5xx_gpu** %5, align 8
  %11 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %5, align 8
  %12 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %54, label %15

15:                                               ; preds = %1
  %16 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %17 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %18 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @ADRENO_FW_PM4, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %5, align 8
  %24 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %23, i32 0, i32 1
  %25 = call i8* @adreno_fw_create_bo(%struct.msm_gpu* %16, i32 %22, i32* %24)
  %26 = bitcast i8* %25 to i32*
  %27 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %5, align 8
  %28 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %27, i32 0, i32 3
  store i32* %26, i32** %28, align 8
  %29 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %5, align 8
  %30 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = call i64 @IS_ERR(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %15
  %35 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %5, align 8
  %36 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @PTR_ERR(i32* %37)
  store i32 %38, i32* %6, align 4
  %39 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %5, align 8
  %40 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %39, i32 0, i32 3
  store i32* null, i32** %40, align 8
  %41 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %42 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @DRM_DEV_ERROR(i32 %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %113

49:                                               ; preds = %15
  %50 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %5, align 8
  %51 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @msm_gem_object_set_name(i32* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %49, %1
  %55 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %5, align 8
  %56 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %98, label %59

59:                                               ; preds = %54
  %60 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %61 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %62 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* @ADRENO_FW_PFP, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %5, align 8
  %68 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %67, i32 0, i32 0
  %69 = call i8* @adreno_fw_create_bo(%struct.msm_gpu* %60, i32 %66, i32* %68)
  %70 = bitcast i8* %69 to i32*
  %71 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %5, align 8
  %72 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %71, i32 0, i32 2
  store i32* %70, i32** %72, align 8
  %73 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %5, align 8
  %74 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = call i64 @IS_ERR(i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %59
  %79 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %5, align 8
  %80 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @PTR_ERR(i32* %81)
  store i32 %82, i32* %6, align 4
  %83 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %5, align 8
  %84 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %83, i32 0, i32 2
  store i32* null, i32** %84, align 8
  %85 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %86 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @DRM_DEV_ERROR(i32 %89, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %2, align 4
  br label %113

93:                                               ; preds = %59
  %94 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %5, align 8
  %95 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @msm_gem_object_set_name(i32* %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %98

98:                                               ; preds = %93, %54
  %99 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %100 = load i32, i32* @REG_A5XX_CP_ME_INSTR_BASE_LO, align 4
  %101 = load i32, i32* @REG_A5XX_CP_ME_INSTR_BASE_HI, align 4
  %102 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %5, align 8
  %103 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @gpu_write64(%struct.msm_gpu* %99, i32 %100, i32 %101, i32 %104)
  %106 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %107 = load i32, i32* @REG_A5XX_CP_PFP_INSTR_BASE_LO, align 4
  %108 = load i32, i32* @REG_A5XX_CP_PFP_INSTR_BASE_HI, align 4
  %109 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %5, align 8
  %110 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @gpu_write64(%struct.msm_gpu* %106, i32 %107, i32 %108, i32 %111)
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %98, %78, %34
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local %struct.a5xx_gpu* @to_a5xx_gpu(%struct.adreno_gpu*) #1

declare dso_local i8* @adreno_fw_create_bo(%struct.msm_gpu*, i32, i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

declare dso_local i32 @msm_gem_object_set_name(i32*, i8*) #1

declare dso_local i32 @gpu_write64(%struct.msm_gpu*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
