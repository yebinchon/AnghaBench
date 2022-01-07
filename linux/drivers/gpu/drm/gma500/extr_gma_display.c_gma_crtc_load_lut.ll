; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_gma_display.c_gma_crtc_load_lut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_gma_display.c_gma_crtc_load_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32, i32*, i32, %struct.drm_device* }
%struct.drm_device = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { %struct.TYPE_4__, %struct.psb_offset* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.psb_offset = type { i32 }
%struct.gma_crtc = type { i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gma_crtc_load_lut(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_psb_private*, align 8
  %5 = alloca %struct.gma_crtc*, align 8
  %6 = alloca %struct.psb_offset*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %13 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %12, i32 0, i32 3
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %3, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.drm_psb_private*, %struct.drm_psb_private** %16, align 8
  store %struct.drm_psb_private* %17, %struct.drm_psb_private** %4, align 8
  %18 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %19 = call %struct.gma_crtc* @to_gma_crtc(%struct.drm_crtc* %18)
  store %struct.gma_crtc* %19, %struct.gma_crtc** %5, align 8
  %20 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %21 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %20, i32 0, i32 1
  %22 = load %struct.psb_offset*, %struct.psb_offset** %21, align 8
  %23 = load %struct.gma_crtc*, %struct.gma_crtc** %5, align 8
  %24 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %22, i64 %25
  store %struct.psb_offset* %26, %struct.psb_offset** %6, align 8
  %27 = load %struct.psb_offset*, %struct.psb_offset** %6, align 8
  %28 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %7, align 4
  %30 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %31 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %1
  br label %169

35:                                               ; preds = %1
  %36 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %37 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %8, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %41 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  store i32* %44, i32** %9, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %47 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  store i32* %50, i32** %10, align 8
  %51 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %52 = call i64 @gma_power_begin(%struct.drm_device* %51, i32 0)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %110

54:                                               ; preds = %35
  store i32 0, i32* %11, align 4
  br label %55

55:                                               ; preds = %104, %54
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %56, 256
  br i1 %57, label %58, label %107

58:                                               ; preds = %55
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %11, align 4
  %61 = mul nsw i32 4, %60
  %62 = add nsw i32 %59, %61
  %63 = load i32*, i32** %8, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %8, align 8
  %65 = load i32, i32* %63, align 4
  %66 = ashr i32 %65, 8
  %67 = load %struct.gma_crtc*, %struct.gma_crtc** %5, align 8
  %68 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %66, %73
  %75 = shl i32 %74, 16
  %76 = load i32*, i32** %9, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %9, align 8
  %78 = load i32, i32* %76, align 4
  %79 = ashr i32 %78, 8
  %80 = load %struct.gma_crtc*, %struct.gma_crtc** %5, align 8
  %81 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %79, %86
  %88 = shl i32 %87, 8
  %89 = or i32 %75, %88
  %90 = load i32*, i32** %10, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %10, align 8
  %92 = load i32, i32* %90, align 4
  %93 = ashr i32 %92, 8
  %94 = load %struct.gma_crtc*, %struct.gma_crtc** %5, align 8
  %95 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %93, %100
  %102 = or i32 %89, %101
  %103 = call i32 @REG_WRITE(i32 %62, i32 %102)
  br label %104

104:                                              ; preds = %58
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %11, align 4
  br label %55

107:                                              ; preds = %55
  %108 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %109 = call i32 @gma_power_end(%struct.drm_device* %108)
  br label %169

110:                                              ; preds = %35
  store i32 0, i32* %11, align 4
  br label %111

111:                                              ; preds = %165, %110
  %112 = load i32, i32* %11, align 4
  %113 = icmp slt i32 %112, 256
  br i1 %113, label %114, label %168

114:                                              ; preds = %111
  %115 = load i32*, i32** %8, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 1
  store i32* %116, i32** %8, align 8
  %117 = load i32, i32* %115, align 4
  %118 = ashr i32 %117, 8
  %119 = load %struct.gma_crtc*, %struct.gma_crtc** %5, align 8
  %120 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %118, %125
  %127 = shl i32 %126, 16
  %128 = load i32*, i32** %9, align 8
  %129 = getelementptr inbounds i32, i32* %128, i32 1
  store i32* %129, i32** %9, align 8
  %130 = load i32, i32* %128, align 4
  %131 = ashr i32 %130, 8
  %132 = load %struct.gma_crtc*, %struct.gma_crtc** %5, align 8
  %133 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %11, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %131, %138
  %140 = shl i32 %139, 8
  %141 = or i32 %127, %140
  %142 = load i32*, i32** %10, align 8
  %143 = getelementptr inbounds i32, i32* %142, i32 1
  store i32* %143, i32** %10, align 8
  %144 = load i32, i32* %142, align 4
  %145 = ashr i32 %144, 8
  %146 = load %struct.gma_crtc*, %struct.gma_crtc** %5, align 8
  %147 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %145, %152
  %154 = or i32 %141, %153
  %155 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %156 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i64 0
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %11, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  store i32 %154, i32* %164, align 4
  br label %165

165:                                              ; preds = %114
  %166 = load i32, i32* %11, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %11, align 4
  br label %111

168:                                              ; preds = %111
  br label %169

169:                                              ; preds = %34, %168, %107
  ret void
}

declare dso_local %struct.gma_crtc* @to_gma_crtc(%struct.drm_crtc*) #1

declare dso_local i64 @gma_power_begin(%struct.drm_device*, i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @gma_power_end(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
