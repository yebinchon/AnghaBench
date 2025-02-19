; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_property.c_drm_property_lookup_blob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_property.c_drm_property_lookup_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_property_blob = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_mode_object = type { i32 }

@DRM_MODE_OBJECT_BLOB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_property_blob* @drm_property_lookup_blob(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_mode_object*, align 8
  %6 = alloca %struct.drm_property_blob*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.drm_property_blob* null, %struct.drm_property_blob** %6, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @DRM_MODE_OBJECT_BLOB, align 4
  %10 = call %struct.drm_mode_object* @__drm_mode_object_find(%struct.drm_device* %7, i32* null, i32 %8, i32 %9)
  store %struct.drm_mode_object* %10, %struct.drm_mode_object** %5, align 8
  %11 = load %struct.drm_mode_object*, %struct.drm_mode_object** %5, align 8
  %12 = icmp ne %struct.drm_mode_object* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.drm_mode_object*, %struct.drm_mode_object** %5, align 8
  %15 = call %struct.drm_property_blob* @obj_to_blob(%struct.drm_mode_object* %14)
  store %struct.drm_property_blob* %15, %struct.drm_property_blob** %6, align 8
  br label %16

16:                                               ; preds = %13, %2
  %17 = load %struct.drm_property_blob*, %struct.drm_property_blob** %6, align 8
  ret %struct.drm_property_blob* %17
}

declare dso_local %struct.drm_mode_object* @__drm_mode_object_find(%struct.drm_device*, i32*, i32, i32) #1

declare dso_local %struct.drm_property_blob* @obj_to_blob(%struct.drm_mode_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
