; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_intel_update_max_cdclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_intel_update_max_cdclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@SKL_DFSM = common dso_local global i32 0, align 4
@SKL_DFSM_CDCLK_LIMIT_MASK = common dso_local global i32 0, align 4
@SKL_DFSM_CDCLK_LIMIT_675 = common dso_local global i64 0, align 8
@SKL_DFSM_CDCLK_LIMIT_540 = common dso_local global i64 0, align 8
@SKL_DFSM_CDCLK_LIMIT_450 = common dso_local global i64 0, align 8
@FUSE_STRAP = common dso_local global i32 0, align 4
@HSW_CDCLK_LIMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Max CD clock rate: %d kHz\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Max dotclock rate: %d kHz\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_update_max_cdclk(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %7 = call i64 @IS_ELKHARTLAKE(%struct.drm_i915_private* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %11 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 24000
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %18 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %17, i32 0, i32 0
  store i32 552000, i32* %18, align 4
  br label %22

19:                                               ; preds = %9
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %21 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %20, i32 0, i32 0
  store i32 556800, i32* %21, align 4
  br label %22

22:                                               ; preds = %19, %16
  br label %170

23:                                               ; preds = %1
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %25 = call i32 @INTEL_GEN(%struct.drm_i915_private* %24)
  %26 = icmp sge i32 %25, 11
  br i1 %26, label %27, label %41

27:                                               ; preds = %23
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %29 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 24000
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %36 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %35, i32 0, i32 0
  store i32 648000, i32* %36, align 4
  br label %40

37:                                               ; preds = %27
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %39 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %38, i32 0, i32 0
  store i32 652800, i32* %39, align 4
  br label %40

40:                                               ; preds = %37, %34
  br label %169

41:                                               ; preds = %23
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %43 = call i64 @IS_CANNONLAKE(%struct.drm_i915_private* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %47 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %46, i32 0, i32 0
  store i32 528000, i32* %47, align 4
  br label %168

48:                                               ; preds = %41
  %49 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %50 = call i64 @IS_GEN9_BC(%struct.drm_i915_private* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %93

52:                                               ; preds = %48
  %53 = load i32, i32* @SKL_DFSM, align 4
  %54 = call i32 @I915_READ(i32 %53)
  %55 = load i32, i32* @SKL_DFSM_CDCLK_LIMIT_MASK, align 4
  %56 = and i32 %54, %55
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %3, align 8
  %58 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %59 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 8100000
  br i1 %62, label %63, label %66

63:                                               ; preds = %52
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 8640000
  br label %66

66:                                               ; preds = %63, %52
  %67 = phi i1 [ false, %52 ], [ %65, %63 ]
  %68 = zext i1 %67 to i32
  %69 = call i32 @WARN_ON(i32 %68)
  %70 = load i64, i64* %3, align 8
  %71 = load i64, i64* @SKL_DFSM_CDCLK_LIMIT_675, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  store i32 617143, i32* %4, align 4
  br label %87

74:                                               ; preds = %66
  %75 = load i64, i64* %3, align 8
  %76 = load i64, i64* @SKL_DFSM_CDCLK_LIMIT_540, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i32 540000, i32* %4, align 4
  br label %86

79:                                               ; preds = %74
  %80 = load i64, i64* %3, align 8
  %81 = load i64, i64* @SKL_DFSM_CDCLK_LIMIT_450, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store i32 432000, i32* %4, align 4
  br label %85

84:                                               ; preds = %79
  store i32 308571, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %83
  br label %86

86:                                               ; preds = %85, %78
  br label %87

87:                                               ; preds = %86, %73
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @skl_calc_cdclk(i32 %88, i32 %89)
  %91 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %92 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  br label %167

93:                                               ; preds = %48
  %94 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %95 = call i64 @IS_GEMINILAKE(%struct.drm_i915_private* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %99 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %98, i32 0, i32 0
  store i32 316800, i32* %99, align 4
  br label %166

100:                                              ; preds = %93
  %101 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %102 = call i64 @IS_BROXTON(%struct.drm_i915_private* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %106 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %105, i32 0, i32 0
  store i32 624000, i32* %106, align 4
  br label %165

107:                                              ; preds = %100
  %108 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %109 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %140

111:                                              ; preds = %107
  %112 = load i32, i32* @FUSE_STRAP, align 4
  %113 = call i32 @I915_READ(i32 %112)
  %114 = load i32, i32* @HSW_CDCLK_LIMIT, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %119 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %118, i32 0, i32 0
  store i32 450000, i32* %119, align 4
  br label %139

120:                                              ; preds = %111
  %121 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %122 = call i64 @IS_BDW_ULX(%struct.drm_i915_private* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %126 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %125, i32 0, i32 0
  store i32 450000, i32* %126, align 4
  br label %138

127:                                              ; preds = %120
  %128 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %129 = call i64 @IS_BDW_ULT(%struct.drm_i915_private* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %133 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %132, i32 0, i32 0
  store i32 540000, i32* %133, align 4
  br label %137

134:                                              ; preds = %127
  %135 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %136 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %135, i32 0, i32 0
  store i32 675000, i32* %136, align 4
  br label %137

137:                                              ; preds = %134, %131
  br label %138

138:                                              ; preds = %137, %124
  br label %139

139:                                              ; preds = %138, %117
  br label %164

140:                                              ; preds = %107
  %141 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %142 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %140
  %145 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %146 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %145, i32 0, i32 0
  store i32 320000, i32* %146, align 4
  br label %163

147:                                              ; preds = %140
  %148 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %149 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %153 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %152, i32 0, i32 0
  store i32 400000, i32* %153, align 4
  br label %162

154:                                              ; preds = %147
  %155 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %156 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %161 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 4
  br label %162

162:                                              ; preds = %154, %151
  br label %163

163:                                              ; preds = %162, %144
  br label %164

164:                                              ; preds = %163, %139
  br label %165

165:                                              ; preds = %164, %104
  br label %166

166:                                              ; preds = %165, %97
  br label %167

167:                                              ; preds = %166, %87
  br label %168

168:                                              ; preds = %167, %45
  br label %169

169:                                              ; preds = %168, %40
  br label %170

170:                                              ; preds = %169, %22
  %171 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %172 = call i32 @intel_compute_max_dotclk(%struct.drm_i915_private* %171)
  %173 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %174 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %173, i32 0, i32 2
  store i32 %172, i32* %174, align 4
  %175 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %176 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %177)
  %179 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %180 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %181)
  ret void
}

declare dso_local i64 @IS_ELKHARTLAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CANNONLAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN9_BC(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @skl_calc_cdclk(i32, i32) #1

declare dso_local i64 @IS_GEMINILAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_BROXTON(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_BDW_ULX(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_BDW_ULT(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_compute_max_dotclk(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
