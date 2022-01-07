; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_hw.c_malidp500_modeset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_hw.c_malidp500_modeset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malidp_hw_device = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MALIDP500_DC_CLEAR_MASK = common dso_local global i32 0, align 4
@MALIDP500_DC_CONTROL = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_HSYNC_HIGH = common dso_local global i32 0, align 4
@MALIDP500_HSYNCPOL = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_VSYNC_HIGH = common dso_local global i32 0, align 4
@MALIDP500_VSYNCPOL = common dso_local global i32 0, align 4
@MALIDP_DE_DEFAULT_PREFETCH_START = common dso_local global i32 0, align 4
@MALIDP_BGND_COLOR_G = common dso_local global i32 0, align 4
@MALIDP_BGND_COLOR_R = common dso_local global i32 0, align 4
@MALIDP500_BGND_COLOR = common dso_local global i64 0, align 8
@MALIDP_BGND_COLOR_B = common dso_local global i32 0, align 4
@MALIDP500_TIMINGS_BASE = common dso_local global i64 0, align 8
@MALIDP_DE_H_TIMINGS = common dso_local global i64 0, align 8
@MALIDP_DE_V_TIMINGS = common dso_local global i64 0, align 8
@MALIDP_DE_SYNC_WIDTH = common dso_local global i64 0, align 8
@MALIDP_DE_HV_ACTIVE = common dso_local global i64 0, align 8
@DISPLAY_FLAGS_INTERLACED = common dso_local global i32 0, align 4
@MALIDP_DISP_FUNC_ILACED = common dso_local global i32 0, align 4
@MALIDP_DE_DISPLAY_FUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.malidp_hw_device*, %struct.videomode*)* @malidp500_modeset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @malidp500_modeset(%struct.malidp_hw_device* %0, %struct.videomode* %1) #0 {
  %3 = alloca %struct.malidp_hw_device*, align 8
  %4 = alloca %struct.videomode*, align 8
  %5 = alloca i32, align 4
  store %struct.malidp_hw_device* %0, %struct.malidp_hw_device** %3, align 8
  store %struct.videomode* %1, %struct.videomode** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %3, align 8
  %7 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %3, align 8
  %8 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %3, align 8
  %11 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @malidp_hw_write(%struct.malidp_hw_device* %6, i32 %9, i64 %15)
  %17 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %3, align 8
  %18 = load i32, i32* @MALIDP500_DC_CLEAR_MASK, align 4
  %19 = load i32, i32* @MALIDP500_DC_CONTROL, align 4
  %20 = call i32 @malidp_hw_clearbits(%struct.malidp_hw_device* %17, i32 %18, i32 %19)
  %21 = load %struct.videomode*, %struct.videomode** %4, align 8
  %22 = getelementptr inbounds %struct.videomode, %struct.videomode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @DISPLAY_FLAGS_HSYNC_HIGH, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load i32, i32* @MALIDP500_HSYNCPOL, align 4
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %27, %2
  %32 = load %struct.videomode*, %struct.videomode** %4, align 8
  %33 = getelementptr inbounds %struct.videomode, %struct.videomode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @DISPLAY_FLAGS_VSYNC_HIGH, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i32, i32* @MALIDP500_VSYNCPOL, align 4
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %38, %31
  %43 = load i32, i32* @MALIDP_DE_DEFAULT_PREFETCH_START, align 4
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  %46 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %3, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @MALIDP500_DC_CONTROL, align 4
  %49 = call i32 @malidp_hw_setbits(%struct.malidp_hw_device* %46, i32 %47, i32 %48)
  %50 = load i32, i32* @MALIDP_BGND_COLOR_G, align 4
  %51 = and i32 %50, 4095
  %52 = shl i32 %51, 16
  %53 = load i32, i32* @MALIDP_BGND_COLOR_R, align 4
  %54 = and i32 %53, 4095
  %55 = or i32 %52, %54
  store i32 %55, i32* %5, align 4
  %56 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load i64, i64* @MALIDP500_BGND_COLOR, align 8
  %59 = call i32 @malidp_hw_write(%struct.malidp_hw_device* %56, i32 %57, i64 %58)
  %60 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %3, align 8
  %61 = load i32, i32* @MALIDP_BGND_COLOR_B, align 4
  %62 = load i64, i64* @MALIDP500_BGND_COLOR, align 8
  %63 = add nsw i64 %62, 4
  %64 = call i32 @malidp_hw_write(%struct.malidp_hw_device* %60, i32 %61, i64 %63)
  %65 = load %struct.videomode*, %struct.videomode** %4, align 8
  %66 = getelementptr inbounds %struct.videomode, %struct.videomode* %65, i32 0, i32 8
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @MALIDP_DE_H_FRONTPORCH(i32 %67)
  %69 = load %struct.videomode*, %struct.videomode** %4, align 8
  %70 = getelementptr inbounds %struct.videomode, %struct.videomode* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @MALIDP_DE_H_BACKPORCH(i32 %71)
  %73 = or i32 %68, %72
  store i32 %73, i32* %5, align 4
  %74 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %3, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load i64, i64* @MALIDP500_TIMINGS_BASE, align 8
  %77 = load i64, i64* @MALIDP_DE_H_TIMINGS, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @malidp_hw_write(%struct.malidp_hw_device* %74, i32 %75, i64 %78)
  %80 = load %struct.videomode*, %struct.videomode** %4, align 8
  %81 = getelementptr inbounds %struct.videomode, %struct.videomode* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @MALIDP500_DE_V_FRONTPORCH(i32 %82)
  %84 = load %struct.videomode*, %struct.videomode** %4, align 8
  %85 = getelementptr inbounds %struct.videomode, %struct.videomode* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @MALIDP_DE_V_BACKPORCH(i32 %86)
  %88 = or i32 %83, %87
  store i32 %88, i32* %5, align 4
  %89 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %3, align 8
  %90 = load i32, i32* %5, align 4
  %91 = load i64, i64* @MALIDP500_TIMINGS_BASE, align 8
  %92 = load i64, i64* @MALIDP_DE_V_TIMINGS, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @malidp_hw_write(%struct.malidp_hw_device* %89, i32 %90, i64 %93)
  %95 = load %struct.videomode*, %struct.videomode** %4, align 8
  %96 = getelementptr inbounds %struct.videomode, %struct.videomode* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @MALIDP_DE_H_SYNCWIDTH(i32 %97)
  %99 = load %struct.videomode*, %struct.videomode** %4, align 8
  %100 = getelementptr inbounds %struct.videomode, %struct.videomode* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @MALIDP_DE_V_SYNCWIDTH(i32 %101)
  %103 = or i32 %98, %102
  store i32 %103, i32* %5, align 4
  %104 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %3, align 8
  %105 = load i32, i32* %5, align 4
  %106 = load i64, i64* @MALIDP500_TIMINGS_BASE, align 8
  %107 = load i64, i64* @MALIDP_DE_SYNC_WIDTH, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @malidp_hw_write(%struct.malidp_hw_device* %104, i32 %105, i64 %108)
  %110 = load %struct.videomode*, %struct.videomode** %4, align 8
  %111 = getelementptr inbounds %struct.videomode, %struct.videomode* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @MALIDP_DE_H_ACTIVE(i32 %112)
  %114 = load %struct.videomode*, %struct.videomode** %4, align 8
  %115 = getelementptr inbounds %struct.videomode, %struct.videomode* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @MALIDP_DE_V_ACTIVE(i32 %116)
  %118 = or i32 %113, %117
  store i32 %118, i32* %5, align 4
  %119 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %3, align 8
  %120 = load i32, i32* %5, align 4
  %121 = load i64, i64* @MALIDP500_TIMINGS_BASE, align 8
  %122 = load i64, i64* @MALIDP_DE_HV_ACTIVE, align 8
  %123 = add nsw i64 %121, %122
  %124 = call i32 @malidp_hw_write(%struct.malidp_hw_device* %119, i32 %120, i64 %123)
  %125 = load %struct.videomode*, %struct.videomode** %4, align 8
  %126 = getelementptr inbounds %struct.videomode, %struct.videomode* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @DISPLAY_FLAGS_INTERLACED, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %42
  %132 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %3, align 8
  %133 = load i32, i32* @MALIDP_DISP_FUNC_ILACED, align 4
  %134 = load i32, i32* @MALIDP_DE_DISPLAY_FUNC, align 4
  %135 = call i32 @malidp_hw_setbits(%struct.malidp_hw_device* %132, i32 %133, i32 %134)
  br label %141

