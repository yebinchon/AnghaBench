; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/pl111/extr_pl111_display.c_pl111_display_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/pl111/extr_pl111_display.c_pl111_display_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_simple_display_pipe = type { %struct.drm_crtc }
%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.pl111_drm_dev_private* }
%struct.pl111_drm_dev_private = type { i32, i64, i64, i32 (%struct.drm_device.0*)*, %struct.TYPE_2__* }
%struct.drm_device.0 = type opaque
%struct.TYPE_2__ = type { i32 }

@CNTL_LCDPWR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pl111_display_disable(%struct.drm_simple_display_pipe* %0) #0 {
  %2 = alloca %struct.drm_simple_display_pipe*, align 8
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.pl111_drm_dev_private*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_simple_display_pipe* %0, %struct.drm_simple_display_pipe** %2, align 8
  %7 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %2, align 8
  %8 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %7, i32 0, i32 0
  store %struct.drm_crtc* %8, %struct.drm_crtc** %3, align 8
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %10 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %9, i32 0, i32 0
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %4, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %13, align 8
  store %struct.pl111_drm_dev_private* %14, %struct.pl111_drm_dev_private** %5, align 8
  %15 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %5, align 8
  %16 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %15, i32 0, i32 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %23 = call i32 @drm_crtc_vblank_off(%struct.drm_crtc* %22)
  br label %24

24:                                               ; preds = %21, %1
  %25 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %5, align 8
  %26 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %5, align 8
  %29 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = call i32 @readl(i64 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @CNTL_LCDPWR, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %24
  %38 = load i32, i32* @CNTL_LCDPWR, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %5, align 8
  %44 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %5, align 8
  %47 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %45, %48
  %50 = call i32 @writel(i32 %42, i64 %49)
  br label %51

51:                                               ; preds = %37, %24
  %52 = call i32 @msleep(i32 20)
  %53 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %5, align 8
  %54 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %53, i32 0, i32 3
  %55 = load i32 (%struct.drm_device.0*)*, i32 (%struct.drm_device.0*)** %54, align 8
  %56 = icmp ne i32 (%struct.drm_device.0*)* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %5, align 8
  %59 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %58, i32 0, i32 3
  %60 = load i32 (%struct.drm_device.0*)*, i32 (%struct.drm_device.0*)** %59, align 8
  %61 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %62 = bitcast %struct.drm_device* %61 to %struct.drm_device.0*
  %63 = call i32 %60(%struct.drm_device.0* %62)
  br label %64

64:                                               ; preds = %57, %51
  %65 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %5, align 8
  %66 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %5, align 8
  %69 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %67, %70
  %72 = call i32 @writel(i32 0, i64 %71)
  %73 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %5, align 8
  %74 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @clk_disable_unprepare(i32 %75)
  ret void
}

declare dso_local i32 @drm_crtc_vblank_off(%struct.drm_crtc*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
