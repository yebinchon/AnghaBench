; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_drv.c_meson_remove_framebuffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_drv.c_meson_remove_framebuffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apertures_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [13 x i8] c"meson-drm-fb\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @meson_remove_framebuffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_remove_framebuffers() #0 {
  %1 = alloca %struct.apertures_struct*, align 8
  %2 = call %struct.apertures_struct* @alloc_apertures(i32 1)
  store %struct.apertures_struct* %2, %struct.apertures_struct** %1, align 8
  %3 = load %struct.apertures_struct*, %struct.apertures_struct** %1, align 8
  %4 = icmp ne %struct.apertures_struct* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %21

6:                                                ; preds = %0
  %7 = load %struct.apertures_struct*, %struct.apertures_struct** %1, align 8
  %8 = getelementptr inbounds %struct.apertures_struct, %struct.apertures_struct* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = load %struct.apertures_struct*, %struct.apertures_struct** %1, align 8
  %13 = getelementptr inbounds %struct.apertures_struct, %struct.apertures_struct* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 -1, i32* %16, align 8
  %17 = load %struct.apertures_struct*, %struct.apertures_struct** %1, align 8
  %18 = call i32 @drm_fb_helper_remove_conflicting_framebuffers(%struct.apertures_struct* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 0)
  %19 = load %struct.apertures_struct*, %struct.apertures_struct** %1, align 8
  %20 = call i32 @kfree(%struct.apertures_struct* %19)
  br label %21

21:                                               ; preds = %6, %5
  ret void
}

declare dso_local %struct.apertures_struct* @alloc_apertures(i32) #1

declare dso_local i32 @drm_fb_helper_remove_conflicting_framebuffers(%struct.apertures_struct*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.apertures_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
