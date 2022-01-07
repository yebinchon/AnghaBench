; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_mode.c_mga_crtc_load_lut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_mode.c_mga_crtc_load_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32, i32*, i32, %struct.TYPE_3__*, %struct.drm_device* }
%struct.TYPE_3__ = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.drm_device = type { %struct.mga_device* }
%struct.mga_device = type { i32 }

@DAC_INDEX = common dso_local global i64 0, align 8
@MGA1064_INDEX = common dso_local global i64 0, align 8
@MGAG200_LUT_SIZE = common dso_local global i32 0, align 4
@MGA1064_COL_PAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @mga_crtc_load_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mga_crtc_load_lut(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.mga_device*, align 8
  %5 = alloca %struct.drm_framebuffer*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %14 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %13, i32 0, i32 4
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %3, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.mga_device*, %struct.mga_device** %17, align 8
  store %struct.mga_device* %18, %struct.mga_device** %4, align 8
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %20 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %19, i32 0, i32 3
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %22, align 8
  store %struct.drm_framebuffer* %23, %struct.drm_framebuffer** %5, align 8
  %24 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %25 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %1
  br label %167

29:                                               ; preds = %1
  %30 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %31 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %6, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %35 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  store i32* %38, i32** %7, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %41 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  store i32* %44, i32** %8, align 8
  %45 = load i64, i64* @DAC_INDEX, align 8
  %46 = load i64, i64* @MGA1064_INDEX, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @WREG8(i64 %47, i32 0)
  %49 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %50 = icmp ne %struct.drm_framebuffer* %49, null
  br i1 %50, label %51, label %134

51:                                               ; preds = %29
  %52 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %53 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %58, 8
  %60 = icmp eq i32 %59, 16
  br i1 %60, label %61, label %134

61:                                               ; preds = %51
  %62 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %63 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 15
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 8, i32 4
  store i32 %69, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %70

70:                                               ; preds = %129, %61
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @MGAG200_LUT_SIZE, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %133

74:                                               ; preds = %70
  %75 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %76 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %79, 16
  br i1 %80, label %81, label %101

81:                                               ; preds = %74
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @MGAG200_LUT_SIZE, align 4
  %84 = ashr i32 %83, 1
  %85 = icmp sgt i32 %82, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %100

87:                                               ; preds = %81
  %88 = load i32*, i32** %6, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %6, align 8
  %90 = load i32, i32* %88, align 4
  %91 = ashr i32 %90, 8
  store i32 %91, i32* %11, align 4
  %92 = load i32*, i32** %8, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %8, align 8
  %94 = load i32, i32* %92, align 4
  %95 = ashr i32 %94, 8
  store i32 %95, i32* %12, align 4
  %96 = load i32*, i32** %6, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %6, align 8
  %98 = load i32*, i32** %8, align 8
  %99 = getelementptr inbounds i32, i32* %98, i32 1
  store i32* %99, i32** %8, align 8
  br label %100

100:                                              ; preds = %87, %86
  br label %110

101:                                              ; preds = %74
  %102 = load i32*, i32** %6, align 8
  %103 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %103, i32** %6, align 8
  %104 = load i32, i32* %102, align 4
  %105 = ashr i32 %104, 8
  store i32 %105, i32* %11, align 4
  %106 = load i32*, i32** %8, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %8, align 8
  %108 = load i32, i32* %106, align 4
  %109 = ashr i32 %108, 8
  store i32 %109, i32* %12, align 4
  br label %110

110:                                              ; preds = %101, %100
  %111 = load i64, i64* @DAC_INDEX, align 8
  %112 = load i64, i64* @MGA1064_COL_PAL, align 8
  %113 = add nsw i64 %111, %112
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @WREG8(i64 %113, i32 %114)
  %116 = load i64, i64* @DAC_INDEX, align 8
  %117 = load i64, i64* @MGA1064_COL_PAL, align 8
  %118 = add nsw i64 %116, %117
  %119 = load i32*, i32** %7, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %7, align 8
  %121 = load i32, i32* %119, align 4
  %122 = ashr i32 %121, 8
  %123 = call i32 @WREG8(i64 %118, i32 %122)
  %124 = load i64, i64* @DAC_INDEX, align 8
  %125 = load i64, i64* @MGA1064_COL_PAL, align 8
  %126 = add nsw i64 %124, %125
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @WREG8(i64 %126, i32 %127)
  br label %129

129:                                              ; preds = %110
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %9, align 4
  br label %70

133:                                              ; preds = %70
  br label %167

134:                                              ; preds = %51, %29
  store i32 0, i32* %9, align 4
  br label %135

135:                                              ; preds = %164, %134
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* @MGAG200_LUT_SIZE, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %167

139:                                              ; preds = %135
  %140 = load i64, i64* @DAC_INDEX, align 8
  %141 = load i64, i64* @MGA1064_COL_PAL, align 8
  %142 = add nsw i64 %140, %141
  %143 = load i32*, i32** %6, align 8
  %144 = getelementptr inbounds i32, i32* %143, i32 1
  store i32* %144, i32** %6, align 8
  %145 = load i32, i32* %143, align 4
  %146 = ashr i32 %145, 8
  %147 = call i32 @WREG8(i64 %142, i32 %146)
  %148 = load i64, i64* @DAC_INDEX, align 8
  %149 = load i64, i64* @MGA1064_COL_PAL, align 8
  %150 = add nsw i64 %148, %149
  %151 = load i32*, i32** %7, align 8
  %152 = getelementptr inbounds i32, i32* %151, i32 1
  store i32* %152, i32** %7, align 8
  %153 = load i32, i32* %151, align 4
  %154 = ashr i32 %153, 8
  %155 = call i32 @WREG8(i64 %150, i32 %154)
  %156 = load i64, i64* @DAC_INDEX, align 8
  %157 = load i64, i64* @MGA1064_COL_PAL, align 8
  %158 = add nsw i64 %156, %157
  %159 = load i32*, i32** %8, align 8
  %160 = getelementptr inbounds i32, i32* %159, i32 1
  store i32* %160, i32** %8, align 8
  %161 = load i32, i32* %159, align 4
  %162 = ashr i32 %161, 8
  %163 = call i32 @WREG8(i64 %158, i32 %162)
  br label %164

164:                                              ; preds = %139
  %165 = load i32, i32* %9, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %9, align 4
  br label %135

167:                                              ; preds = %28, %133, %135
  ret void
}

declare dso_local i32 @WREG8(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
