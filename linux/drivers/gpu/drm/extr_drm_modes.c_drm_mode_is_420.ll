; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_modes.c_drm_mode_is_420.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_modes.c_drm_mode_is_420.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_info = type { i32 }
%struct.drm_display_mode = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mode_is_420(%struct.drm_display_info* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.drm_display_info*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_display_info* %0, %struct.drm_display_info** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %5 = load %struct.drm_display_info*, %struct.drm_display_info** %3, align 8
  %6 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %7 = call i64 @drm_mode_is_420_only(%struct.drm_display_info* %5, %struct.drm_display_mode* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load %struct.drm_display_info*, %struct.drm_display_info** %3, align 8
  %11 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %12 = call i64 @drm_mode_is_420_also(%struct.drm_display_info* %10, %struct.drm_display_mode* %11)
  %13 = icmp ne i64 %12, 0
  br label %14

14:                                               ; preds = %9, %2
  %15 = phi i1 [ true, %2 ], [ %13, %9 ]
  %16 = zext i1 %15 to i32
  ret i32 %16
}

declare dso_local i64 @drm_mode_is_420_only(%struct.drm_display_info*, %struct.drm_display_mode*) #1

declare dso_local i64 @drm_mode_is_420_also(%struct.drm_display_info*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
