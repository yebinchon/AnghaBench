; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_display.c_radeon_crtc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_display.c_radeon_crtc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_5__, %struct.radeon_device* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.radeon_device = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.radeon_crtc** }
%struct.radeon_crtc = type { i32, i32*, i32*, i32*, %struct.TYPE_6__, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, %struct.drm_connector**, i32* }
%struct.drm_connector = type { i32 }

@RADEONFB_CONN_LIMIT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@radeon_crtc_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"radeon-crtc\00", align 1
@WQ_HIGHPRI = common dso_local global i32 0, align 4
@CHIP_BONAIRE = common dso_local global i64 0, align 8
@CIK_CURSOR_WIDTH = common dso_local global i32 0, align 4
@CIK_CURSOR_HEIGHT = common dso_local global i32 0, align 4
@CURSOR_WIDTH = common dso_local global i32 0, align 4
@CURSOR_HEIGHT = common dso_local global i32 0, align 4
@radeon_r4xx_atom = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32)* @radeon_crtc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_crtc_init(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_crtc*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 1
  %10 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  store %struct.radeon_device* %10, %struct.radeon_device** %5, align 8
  %11 = load i32, i32* @RADEONFB_CONN_LIMIT, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 8
  %14 = add i64 72, %13
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.radeon_crtc* @kzalloc(i32 %15, i32 %16)
  store %struct.radeon_crtc* %17, %struct.radeon_crtc** %6, align 8
  %18 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %19 = icmp eq %struct.radeon_crtc* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %127

21:                                               ; preds = %2
  %22 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %23 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %24 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %23, i32 0, i32 5
  %25 = call i32 @drm_crtc_init(%struct.drm_device* %22, i32* %24, i32* @radeon_crtc_funcs)
  %26 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %27 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %26, i32 0, i32 5
  %28 = call i32 @drm_mode_crtc_set_gamma_size(i32* %27, i32 256)
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %31 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @WQ_HIGHPRI, align 4
  %33 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %32, i32 0)
  %34 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %35 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %34, i32 0, i32 8
  store i32 %33, i32* %35, align 4
  %36 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %37 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %38 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.radeon_crtc**, %struct.radeon_crtc*** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.radeon_crtc*, %struct.radeon_crtc** %40, i64 %42
  store %struct.radeon_crtc* %36, %struct.radeon_crtc** %43, align 8
  %44 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %45 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @CHIP_BONAIRE, align 8
  %48 = icmp sge i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %21
  %50 = load i32, i32* @CIK_CURSOR_WIDTH, align 4
  %51 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %52 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %51, i32 0, i32 7
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @CIK_CURSOR_HEIGHT, align 4
  %54 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %55 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %54, i32 0, i32 6
  store i32 %53, i32* %55, align 4
  br label %63

56:                                               ; preds = %21
  %57 = load i32, i32* @CURSOR_WIDTH, align 4
  %58 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %59 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %58, i32 0, i32 7
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @CURSOR_HEIGHT, align 4
  %61 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %62 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %56, %49
  %64 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %65 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %68 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 4
  %70 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %71 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %74 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %104, %63
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %77, 256
  br i1 %78, label %79, label %107

79:                                               ; preds = %76
  %80 = load i32, i32* %7, align 4
  %81 = shl i32 %80, 2
  %82 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %83 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %81, i32* %87, align 4
  %88 = load i32, i32* %7, align 4
  %89 = shl i32 %88, 2
  %90 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %91 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %89, i32* %95, align 4
  %96 = load i32, i32* %7, align 4
  %97 = shl i32 %96, 2
  %98 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %99 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %97, i32* %103, align 4
  br label %104

104:                                              ; preds = %79
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %7, align 4
  br label %76

107:                                              ; preds = %76
  %108 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %109 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %107
  %113 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %114 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %112
  %117 = load i64, i64* @radeon_r4xx_atom, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %116, %112
  %120 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %121 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %122 = call i32 @radeon_atombios_init_crtc(%struct.drm_device* %120, %struct.radeon_crtc* %121)
  br label %127

123:                                              ; preds = %116, %107
  %124 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %125 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %126 = call i32 @radeon_legacy_init_crtc(%struct.drm_device* %124, %struct.radeon_crtc* %125)
  br label %127

127:                                              ; preds = %20, %123, %119
  ret void
}

declare dso_local %struct.radeon_crtc* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_crtc_init(%struct.drm_device*, i32*, i32*) #1

declare dso_local i32 @drm_mode_crtc_set_gamma_size(i32*, i32) #1

declare dso_local i32 @alloc_workqueue(i8*, i32, i32) #1

declare dso_local i64 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

declare dso_local i32 @radeon_atombios_init_crtc(%struct.drm_device*, %struct.radeon_crtc*) #1

declare dso_local i32 @radeon_legacy_init_crtc(%struct.drm_device*, %struct.radeon_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
