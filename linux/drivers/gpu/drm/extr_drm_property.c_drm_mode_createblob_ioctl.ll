; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_property.c_drm_mode_createblob_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_property.c_drm_mode_createblob_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_mode_create_blob = type { i32, i32, i32 }
%struct.drm_property_blob = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@DRIVER_MODESET = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mode_createblob_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_mode_create_blob*, align 8
  %9 = alloca %struct.drm_property_blob*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.drm_mode_create_blob*
  store %struct.drm_mode_create_blob* %12, %struct.drm_mode_create_blob** %8, align 8
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
  br label %72

20:                                               ; preds = %3
  %21 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %22 = load %struct.drm_mode_create_blob*, %struct.drm_mode_create_blob** %8, align 8
  %23 = getelementptr inbounds %struct.drm_mode_create_blob, %struct.drm_mode_create_blob* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.drm_property_blob* @drm_property_create_blob(%struct.drm_device* %21, i32 %24, i32* null)
  store %struct.drm_property_blob* %25, %struct.drm_property_blob** %9, align 8
  %26 = load %struct.drm_property_blob*, %struct.drm_property_blob** %9, align 8
  %27 = call i64 @IS_ERR(%struct.drm_property_blob* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load %struct.drm_property_blob*, %struct.drm_property_blob** %9, align 8
  %31 = call i32 @PTR_ERR(%struct.drm_property_blob* %30)
  store i32 %31, i32* %4, align 4
  br label %72

32:                                               ; preds = %20
  %33 = load %struct.drm_property_blob*, %struct.drm_property_blob** %9, align 8
  %34 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.drm_mode_create_blob*, %struct.drm_mode_create_blob** %8, align 8
  %37 = getelementptr inbounds %struct.drm_mode_create_blob, %struct.drm_mode_create_blob* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @u64_to_user_ptr(i32 %38)
  %40 = load %struct.drm_mode_create_blob*, %struct.drm_mode_create_blob** %8, align 8
  %41 = getelementptr inbounds %struct.drm_mode_create_blob, %struct.drm_mode_create_blob* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @copy_from_user(i32 %35, i32 %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %32
  %46 = load i32, i32* @EFAULT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %10, align 4
  br label %68

48:                                               ; preds = %32
  %49 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %50 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = call i32 @mutex_lock(i32* %51)
  %53 = load %struct.drm_property_blob*, %struct.drm_property_blob** %9, align 8
  %54 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.drm_mode_create_blob*, %struct.drm_mode_create_blob** %8, align 8
  %58 = getelementptr inbounds %struct.drm_mode_create_blob, %struct.drm_mode_create_blob* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.drm_property_blob*, %struct.drm_property_blob** %9, align 8
  %60 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %59, i32 0, i32 0
  %61 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %62 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %61, i32 0, i32 0
  %63 = call i32 @list_add_tail(i32* %60, i32* %62)
  %64 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %65 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(i32* %66)
  store i32 0, i32* %4, align 4
  br label %72

68:                                               ; preds = %45
  %69 = load %struct.drm_property_blob*, %struct.drm_property_blob** %9, align 8
  %70 = call i32 @drm_property_blob_put(%struct.drm_property_blob* %69)
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %68, %48, %29, %17
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local %struct.drm_property_blob* @drm_property_create_blob(%struct.drm_device*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.drm_property_blob*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_property_blob*) #1

declare dso_local i64 @copy_from_user(i32, i32, i32) #1

declare dso_local i32 @u64_to_user_ptr(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @drm_property_blob_put(%struct.drm_property_blob*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
