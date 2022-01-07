; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_ioctl.c_qxl_update_area_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_ioctl.c_qxl_update_area_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_operation_ctx = type { i32, i32 }
%struct.drm_device = type { %struct.qxl_device* }
%struct.qxl_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_qxl_update_area = type { i64, i64, i64, i64, i32 }
%struct.qxl_rect = type { i64, i64, i64, i64 }
%struct.drm_gem_object = type { i32 }
%struct.qxl_bo = type { i32, i32, i32, i32, i32 }

@__const.qxl_update_area_ioctl.ctx = private unnamed_addr constant %struct.ttm_operation_ctx { i32 1, i32 0 }, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"got update area for surface with no id %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*)* @qxl_update_area_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qxl_update_area_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.qxl_device*, align 8
  %9 = alloca %struct.drm_qxl_update_area*, align 8
  %10 = alloca %struct.qxl_rect, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_gem_object*, align 8
  %13 = alloca %struct.qxl_bo*, align 8
  %14 = alloca %struct.ttm_operation_ctx, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.qxl_device*, %struct.qxl_device** %16, align 8
  store %struct.qxl_device* %17, %struct.qxl_device** %8, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.drm_qxl_update_area*
  store %struct.drm_qxl_update_area* %19, %struct.drm_qxl_update_area** %9, align 8
  %20 = getelementptr inbounds %struct.qxl_rect, %struct.qxl_rect* %10, i32 0, i32 0
  %21 = load %struct.drm_qxl_update_area*, %struct.drm_qxl_update_area** %9, align 8
  %22 = getelementptr inbounds %struct.drm_qxl_update_area, %struct.drm_qxl_update_area* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %20, align 8
  %24 = getelementptr inbounds %struct.qxl_rect, %struct.qxl_rect* %10, i32 0, i32 1
  %25 = load %struct.drm_qxl_update_area*, %struct.drm_qxl_update_area** %9, align 8
  %26 = getelementptr inbounds %struct.drm_qxl_update_area, %struct.drm_qxl_update_area* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %24, align 8
  %28 = getelementptr inbounds %struct.qxl_rect, %struct.qxl_rect* %10, i32 0, i32 2
  %29 = load %struct.drm_qxl_update_area*, %struct.drm_qxl_update_area** %9, align 8
  %30 = getelementptr inbounds %struct.drm_qxl_update_area, %struct.drm_qxl_update_area* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %28, align 8
  %32 = getelementptr inbounds %struct.qxl_rect, %struct.qxl_rect* %10, i32 0, i32 3
  %33 = load %struct.drm_qxl_update_area*, %struct.drm_qxl_update_area** %9, align 8
  %34 = getelementptr inbounds %struct.drm_qxl_update_area, %struct.drm_qxl_update_area* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %32, align 8
  store %struct.drm_gem_object* null, %struct.drm_gem_object** %12, align 8
  store %struct.qxl_bo* null, %struct.qxl_bo** %13, align 8
  %36 = bitcast %struct.ttm_operation_ctx* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 bitcast (%struct.ttm_operation_ctx* @__const.qxl_update_area_ioctl.ctx to i8*), i64 8, i1 false)
  %37 = load %struct.drm_qxl_update_area*, %struct.drm_qxl_update_area** %9, align 8
  %38 = getelementptr inbounds %struct.drm_qxl_update_area, %struct.drm_qxl_update_area* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.drm_qxl_update_area*, %struct.drm_qxl_update_area** %9, align 8
  %41 = getelementptr inbounds %struct.drm_qxl_update_area, %struct.drm_qxl_update_area* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp sge i64 %39, %42
  br i1 %43, label %52, label %44

44:                                               ; preds = %3
  %45 = load %struct.drm_qxl_update_area*, %struct.drm_qxl_update_area** %9, align 8
  %46 = getelementptr inbounds %struct.drm_qxl_update_area, %struct.drm_qxl_update_area* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.drm_qxl_update_area*, %struct.drm_qxl_update_area** %9, align 8
  %49 = getelementptr inbounds %struct.drm_qxl_update_area, %struct.drm_qxl_update_area* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp sge i64 %47, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %44, %3
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %123

