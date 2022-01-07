; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gem.c_amdgpu_gem_metadata_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gem.c_amdgpu_gem_metadata_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_amdgpu_gem_metadata = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.drm_gem_object = type { i32 }
%struct.amdgpu_bo = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%d \0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@AMDGPU_GEM_METADATA_OP_GET_METADATA = common dso_local global i64 0, align 8
@AMDGPU_GEM_METADATA_OP_SET_METADATA = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_gem_metadata_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_amdgpu_gem_metadata*, align 8
  %9 = alloca %struct.drm_gem_object*, align 8
  %10 = alloca %struct.amdgpu_bo*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.drm_amdgpu_gem_metadata*
  store %struct.drm_amdgpu_gem_metadata* %13, %struct.drm_amdgpu_gem_metadata** %8, align 8
  store i32 -1, i32* %11, align 4
  %14 = load %struct.drm_amdgpu_gem_metadata*, %struct.drm_amdgpu_gem_metadata** %8, align 8
  %15 = getelementptr inbounds %struct.drm_amdgpu_gem_metadata, %struct.drm_amdgpu_gem_metadata* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %19 = load %struct.drm_amdgpu_gem_metadata*, %struct.drm_amdgpu_gem_metadata** %8, align 8
  %20 = getelementptr inbounds %struct.drm_amdgpu_gem_metadata, %struct.drm_amdgpu_gem_metadata* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %18, i32 %21)
  store %struct.drm_gem_object* %22, %struct.drm_gem_object** %9, align 8
  %23 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %24 = icmp eq %struct.drm_gem_object* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOENT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %113

28:                                               ; preds = %3
  %29 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %30 = call %struct.amdgpu_bo* @gem_to_amdgpu_bo(%struct.drm_gem_object* %29)
  store %struct.amdgpu_bo* %30, %struct.amdgpu_bo** %10, align 8
  %31 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %10, align 8
  %32 = call i32 @amdgpu_bo_reserve(%struct.amdgpu_bo* %31, i32 0)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %109

39:                                               ; preds = %28
  %40 = load %struct.drm_amdgpu_gem_metadata*, %struct.drm_amdgpu_gem_metadata** %8, align 8
  %41 = getelementptr inbounds %struct.drm_amdgpu_gem_metadata, %struct.drm_amdgpu_gem_metadata* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @AMDGPU_GEM_METADATA_OP_GET_METADATA, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %39
  %46 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %10, align 8
  %47 = load %struct.drm_amdgpu_gem_metadata*, %struct.drm_amdgpu_gem_metadata** %8, align 8
  %48 = getelementptr inbounds %struct.drm_amdgpu_gem_metadata, %struct.drm_amdgpu_gem_metadata* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  %50 = call i32 @amdgpu_bo_get_tiling_flags(%struct.amdgpu_bo* %46, i32* %49)
  %51 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %10, align 8
  %52 = load %struct.drm_amdgpu_gem_metadata*, %struct.drm_amdgpu_gem_metadata** %8, align 8
  %53 = getelementptr inbounds %struct.drm_amdgpu_gem_metadata, %struct.drm_amdgpu_gem_metadata* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.drm_amdgpu_gem_metadata*, %struct.drm_amdgpu_gem_metadata** %8, align 8
  %57 = getelementptr inbounds %struct.drm_amdgpu_gem_metadata, %struct.drm_amdgpu_gem_metadata* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load %struct.drm_amdgpu_gem_metadata*, %struct.drm_amdgpu_gem_metadata** %8, align 8
  %60 = getelementptr inbounds %struct.drm_amdgpu_gem_metadata, %struct.drm_amdgpu_gem_metadata* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = call i32 @amdgpu_bo_get_metadata(%struct.amdgpu_bo* %51, i32 %55, i32 4, i32* %58, i32* %61)
  store i32 %62, i32* %11, align 4
  br label %105

63:                                               ; preds = %39
  %64 = load %struct.drm_amdgpu_gem_metadata*, %struct.drm_amdgpu_gem_metadata** %8, align 8
  %65 = getelementptr inbounds %struct.drm_amdgpu_gem_metadata, %struct.drm_amdgpu_gem_metadata* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @AMDGPU_GEM_METADATA_OP_SET_METADATA, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %104

69:                                               ; preds = %63
  %70 = load %struct.drm_amdgpu_gem_metadata*, %struct.drm_amdgpu_gem_metadata** %8, align 8
  %71 = getelementptr inbounds %struct.drm_amdgpu_gem_metadata, %struct.drm_amdgpu_gem_metadata* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = icmp ugt i64 %74, 4
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %11, align 4
  br label %106

79:                                               ; preds = %69
  %80 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %10, align 8
  %81 = load %struct.drm_amdgpu_gem_metadata*, %struct.drm_amdgpu_gem_metadata** %8, align 8
  %82 = getelementptr inbounds %struct.drm_amdgpu_gem_metadata, %struct.drm_amdgpu_gem_metadata* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @amdgpu_bo_set_tiling_flags(%struct.amdgpu_bo* %80, i32 %84)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %103, label %88

88:                                               ; preds = %79
  %89 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %10, align 8
  %90 = load %struct.drm_amdgpu_gem_metadata*, %struct.drm_amdgpu_gem_metadata** %8, align 8
  %91 = getelementptr inbounds %struct.drm_amdgpu_gem_metadata, %struct.drm_amdgpu_gem_metadata* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.drm_amdgpu_gem_metadata*, %struct.drm_amdgpu_gem_metadata** %8, align 8
  %95 = getelementptr inbounds %struct.drm_amdgpu_gem_metadata, %struct.drm_amdgpu_gem_metadata* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.drm_amdgpu_gem_metadata*, %struct.drm_amdgpu_gem_metadata** %8, align 8
  %99 = getelementptr inbounds %struct.drm_amdgpu_gem_metadata, %struct.drm_amdgpu_gem_metadata* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @amdgpu_bo_set_metadata(%struct.amdgpu_bo* %89, i32 %93, i32 %97, i32 %101)
  store i32 %102, i32* %11, align 4
  br label %103

103:                                              ; preds = %88, %79
  br label %104

104:                                              ; preds = %103, %63
  br label %105

105:                                              ; preds = %104, %45
  br label %106

106:                                              ; preds = %105, %76
  %107 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %10, align 8
  %108 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %107)
  br label %109

109:                                              ; preds = %106, %38
  %110 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %111 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %110)
  %112 = load i32, i32* %11, align 4
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %109, %25
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local %struct.amdgpu_bo* @gem_to_amdgpu_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @amdgpu_bo_reserve(%struct.amdgpu_bo*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @amdgpu_bo_get_tiling_flags(%struct.amdgpu_bo*, i32*) #1

declare dso_local i32 @amdgpu_bo_get_metadata(%struct.amdgpu_bo*, i32, i32, i32*, i32*) #1

declare dso_local i32 @amdgpu_bo_set_tiling_flags(%struct.amdgpu_bo*, i32) #1

declare dso_local i32 @amdgpu_bo_set_metadata(%struct.amdgpu_bo*, i32, i32, i32) #1

declare dso_local i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
