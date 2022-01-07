; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_crtc.c_mdp4_crtc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_crtc.c_mdp4_crtc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_plane = type { i32 }
%struct.mdp4_crtc = type { i32, i32, i32, i32, %struct.TYPE_6__, i32, %struct.TYPE_5__, %struct.TYPE_4__, %struct.drm_crtc }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mdp4_crtc_vblank_irq = common dso_local global i32 0, align 4
@mdp4_crtc_err_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1
@dma_names = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"unref cursor\00", align 1
@unref_cursor_worker = common dso_local global i32 0, align 4
@mdp4_crtc_funcs = common dso_local global i32 0, align 4
@mdp4_crtc_helper_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_crtc* @mdp4_crtc_init(%struct.drm_device* %0, %struct.drm_plane* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.drm_plane*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_crtc*, align 8
  %13 = alloca %struct.mdp4_crtc*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %7, align 8
  store %struct.drm_plane* %1, %struct.drm_plane** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.drm_crtc* null, %struct.drm_crtc** %12, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.mdp4_crtc* @kzalloc(i32 44, i32 %14)
  store %struct.mdp4_crtc* %15, %struct.mdp4_crtc** %13, align 8
  %16 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %13, align 8
  %17 = icmp ne %struct.mdp4_crtc* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.drm_crtc* @ERR_PTR(i32 %20)
  store %struct.drm_crtc* %21, %struct.drm_crtc** %6, align 8
  br label %81

22:                                               ; preds = %5
  %23 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %13, align 8
  %24 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %23, i32 0, i32 8
  store %struct.drm_crtc* %24, %struct.drm_crtc** %12, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %13, align 8
  %27 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %13, align 8
  %30 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %13, align 8
  %33 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %13, align 8
  %35 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dma2irq(i32 %36)
  %38 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %13, align 8
  %39 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %38, i32 0, i32 7
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @mdp4_crtc_vblank_irq, align 4
  %42 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %13, align 8
  %43 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %42, i32 0, i32 7
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %13, align 8
  %46 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dma2err(i32 %47)
  %49 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %13, align 8
  %50 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %49, i32 0, i32 6
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = load i32, i32* @mdp4_crtc_err_irq, align 4
  %53 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %13, align 8
  %54 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %53, i32 0, i32 6
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  %56 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %13, align 8
  %57 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = load i8**, i8*** @dma_names, align 8
  %60 = load i32, i32* %11, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @snprintf(i32 %58, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %63, i32 %64)
  %66 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %13, align 8
  %67 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = call i32 @spin_lock_init(i32* %68)
  %70 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %13, align 8
  %71 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %70, i32 0, i32 3
  %72 = load i32, i32* @unref_cursor_worker, align 4
  %73 = call i32 @drm_flip_work_init(i32* %71, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %75 = load %struct.drm_crtc*, %struct.drm_crtc** %12, align 8
  %76 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %77 = call i32 @drm_crtc_init_with_planes(%struct.drm_device* %74, %struct.drm_crtc* %75, %struct.drm_plane* %76, i32* null, i32* @mdp4_crtc_funcs, i32* null)
  %78 = load %struct.drm_crtc*, %struct.drm_crtc** %12, align 8
  %79 = call i32 @drm_crtc_helper_add(%struct.drm_crtc* %78, i32* @mdp4_crtc_helper_funcs)
  %80 = load %struct.drm_crtc*, %struct.drm_crtc** %12, align 8
  store %struct.drm_crtc* %80, %struct.drm_crtc** %6, align 8
  br label %81

81:                                               ; preds = %22, %18
  %82 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  ret %struct.drm_crtc* %82
}

declare dso_local %struct.mdp4_crtc* @kzalloc(i32, i32) #1

declare dso_local %struct.drm_crtc* @ERR_PTR(i32) #1

declare dso_local i32 @dma2irq(i32) #1

declare dso_local i32 @dma2err(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @drm_flip_work_init(i32*, i8*, i32) #1

declare dso_local i32 @drm_crtc_init_with_planes(%struct.drm_device*, %struct.drm_crtc*, %struct.drm_plane*, i32*, i32*, i32*) #1

declare dso_local i32 @drm_crtc_helper_add(%struct.drm_crtc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
