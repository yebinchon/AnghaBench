; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mode_object.c_set_property_legacy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mode_object.c_set_property_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mode_object = type { i32 }
%struct.drm_property = type { %struct.drm_device* }
%struct.drm_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_mode_object*, %struct.drm_property*, i32)* @set_property_legacy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_property_legacy(%struct.drm_mode_object* %0, %struct.drm_property* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_mode_object*, align 8
  %6 = alloca %struct.drm_property*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.drm_mode_object*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_mode_object* %0, %struct.drm_mode_object** %5, align 8
  store %struct.drm_property* %1, %struct.drm_property** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %12 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %11, i32 0, i32 0
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %8, align 8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %10, align 4
  %16 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @drm_property_change_valid_get(%struct.drm_property* %16, i32 %17, %struct.drm_mode_object** %9)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %52

23:                                               ; preds = %3
  %24 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %25 = call i32 @drm_modeset_lock_all(%struct.drm_device* %24)
  %26 = load %struct.drm_mode_object*, %struct.drm_mode_object** %5, align 8
  %27 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %45 [
    i32 130, label %29
    i32 129, label %34
    i32 128, label %39
  ]

29:                                               ; preds = %23
  %30 = load %struct.drm_mode_object*, %struct.drm_mode_object** %5, align 8
  %31 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @drm_connector_set_obj_prop(%struct.drm_mode_object* %30, %struct.drm_property* %31, i32 %32)
  store i32 %33, i32* %10, align 4
  br label %45

34:                                               ; preds = %23
  %35 = load %struct.drm_mode_object*, %struct.drm_mode_object** %5, align 8
  %36 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @drm_mode_crtc_set_obj_prop(%struct.drm_mode_object* %35, %struct.drm_property* %36, i32 %37)
  store i32 %38, i32* %10, align 4
  br label %45

39:                                               ; preds = %23
  %40 = load %struct.drm_mode_object*, %struct.drm_mode_object** %5, align 8
  %41 = call i32 @obj_to_plane(%struct.drm_mode_object* %40)
  %42 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @drm_mode_plane_set_obj_prop(i32 %41, %struct.drm_property* %42, i32 %43)
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %23, %39, %34, %29
  %46 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %47 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %48 = call i32 @drm_property_change_valid_put(%struct.drm_property* %46, %struct.drm_mode_object* %47)
  %49 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %50 = call i32 @drm_modeset_unlock_all(%struct.drm_device* %49)
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %45, %20
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @drm_property_change_valid_get(%struct.drm_property*, i32, %struct.drm_mode_object**) #1

declare dso_local i32 @drm_modeset_lock_all(%struct.drm_device*) #1

declare dso_local i32 @drm_connector_set_obj_prop(%struct.drm_mode_object*, %struct.drm_property*, i32) #1

declare dso_local i32 @drm_mode_crtc_set_obj_prop(%struct.drm_mode_object*, %struct.drm_property*, i32) #1

declare dso_local i32 @drm_mode_plane_set_obj_prop(i32, %struct.drm_property*, i32) #1

declare dso_local i32 @obj_to_plane(%struct.drm_mode_object*) #1

declare dso_local i32 @drm_property_change_valid_put(%struct.drm_property*, %struct.drm_mode_object*) #1

declare dso_local i32 @drm_modeset_unlock_all(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