55:                                               ; preds = %44
  %56 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %57 = load %struct.drm_qxl_update_area*, %struct.drm_qxl_update_area** %9, align 8
  %58 = getelementptr inbounds %struct.drm_qxl_update_area, %struct.drm_qxl_update_area* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %56, i32 %59)
  store %struct.drm_gem_object* %60, %struct.drm_gem_object** %12, align 8
  %61 = load %struct.drm_gem_object*, %struct.drm_gem_object** %12, align 8
  %62 = icmp eq %struct.drm_gem_object* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load i32, i32* @ENOENT, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %123

66:                                               ; preds = %55
  %67 = load %struct.drm_gem_object*, %struct.drm_gem_object** %12, align 8
  %68 = call %struct.qxl_bo* @gem_to_qxl_bo(%struct.drm_gem_object* %67)
  store %struct.qxl_bo* %68, %struct.qxl_bo** %13, align 8
  %69 = load %struct.qxl_bo*, %struct.qxl_bo** %13, align 8
  %70 = call i32 @qxl_bo_reserve(%struct.qxl_bo* %69, i32 0)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %119

74:                                               ; preds = %66
  %75 = load %struct.qxl_bo*, %struct.qxl_bo** %13, align 8
  %76 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %95, label %79

79:                                               ; preds = %74
  %80 = load %struct.qxl_bo*, %struct.qxl_bo** %13, align 8
  %81 = load %struct.qxl_bo*, %struct.qxl_bo** %13, align 8
  %82 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @qxl_ttm_placement_from_domain(%struct.qxl_bo* %80, i32 %83, i32 0)
  %85 = load %struct.qxl_bo*, %struct.qxl_bo** %13, align 8
  %86 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %85, i32 0, i32 2
  %87 = load %struct.qxl_bo*, %struct.qxl_bo** %13, align 8
  %88 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %87, i32 0, i32 1
  %89 = call i32 @ttm_bo_validate(i32* %86, i32* %88, %struct.ttm_operation_ctx* %14)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = call i64 @unlikely(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %79
  br label %119

94:                                               ; preds = %79
  br label %95

95:                                               ; preds = %94, %74
  %96 = load %struct.qxl_device*, %struct.qxl_device** %8, align 8
  %97 = load %struct.qxl_bo*, %struct.qxl_bo** %13, align 8
  %98 = call i32 @qxl_bo_check_id(%struct.qxl_device* %96, %struct.qxl_bo* %97)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %116

102:                                              ; preds = %95
  %103 = load %struct.qxl_bo*, %struct.qxl_bo** %13, align 8
  %104 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %102
  %108 = load %struct.drm_qxl_update_area*, %struct.drm_qxl_update_area** %9, align 8
  %109 = getelementptr inbounds %struct.drm_qxl_update_area, %struct.drm_qxl_update_area* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %107, %102
  %113 = load %struct.qxl_device*, %struct.qxl_device** %8, align 8
  %114 = load %struct.qxl_bo*, %struct.qxl_bo** %13, align 8
  %115 = call i32 @qxl_io_update_area(%struct.qxl_device* %113, %struct.qxl_bo* %114, %struct.qxl_rect* %10)
  store i32 %115, i32* %11, align 4
  br label %116

116:                                              ; preds = %112, %101
  %117 = load %struct.qxl_bo*, %struct.qxl_bo** %13, align 8
  %118 = call i32 @qxl_bo_unreserve(%struct.qxl_bo* %117)
  br label %119

119:                                              ; preds = %116, %93, %73
  %120 = load %struct.drm_gem_object*, %struct.drm_gem_object** %12, align 8
  %121 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %120)
  %122 = load i32, i32* %11, align 4
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %119, %63, %52
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #2

declare dso_local %struct.qxl_bo* @gem_to_qxl_bo(%struct.drm_gem_object*) #2

declare dso_local i32 @qxl_bo_reserve(%struct.qxl_bo*, i32) #2

declare dso_local i32 @qxl_ttm_placement_from_domain(%struct.qxl_bo*, i32, i32) #2

declare dso_local i32 @ttm_bo_validate(i32*, i32*, %struct.ttm_operation_ctx*) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @qxl_bo_check_id(%struct.qxl_device*, %struct.qxl_bo*) #2

declare dso_local i32 @DRM_ERROR(i8*, i32) #2

declare dso_local i32 @qxl_io_update_area(%struct.qxl_device*, %struct.qxl_bo*, %struct.qxl_rect*) #2

declare dso_local i32 @qxl_bo_unreserve(%struct.qxl_bo*) #2

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
