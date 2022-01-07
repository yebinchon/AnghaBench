; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimd.c_fimd_te_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimd.c_fimd_te_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_crtc = type { %struct.fimd_context* }
%struct.fimd_context = type { %struct.TYPE_3__*, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@I80_HW_TRG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_drm_crtc*)* @fimd_te_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fimd_te_handler(%struct.exynos_drm_crtc* %0) #0 {
  %2 = alloca %struct.exynos_drm_crtc*, align 8
  %3 = alloca %struct.fimd_context*, align 8
  %4 = alloca i64, align 8
  store %struct.exynos_drm_crtc* %0, %struct.exynos_drm_crtc** %2, align 8
  %5 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %2, align 8
  %6 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %5, i32 0, i32 0
  %7 = load %struct.fimd_context*, %struct.fimd_context** %6, align 8
  store %struct.fimd_context* %7, %struct.fimd_context** %3, align 8
  %8 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %9 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %8, i32 0, i32 7
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %4, align 8
  %13 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %14 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %57

18:                                               ; preds = %1
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @I80_HW_TRG, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %34

23:                                               ; preds = %18
  %24 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %25 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %24, i32 0, i32 5
  %26 = call i64 @atomic_add_unless(i32* %25, i32 -1, i32 0)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %30 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @fimd_trigger(i32 %31)
  br label %33

33:                                               ; preds = %28, %23
  br label %34

34:                                               ; preds = %33, %22
  %35 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %36 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %35, i32 0, i32 3
  %37 = call i64 @atomic_read(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %41 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %40, i32 0, i32 3
  %42 = call i32 @atomic_set(i32* %41, i32 0)
  %43 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %44 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %43, i32 0, i32 2
  %45 = call i32 @wake_up(i32* %44)
  br label %46

46:                                               ; preds = %39, %34
  %47 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %48 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %47, i32 0, i32 1
  %49 = call i64 @test_bit(i32 0, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %53 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = call i32 @drm_crtc_handle_vblank(i32* %55)
  br label %57

57:                                               ; preds = %17, %51, %46
  ret void
}

declare dso_local i64 @atomic_add_unless(i32*, i32, i32) #1

declare dso_local i32 @fimd_trigger(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @drm_crtc_handle_vblank(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
