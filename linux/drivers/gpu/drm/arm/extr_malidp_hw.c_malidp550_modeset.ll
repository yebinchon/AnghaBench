; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_hw.c_malidp550_modeset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_hw.c_malidp550_modeset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malidp_hw_device = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MALIDP_DE_DEFAULT_PREFETCH_START = common dso_local global i32 0, align 4
@MALIDP550_DE_CONTROL = common dso_local global i64 0, align 8
@MALIDP_BGND_COLOR_R = common dso_local global i32 0, align 4
@MALIDP_BGND_COLOR_G = common dso_local global i32 0, align 4
@MALIDP_BGND_COLOR_B = common dso_local global i32 0, align 4
@MALIDP550_DE_BGND_COLOR = common dso_local global i64 0, align 8
@MALIDP550_TIMINGS_BASE = common dso_local global i64 0, align 8
@MALIDP_DE_H_TIMINGS = common dso_local global i64 0, align 8
@MALIDP_DE_V_TIMINGS = common dso_local global i64 0, align 8
@DISPLAY_FLAGS_HSYNC_HIGH = common dso_local global i32 0, align 4
@MALIDP550_HSYNCPOL = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_VSYNC_HIGH = common dso_local global i32 0, align 4
@MALIDP550_VSYNCPOL = common dso_local global i32 0, align 4
@MALIDP_DE_SYNC_WIDTH = common dso_local global i64 0, align 8
@MALIDP_DE_HV_ACTIVE = common dso_local global i64 0, align 8
@DISPLAY_FLAGS_INTERLACED = common dso_local global i32 0, align 4
@MALIDP_DISP_FUNC_ILACED = common dso_local global i32 0, align 4
@MALIDP_DE_DISPLAY_FUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.malidp_hw_device*, %struct.videomode*)* @malidp550_modeset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @malidp550_modeset(%struct.malidp_hw_device* %0, %struct.videomode* %1) #0 {
  %3 = alloca %struct.malidp_hw_device*, align 8
  %4 = alloca %struct.videomode*, align 8
  %5 = alloca i32, align 4
  store %struct.malidp_hw_device* %0, %struct.malidp_hw_device** %3, align 8
  store %struct.videomode* %1, %struct.videomode** %4, align 8
  %6 = load i32, i32* @MALIDP_DE_DEFAULT_PREFETCH_START, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %3, align 8
  %8 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %3, align 8
  %9 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %3, align 8
  %12 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @malidp_hw_write(%struct.malidp_hw_device* %7, i32 %10, i64 %16)
  %18 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i64, i64* @MALIDP550_DE_CONTROL, align 8
  %21 = call i32 @malidp_hw_write(%struct.malidp_hw_device* %18, i32 %19, i64 %20)
  %22 = load i32, i32* @MALIDP_BGND_COLOR_R, align 4
  %23 = ashr i32 %22, 4
  %24 = and i32 %23, 255
  %25 = shl i32 %24, 16
  %26 = load i32, i32* @MALIDP_BGND_COLOR_G, align 4
  %27 = ashr i32 %26, 4
  %28 = and i32 %27, 255
  %29 = shl i32 %28, 8
  %30 = or i32 %25, %29
  %31 = load i32, i32* @MALIDP_BGND_COLOR_B, align 4
  %32 = ashr i32 %31, 4
  %33 = and i32 %32, 255
  %34 = or i32 %30, %33
  store i32 %34, i32* %5, align 4
  %35 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i64, i64* @MALIDP550_DE_BGND_COLOR, align 8
  %38 = call i32 @malidp_hw_write(%struct.malidp_hw_device* %35, i32 %36, i64 %37)
  %39 = load %struct.videomode*, %struct.videomode** %4, align 8
  %40 = getelementptr inbounds %struct.videomode, %struct.videomode* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @MALIDP_DE_H_FRONTPORCH(i32 %41)
  %43 = load %struct.videomode*, %struct.videomode** %4, align 8
  %44 = getelementptr inbounds %struct.videomode, %struct.videomode* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @MALIDP_DE_H_BACKPORCH(i32 %45)
  %47 = or i32 %42, %46
  store i32 %47, i32* %5, align 4
  %48 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %3, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i64, i64* @MALIDP550_TIMINGS_BASE, align 8
  %51 = load i64, i64* @MALIDP_DE_H_TIMINGS, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @malidp_hw_write(%struct.malidp_hw_device* %48, i32 %49, i64 %52)
  %54 = load %struct.videomode*, %struct.videomode** %4, align 8
  %55 = getelementptr inbounds %struct.videomode, %struct.videomode* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @MALIDP550_DE_V_FRONTPORCH(i32 %56)
  %58 = load %struct.videomode*, %struct.videomode** %4, align 8
  %59 = getelementptr inbounds %struct.videomode, %struct.videomode* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @MALIDP_DE_V_BACKPORCH(i32 %60)
  %62 = or i32 %57, %61
  store i32 %62, i32* %5, align 4
  %63 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %3, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load i64, i64* @MALIDP550_TIMINGS_BASE, align 8
  %66 = load i64, i64* @MALIDP_DE_V_TIMINGS, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @malidp_hw_write(%struct.malidp_hw_device* %63, i32 %64, i64 %67)
  %69 = load %struct.videomode*, %struct.videomode** %4, align 8
  %70 = getelementptr inbounds %struct.videomode, %struct.videomode* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @MALIDP_DE_H_SYNCWIDTH(i32 %71)
  %73 = load %struct.videomode*, %struct.videomode** %4, align 8
  %74 = getelementptr inbounds %struct.videomode, %struct.videomode* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @MALIDP_DE_V_SYNCWIDTH(i32 %75)
  %77 = or i32 %72, %76
  store i32 %77, i32* %5, align 4
  %78 = load %struct.videomode*, %struct.videomode** %4, align 8
  %79 = getelementptr inbounds %struct.videomode, %struct.videomode* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @DISPLAY_FLAGS_HSYNC_HIGH, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %2
  %85 = load i32, i32* @MALIDP550_HSYNCPOL, align 4
  %86 = load i32, i32* %5, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %84, %2
  %89 = load %struct.videomode*, %struct.videomode** %4, align 8
  %90 = getelementptr inbounds %struct.videomode, %struct.videomode* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @DISPLAY_FLAGS_VSYNC_HIGH, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = load i32, i32* @MALIDP550_VSYNCPOL, align 4
  %97 = load i32, i32* %5, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %95, %88
  %100 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %3, align 8
  %101 = load i32, i32* %5, align 4
  %102 = load i64, i64* @MALIDP550_TIMINGS_BASE, align 8
  %103 = load i64, i64* @MALIDP_DE_SYNC_WIDTH, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @malidp_hw_write(%struct.malidp_hw_device* %100, i32 %101, i64 %104)
  %106 = load %struct.videomode*, %struct.videomode** %4, align 8
  %107 = getelementptr inbounds %struct.videomode, %struct.videomode* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @MALIDP_DE_H_ACTIVE(i32 %108)
  %110 = load %struct.videomode*, %struct.videomode** %4, align 8
  %111 = getelementptr inbounds %struct.videomode, %struct.videomode* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @MALIDP_DE_V_ACTIVE(i32 %112)
  %114 = or i32 %109, %113
  store i32 %114, i32* %5, align 4
  %115 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %3, align 8
  %116 = load i32, i32* %5, align 4
  %117 = load i64, i64* @MALIDP550_TIMINGS_BASE, align 8
  %118 = load i64, i64* @MALIDP_DE_HV_ACTIVE, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @malidp_hw_write(%struct.malidp_hw_device* %115, i32 %116, i64 %119)
  %121 = load %struct.videomode*, %struct.videomode** %4, align 8
  %122 = getelementptr inbounds %struct.videomode, %struct.videomode* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @DISPLAY_FLAGS_INTERLACED, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %99
  %128 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %3, align 8
  %129 = load i32, i32* @MALIDP_DISP_FUNC_ILACED, align 4
  %130 = load i32, i32* @MALIDP_DE_DISPLAY_FUNC, align 4
  %131 = call i32 @malidp_hw_setbits(%struct.malidp_hw_device* %128, i32 %129, i32 %130)
  br label %137

