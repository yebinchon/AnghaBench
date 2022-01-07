; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_power.c_a5xx_gpmu_ucode_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_power.c_a5xx_gpmu_ucode_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32, %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.adreno_gpu = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i64 }
%struct.a5xx_gpu = type { i32, i64, i32 }

@ADRENO_FW_GPMU = common dso_local global i64 0, align 8
@TYPE4_MAX_PAYLOAD = common dso_local global i32 0, align 4
@MSM_BO_UNCACHED = common dso_local global i32 0, align 4
@MSM_BO_GPU_READONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"gpmufw\00", align 1
@REG_A5XX_GPMU_INST_RAM_BASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @a5xx_gpmu_ucode_init(%struct.msm_gpu* %0) #0 {
  %2 = alloca %struct.msm_gpu*, align 8
  %3 = alloca %struct.adreno_gpu*, align 8
  %4 = alloca %struct.a5xx_gpu*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %2, align 8
  %15 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %16 = call %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu* %15)
  store %struct.adreno_gpu* %16, %struct.adreno_gpu** %3, align 8
  %17 = load %struct.adreno_gpu*, %struct.adreno_gpu** %3, align 8
  %18 = call %struct.a5xx_gpu* @to_a5xx_gpu(%struct.adreno_gpu* %17)
  store %struct.a5xx_gpu* %18, %struct.a5xx_gpu** %4, align 8
  %19 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %20 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %19, i32 0, i32 1
  %21 = load %struct.drm_device*, %struct.drm_device** %20, align 8
  store %struct.drm_device* %21, %struct.drm_device** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %22 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %4, align 8
  %23 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %171

27:                                               ; preds = %1
  %28 = load %struct.adreno_gpu*, %struct.adreno_gpu** %3, align 8
  %29 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %29, align 8
  %31 = load i64, i64* @ADRENO_FW_GPMU, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %30, i64 %31
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i32*
  store i32* %36, i32** %9, align 8
  %37 = load %struct.adreno_gpu*, %struct.adreno_gpu** %3, align 8
  %38 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %38, align 8
  %40 = load i64, i64* @ADRENO_FW_GPMU, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %39, i64 %40
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %44, 8
  br i1 %45, label %65, label %46

46:                                               ; preds = %27
  %47 = load i32*, i32** %9, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ult i32 %49, 2
  br i1 %50, label %65, label %51

51:                                               ; preds = %46
  %52 = load i32*, i32** %9, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.adreno_gpu*, %struct.adreno_gpu** %3, align 8
  %56 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %56, align 8
  %58 = load i64, i64* @ADRENO_FW_GPMU, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %57, i64 %58
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = ashr i32 %62, 2
  %64 = icmp uge i32 %54, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %51, %46, %27
  br label %171

66:                                               ; preds = %51
  %67 = load i32*, i32** %9, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 2
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %171

72:                                               ; preds = %66
  %73 = load i32*, i32** %9, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  %76 = load i32, i32* %75, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %73, i64 %77
  %79 = getelementptr inbounds i32, i32* %78, i64 3
  store i32* %79, i32** %11, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %9, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  %85 = load i32, i32* %84, align 4
  %86 = sub i32 %82, %85
  %87 = sub i32 %86, 2
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* @TYPE4_MAX_PAYLOAD, align 4
  %91 = udiv i32 %89, %90
  %92 = add i32 %88, %91
  %93 = add i32 %92, 1
  %94 = shl i32 %93, 2
  store i32 %94, i32* %8, align 4
  %95 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @MSM_BO_UNCACHED, align 4
  %98 = load i32, i32* @MSM_BO_GPU_READONLY, align 4
  %99 = or i32 %97, %98
  %100 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %101 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %4, align 8
  %104 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %103, i32 0, i32 1
  %105 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %4, align 8
  %106 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %105, i32 0, i32 2
  %107 = call i32* @msm_gem_kernel_new_locked(%struct.drm_device* %95, i32 %96, i32 %99, i32 %102, i64* %104, i32* %106)
  store i32* %107, i32** %10, align 8
  %108 = load i32*, i32** %10, align 8
  %109 = call i64 @IS_ERR(i32* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %72
  br label %171

112:                                              ; preds = %72
  %113 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %4, align 8
  %114 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @msm_gem_object_set_name(i64 %115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %117

117:                                              ; preds = %156, %112
  %118 = load i32, i32* %12, align 4
  %119 = icmp ugt i32 %118, 0
  br i1 %119, label %120, label %163

120:                                              ; preds = %117
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* @TYPE4_MAX_PAYLOAD, align 4
  %123 = icmp ugt i32 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = load i32, i32* @TYPE4_MAX_PAYLOAD, align 4
  br label %128

126:                                              ; preds = %120
  %127 = load i32, i32* %12, align 4
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi i32 [ %125, %124 ], [ %127, %126 ]
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* @REG_A5XX_GPMU_INST_RAM_BASE, align 4
  %131 = load i32, i32* %7, align 4
  %132 = add nsw i32 %130, %131
  %133 = load i32, i32* %14, align 4
  %134 = call i32 @PKT4(i32 %132, i32 %133)
  %135 = load i32*, i32** %10, align 8
  %136 = load i32, i32* %6, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %6, align 4
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i32, i32* %135, i64 %138
  store i32 %134, i32* %139, align 4
  store i32 0, i32* %13, align 4
  br label %140

140:                                              ; preds = %153, %128
  %141 = load i32, i32* %13, align 4
  %142 = load i32, i32* %14, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %156

144:                                              ; preds = %140
  %145 = load i32*, i32** %11, align 8
  %146 = getelementptr inbounds i32, i32* %145, i32 1
  store i32* %146, i32** %11, align 8
  %147 = load i32, i32* %145, align 4
  %148 = load i32*, i32** %10, align 8
  %149 = load i32, i32* %6, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %6, align 4
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i32, i32* %148, i64 %151
  store i32 %147, i32* %152, align 4
  br label %153

153:                                              ; preds = %144
  %154 = load i32, i32* %13, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %13, align 4
  br label %140

156:                                              ; preds = %140
  %157 = load i32, i32* %14, align 4
  %158 = load i32, i32* %7, align 4
  %159 = add nsw i32 %158, %157
  store i32 %159, i32* %7, align 4
  %160 = load i32, i32* %14, align 4
  %161 = load i32, i32* %12, align 4
  %162 = sub i32 %161, %160
  store i32 %162, i32* %12, align 4
  br label %117

163:                                              ; preds = %117
  %164 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %4, align 8
  %165 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @msm_gem_put_vaddr(i64 %166)
  %168 = load i32, i32* %6, align 4
  %169 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %4, align 8
  %170 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 8
  br label %171

171:                                              ; preds = %163, %111, %71, %65, %26
  ret void
}

declare dso_local %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local %struct.a5xx_gpu* @to_a5xx_gpu(%struct.adreno_gpu*) #1

declare dso_local i32* @msm_gem_kernel_new_locked(%struct.drm_device*, i32, i32, i32, i64*, i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @msm_gem_object_set_name(i64, i8*) #1

declare dso_local i32 @PKT4(i32, i32) #1

declare dso_local i32 @msm_gem_put_vaddr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
