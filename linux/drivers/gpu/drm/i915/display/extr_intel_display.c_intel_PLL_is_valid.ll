; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_PLL_is_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_PLL_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_limit = type { %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.dpll = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [16 x i8] c"n out of range\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"p1 out of range\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"m2 out of range\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"m1 out of range\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"m1 <= m2\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"p out of range\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"m out of range\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"vco out of range\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"dot out of range\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, %struct.intel_limit*, %struct.dpll*)* @intel_PLL_is_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_PLL_is_valid(%struct.drm_i915_private* %0, %struct.intel_limit* %1, %struct.dpll* %2) #0 {
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_limit*, align 8
  %6 = alloca %struct.dpll*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store %struct.intel_limit* %1, %struct.intel_limit** %5, align 8
  store %struct.dpll* %2, %struct.dpll** %6, align 8
  %7 = load %struct.dpll*, %struct.dpll** %6, align 8
  %8 = getelementptr inbounds %struct.dpll, %struct.dpll* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.intel_limit*, %struct.intel_limit** %5, align 8
  %11 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %9, %13
  br i1 %14, label %24, label %15

15:                                               ; preds = %3
  %16 = load %struct.intel_limit*, %struct.intel_limit** %5, align 8
  %17 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %16, i32 0, i32 7
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.dpll*, %struct.dpll** %6, align 8
  %21 = getelementptr inbounds %struct.dpll, %struct.dpll* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %15, %3
  %25 = call i32 @INTELPllInvalid(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %15
  %27 = load %struct.dpll*, %struct.dpll** %6, align 8
  %28 = getelementptr inbounds %struct.dpll, %struct.dpll* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.intel_limit*, %struct.intel_limit** %5, align 8
  %31 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %30, i32 0, i32 6
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %29, %33
  br i1 %34, label %44, label %35

35:                                               ; preds = %26
  %36 = load %struct.intel_limit*, %struct.intel_limit** %5, align 8
  %37 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %36, i32 0, i32 6
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.dpll*, %struct.dpll** %6, align 8
  %41 = getelementptr inbounds %struct.dpll, %struct.dpll* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %39, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %35, %26
  %45 = call i32 @INTELPllInvalid(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %35
  %47 = load %struct.dpll*, %struct.dpll** %6, align 8
  %48 = getelementptr inbounds %struct.dpll, %struct.dpll* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.intel_limit*, %struct.intel_limit** %5, align 8
  %51 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %49, %53
  br i1 %54, label %64, label %55

55:                                               ; preds = %46
  %56 = load %struct.intel_limit*, %struct.intel_limit** %5, align 8
  %57 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.dpll*, %struct.dpll** %6, align 8
  %61 = getelementptr inbounds %struct.dpll, %struct.dpll* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %59, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %55, %46
  %65 = call i32 @INTELPllInvalid(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %55
  %67 = load %struct.dpll*, %struct.dpll** %6, align 8
  %68 = getelementptr inbounds %struct.dpll, %struct.dpll* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.intel_limit*, %struct.intel_limit** %5, align 8
  %71 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp slt i64 %69, %73
  br i1 %74, label %84, label %75

75:                                               ; preds = %66
  %76 = load %struct.intel_limit*, %struct.intel_limit** %5, align 8
  %77 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.dpll*, %struct.dpll** %6, align 8
  %81 = getelementptr inbounds %struct.dpll, %struct.dpll* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp slt i64 %79, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %75, %66
  %85 = call i32 @INTELPllInvalid(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %75
  %87 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %88 = call i32 @IS_PINEVIEW(%struct.drm_i915_private* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %113, label %90

90:                                               ; preds = %86
  %91 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %92 = call i32 @IS_VALLEYVIEW(%struct.drm_i915_private* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %113, label %94

94:                                               ; preds = %90
  %95 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %96 = call i32 @IS_CHERRYVIEW(%struct.drm_i915_private* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %113, label %98

98:                                               ; preds = %94
  %99 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %100 = call i32 @IS_GEN9_LP(%struct.drm_i915_private* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %113, label %102

102:                                              ; preds = %98
  %103 = load %struct.dpll*, %struct.dpll** %6, align 8
  %104 = getelementptr inbounds %struct.dpll, %struct.dpll* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.dpll*, %struct.dpll** %6, align 8
  %107 = getelementptr inbounds %struct.dpll, %struct.dpll* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp sle i64 %105, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %102
  %111 = call i32 @INTELPllInvalid(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %102
  br label %113

113:                                              ; preds = %112, %98, %94, %90, %86
  %114 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %115 = call i32 @IS_VALLEYVIEW(%struct.drm_i915_private* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %166, label %117

117:                                              ; preds = %113
  %118 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %119 = call i32 @IS_CHERRYVIEW(%struct.drm_i915_private* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %166, label %121

121:                                              ; preds = %117
  %122 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %123 = call i32 @IS_GEN9_LP(%struct.drm_i915_private* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %166, label %125

125:                                              ; preds = %121
  %126 = load %struct.dpll*, %struct.dpll** %6, align 8
  %127 = getelementptr inbounds %struct.dpll, %struct.dpll* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.intel_limit*, %struct.intel_limit** %5, align 8
  %130 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp slt i64 %128, %132
  br i1 %133, label %143, label %134

134:                                              ; preds = %125
  %135 = load %struct.intel_limit*, %struct.intel_limit** %5, align 8
  %136 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.dpll*, %struct.dpll** %6, align 8
  %140 = getelementptr inbounds %struct.dpll, %struct.dpll* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = icmp slt i64 %138, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %134, %125
  %144 = call i32 @INTELPllInvalid(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %145

145:                                              ; preds = %143, %134
  %146 = load %struct.dpll*, %struct.dpll** %6, align 8
  %147 = getelementptr inbounds %struct.dpll, %struct.dpll* %146, i32 0, i32 5
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.intel_limit*, %struct.intel_limit** %5, align 8
  %150 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp slt i64 %148, %152
  br i1 %153, label %163, label %154

154:                                              ; preds = %145
  %155 = load %struct.intel_limit*, %struct.intel_limit** %5, align 8
  %156 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.dpll*, %struct.dpll** %6, align 8
  %160 = getelementptr inbounds %struct.dpll, %struct.dpll* %159, i32 0, i32 5
  %161 = load i64, i64* %160, align 8
  %162 = icmp slt i64 %158, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %154, %145
  %164 = call i32 @INTELPllInvalid(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  br label %165

165:                                              ; preds = %163, %154
  br label %166

166:                                              ; preds = %165, %121, %117, %113
  %167 = load %struct.dpll*, %struct.dpll** %6, align 8
  %168 = getelementptr inbounds %struct.dpll, %struct.dpll* %167, i32 0, i32 6
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.intel_limit*, %struct.intel_limit** %5, align 8
  %171 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp slt i64 %169, %173
  br i1 %174, label %184, label %175

175:                                              ; preds = %166
  %176 = load %struct.intel_limit*, %struct.intel_limit** %5, align 8
  %177 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.dpll*, %struct.dpll** %6, align 8
  %181 = getelementptr inbounds %struct.dpll, %struct.dpll* %180, i32 0, i32 6
  %182 = load i64, i64* %181, align 8
  %183 = icmp slt i64 %179, %182
  br i1 %183, label %184, label %186

184:                                              ; preds = %175, %166
  %185 = call i32 @INTELPllInvalid(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  br label %186

186:                                              ; preds = %184, %175
  %187 = load %struct.dpll*, %struct.dpll** %6, align 8
  %188 = getelementptr inbounds %struct.dpll, %struct.dpll* %187, i32 0, i32 7
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.intel_limit*, %struct.intel_limit** %5, align 8
  %191 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp slt i64 %189, %193
  br i1 %194, label %204, label %195

195:                                              ; preds = %186
  %196 = load %struct.intel_limit*, %struct.intel_limit** %5, align 8
  %197 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.dpll*, %struct.dpll** %6, align 8
  %201 = getelementptr inbounds %struct.dpll, %struct.dpll* %200, i32 0, i32 7
  %202 = load i64, i64* %201, align 8
  %203 = icmp slt i64 %199, %202
  br i1 %203, label %204, label %206

204:                                              ; preds = %195, %186
  %205 = call i32 @INTELPllInvalid(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  br label %206

206:                                              ; preds = %204, %195
  ret i32 1
}

declare dso_local i32 @INTELPllInvalid(i8*) #1

declare dso_local i32 @IS_PINEVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @IS_GEN9_LP(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
