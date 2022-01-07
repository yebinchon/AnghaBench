; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_bufs.c_drm_legacy_addmap_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_bufs.c_drm_legacy_addmap_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_map = type { i64, i32, i8*, i32, i32, i32 }
%struct.drm_map_list = type { i64 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@_DRM_AGP = common dso_local global i64 0, align 8
@_DRM_SHM = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@DRIVER_KMS_LEGACY_CONTEXT = common dso_local global i32 0, align 4
@DRIVER_LEGACY = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_legacy_addmap_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_map*, align 8
  %9 = alloca %struct.drm_map_list*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.drm_map*
  store %struct.drm_map* %12, %struct.drm_map** %8, align 8
  %13 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %14 = call i64 @capable(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %3
  %17 = load %struct.drm_map*, %struct.drm_map** %8, align 8
  %18 = getelementptr inbounds %struct.drm_map, %struct.drm_map* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @_DRM_AGP, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %31, label %22

22:                                               ; preds = %16
  %23 = load %struct.drm_map*, %struct.drm_map** %8, align 8
  %24 = getelementptr inbounds %struct.drm_map, %struct.drm_map* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @_DRM_SHM, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @EPERM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %72

31:                                               ; preds = %22, %16, %3
  %32 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %33 = load i32, i32* @DRIVER_KMS_LEGACY_CONTEXT, align 4
  %34 = call i32 @drm_core_check_feature(%struct.drm_device* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %31
  %37 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %38 = load i32, i32* @DRIVER_LEGACY, align 4
  %39 = call i32 @drm_core_check_feature(%struct.drm_device* %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @EOPNOTSUPP, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %72

44:                                               ; preds = %36, %31
  %45 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %46 = load %struct.drm_map*, %struct.drm_map** %8, align 8
  %47 = getelementptr inbounds %struct.drm_map, %struct.drm_map* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.drm_map*, %struct.drm_map** %8, align 8
  %50 = getelementptr inbounds %struct.drm_map, %struct.drm_map* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.drm_map*, %struct.drm_map** %8, align 8
  %53 = getelementptr inbounds %struct.drm_map, %struct.drm_map* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.drm_map*, %struct.drm_map** %8, align 8
  %56 = getelementptr inbounds %struct.drm_map, %struct.drm_map* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @drm_addmap_core(%struct.drm_device* %45, i32 %48, i32 %51, i64 %54, i32 %57, %struct.drm_map_list** %9)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %44
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %4, align 4
  br label %72

63:                                               ; preds = %44
  %64 = load %struct.drm_map_list*, %struct.drm_map_list** %9, align 8
  %65 = getelementptr inbounds %struct.drm_map_list, %struct.drm_map_list* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i8*
  %68 = load %struct.drm_map*, %struct.drm_map** %8, align 8
  %69 = getelementptr inbounds %struct.drm_map, %struct.drm_map* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  %70 = load %struct.drm_map*, %struct.drm_map** %8, align 8
  %71 = getelementptr inbounds %struct.drm_map, %struct.drm_map* %70, i32 0, i32 1
  store i32 -1, i32* %71, align 8
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %63, %61, %41, %28
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i64 @capable(i32) #1

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_addmap_core(%struct.drm_device*, i32, i32, i64, i32, %struct.drm_map_list**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
