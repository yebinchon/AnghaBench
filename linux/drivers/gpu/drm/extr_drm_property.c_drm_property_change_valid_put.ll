; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_property.c_drm_property_change_valid_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_property.c_drm_property_change_valid_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_property = type { i32 }
%struct.drm_mode_object = type { i32 }

@DRM_MODE_PROP_OBJECT = common dso_local global i32 0, align 4
@DRM_MODE_PROP_BLOB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_property_change_valid_put(%struct.drm_property* %0, %struct.drm_mode_object* %1) #0 {
  %3 = alloca %struct.drm_property*, align 8
  %4 = alloca %struct.drm_mode_object*, align 8
  store %struct.drm_property* %0, %struct.drm_property** %3, align 8
  store %struct.drm_mode_object* %1, %struct.drm_mode_object** %4, align 8
  %5 = load %struct.drm_mode_object*, %struct.drm_mode_object** %4, align 8
  %6 = icmp ne %struct.drm_mode_object* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %26

8:                                                ; preds = %2
  %9 = load %struct.drm_property*, %struct.drm_property** %3, align 8
  %10 = load i32, i32* @DRM_MODE_PROP_OBJECT, align 4
  %11 = call i64 @drm_property_type_is(%struct.drm_property* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load %struct.drm_mode_object*, %struct.drm_mode_object** %4, align 8
  %15 = call i32 @drm_mode_object_put(%struct.drm_mode_object* %14)
  br label %26

16:                                               ; preds = %8
  %17 = load %struct.drm_property*, %struct.drm_property** %3, align 8
  %18 = load i32, i32* @DRM_MODE_PROP_BLOB, align 4
  %19 = call i64 @drm_property_type_is(%struct.drm_property* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.drm_mode_object*, %struct.drm_mode_object** %4, align 8
  %23 = call i32 @obj_to_blob(%struct.drm_mode_object* %22)
  %24 = call i32 @drm_property_blob_put(i32 %23)
  br label %25

25:                                               ; preds = %21, %16
  br label %26

26:                                               ; preds = %7, %25, %13
  ret void
}

declare dso_local i64 @drm_property_type_is(%struct.drm_property*, i32) #1

declare dso_local i32 @drm_mode_object_put(%struct.drm_mode_object*) #1

declare dso_local i32 @drm_property_blob_put(i32) #1

declare dso_local i32 @obj_to_blob(%struct.drm_mode_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
