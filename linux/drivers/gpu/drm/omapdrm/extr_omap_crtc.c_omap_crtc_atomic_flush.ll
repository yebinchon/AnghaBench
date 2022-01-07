; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_crtc.c_omap_crtc_atomic_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_crtc.c_omap_crtc_atomic_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32, %struct.omap_drm_private* }
%struct.omap_drm_private = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (i32, i32)*, i32 (i32, i32, %struct.drm_color_lut*, i32)* }
%struct.drm_color_lut = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.drm_crtc_state = type { i32 }
%struct.omap_crtc = type { i32, i32, i32 }
%struct.omap_crtc_state = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c"%s: GO\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @omap_crtc_atomic_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_crtc_atomic_flush(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.omap_drm_private*, align 8
  %6 = alloca %struct.omap_crtc*, align 8
  %7 = alloca %struct.omap_crtc_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_color_lut*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %12 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load %struct.omap_drm_private*, %struct.omap_drm_private** %14, align 8
  store %struct.omap_drm_private* %15, %struct.omap_drm_private** %5, align 8
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %17 = call %struct.omap_crtc* @to_omap_crtc(%struct.drm_crtc* %16)
  store %struct.omap_crtc* %17, %struct.omap_crtc** %6, align 8
  %18 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %19 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %18, i32 0, i32 1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = call %struct.omap_crtc_state* @to_omap_crtc_state(%struct.TYPE_8__* %20)
  store %struct.omap_crtc_state* %21, %struct.omap_crtc_state** %7, align 8
  %22 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %23 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %69

28:                                               ; preds = %2
  store %struct.drm_color_lut* null, %struct.drm_color_lut** %9, align 8
  store i32 0, i32* %10, align 4
  %29 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %30 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %29, i32 0, i32 1
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = icmp ne %struct.TYPE_5__* %33, null
  br i1 %34, label %35, label %54

35:                                               ; preds = %28
  %36 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %37 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.drm_color_lut*
  store %struct.drm_color_lut* %43, %struct.drm_color_lut** %9, align 8
  %44 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %45 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %44, i32 0, i32 1
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = udiv i64 %51, 4
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %35, %28
  %55 = load %struct.omap_drm_private*, %struct.omap_drm_private** %5, align 8
  %56 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32 (i32, i32, %struct.drm_color_lut*, i32)*, i32 (i32, i32, %struct.drm_color_lut*, i32)** %58, align 8
  %60 = load %struct.omap_drm_private*, %struct.omap_drm_private** %5, align 8
  %61 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.omap_crtc*, %struct.omap_crtc** %6, align 8
  %64 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.drm_color_lut*, %struct.drm_color_lut** %9, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32 %59(i32 %62, i32 %65, %struct.drm_color_lut* %66, i32 %67)
  br label %69

69:                                               ; preds = %54, %2
  %70 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %71 = call i32 @omap_crtc_write_crtc_properties(%struct.drm_crtc* %70)
  %72 = load %struct.omap_crtc*, %struct.omap_crtc** %6, align 8
  %73 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %69
  br label %132

77:                                               ; preds = %69
  %78 = load %struct.omap_crtc*, %struct.omap_crtc** %6, align 8
  %79 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @DBG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load %struct.omap_crtc_state*, %struct.omap_crtc_state** %7, align 8
  %83 = getelementptr inbounds %struct.omap_crtc_state, %struct.omap_crtc_state* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %77
  %87 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %88 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %87, i32 0, i32 0
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = call i32 @spin_lock_irq(i32* %90)
  %92 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %93 = call i32 @omap_crtc_flush(%struct.drm_crtc* %92)
  %94 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %95 = call i32 @omap_crtc_arm_event(%struct.drm_crtc* %94)
  %96 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %97 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %96, i32 0, i32 0
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = call i32 @spin_unlock_irq(i32* %99)
  br label %132

101:                                              ; preds = %77
  %102 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %103 = call i32 @drm_crtc_vblank_get(%struct.drm_crtc* %102)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i32
  %107 = call i32 @WARN_ON(i32 %106)
  %108 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %109 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %108, i32 0, i32 0
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = call i32 @spin_lock_irq(i32* %111)
  %113 = load %struct.omap_drm_private*, %struct.omap_drm_private** %5, align 8
  %114 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %113, i32 0, i32 1
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32 (i32, i32)*, i32 (i32, i32)** %116, align 8
  %118 = load %struct.omap_drm_private*, %struct.omap_drm_private** %5, align 8
  %119 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.omap_crtc*, %struct.omap_crtc** %6, align 8
  %122 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 %117(i32 %120, i32 %123)
  %125 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %126 = call i32 @omap_crtc_arm_event(%struct.drm_crtc* %125)
  %127 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %128 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %127, i32 0, i32 0
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = call i32 @spin_unlock_irq(i32* %130)
  br label %132

132:                                              ; preds = %101, %86, %76
  ret void
}

declare dso_local %struct.omap_crtc* @to_omap_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.omap_crtc_state* @to_omap_crtc_state(%struct.TYPE_8__*) #1

declare dso_local i32 @omap_crtc_write_crtc_properties(%struct.drm_crtc*) #1

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @omap_crtc_flush(%struct.drm_crtc*) #1

declare dso_local i32 @omap_crtc_arm_event(%struct.drm_crtc*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @drm_crtc_vblank_get(%struct.drm_crtc*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
