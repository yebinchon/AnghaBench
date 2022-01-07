; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_add_cvt_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_add_cvt_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.edid = type { i32 }
%struct.detailed_mode_closure = type { i32, %struct.edid*, %struct.drm_connector* }

@do_cvt_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.edid*)* @add_cvt_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_cvt_modes(%struct.drm_connector* %0, %struct.edid* %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.edid*, align 8
  %5 = alloca %struct.detailed_mode_closure, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store %struct.edid* %1, %struct.edid** %4, align 8
  %6 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %5, i32 0, i32 0
  store i32 0, i32* %6, align 8
  %7 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %5, i32 0, i32 1
  %8 = load %struct.edid*, %struct.edid** %4, align 8
  store %struct.edid* %8, %struct.edid** %7, align 8
  %9 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %5, i32 0, i32 2
  %10 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  store %struct.drm_connector* %10, %struct.drm_connector** %9, align 8
  %11 = load %struct.edid*, %struct.edid** %4, align 8
  %12 = call i64 @version_greater(%struct.edid* %11, i32 1, i32 2)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.edid*, %struct.edid** %4, align 8
  %16 = bitcast %struct.edid* %15 to i32*
  %17 = load i32, i32* @do_cvt_mode, align 4
  %18 = call i32 @drm_for_each_detailed_block(i32* %16, i32 %17, %struct.detailed_mode_closure* %5)
  br label %19

19:                                               ; preds = %14, %2
  %20 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %5, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  ret i32 %21
}

declare dso_local i64 @version_greater(%struct.edid*, i32, i32) #1

declare dso_local i32 @drm_for_each_detailed_block(i32*, i32, %struct.detailed_mode_closure*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