132:                                              ; preds = %99
  %133 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %3, align 8
  %134 = load i32, i32* @MALIDP_DISP_FUNC_ILACED, align 4
  %135 = load i32, i32* @MALIDP_DE_DISPLAY_FUNC, align 4
  %136 = call i32 @malidp_hw_clearbits(%struct.malidp_hw_device* %133, i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %132, %127
  ret void
}

declare dso_local i32 @malidp_hw_write(%struct.malidp_hw_device*, i32, i64) #1

declare dso_local i32 @MALIDP_DE_H_FRONTPORCH(i32) #1

declare dso_local i32 @MALIDP_DE_H_BACKPORCH(i32) #1

declare dso_local i32 @MALIDP550_DE_V_FRONTPORCH(i32) #1

declare dso_local i32 @MALIDP_DE_V_BACKPORCH(i32) #1

declare dso_local i32 @MALIDP_DE_H_SYNCWIDTH(i32) #1

declare dso_local i32 @MALIDP_DE_V_SYNCWIDTH(i32) #1

declare dso_local i32 @MALIDP_DE_H_ACTIVE(i32) #1

declare dso_local i32 @MALIDP_DE_V_ACTIVE(i32) #1

declare dso_local i32 @malidp_hw_setbits(%struct.malidp_hw_device*, i32, i32) #1

declare dso_local i32 @malidp_hw_clearbits(%struct.malidp_hw_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
