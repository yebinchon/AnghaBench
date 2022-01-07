; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_add_detailed_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_add_detailed_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.edid = type { i32 }
%struct.detailed_mode_closure = type { i32, i32, i32, %struct.edid*, %struct.drm_connector* }

@DRM_EDID_FEATURE_PREFERRED_TIMING = common dso_local global i32 0, align 4
@do_detailed_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.edid*, i32)* @add_detailed_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_detailed_modes(%struct.drm_connector* %0, %struct.edid* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.edid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.detailed_mode_closure, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.edid* %1, %struct.edid** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %7, i32 0, i32 1
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %7, i32 0, i32 2
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %10, align 8
  %12 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %7, i32 0, i32 3
  %13 = load %struct.edid*, %struct.edid** %5, align 8
  store %struct.edid* %13, %struct.edid** %12, align 8
  %14 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %7, i32 0, i32 4
  %15 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  store %struct.drm_connector* %15, %struct.drm_connector** %14, align 8
  %16 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %7, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %3
  %20 = load %struct.edid*, %struct.edid** %5, align 8
  %21 = call i32 @version_greater(%struct.edid* %20, i32 1, i32 3)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = load %struct.edid*, %struct.edid** %5, align 8
  %25 = getelementptr inbounds %struct.edid, %struct.edid* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @DRM_EDID_FEATURE_PREFERRED_TIMING, align 4
  %28 = and i32 %26, %27
  %29 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %7, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  br label %30

30:                                               ; preds = %23, %19, %3
  %31 = load %struct.edid*, %struct.edid** %5, align 8
  %32 = bitcast %struct.edid* %31 to i32*
  %33 = load i32, i32* @do_detailed_mode, align 4
  %34 = call i32 @drm_for_each_detailed_block(i32* %32, i32 %33, %struct.detailed_mode_closure* %7)
  %35 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %7, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  ret i32 %36
}

declare dso_local i32 @version_greater(%struct.edid*, i32, i32) #1

declare dso_local i32 @drm_for_each_detailed_block(i32*, i32, %struct.detailed_mode_closure*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
