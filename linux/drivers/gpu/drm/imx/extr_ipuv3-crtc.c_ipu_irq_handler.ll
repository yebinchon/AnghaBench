; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_ipuv3-crtc.c_ipu_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_ipuv3-crtc.c_ipu_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_crtc = type { i32*, %struct.ipu_plane**, %struct.drm_crtc }
%struct.ipu_plane = type { i32 }
%struct.drm_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ipu_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipu_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ipu_crtc*, align 8
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ipu_plane*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.ipu_crtc*
  store %struct.ipu_crtc* %11, %struct.ipu_crtc** %5, align 8
  %12 = load %struct.ipu_crtc*, %struct.ipu_crtc** %5, align 8
  %13 = getelementptr inbounds %struct.ipu_crtc, %struct.ipu_crtc* %12, i32 0, i32 2
  store %struct.drm_crtc* %13, %struct.drm_crtc** %6, align 8
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %15 = call i32 @drm_crtc_handle_vblank(%struct.drm_crtc* %14)
  %16 = load %struct.ipu_crtc*, %struct.ipu_crtc** %5, align 8
  %17 = getelementptr inbounds %struct.ipu_crtc, %struct.ipu_crtc* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %79

20:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %46, %20
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.ipu_crtc*, %struct.ipu_crtc** %5, align 8
  %24 = getelementptr inbounds %struct.ipu_crtc, %struct.ipu_crtc* %23, i32 0, i32 1
  %25 = load %struct.ipu_plane**, %struct.ipu_plane*** %24, align 8
  %26 = call i32 @ARRAY_SIZE(%struct.ipu_plane** %25)
  %27 = icmp slt i32 %22, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %21
  %29 = load %struct.ipu_crtc*, %struct.ipu_crtc** %5, align 8
  %30 = getelementptr inbounds %struct.ipu_crtc, %struct.ipu_crtc* %29, i32 0, i32 1
  %31 = load %struct.ipu_plane**, %struct.ipu_plane*** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ipu_plane*, %struct.ipu_plane** %31, i64 %33
  %35 = load %struct.ipu_plane*, %struct.ipu_plane** %34, align 8
  store %struct.ipu_plane* %35, %struct.ipu_plane** %9, align 8
  %36 = load %struct.ipu_plane*, %struct.ipu_plane** %9, align 8
  %37 = icmp ne %struct.ipu_plane* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %28
  br label %46

39:                                               ; preds = %28
  %40 = load %struct.ipu_plane*, %struct.ipu_plane** %9, align 8
  %41 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %40, i32 0, i32 0
  %42 = call i64 @ipu_plane_atomic_update_pending(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %49

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45, %38
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %21

49:                                               ; preds = %44, %21
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.ipu_crtc*, %struct.ipu_crtc** %5, align 8
  %52 = getelementptr inbounds %struct.ipu_crtc, %struct.ipu_crtc* %51, i32 0, i32 1
  %53 = load %struct.ipu_plane**, %struct.ipu_plane*** %52, align 8
  %54 = call i32 @ARRAY_SIZE(%struct.ipu_plane** %53)
  %55 = icmp eq i32 %50, %54
  br i1 %55, label %56, label %78

56:                                               ; preds = %49
  %57 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %58 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @spin_lock_irqsave(i32* %60, i64 %61)
  %63 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %64 = load %struct.ipu_crtc*, %struct.ipu_crtc** %5, align 8
  %65 = getelementptr inbounds %struct.ipu_crtc, %struct.ipu_crtc* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @drm_crtc_send_vblank_event(%struct.drm_crtc* %63, i32* %66)
  %68 = load %struct.ipu_crtc*, %struct.ipu_crtc** %5, align 8
  %69 = getelementptr inbounds %struct.ipu_crtc, %struct.ipu_crtc* %68, i32 0, i32 0
  store i32* null, i32** %69, align 8
  %70 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %71 = call i32 @drm_crtc_vblank_put(%struct.drm_crtc* %70)
  %72 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %73 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  br label %78

78:                                               ; preds = %56, %49
  br label %79

79:                                               ; preds = %78, %2
  %80 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %80
}

declare dso_local i32 @drm_crtc_handle_vblank(%struct.drm_crtc*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.ipu_plane**) #1

declare dso_local i64 @ipu_plane_atomic_update_pending(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @drm_crtc_send_vblank_event(%struct.drm_crtc*, i32*) #1

declare dso_local i32 @drm_crtc_vblank_put(%struct.drm_crtc*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
