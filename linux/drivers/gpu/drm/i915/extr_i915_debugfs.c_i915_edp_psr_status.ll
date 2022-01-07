; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_i915_edp_psr_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_i915_edp_psr_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.drm_i915_private = type { i32, %struct.i915_psr }
%struct.i915_psr = type { i32, i32, i64, i32, i32, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Sink support: %s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c" [0x%02x]\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"PSR2 enabled\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"PSR1 enabled\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"PSR mode: %s\0A\00", align 1
@EDP_PSR2_CTL = common dso_local global i32 0, align 4
@EDP_PSR2_ENABLE = common dso_local global i32 0, align 4
@EDP_PSR_CTL = common dso_local global i32 0, align 4
@EDP_PSR_ENABLE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"Source PSR ctl: %s [0x%08x]\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Busy frontbuffer bits: 0x%08x\0A\00", align 1
@EDP_PSR_PERF_CNT = common dso_local global i32 0, align 4
@EDP_PSR_PERF_CNT_MASK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"Performance counter: %u\0A\00", align 1
@I915_PSR_DEBUG_IRQ = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"Last attempted entry at: %lld\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"Last exit at: %lld\0A\00", align 1
@PSR2_SU_STATUS_FRAMES = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [24 x i8] c"Frame:\09PSR2 SU blocks:\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"%d\09%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @i915_edp_psr_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_edp_psr_status(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.i915_psr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [3 x i32], align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %16 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.drm_i915_private* @node_to_i915(i32 %17)
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %6, align 8
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %20 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %19, i32 0, i32 1
  store %struct.i915_psr* %20, %struct.i915_psr** %7, align 8
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %22 = call i32 @HAS_PSR(%struct.drm_i915_private* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %206

27:                                               ; preds = %2
  %28 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %29 = load %struct.i915_psr*, %struct.i915_psr** %7, align 8
  %30 = getelementptr inbounds %struct.i915_psr, %struct.i915_psr* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @yesno(i32 %31)
  %33 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.i915_psr*, %struct.i915_psr** %7, align 8
  %35 = getelementptr inbounds %struct.i915_psr, %struct.i915_psr* %34, i32 0, i32 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = icmp ne %struct.TYPE_2__* %36, null
  br i1 %37, label %38, label %48

38:                                               ; preds = %27
  %39 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %40 = load %struct.i915_psr*, %struct.i915_psr** %7, align 8
  %41 = getelementptr inbounds %struct.i915_psr, %struct.i915_psr* %40, i32 0, i32 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %38, %27
  %49 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %50 = call i32 @seq_puts(%struct.seq_file* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %51 = load %struct.i915_psr*, %struct.i915_psr** %7, align 8
  %52 = getelementptr inbounds %struct.i915_psr, %struct.i915_psr* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %206

56:                                               ; preds = %48
  %57 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %58 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %57, i32 0, i32 0
  %59 = call i32 @intel_runtime_pm_get(i32* %58)
  store i32 %59, i32* %8, align 4
  %60 = load %struct.i915_psr*, %struct.i915_psr** %7, align 8
  %61 = getelementptr inbounds %struct.i915_psr, %struct.i915_psr* %60, i32 0, i32 1
  %62 = call i32 @mutex_lock(i32* %61)
  %63 = load %struct.i915_psr*, %struct.i915_psr** %7, align 8
  %64 = getelementptr inbounds %struct.i915_psr, %struct.i915_psr* %63, i32 0, i32 6
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %56
  %68 = load %struct.i915_psr*, %struct.i915_psr** %7, align 8
  %69 = getelementptr inbounds %struct.i915_psr, %struct.i915_psr* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0)
  store i8* %73, i8** %9, align 8
  br label %75

74:                                               ; preds = %56
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %75

75:                                               ; preds = %74, %67
  %76 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %76, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %77)
  %79 = load %struct.i915_psr*, %struct.i915_psr** %7, align 8
  %80 = getelementptr inbounds %struct.i915_psr, %struct.i915_psr* %79, i32 0, i32 6
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %75
  br label %198

84:                                               ; preds = %75
  %85 = load %struct.i915_psr*, %struct.i915_psr** %7, align 8
  %86 = getelementptr inbounds %struct.i915_psr, %struct.i915_psr* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load i32, i32* @EDP_PSR2_CTL, align 4
  %91 = call i32 @I915_READ(i32 %90)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @EDP_PSR2_ENABLE, align 4
  %94 = and i32 %92, %93
  store i32 %94, i32* %10, align 4
  br label %101

95:                                               ; preds = %84
  %96 = load i32, i32* @EDP_PSR_CTL, align 4
  %97 = call i32 @I915_READ(i32 %96)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* @EDP_PSR_ENABLE, align 4
  %100 = and i32 %98, %99
  store i32 %100, i32* %10, align 4
  br label %101

101:                                              ; preds = %95, %89
  %102 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @enableddisabled(i32 %103)
  %105 = load i32, i32* %11, align 4
  %106 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %102, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %104, i32 %105)
  %107 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %108 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %109 = call i32 @psr_source_status(%struct.drm_i915_private* %107, %struct.seq_file* %108)
  %110 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %111 = load %struct.i915_psr*, %struct.i915_psr** %7, align 8
  %112 = getelementptr inbounds %struct.i915_psr, %struct.i915_psr* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %110, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %113)
  %115 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %116 = call i64 @IS_HASWELL(%struct.drm_i915_private* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %101
  %119 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %120 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %118, %101
  %123 = load i32, i32* @EDP_PSR_PERF_CNT, align 4
  %124 = call i32 @I915_READ(i32 %123)
  %125 = load i32, i32* @EDP_PSR_PERF_CNT_MASK, align 4
  %126 = and i32 %124, %125
  store i32 %126, i32* %11, align 4
  %127 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %128 = load i32, i32* %11, align 4
  %129 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %127, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %122, %118
  %131 = load %struct.i915_psr*, %struct.i915_psr** %7, align 8
  %132 = getelementptr inbounds %struct.i915_psr, %struct.i915_psr* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @I915_PSR_DEBUG_IRQ, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %148

137:                                              ; preds = %130
  %138 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %139 = load %struct.i915_psr*, %struct.i915_psr** %7, align 8
  %140 = getelementptr inbounds %struct.i915_psr, %struct.i915_psr* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %138, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %141)
  %143 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %144 = load %struct.i915_psr*, %struct.i915_psr** %7, align 8
  %145 = getelementptr inbounds %struct.i915_psr, %struct.i915_psr* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %143, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %137, %130
  %149 = load %struct.i915_psr*, %struct.i915_psr** %7, align 8
  %150 = getelementptr inbounds %struct.i915_psr, %struct.i915_psr* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %197

