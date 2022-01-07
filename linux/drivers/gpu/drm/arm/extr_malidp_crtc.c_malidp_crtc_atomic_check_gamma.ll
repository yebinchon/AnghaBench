; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_crtc.c_malidp_crtc_atomic_check_gamma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_crtc.c_malidp_crtc_atomic_check_gamma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.drm_crtc_state = type { i32, %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_10__ = type { i32, i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.malidp_crtc_state = type { i32 }
%struct.drm_color_lut = type { i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@MALIDP_GAMMA_LUT_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_crtc_state*)* @malidp_crtc_atomic_check_gamma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @malidp_crtc_atomic_check_gamma(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.drm_crtc_state*, align 8
  %6 = alloca %struct.malidp_crtc_state*, align 8
  %7 = alloca %struct.drm_color_lut*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %4, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %5, align 8
  %11 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %12 = call %struct.malidp_crtc_state* @to_malidp_crtc_state(%struct.drm_crtc_state* %11)
  store %struct.malidp_crtc_state* %12, %struct.malidp_crtc_state** %6, align 8
  %13 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %14 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %19 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %18, i32 0, i32 1
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = icmp ne %struct.TYPE_10__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %2
  store i32 0, i32* %3, align 4
  br label %148

23:                                               ; preds = %17
  %24 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %25 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %24, i32 0, i32 1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = icmp ne %struct.TYPE_7__* %28, null
  br i1 %29, label %30, label %47

30:                                               ; preds = %23
  %31 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %32 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %31, i32 0, i32 1
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %40 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %39, i32 0, i32 1
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %38, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %148

47:                                               ; preds = %30, %23
  %48 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %49 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %48, i32 0, i32 1
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = urem i64 %53, 24
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %148

59:                                               ; preds = %47
  %60 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %61 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %60, i32 0, i32 1
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = udiv i64 %65, 24
  store i64 %66, i64* %8, align 8
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* @MALIDP_GAMMA_LUT_SIZE, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %59
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %148

73:                                               ; preds = %59
  %74 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %75 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %74, i32 0, i32 1
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to %struct.drm_color_lut*
  store %struct.drm_color_lut* %79, %struct.drm_color_lut** %7, align 8
  store i32 0, i32* %9, align 4
  br label %80

80:                                               ; preds = %117, %73
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* %8, align 8
  %84 = icmp ult i64 %82, %83
  br i1 %84, label %85, label %120

85:                                               ; preds = %80
  %86 = load %struct.drm_color_lut*, %struct.drm_color_lut** %7, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %86, i64 %88
  %90 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.drm_color_lut*, %struct.drm_color_lut** %7, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %92, i64 %94
  %96 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %91, %97
  br i1 %98, label %99, label %113

99:                                               ; preds = %85
  %100 = load %struct.drm_color_lut*, %struct.drm_color_lut** %7, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %100, i64 %102
  %104 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.drm_color_lut*, %struct.drm_color_lut** %7, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %106, i64 %108
  %110 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %105, %111
  br i1 %112, label %116, label %113

113:                                              ; preds = %99, %85
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %148

116:                                              ; preds = %99
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %9, align 4
  br label %80

120:                                              ; preds = %80
  %121 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %122 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %140, label %125

125:                                              ; preds = %120
  %126 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %127 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %126, i32 0, i32 0
  store i32 1, i32* %127, align 8
  %128 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %129 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %132 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @drm_atomic_helper_check_modeset(i32 %130, i32 %133)
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %10, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %125
  %138 = load i32, i32* %10, align 4
  store i32 %138, i32* %3, align 4
  br label %148

139:                                              ; preds = %125
  br label %140

140:                                              ; preds = %139, %120
  %141 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %142 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %141, i32 0, i32 1
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %142, align 8
  %144 = load %struct.malidp_crtc_state*, %struct.malidp_crtc_state** %6, align 8
  %145 = getelementptr inbounds %struct.malidp_crtc_state, %struct.malidp_crtc_state* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @malidp_generate_gamma_table(%struct.TYPE_10__* %143, i32 %146)
  store i32 0, i32* %3, align 4
  br label %148

148:                                              ; preds = %140, %137, %113, %70, %56, %46, %22
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local %struct.malidp_crtc_state* @to_malidp_crtc_state(%struct.drm_crtc_state*) #1

declare dso_local i32 @drm_atomic_helper_check_modeset(i32, i32) #1

declare dso_local i32 @malidp_generate_gamma_table(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
