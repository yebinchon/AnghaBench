; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_gma_display.c_gma_find_best_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_gma_display.c_gma_find_best_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gma_limit_t = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.gma_clock_t = type { i64, i64, i64, i64, i64, i32 }
%struct.gma_clock_funcs = type { i32 (%struct.drm_crtc.0*, %struct.gma_limit_t*, %struct.gma_clock_t*)*, i32 (i32, %struct.gma_clock_t*)* }
%struct.drm_crtc.0 = type opaque
%struct.TYPE_12__ = type { %struct.gma_clock_funcs* }

@INTEL_OUTPUT_LVDS = common dso_local global i32 0, align 4
@LVDS = common dso_local global i32 0, align 4
@LVDS_PORT_EN = common dso_local global i32 0, align 4
@LVDS_CLKB_POWER_MASK = common dso_local global i32 0, align 4
@LVDS_CLKB_POWER_UP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gma_find_best_pll(%struct.gma_limit_t* %0, %struct.drm_crtc* %1, i32 %2, i32 %3, %struct.gma_clock_t* %4) #0 {
  %6 = alloca %struct.gma_limit_t*, align 8
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.gma_clock_t*, align 8
  %11 = alloca %struct.drm_device*, align 8
  %12 = alloca %struct.gma_clock_funcs*, align 8
  %13 = alloca %struct.gma_clock_t, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.gma_limit_t* %0, %struct.gma_limit_t** %6, align 8
  store %struct.drm_crtc* %1, %struct.drm_crtc** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.gma_clock_t* %4, %struct.gma_clock_t** %10, align 8
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %17 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %16, i32 0, i32 0
  %18 = load %struct.drm_device*, %struct.drm_device** %17, align 8
  store %struct.drm_device* %18, %struct.drm_device** %11, align 8
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %20 = call %struct.TYPE_12__* @to_gma_crtc(%struct.drm_crtc* %19)
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load %struct.gma_clock_funcs*, %struct.gma_clock_funcs** %21, align 8
  store %struct.gma_clock_funcs* %22, %struct.gma_clock_funcs** %12, align 8
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %14, align 4
  %24 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %25 = load i32, i32* @INTEL_OUTPUT_LVDS, align 4
  %26 = call i64 @gma_pipe_has_type(%struct.drm_crtc* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %54

28:                                               ; preds = %5
  %29 = load i32, i32* @LVDS, align 4
  %30 = call i32 @REG_READ(i32 %29)
  %31 = load i32, i32* @LVDS_PORT_EN, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %28
  %35 = load i32, i32* @LVDS, align 4
  %36 = call i32 @REG_READ(i32 %35)
  %37 = load i32, i32* @LVDS_CLKB_POWER_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @LVDS_CLKB_POWER_UP, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load %struct.gma_limit_t*, %struct.gma_limit_t** %6, align 8
  %43 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %13, i32 0, i32 5
  store i32 %45, i32* %46, align 8
  br label %53

47:                                               ; preds = %34
  %48 = load %struct.gma_limit_t*, %struct.gma_limit_t** %6, align 8
  %49 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %13, i32 0, i32 5
  store i32 %51, i32* %52, align 8
  br label %53

53:                                               ; preds = %47, %41
  br label %74

54:                                               ; preds = %28, %5
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.gma_limit_t*, %struct.gma_limit_t** %6, align 8
  %57 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %55, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load %struct.gma_limit_t*, %struct.gma_limit_t** %6, align 8
  %63 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %13, i32 0, i32 5
  store i32 %65, i32* %66, align 8
  br label %73

67:                                               ; preds = %54
  %68 = load %struct.gma_limit_t*, %struct.gma_limit_t** %6, align 8
  %69 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %13, i32 0, i32 5
  store i32 %71, i32* %72, align 8
  br label %73

73:                                               ; preds = %67, %61
  br label %74

74:                                               ; preds = %73, %53
  %75 = load %struct.gma_clock_t*, %struct.gma_clock_t** %10, align 8
  %76 = call i32 @memset(%struct.gma_clock_t* %75, i32 0, i32 48)
  %77 = load %struct.gma_limit_t*, %struct.gma_limit_t** %6, align 8
  %78 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %13, i32 0, i32 0
  store i64 %80, i64* %81, align 8
  br label %82

82:                                               ; preds = %190, %74
  %83 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %13, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.gma_limit_t*, %struct.gma_limit_t** %6, align 8
  %86 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp sle i64 %84, %88
  br i1 %89, label %90, label %194

90:                                               ; preds = %82
  %91 = load %struct.gma_limit_t*, %struct.gma_limit_t** %6, align 8
  %92 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %13, i32 0, i32 1
  store i64 %94, i64* %95, align 8
  br label %96

96:                                               ; preds = %185, %90
  %97 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %13, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %13, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp slt i64 %98, %100
  br i1 %101, label %106, label %102

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %13, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %102, %96
  %107 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %13, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.gma_limit_t*, %struct.gma_limit_t** %6, align 8
  %110 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp sle i64 %108, %112
  br label %114

114:                                              ; preds = %106, %102
  %115 = phi i1 [ false, %102 ], [ %113, %106 ]
  br i1 %115, label %116, label %189

116:                                              ; preds = %114
  %117 = load %struct.gma_limit_t*, %struct.gma_limit_t** %6, align 8
  %118 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %13, i32 0, i32 2
  store i64 %120, i64* %121, align 8
  br label %122

122:                                              ; preds = %180, %116
  %123 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %13, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.gma_limit_t*, %struct.gma_limit_t** %6, align 8
  %126 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp sle i64 %124, %128
  br i1 %129, label %130, label %184

130:                                              ; preds = %122
  %131 = load %struct.gma_limit_t*, %struct.gma_limit_t** %6, align 8
  %132 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %13, i32 0, i32 3
  store i64 %134, i64* %135, align 8
  br label %136

136:                                              ; preds = %175, %130
  %137 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %13, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.gma_limit_t*, %struct.gma_limit_t** %6, align 8
  %140 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp sle i64 %138, %142
  br i1 %143, label %144, label %179

144:                                              ; preds = %136
  %145 = load %struct.gma_clock_funcs*, %struct.gma_clock_funcs** %12, align 8
  %146 = getelementptr inbounds %struct.gma_clock_funcs, %struct.gma_clock_funcs* %145, i32 0, i32 1
  %147 = load i32 (i32, %struct.gma_clock_t*)*, i32 (i32, %struct.gma_clock_t*)** %146, align 8
  %148 = load i32, i32* %9, align 4
  %149 = call i32 %147(i32 %148, %struct.gma_clock_t* %13)
  %150 = load %struct.gma_clock_funcs*, %struct.gma_clock_funcs** %12, align 8
  %151 = getelementptr inbounds %struct.gma_clock_funcs, %struct.gma_clock_funcs* %150, i32 0, i32 0
  %152 = load i32 (%struct.drm_crtc.0*, %struct.gma_limit_t*, %struct.gma_clock_t*)*, i32 (%struct.drm_crtc.0*, %struct.gma_limit_t*, %struct.gma_clock_t*)** %151, align 8
  %153 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %154 = bitcast %struct.drm_crtc* %153 to %struct.drm_crtc.0*
  %155 = load %struct.gma_limit_t*, %struct.gma_limit_t** %6, align 8
  %156 = call i32 %152(%struct.drm_crtc.0* %154, %struct.gma_limit_t* %155, %struct.gma_clock_t* %13)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %144
  br label %175

159:                                              ; preds = %144
  %160 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %13, i32 0, i32 4
  %161 = load i64, i64* %160, align 8
  %162 = load i32, i32* %8, align 4
  %163 = sext i32 %162 to i64
  %164 = sub nsw i64 %161, %163
  %165 = call i32 @abs(i64 %164)
  store i32 %165, i32* %15, align 4
  %166 = load i32, i32* %15, align 4
  %167 = load i32, i32* %14, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %174

169:                                              ; preds = %159
  %170 = load %struct.gma_clock_t*, %struct.gma_clock_t** %10, align 8
  %171 = bitcast %struct.gma_clock_t* %170 to i8*
  %172 = bitcast %struct.gma_clock_t* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %171, i8* align 8 %172, i64 48, i1 false)
  %173 = load i32, i32* %15, align 4
  store i32 %173, i32* %14, align 4
  br label %174