136:                                              ; preds = %42
  %137 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %3, align 8
  %138 = load i32, i32* @MALIDP_DISP_FUNC_ILACED, align 4
  %139 = load i32, i32* @MALIDP_DE_DISPLAY_FUNC, align 4
  %140 = call i32 @malidp_hw_clearbits(%struct.malidp_hw_device* %137, i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %136, %131
  ret void
}

declare dso_local i32 @malidp_hw_write(%struct.malidp_hw_device*, i32, i64) #1

declare dso_local i32 @malidp_hw_clearbits(%struct.malidp_hw_device*, i32, i32) #1

declare dso_local i32 @malidp_hw_setbits(%struct.malidp_hw_device*, i32, i32) #1

declare dso_local i32 @MALIDP_DE_H_FRONTPORCH(i32) #1

declare dso_local i32 @MALIDP_DE_H_BACKPORCH(i32) #1

declare dso_local i32 @MALIDP500_DE_V_FRONTPORCH(i32) #1

declare dso_local i32 @MALIDP_DE_V_BACKPORCH(i32) #1

declare dso_local i32 @MALIDP_DE_H_SYNCWIDTH(i32) #1

declare dso_local i32 @MALIDP_DE_V_SYNCWIDTH(i32) #1

declare dso_local i32 @MALIDP_DE_H_ACTIVE(i32) #1

declare dso_local i32 @MALIDP_DE_V_ACTIVE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
