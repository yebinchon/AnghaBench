; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_gen7_init_oa_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_gen7_init_oa_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_perf_stream = type { i32, %struct.TYPE_6__, %struct.drm_i915_private* }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i8* }
%struct.drm_i915_private = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@GEN7_OASTATUS2 = common dso_local global i32 0, align 4
@GEN7_OASTATUS2_MEM_SELECT_GGTT = common dso_local global i32 0, align 4
@GEN7_OABUFFER = common dso_local global i32 0, align 4
@GEN7_OASTATUS1 = common dso_local global i32 0, align 4
@OABUFFER_SIZE_16M = common dso_local global i32 0, align 4
@INVALID_TAIL_PTR = common dso_local global i8* null, align 8
@OA_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_perf_stream*)* @gen7_init_oa_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen7_init_oa_buffer(%struct.i915_perf_stream* %0) #0 {
  %2 = alloca %struct.i915_perf_stream*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.i915_perf_stream* %0, %struct.i915_perf_stream** %2, align 8
  %6 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %7 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %6, i32 0, i32 2
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %3, align 8
  %9 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %10 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @i915_ggtt_offset(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %15 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load i32, i32* @GEN7_OASTATUS2, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @GEN7_OASTATUS2_MEM_SELECT_GGTT, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @I915_WRITE(i32 %19, i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %26 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load i32, i32* @GEN7_OABUFFER, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @I915_WRITE(i32 %28, i32 %29)
  %31 = load i32, i32* @GEN7_OASTATUS1, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @OABUFFER_SIZE_16M, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @I915_WRITE(i32 %31, i32 %34)
  %36 = load i8*, i8** @INVALID_TAIL_PTR, align 8
  %37 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %38 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i8* %36, i8** %42, align 8
  %43 = load i8*, i8** @INVALID_TAIL_PTR, align 8
  %44 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %45 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i8* %43, i8** %49, align 8
  %50 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %51 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %56 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  %58 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %59 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @OA_BUFFER_SIZE, align 4
  %63 = call i32 @memset(i32 %61, i32 0, i32 %62)
  %64 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %65 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %64, i32 0, i32 0
  store i32 0, i32* %65, align 8
  ret void
}

declare dso_local i32 @i915_ggtt_offset(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
