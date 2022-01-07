; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_debugfs.c_reset_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_debugfs.c_reset_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.msm_drm_private* }
%struct.msm_drm_private = type { %struct.msm_gpu* }
%struct.msm_gpu = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.msm_gpu*)* }
%struct.adreno_gpu = type { i32** }
%struct.a5xx_gpu = type { i32*, i32* }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ADRENO_FW_PM4 = common dso_local global i64 0, align 8
@ADRENO_FW_PFP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @reset_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_set(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.msm_drm_private*, align 8
  %8 = alloca %struct.msm_gpu*, align 8
  %9 = alloca %struct.adreno_gpu*, align 8
  %10 = alloca %struct.a5xx_gpu*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.drm_device*
  store %struct.drm_device* %12, %struct.drm_device** %6, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 1
  %15 = load %struct.msm_drm_private*, %struct.msm_drm_private** %14, align 8
  store %struct.msm_drm_private* %15, %struct.msm_drm_private** %7, align 8
  %16 = load %struct.msm_drm_private*, %struct.msm_drm_private** %7, align 8
  %17 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %16, i32 0, i32 0
  %18 = load %struct.msm_gpu*, %struct.msm_gpu** %17, align 8
  store %struct.msm_gpu* %18, %struct.msm_gpu** %8, align 8
  %19 = load %struct.msm_gpu*, %struct.msm_gpu** %8, align 8
  %20 = call %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu* %19)
  store %struct.adreno_gpu* %20, %struct.adreno_gpu** %9, align 8
  %21 = load %struct.adreno_gpu*, %struct.adreno_gpu** %9, align 8
  %22 = call %struct.a5xx_gpu* @to_a5xx_gpu(%struct.adreno_gpu* %21)
  store %struct.a5xx_gpu* %22, %struct.a5xx_gpu** %10, align 8
  %23 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %24 = call i32 @capable(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %117

29:                                               ; preds = %2
  %30 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %31 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.adreno_gpu*, %struct.adreno_gpu** %9, align 8
  %34 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %33, i32 0, i32 0
  %35 = load i32**, i32*** %34, align 8
  %36 = load i64, i64* @ADRENO_FW_PM4, align 8
  %37 = getelementptr inbounds i32*, i32** %35, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @release_firmware(i32* %38)
  %40 = load %struct.adreno_gpu*, %struct.adreno_gpu** %9, align 8
  %41 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %40, i32 0, i32 0
  %42 = load i32**, i32*** %41, align 8
  %43 = load i64, i64* @ADRENO_FW_PM4, align 8
  %44 = getelementptr inbounds i32*, i32** %42, i64 %43
  store i32* null, i32** %44, align 8
  %45 = load %struct.adreno_gpu*, %struct.adreno_gpu** %9, align 8
  %46 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %45, i32 0, i32 0
  %47 = load i32**, i32*** %46, align 8
  %48 = load i64, i64* @ADRENO_FW_PFP, align 8
  %49 = getelementptr inbounds i32*, i32** %47, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @release_firmware(i32* %50)
  %52 = load %struct.adreno_gpu*, %struct.adreno_gpu** %9, align 8
  %53 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %52, i32 0, i32 0
  %54 = load i32**, i32*** %53, align 8
  %55 = load i64, i64* @ADRENO_FW_PFP, align 8
  %56 = getelementptr inbounds i32*, i32** %54, i64 %55
  store i32* null, i32** %56, align 8
  %57 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %10, align 8
  %58 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %75

61:                                               ; preds = %29
  %62 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %10, align 8
  %63 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.msm_gpu*, %struct.msm_gpu** %8, align 8
  %66 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @msm_gem_unpin_iova(i32* %64, i32 %67)
  %69 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %10, align 8
  %70 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @drm_gem_object_put(i32* %71)
  %73 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %10, align 8
  %74 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %73, i32 0, i32 1
  store i32* null, i32** %74, align 8
  br label %75

75:                                               ; preds = %61, %29
  %76 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %10, align 8
  %77 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %94

80:                                               ; preds = %75
  %81 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %10, align 8
  %82 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.msm_gpu*, %struct.msm_gpu** %8, align 8
  %85 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @msm_gem_unpin_iova(i32* %83, i32 %86)
  %88 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %10, align 8
  %89 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @drm_gem_object_put(i32* %90)
  %92 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %10, align 8
  %93 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %92, i32 0, i32 0
  store i32* null, i32** %93, align 8
  br label %94

94:                                               ; preds = %80, %75
  %95 = load %struct.msm_gpu*, %struct.msm_gpu** %8, align 8
  %96 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %95, i32 0, i32 0
  store i32 1, i32* %96, align 8
  %97 = load %struct.msm_gpu*, %struct.msm_gpu** %8, align 8
  %98 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %97, i32 0, i32 1
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = call i32 @pm_runtime_get_sync(i32* %100)
  %102 = load %struct.msm_gpu*, %struct.msm_gpu** %8, align 8
  %103 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %102, i32 0, i32 2
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32 (%struct.msm_gpu*)*, i32 (%struct.msm_gpu*)** %105, align 8
  %107 = load %struct.msm_gpu*, %struct.msm_gpu** %8, align 8
  %108 = call i32 %106(%struct.msm_gpu* %107)
  %109 = load %struct.msm_gpu*, %struct.msm_gpu** %8, align 8
  %110 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %109, i32 0, i32 1
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = call i32 @pm_runtime_put_sync(i32* %112)
  %114 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %115 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %114, i32 0, i32 0
  %116 = call i32 @mutex_unlock(i32* %115)
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %94, %26
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local %struct.a5xx_gpu* @to_a5xx_gpu(%struct.adreno_gpu*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @release_firmware(i32*) #1

declare dso_local i32 @msm_gem_unpin_iova(i32*, i32) #1

declare dso_local i32 @drm_gem_object_put(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @pm_runtime_put_sync(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
