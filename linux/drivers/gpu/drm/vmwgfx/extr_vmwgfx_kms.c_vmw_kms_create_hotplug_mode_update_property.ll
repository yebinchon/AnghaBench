; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_kms_create_hotplug_mode_update_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_kms_create_hotplug_mode_update_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i64, i32 }

@DRM_MODE_PROP_IMMUTABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"hotplug_mode_update\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmw_private*)* @vmw_kms_create_hotplug_mode_update_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmw_kms_create_hotplug_mode_update_property(%struct.vmw_private* %0) #0 {
  %2 = alloca %struct.vmw_private*, align 8
  store %struct.vmw_private* %0, %struct.vmw_private** %2, align 8
  %3 = load %struct.vmw_private*, %struct.vmw_private** %2, align 8
  %4 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %21

8:                                                ; preds = %1
  %9 = load %struct.vmw_private*, %struct.vmw_private** %2, align 8
  %10 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @DRM_MODE_PROP_IMMUTABLE, align 4
  %13 = call i64 @drm_property_create_range(i32 %11, i32 %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 0, i32 1)
  %14 = load %struct.vmw_private*, %struct.vmw_private** %2, align 8
  %15 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.vmw_private*, %struct.vmw_private** %2, align 8
  %17 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %8
  br label %21

21:                                               ; preds = %7, %20, %8
  ret void
}

declare dso_local i64 @drm_property_create_range(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
