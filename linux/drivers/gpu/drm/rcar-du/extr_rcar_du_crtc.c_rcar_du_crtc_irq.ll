; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_crtc.c_rcar_du_crtc_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_crtc.c_rcar_du_crtc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_du_crtc = type { i64, i32, i32, i32, %struct.rcar_du_device* }
%struct.rcar_du_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@DSSR = common dso_local global i32 0, align 4
@DSRCR = common dso_local global i32 0, align 4
@DSRCR_MASK = common dso_local global i32 0, align 4
@DSSR_VBK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rcar_du_crtc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_du_crtc_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rcar_du_crtc*, align 8
  %6 = alloca %struct.rcar_du_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.rcar_du_crtc*
  store %struct.rcar_du_crtc* %10, %struct.rcar_du_crtc** %5, align 8
  %11 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %5, align 8
  %12 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %11, i32 0, i32 4
  %13 = load %struct.rcar_du_device*, %struct.rcar_du_device** %12, align 8
  store %struct.rcar_du_device* %13, %struct.rcar_du_device** %6, align 8
  %14 = load i32, i32* @IRQ_NONE, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %5, align 8
  %16 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %15, i32 0, i32 2
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %5, align 8
  %19 = load i32, i32* @DSSR, align 4
  %20 = call i32 @rcar_du_crtc_read(%struct.rcar_du_crtc* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %5, align 8
  %22 = load i32, i32* @DSRCR, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @DSRCR_MASK, align 4
  %25 = and i32 %23, %24
  %26 = call i32 @rcar_du_crtc_write(%struct.rcar_du_crtc* %21, i32 %22, i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @DSSR_VBK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %2
  %32 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %5, align 8
  %33 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %5, align 8
  %38 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, -1
  store i64 %40, i64* %38, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %5, align 8
  %44 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %43, i32 0, i32 3
  %45 = call i32 @wake_up(i32* %44)
  br label %46

46:                                               ; preds = %42, %36
  br label %47

47:                                               ; preds = %46, %31
  br label %48

48:                                               ; preds = %47, %2
  %49 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %5, align 8
  %50 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %49, i32 0, i32 2
  %51 = call i32 @spin_unlock(i32* %50)
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @DSSR_VBK, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %48
  %57 = load %struct.rcar_du_device*, %struct.rcar_du_device** %6, align 8
  %58 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %61, 3
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %5, align 8
  %65 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %64, i32 0, i32 1
  %66 = call i32 @drm_crtc_handle_vblank(i32* %65)
  %67 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %5, align 8
  %68 = call i32 @rcar_du_crtc_finish_page_flip(%struct.rcar_du_crtc* %67)
  br label %69

69:                                               ; preds = %63, %56
  %70 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %69, %48
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rcar_du_crtc_read(%struct.rcar_du_crtc*, i32) #1

declare dso_local i32 @rcar_du_crtc_write(%struct.rcar_du_crtc*, i32, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @drm_crtc_handle_vblank(i32*) #1

declare dso_local i32 @rcar_du_crtc_finish_page_flip(%struct.rcar_du_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
