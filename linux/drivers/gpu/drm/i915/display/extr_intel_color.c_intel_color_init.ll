; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_color.c_intel_color_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_color.c_intel_color_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i8*, i8* }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32 }

@chv_color_check = common dso_local global i8* null, align 8
@i9xx_color_commit = common dso_local global i8* null, align 8
@chv_load_luts = common dso_local global i32 0, align 4
@i9xx_color_check = common dso_local global i8* null, align 8
@i965_load_luts = common dso_local global i32 0, align 4
@i9xx_load_luts = common dso_local global i32 0, align 4
@icl_color_check = common dso_local global i8* null, align 8
@glk_color_check = common dso_local global i8* null, align 8
@ivb_color_check = common dso_local global i8* null, align 8
@ilk_color_check = common dso_local global i8* null, align 8
@skl_color_commit = common dso_local global i8* null, align 8
@hsw_color_commit = common dso_local global i8* null, align 8
@ilk_color_commit = common dso_local global i8* null, align 8
@icl_load_luts = common dso_local global i32 0, align 4
@glk_load_luts = common dso_local global i32 0, align 4
@bdw_load_luts = common dso_local global i32 0, align 4
@ivb_load_luts = common dso_local global i32 0, align 4
@ilk_load_luts = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_color_init(%struct.intel_crtc* %0) #0 {
  %2 = alloca %struct.intel_crtc*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_crtc* %0, %struct.intel_crtc** %2, align 8
  %5 = load %struct.intel_crtc*, %struct.intel_crtc** %2, align 8
  %6 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.drm_i915_private* @to_i915(i32 %8)
  store %struct.drm_i915_private* %9, %struct.drm_i915_private** %3, align 8
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %11 = call %struct.TYPE_9__* @INTEL_INFO(%struct.drm_i915_private* %10)
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %4, align 4
  %17 = load %struct.intel_crtc*, %struct.intel_crtc** %2, align 8
  %18 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %17, i32 0, i32 0
  %19 = call i32 @drm_mode_crtc_set_gamma_size(%struct.TYPE_8__* %18, i32 256)
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %21 = call i64 @HAS_GMCH(%struct.drm_i915_private* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %72

23:                                               ; preds = %1
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %25 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = load i8*, i8** @chv_color_check, align 8
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %30 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  store i8* %28, i8** %31, align 8
  %32 = load i8*, i8** @i9xx_color_commit, align 8
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %34 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  store i8* %32, i8** %35, align 8
  %36 = load i32, i32* @chv_load_luts, align 4
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %38 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  br label %71

40:                                               ; preds = %23
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %42 = call i32 @INTEL_GEN(%struct.drm_i915_private* %41)
  %43 = icmp sge i32 %42, 4
  br i1 %43, label %44, label %57

44:                                               ; preds = %40
  %45 = load i8*, i8** @i9xx_color_check, align 8
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %47 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  store i8* %45, i8** %48, align 8
  %49 = load i8*, i8** @i9xx_color_commit, align 8
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %51 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  store i8* %49, i8** %52, align 8
  %53 = load i32, i32* @i965_load_luts, align 4
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %55 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 8
  br label %70

57:                                               ; preds = %40
  %58 = load i8*, i8** @i9xx_color_check, align 8
  %59 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %60 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  store i8* %58, i8** %61, align 8
  %62 = load i8*, i8** @i9xx_color_commit, align 8
  %63 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %64 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  store i8* %62, i8** %65, align 8
  %66 = load i32, i32* @i9xx_load_luts, align 4
  %67 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %68 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  br label %70

70:                                               ; preds = %57, %44
  br label %71

71:                                               ; preds = %70, %27
  br label %187

72:                                               ; preds = %1
  %73 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %74 = call i32 @INTEL_GEN(%struct.drm_i915_private* %73)
  %75 = icmp sge i32 %74, 11
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load i8*, i8** @icl_color_check, align 8
  %78 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %79 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  store i8* %77, i8** %80, align 8
  br label %110

81:                                               ; preds = %72
  %82 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %83 = call i32 @INTEL_GEN(%struct.drm_i915_private* %82)
  %84 = icmp sge i32 %83, 10
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %87 = call i64 @IS_GEMINILAKE(%struct.drm_i915_private* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %85, %81
  %90 = load i8*, i8** @glk_color_check, align 8
  %91 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %92 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  store i8* %90, i8** %93, align 8
  br label %109

94:                                               ; preds = %85
  %95 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %96 = call i32 @INTEL_GEN(%struct.drm_i915_private* %95)
  %97 = icmp sge i32 %96, 7
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load i8*, i8** @ivb_color_check, align 8
  %100 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %101 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  store i8* %99, i8** %102, align 8
  br label %108

103:                                              ; preds = %94
  %104 = load i8*, i8** @ilk_color_check, align 8
  %105 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %106 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  store i8* %104, i8** %107, align 8
  br label %108

108:                                              ; preds = %103, %98
  br label %109

109:                                              ; preds = %108, %89
  br label %110

110:                                              ; preds = %109, %76
  %111 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %112 = call i32 @INTEL_GEN(%struct.drm_i915_private* %111)
  %113 = icmp sge i32 %112, 9
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = load i8*, i8** @skl_color_commit, align 8
  %116 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %117 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  store i8* %115, i8** %118, align 8
  br label %138

119:                                              ; preds = %110
  %120 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %121 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %119
  %124 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %125 = call i64 @IS_HASWELL(%struct.drm_i915_private* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %123, %119
  %128 = load i8*, i8** @hsw_color_commit, align 8
  %129 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %130 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  store i8* %128, i8** %131, align 8
  br label %137

132:                                              ; preds = %123
  %133 = load i8*, i8** @ilk_color_commit, align 8
  %134 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %135 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  store i8* %133, i8** %136, align 8
  br label %137

137:                                              ; preds = %132, %127
  br label %138

138:                                              ; preds = %137, %114
  %139 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %140 = call i32 @INTEL_GEN(%struct.drm_i915_private* %139)
  %141 = icmp sge i32 %140, 11
  br i1 %141, label %142, label %147

142:                                              ; preds = %138
  %143 = load i32, i32* @icl_load_luts, align 4
  %144 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %145 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  store i32 %143, i32* %146, align 8
  br label %186

147:                                              ; preds = %138
  %148 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %149 = call i64 @IS_CANNONLAKE(%struct.drm_i915_private* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %147
  %152 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %153 = call i64 @IS_GEMINILAKE(%struct.drm_i915_private* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %151, %147
  %156 = load i32, i32* @glk_load_luts, align 4
  %157 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %158 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  store i32 %156, i32* %159, align 8
  br label %185

160:                                              ; preds = %151
  %161 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %162 = call i32 @INTEL_GEN(%struct.drm_i915_private* %161)
  %163 = icmp sge i32 %162, 8
  br i1 %163, label %164, label %169

164:                                              ; preds = %160
  %165 = load i32, i32* @bdw_load_luts, align 4
  %166 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %167 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  store i32 %165, i32* %168, align 8
  br label %184

169:                                              ; preds = %160
  %170 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %171 = call i32 @INTEL_GEN(%struct.drm_i915_private* %170)
  %172 = icmp sge i32 %171, 7
  br i1 %172, label %173, label %178

173:                                              ; preds = %169
  %174 = load i32, i32* @ivb_load_luts, align 4
  %175 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %176 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  store i32 %174, i32* %177, align 8
  br label %183

178:                                              ; preds = %169
  %179 = load i32, i32* @ilk_load_luts, align 4
  %180 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %181 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  store i32 %179, i32* %182, align 8
  br label %183

183:                                              ; preds = %178, %173
  br label %184

184:                                              ; preds = %183, %164
  br label %185

185:                                              ; preds = %184, %155
  br label %186

186:                                              ; preds = %185, %142
  br label %187

187:                                              ; preds = %186, %71
  %188 = load %struct.intel_crtc*, %struct.intel_crtc** %2, align 8
  %189 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %188, i32 0, i32 0
  %190 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %191 = call %struct.TYPE_9__* @INTEL_INFO(%struct.drm_i915_private* %190)
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i32, i32* %4, align 4
  %196 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %197 = call %struct.TYPE_9__* @INTEL_INFO(%struct.drm_i915_private* %196)
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @drm_crtc_enable_color_mgmt(%struct.TYPE_8__* %189, i64 %194, i32 %195, i32 %200)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.TYPE_9__* @INTEL_INFO(%struct.drm_i915_private*) #1

declare dso_local i32 @drm_mode_crtc_set_gamma_size(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @HAS_GMCH(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEMINILAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CANNONLAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @drm_crtc_enable_color_mgmt(%struct.TYPE_8__*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
