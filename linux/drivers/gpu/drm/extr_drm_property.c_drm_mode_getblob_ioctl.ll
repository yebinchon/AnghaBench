; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_property.c_drm_mode_getblob_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_property.c_drm_mode_getblob_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_mode_get_blob = type { i64, i32, i32 }
%struct.drm_property_blob = type { i64, i32 }

@DRIVER_MODESET = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mode_getblob_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_mode_get_blob*, align 8
  %9 = alloca %struct.drm_property_blob*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.drm_mode_get_blob*
  store %struct.drm_mode_get_blob* %12, %struct.drm_mode_get_blob** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = load i32, i32* @DRIVER_MODESET, align 4
  %15 = call i32 @drm_core_check_feature(%struct.drm_device* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %66

20:                                               ; preds = %3
  %21 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %22 = load %struct.drm_mode_get_blob*, %struct.drm_mode_get_blob** %8, align 8
  %23 = getelementptr inbounds %struct.drm_mode_get_blob, %struct.drm_mode_get_blob* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.drm_property_blob* @drm_property_lookup_blob(%struct.drm_device* %21, i32 %24)
  store %struct.drm_property_blob* %25, %struct.drm_property_blob** %9, align 8
  %26 = load %struct.drm_property_blob*, %struct.drm_property_blob** %9, align 8
  %27 = icmp ne %struct.drm_property_blob* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %66

31:                                               ; preds = %20
  %32 = load %struct.drm_mode_get_blob*, %struct.drm_mode_get_blob** %8, align 8
  %33 = getelementptr inbounds %struct.drm_mode_get_blob, %struct.drm_mode_get_blob* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.drm_property_blob*, %struct.drm_property_blob** %9, align 8
  %36 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %31
  %40 = load %struct.drm_mode_get_blob*, %struct.drm_mode_get_blob** %8, align 8
  %41 = getelementptr inbounds %struct.drm_mode_get_blob, %struct.drm_mode_get_blob* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @u64_to_user_ptr(i32 %42)
  %44 = load %struct.drm_property_blob*, %struct.drm_property_blob** %9, align 8
  %45 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.drm_property_blob*, %struct.drm_property_blob** %9, align 8
  %48 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @copy_to_user(i32 %43, i32 %46, i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %39
  %53 = load i32, i32* @EFAULT, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %10, align 4
  br label %62

55:                                               ; preds = %39
  br label %56

56:                                               ; preds = %55, %31
  %57 = load %struct.drm_property_blob*, %struct.drm_property_blob** %9, align 8
  %58 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.drm_mode_get_blob*, %struct.drm_mode_get_blob** %8, align 8
  %61 = getelementptr inbounds %struct.drm_mode_get_blob, %struct.drm_mode_get_blob* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %56, %52
  %63 = load %struct.drm_property_blob*, %struct.drm_property_blob** %9, align 8
  %64 = call i32 @drm_property_blob_put(%struct.drm_property_blob* %63)
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %62, %28, %17
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local %struct.drm_property_blob* @drm_property_lookup_blob(%struct.drm_device*, i32) #1

declare dso_local i64 @copy_to_user(i32, i32, i64) #1

declare dso_local i32 @u64_to_user_ptr(i32) #1

declare dso_local i32 @drm_property_blob_put(%struct.drm_property_blob*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