153:                                              ; preds = %148
  store i32 0, i32* %13, align 4
  br label %154

154:                                              ; preds = %166, %153
  %155 = load i32, i32* %13, align 4
  %156 = load i32, i32* @PSR2_SU_STATUS_FRAMES, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %169

158:                                              ; preds = %154
  %159 = load i32, i32* %13, align 4
  %160 = call i32 @PSR2_SU_STATUS(i32 %159)
  %161 = call i32 @I915_READ(i32 %160)
  %162 = load i32, i32* %13, align 4
  %163 = sdiv i32 %162, 3
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 %164
  store i32 %161, i32* %165, align 4
  br label %166

166:                                              ; preds = %158
  %167 = load i32, i32* %13, align 4
  %168 = add nsw i32 %167, 3
  store i32 %168, i32* %13, align 4
  br label %154

169:                                              ; preds = %154
  %170 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %171 = call i32 @seq_puts(%struct.seq_file* %170, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %172

172:                                              ; preds = %193, %169
  %173 = load i32, i32* %13, align 4
  %174 = load i32, i32* @PSR2_SU_STATUS_FRAMES, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %196

176:                                              ; preds = %172
  %177 = load i32, i32* %13, align 4
  %178 = sdiv i32 %177, 3
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %13, align 4
  %183 = call i32 @PSR2_SU_STATUS_MASK(i32 %182)
  %184 = and i32 %181, %183
  store i32 %184, i32* %14, align 4
  %185 = load i32, i32* %14, align 4
  %186 = load i32, i32* %13, align 4
  %187 = call i32 @PSR2_SU_STATUS_SHIFT(i32 %186)
  %188 = ashr i32 %185, %187
  store i32 %188, i32* %14, align 4
  %189 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %190 = load i32, i32* %13, align 4
  %191 = load i32, i32* %14, align 4
  %192 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %189, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %190, i32 %191)
  br label %193

193:                                              ; preds = %176
  %194 = load i32, i32* %13, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %13, align 4
  br label %172

196:                                              ; preds = %172
  br label %197

197:                                              ; preds = %196, %148
  br label %198

198:                                              ; preds = %197, %83
  %199 = load %struct.i915_psr*, %struct.i915_psr** %7, align 8
  %200 = getelementptr inbounds %struct.i915_psr, %struct.i915_psr* %199, i32 0, i32 1
  %201 = call i32 @mutex_unlock(i32* %200)
  %202 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %203 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %202, i32 0, i32 0
  %204 = load i32, i32* %8, align 4
  %205 = call i32 @intel_runtime_pm_put(i32* %203, i32 %204)
  store i32 0, i32* %3, align 4
  br label %206

206:                                              ; preds = %198, %55, %24
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare dso_local %struct.drm_i915_private* @node_to_i915(i32) #1

declare dso_local i32 @HAS_PSR(%struct.drm_i915_private*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @yesno(i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @intel_runtime_pm_get(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @enableddisabled(i32) #1

declare dso_local i32 @psr_source_status(%struct.drm_i915_private*, %struct.seq_file*) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @PSR2_SU_STATUS(i32) #1

declare dso_local i32 @PSR2_SU_STATUS_MASK(i32) #1

declare dso_local i32 @PSR2_SU_STATUS_SHIFT(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @intel_runtime_pm_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
