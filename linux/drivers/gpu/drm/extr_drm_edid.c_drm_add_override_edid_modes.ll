; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_add_override_edid_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_add_override_edid_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.edid = type { i32 }

@.str = private unnamed_addr constant [71 x i8] c"[CONNECTOR:%d:%s] adding %d modes via fallback override/firmware EDID\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_add_override_edid_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.edid*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %6 = call %struct.edid* @drm_get_override_edid(%struct.drm_connector* %5)
  store %struct.edid* %6, %struct.edid** %3, align 8
  %7 = load %struct.edid*, %struct.edid** %3, align 8
  %8 = icmp ne %struct.edid* %7, null
  br i1 %8, label %9, label %27

9:                                                ; preds = %1
  %10 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %11 = load %struct.edid*, %struct.edid** %3, align 8
  %12 = call i32 @drm_connector_update_edid_property(%struct.drm_connector* %10, %struct.edid* %11)
  %13 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %14 = load %struct.edid*, %struct.edid** %3, align 8
  %15 = call i32 @drm_add_edid_modes(%struct.drm_connector* %13, %struct.edid* %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.edid*, %struct.edid** %3, align 8
  %17 = call i32 @kfree(%struct.edid* %16)
  %18 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %19 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %23 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %9, %1
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local %struct.edid* @drm_get_override_edid(%struct.drm_connector*) #1

declare dso_local i32 @drm_connector_update_edid_property(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @drm_add_edid_modes(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @kfree(%struct.edid*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
