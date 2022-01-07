; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mode_object.c_drm_mode_obj_set_property_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mode_object.c_drm_mode_obj_set_property_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_mode_obj_set_property = type { i32, i32, i32, i32 }
%struct.drm_mode_object = type { i32 }
%struct.drm_property = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DRIVER_MODESET = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mode_obj_set_property_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_mode_obj_set_property*, align 8
  %9 = alloca %struct.drm_mode_object*, align 8
  %10 = alloca %struct.drm_property*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.drm_mode_obj_set_property*
  store %struct.drm_mode_obj_set_property* %13, %struct.drm_mode_obj_set_property** %8, align 8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %11, align 4
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = load i32, i32* @DRIVER_MODESET, align 4
  %18 = call i32 @drm_core_check_feature(%struct.drm_device* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %79

23:                                               ; preds = %3
  %24 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %25 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %26 = load %struct.drm_mode_obj_set_property*, %struct.drm_mode_obj_set_property** %8, align 8
  %27 = getelementptr inbounds %struct.drm_mode_obj_set_property, %struct.drm_mode_obj_set_property* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.drm_mode_obj_set_property*, %struct.drm_mode_obj_set_property** %8, align 8
  %30 = getelementptr inbounds %struct.drm_mode_obj_set_property, %struct.drm_mode_obj_set_property* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.drm_mode_object* @drm_mode_object_find(%struct.drm_device* %24, %struct.drm_file* %25, i32 %28, i32 %31)
  store %struct.drm_mode_object* %32, %struct.drm_mode_object** %9, align 8
  %33 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %34 = icmp ne %struct.drm_mode_object* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %23
  %36 = load i32, i32* @ENOENT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %79

38:                                               ; preds = %23
  %39 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %40 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %75

44:                                               ; preds = %38
  %45 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %46 = load %struct.drm_mode_obj_set_property*, %struct.drm_mode_obj_set_property** %8, align 8
  %47 = getelementptr inbounds %struct.drm_mode_obj_set_property, %struct.drm_mode_obj_set_property* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.drm_property* @drm_mode_obj_find_prop_id(%struct.drm_mode_object* %45, i32 %48)
  store %struct.drm_property* %49, %struct.drm_property** %10, align 8
  %50 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %51 = icmp ne %struct.drm_property* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %44
  br label %75

53:                                               ; preds = %44
  %54 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %55 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @drm_drv_uses_atomic_modeset(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %53
  %60 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %61 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %62 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %63 = load %struct.drm_mode_obj_set_property*, %struct.drm_mode_obj_set_property** %8, align 8
  %64 = getelementptr inbounds %struct.drm_mode_obj_set_property, %struct.drm_mode_obj_set_property* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @set_property_atomic(%struct.drm_mode_object* %60, %struct.drm_file* %61, %struct.drm_property* %62, i32 %65)
  store i32 %66, i32* %11, align 4
  br label %74

67:                                               ; preds = %53
  %68 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %69 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %70 = load %struct.drm_mode_obj_set_property*, %struct.drm_mode_obj_set_property** %8, align 8
  %71 = getelementptr inbounds %struct.drm_mode_obj_set_property, %struct.drm_mode_obj_set_property* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @set_property_legacy(%struct.drm_mode_object* %68, %struct.drm_property* %69, i32 %72)
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %67, %59
  br label %75

75:                                               ; preds = %74, %52, %43
  %76 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %77 = call i32 @drm_mode_object_put(%struct.drm_mode_object* %76)
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %75, %35, %20
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local %struct.drm_mode_object* @drm_mode_object_find(%struct.drm_device*, %struct.drm_file*, i32, i32) #1

declare dso_local %struct.drm_property* @drm_mode_obj_find_prop_id(%struct.drm_mode_object*, i32) #1

declare dso_local i64 @drm_drv_uses_atomic_modeset(i32) #1

declare dso_local i32 @set_property_atomic(%struct.drm_mode_object*, %struct.drm_file*, %struct.drm_property*, i32) #1

declare dso_local i32 @set_property_legacy(%struct.drm_mode_object*, %struct.drm_property*, i32) #1

declare dso_local i32 @drm_mode_object_put(%struct.drm_mode_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
