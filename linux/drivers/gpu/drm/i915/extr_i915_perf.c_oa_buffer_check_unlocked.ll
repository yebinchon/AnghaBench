; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_oa_buffer_check_unlocked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_oa_buffer_check_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_perf_stream = type { %struct.TYPE_8__, %struct.drm_i915_private* }
%struct.TYPE_8__ = type { i32, i32, i32, i64, i32, %struct.TYPE_7__*, %struct.i915_vma* }
%struct.TYPE_7__ = type { i32 }
%struct.i915_vma = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { {}* }

@INVALID_TAIL_PTR = common dso_local global i32 0, align 4
@OA_TAIL_MARGIN_NSEC = common dso_local global i64 0, align 8
@OA_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Ignoring spurious out of range OA buffer tail pointer = %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_perf_stream*)* @oa_buffer_check_unlocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oa_buffer_check_unlocked(%struct.i915_perf_stream* %0) #0 {
  %2 = alloca %struct.i915_perf_stream*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.i915_vma*, align 8
  %13 = alloca i32, align 4
  store %struct.i915_perf_stream* %0, %struct.i915_perf_stream** %2, align 8
  %14 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %15 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %14, i32 0, i32 1
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %15, align 8
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %3, align 8
  %17 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %18 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %4, align 4
  %21 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %22 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 4
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %27 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %7, align 4
  %30 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %31 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %6, align 4
  %34 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %35 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 5
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %9, align 4
  %43 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %44 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 5
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %10, align 4
  %55 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %56 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = bitcast {}** %58 to i32 (%struct.i915_perf_stream*)**
  %60 = load i32 (%struct.i915_perf_stream*)*, i32 (%struct.i915_perf_stream*)** %59, align 8
  %61 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %62 = call i32 %60(%struct.i915_perf_stream* %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %4, align 4
  %64 = sub nsw i32 %63, 1
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %8, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %8, align 4
  %68 = call i64 (...) @ktime_get_mono_fast_ns()
  store i64 %68, i64* %11, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @INVALID_TAIL_PTR, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %102

72:                                               ; preds = %1
  %73 = load i64, i64* %11, align 8
  %74 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %75 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = sub nsw i64 %73, %77
  %79 = load i64, i64* @OA_TAIL_MARGIN_NSEC, align 8
  %80 = icmp sgt i64 %78, %79
  br i1 %80, label %81, label %102

81:                                               ; preds = %72
  %82 = load i32, i32* %6, align 4
  %83 = xor i32 %82, 1
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %86 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  store i32 %84, i32* %87, align 8
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* @INVALID_TAIL_PTR, align 4
  %90 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %91 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 5
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  store i32 %89, i32* %100, align 4
  %101 = load i32, i32* @INVALID_TAIL_PTR, align 4
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %81, %72, %1
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* @INVALID_TAIL_PTR, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %153

106:                                              ; preds = %102
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @INVALID_TAIL_PTR, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %116, label %110

110:                                              ; preds = %106
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @OA_TAKEN(i32 %111, i32 %112)
  %114 = load i32, i32* %4, align 4
  %115 = icmp sge i32 %113, %114
  br i1 %115, label %116, label %153

116:                                              ; preds = %110, %106
  %117 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %118 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 6
  %120 = load %struct.i915_vma*, %struct.i915_vma** %119, align 8
  store %struct.i915_vma* %120, %struct.i915_vma** %12, align 8
  %121 = load %struct.i915_vma*, %struct.i915_vma** %12, align 8
  %122 = call i32 @i915_ggtt_offset(%struct.i915_vma* %121)
  store i32 %122, i32* %13, align 4
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %13, align 4
  %125 = icmp sge i32 %123, %124
  br i1 %125, label %126, label %149

126:                                              ; preds = %116
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* @OA_BUFFER_SIZE, align 4
  %130 = add nsw i32 %128, %129
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %132, label %149

132:                                              ; preds = %126
  %133 = load i32, i32* %8, align 4
  store i32 %133, i32* %10, align 4
  %134 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %135 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 5
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = load i32, i32* %6, align 4
  %139 = icmp ne i32 %138, 0
  %140 = xor i1 %139, true
  %141 = zext i1 %140 to i32
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  store i32 %133, i32* %144, align 4
  %145 = load i64, i64* %11, align 8
  %146 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %147 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 3
  store i64 %145, i64* %148, align 8
  br label %152

149:                                              ; preds = %126, %116
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %150)
  br label %152

152:                                              ; preds = %149, %132
  br label %153

153:                                              ; preds = %152, %110, %102
  %154 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %155 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 4
  %157 = load i64, i64* %5, align 8
  %158 = call i32 @spin_unlock_irqrestore(i32* %156, i64 %157)
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* @INVALID_TAIL_PTR, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %153
  br label %170

163:                                              ; preds = %153
  %164 = load i32, i32* %9, align 4
  %165 = load i32, i32* %7, align 4
  %166 = call i32 @OA_TAKEN(i32 %164, i32 %165)
  %167 = load i32, i32* %4, align 4
  %168 = icmp sge i32 %166, %167
  %169 = zext i1 %168 to i32
  br label %170

170:                                              ; preds = %163, %162
  %171 = phi i32 [ 0, %162 ], [ %169, %163 ]
  ret i32 %171
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @ktime_get_mono_fast_ns(...) #1

declare dso_local i32 @OA_TAKEN(i32, i32) #1

declare dso_local i32 @i915_ggtt_offset(%struct.i915_vma*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
