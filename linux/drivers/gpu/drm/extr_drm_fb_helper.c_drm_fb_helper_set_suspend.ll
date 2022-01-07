; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_set_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_set_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_fb_helper = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_fb_helper_set_suspend(%struct.drm_fb_helper* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_fb_helper*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_fb_helper* %0, %struct.drm_fb_helper** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %6 = icmp ne %struct.drm_fb_helper* %5, null
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %9 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %14 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @fb_set_suspend(i64 %15, i32 %16)
  br label %18

18:                                               ; preds = %12, %7, %2
  ret void
}

declare dso_local i32 @fb_set_suspend(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