174:                                              ; preds = %169, %159
  br label %175

175:                                              ; preds = %174, %158
  %176 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %13, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = add nsw i64 %177, 1
  store i64 %178, i64* %176, align 8
  br label %136

179:                                              ; preds = %136
  br label %180

180:                                              ; preds = %179
  %181 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %13, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = add nsw i64 %182, 1
  store i64 %183, i64* %181, align 8
  br label %122

184:                                              ; preds = %122
  br label %185

185:                                              ; preds = %184
  %186 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %13, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = add nsw i64 %187, 1
  store i64 %188, i64* %186, align 8
  br label %96

189:                                              ; preds = %114
  br label %190

190:                                              ; preds = %189
  %191 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %13, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = add nsw i64 %192, 1
  store i64 %193, i64* %191, align 8
  br label %82

194:                                              ; preds = %82
  %195 = load i32, i32* %14, align 4
  %196 = load i32, i32* %8, align 4
  %197 = icmp ne i32 %195, %196
  %198 = zext i1 %197 to i32
  ret i32 %198
}

declare dso_local %struct.TYPE_12__* @to_gma_crtc(%struct.drm_crtc*) #1

declare dso_local i64 @gma_pipe_has_type(%struct.drm_crtc*, i32) #1

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @memset(%struct.gma_clock_t*, i32, i32) #1

declare dso_local i32 @abs(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
