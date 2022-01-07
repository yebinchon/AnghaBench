; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos5433_drm_decon.c_decon_handle_vblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos5433_drm_decon.c_decon_handle_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decon_context = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.decon_context*)* @decon_handle_vblank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decon_handle_vblank(%struct.decon_context* %0) #0 {
  %2 = alloca %struct.decon_context*, align 8
  %3 = alloca i64, align 8
  store %struct.decon_context* %0, %struct.decon_context** %2, align 8
  %4 = load %struct.decon_context*, %struct.decon_context** %2, align 8
  %5 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %4, i32 0, i32 1
  %6 = call i32 @spin_lock(i32* %5)
  %7 = load %struct.decon_context*, %struct.decon_context** %2, align 8
  %8 = call i64 @decon_get_frame_count(%struct.decon_context* %7, i32 1)
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load %struct.decon_context*, %struct.decon_context** %2, align 8
  %11 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %9, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %1
  %15 = load i64, i64* %3, align 8
  %16 = load %struct.decon_context*, %struct.decon_context** %2, align 8
  %17 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %15, %18
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = load %struct.decon_context*, %struct.decon_context** %2, align 8
  %23 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @drm_crtc_handle_vblank(i32* %25)
  br label %27

27:                                               ; preds = %21, %14
  %28 = load i64, i64* %3, align 8
  %29 = load %struct.decon_context*, %struct.decon_context** %2, align 8
  %30 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  br label %31

31:                                               ; preds = %27, %1
  %32 = load %struct.decon_context*, %struct.decon_context** %2, align 8
  %33 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %32, i32 0, i32 1
  %34 = call i32 @spin_unlock(i32* %33)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @decon_get_frame_count(%struct.decon_context*, i32) #1

declare dso_local i32 @drm_crtc_handle_vblank(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
