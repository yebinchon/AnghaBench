; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_crtc.c_mdp5_crtc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_crtc.c_mdp5_crtc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_plane = type { i32 }
%struct.mdp5_crtc = type { i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, i32, %struct.TYPE_5__, i32, %struct.drm_crtc }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mdp5_crtc_vblank_irq = common dso_local global i32 0, align 4
@mdp5_crtc_err_irq = common dso_local global i32 0, align 4
@mdp5_crtc_pp_done_irq = common dso_local global i32 0, align 4
@mdp5_crtc_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"unref cursor\00", align 1
@unref_cursor_worker = common dso_local global i32 0, align 4
@mdp5_crtc_helper_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_crtc* @mdp5_crtc_init(%struct.drm_device* %0, %struct.drm_plane* %1, %struct.drm_plane* %2, i32 %3) #0 {
  %5 = alloca %struct.drm_crtc*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_plane*, align 8
  %8 = alloca %struct.drm_plane*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_crtc*, align 8
  %11 = alloca %struct.mdp5_crtc*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store %struct.drm_plane* %1, %struct.drm_plane** %7, align 8
  store %struct.drm_plane* %2, %struct.drm_plane** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.drm_crtc* null, %struct.drm_crtc** %10, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.mdp5_crtc* @kzalloc(i32 40, i32 %12)
  store %struct.mdp5_crtc* %13, %struct.mdp5_crtc** %11, align 8
  %14 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %11, align 8
  %15 = icmp ne %struct.mdp5_crtc* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.drm_crtc* @ERR_PTR(i32 %18)
  store %struct.drm_crtc* %19, %struct.drm_crtc** %5, align 8
  br label %66

20:                                               ; preds = %4
  %21 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %11, align 8
  %22 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %21, i32 0, i32 9
  store %struct.drm_crtc* %22, %struct.drm_crtc** %10, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %11, align 8
  %25 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %11, align 8
  %27 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %26, i32 0, i32 8
  %28 = call i32 @spin_lock_init(i32* %27)
  %29 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %11, align 8
  %30 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %29, i32 0, i32 7
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = call i32 @spin_lock_init(i32* %31)
  %33 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %11, align 8
  %34 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %33, i32 0, i32 6
  %35 = call i32 @init_completion(i32* %34)
  %36 = load i32, i32* @mdp5_crtc_vblank_irq, align 4
  %37 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %11, align 8
  %38 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* @mdp5_crtc_err_irq, align 4
  %41 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %11, align 8
  %42 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* @mdp5_crtc_pp_done_irq, align 4
  %45 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %11, align 8
  %46 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  %48 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %49 = icmp ne %struct.drm_plane* %48, null
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 0, i32 1
  %52 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %11, align 8
  %53 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %55 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %56 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  %57 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %58 = call i32 @drm_crtc_init_with_planes(%struct.drm_device* %54, %struct.drm_crtc* %55, %struct.drm_plane* %56, %struct.drm_plane* %57, i32* @mdp5_crtc_funcs, i32* null)
  %59 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %11, align 8
  %60 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %59, i32 0, i32 2
  %61 = load i32, i32* @unref_cursor_worker, align 4
  %62 = call i32 @drm_flip_work_init(i32* %60, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %64 = call i32 @drm_crtc_helper_add(%struct.drm_crtc* %63, i32* @mdp5_crtc_helper_funcs)
  %65 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  store %struct.drm_crtc* %65, %struct.drm_crtc** %5, align 8
  br label %66

66:                                               ; preds = %20, %16
  %67 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  ret %struct.drm_crtc* %67
}

declare dso_local %struct.mdp5_crtc* @kzalloc(i32, i32) #1

declare dso_local %struct.drm_crtc* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @drm_crtc_init_with_planes(%struct.drm_device*, %struct.drm_crtc*, %struct.drm_plane*, %struct.drm_plane*, i32*, i32*) #1

declare dso_local i32 @drm_flip_work_init(i32*, i8*, i32) #1

declare dso_local i32 @drm_crtc_helper_add(%struct.drm_crtc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
