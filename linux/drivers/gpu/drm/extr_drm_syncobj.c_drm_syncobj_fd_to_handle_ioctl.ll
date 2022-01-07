; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_syncobj.c_drm_syncobj_fd_to_handle_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_syncobj.c_drm_syncobj_fd_to_handle_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_syncobj_handle = type { i32, i32, i32, i64 }

@DRIVER_SYNCOBJ = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DRM_SYNCOBJ_FD_TO_HANDLE_FLAGS_IMPORT_SYNC_FILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_syncobj_fd_to_handle_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_syncobj_handle*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.drm_syncobj_handle*
  store %struct.drm_syncobj_handle* %10, %struct.drm_syncobj_handle** %8, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = load i32, i32* @DRIVER_SYNCOBJ, align 4
  %13 = call i32 @drm_core_check_feature(%struct.drm_device* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %64

18:                                               ; preds = %3
  %19 = load %struct.drm_syncobj_handle*, %struct.drm_syncobj_handle** %8, align 8
  %20 = getelementptr inbounds %struct.drm_syncobj_handle, %struct.drm_syncobj_handle* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %64

26:                                               ; preds = %18
  %27 = load %struct.drm_syncobj_handle*, %struct.drm_syncobj_handle** %8, align 8
  %28 = getelementptr inbounds %struct.drm_syncobj_handle, %struct.drm_syncobj_handle* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.drm_syncobj_handle*, %struct.drm_syncobj_handle** %8, align 8
  %33 = getelementptr inbounds %struct.drm_syncobj_handle, %struct.drm_syncobj_handle* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @DRM_SYNCOBJ_FD_TO_HANDLE_FLAGS_IMPORT_SYNC_FILE, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %64

40:                                               ; preds = %31, %26
  %41 = load %struct.drm_syncobj_handle*, %struct.drm_syncobj_handle** %8, align 8
  %42 = getelementptr inbounds %struct.drm_syncobj_handle, %struct.drm_syncobj_handle* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @DRM_SYNCOBJ_FD_TO_HANDLE_FLAGS_IMPORT_SYNC_FILE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %40
  %48 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %49 = load %struct.drm_syncobj_handle*, %struct.drm_syncobj_handle** %8, align 8
  %50 = getelementptr inbounds %struct.drm_syncobj_handle, %struct.drm_syncobj_handle* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.drm_syncobj_handle*, %struct.drm_syncobj_handle** %8, align 8
  %53 = getelementptr inbounds %struct.drm_syncobj_handle, %struct.drm_syncobj_handle* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @drm_syncobj_import_sync_file_fence(%struct.drm_file* %48, i32 %51, i32 %54)
  store i32 %55, i32* %4, align 4
  br label %64

56:                                               ; preds = %40
  %57 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %58 = load %struct.drm_syncobj_handle*, %struct.drm_syncobj_handle** %8, align 8
  %59 = getelementptr inbounds %struct.drm_syncobj_handle, %struct.drm_syncobj_handle* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.drm_syncobj_handle*, %struct.drm_syncobj_handle** %8, align 8
  %62 = getelementptr inbounds %struct.drm_syncobj_handle, %struct.drm_syncobj_handle* %61, i32 0, i32 1
  %63 = call i32 @drm_syncobj_fd_to_handle(%struct.drm_file* %57, i32 %60, i32* %62)
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %56, %47, %37, %23, %15
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_syncobj_import_sync_file_fence(%struct.drm_file*, i32, i32) #1

declare dso_local i32 @drm_syncobj_fd_to_handle(%struct.drm_file*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
