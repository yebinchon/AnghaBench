; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_intel_pch_panel_fitting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_intel_pch_panel_fitting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { i32 }
%struct.intel_crtc_state = type { i64, i64, i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i64, i64 }

@INTEL_OUTPUT_FORMAT_YCBCR420 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"bad panel fit mode: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_pch_panel_fitting(%struct.intel_crtc* %0, %struct.intel_crtc_state* %1, i32 %2) #0 {
  %4 = alloca %struct.intel_crtc*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.intel_crtc* %0, %struct.intel_crtc** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %15 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.drm_display_mode* %16, %struct.drm_display_mode** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %18 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %21 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %3
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %26 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %29 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %24
  %33 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %34 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @INTEL_OUTPUT_FORMAT_YCBCR420, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %172

39:                                               ; preds = %32, %24, %3
  %40 = load i32, i32* %6, align 4
  switch i32 %40, label %168 [
    i32 129, label %41
    i32 130, label %68
    i32 128, label %159
  ]

41:                                               ; preds = %39
  %42 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %43 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %10, align 4
  %46 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %47 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %11, align 4
  %50 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %51 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = sub nsw i64 %52, %54
  %56 = add nsw i64 %55, 1
  %57 = sdiv i64 %56, 2
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %8, align 4
  %59 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %60 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = sub nsw i64 %61, %63
  %65 = add nsw i64 %64, 1
  %66 = sdiv i64 %65, 2
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %9, align 4
  br label %171

68:                                               ; preds = %39
  %69 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %70 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %73 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = mul nsw i64 %71, %74
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %12, align 4
  %77 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %78 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %81 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = mul nsw i64 %79, %82
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %116

88:                                               ; preds = %68
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %92 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = sdiv i64 %90, %93
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = and i32 %96, 1
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %88
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %99, %88
  %103 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %104 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = sub nsw i64 %105, %107
  %109 = add nsw i64 %108, 1
  %110 = sdiv i64 %109, 2
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %112 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %113 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %11, align 4
  br label %158

116:                                              ; preds = %68
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %13, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %148

120:                                              ; preds = %116
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %124 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = sdiv i64 %122, %125
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %11, align 4
  %129 = and i32 %128, 1
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %120
  %132 = load i32, i32* %11, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %11, align 4
  br label %134

134:                                              ; preds = %131, %120
  %135 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %136 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = sub nsw i64 %137, %139
  %141 = add nsw i64 %140, 1
  %142 = sdiv i64 %141, 2
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %144 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %145 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %10, align 4
  br label %157

148:                                              ; preds = %116
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %149 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %150 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %10, align 4
  %153 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %154 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %11, align 4
  br label %157

157:                                              ; preds = %148, %134
  br label %158

158:                                              ; preds = %157, %102
  br label %171

159:                                              ; preds = %39
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %160 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %161 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %10, align 4
  %164 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %165 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %11, align 4
  br label %171

168:                                              ; preds = %39
  %169 = load i32, i32* %6, align 4
  %170 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %169)
  br label %196

171:                                              ; preds = %159, %158, %41
  br label %172

172:                                              ; preds = %171, %38
  %173 = load i32, i32* %8, align 4
  %174 = shl i32 %173, 16
  %175 = load i32, i32* %9, align 4
  %176 = or i32 %174, %175
  %177 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %178 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  store i32 %176, i32* %179, align 8
  %180 = load i32, i32* %10, align 4
  %181 = shl i32 %180, 16
  %182 = load i32, i32* %11, align 4
  %183 = or i32 %181, %182
  %184 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %185 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %184, i32 0, i32 3
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 1
  store i32 %183, i32* %186, align 4
  %187 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %188 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 0
  %192 = zext i1 %191 to i32
  %193 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %194 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %193, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 2
  store i32 %192, i32* %195, align 8
  br label %196

196:                                              ; preds = %172, %168
  ret void
}

declare dso_local i32 @WARN(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
