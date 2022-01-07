; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_gen8_init_oa_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_gen8_init_oa_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_perf_stream = type { i32, %struct.TYPE_4__, %struct.drm_i915_private* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i8* }
%struct.drm_i915_private = type { i32 }

@GEN8_OASTATUS = common dso_local global i32 0, align 4
@GEN8_OAHEADPTR = common dso_local global i32 0, align 4
@GEN8_OABUFFER_UDW = common dso_local global i32 0, align 4
@GEN8_OABUFFER = common dso_local global i32 0, align 4
@OABUFFER_SIZE_16M = common dso_local global i32 0, align 4
@GEN8_OABUFFER_MEM_SELECT_GGTT = common dso_local global i32 0, align 4
@GEN8_OATAILPTR = common dso_local global i32 0, align 4
@GEN8_OATAILPTR_MASK = common dso_local global i32 0, align 4
@INVALID_TAIL_PTR = common dso_local global i8* null, align 8
@INVALID_CTX_ID = common dso_local global i32 0, align 4
@OA_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_perf_stream*)* @gen8_init_oa_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen8_init_oa_buffer(%struct.i915_perf_stream* %0) #0 {
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
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @i915_ggtt_offset(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %15 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load i32, i32* @GEN8_OASTATUS, align 4
  %20 = call i32 @I915_WRITE(i32 %19, i32 0)
  %21 = load i32, i32* @GEN8_OAHEADPTR, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @I915_WRITE(i32 %21, i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %26 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load i32, i32* @GEN8_OABUFFER_UDW, align 4
  %29 = call i32 @I915_WRITE(i32 %28, i32 0)
  %30 = load i32, i32* @GEN8_OABUFFER, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @OABUFFER_SIZE_16M, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @GEN8_OABUFFER_MEM_SELECT_GGTT, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @I915_WRITE(i32 %30, i32 %35)
  %37 = load i32, i32* @GEN8_OATAILPTR, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @GEN8_OATAILPTR_MASK, align 4
  %40 = and i32 %38, %39
  %41 = call i32 @I915_WRITE(i32 %37, i32 %40)
  %42 = load i8*, i8** @INVALID_TAIL_PTR, align 8
  %43 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %44 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i8* %42, i8** %48, align 8
  %49 = load i8*, i8** @INVALID_TAIL_PTR, align 8
  %50 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %51 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i8* %49, i8** %55, align 8
  %56 = load i32, i32* @INVALID_CTX_ID, align 4
  %57 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %58 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 3
  store i32 %56, i32* %59, align 4
  %60 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %61 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  %65 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %66 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @OA_BUFFER_SIZE, align 4
  %70 = call i32 @memset(i32 %68, i32 0, i32 %69)
  %71 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %2, align 8
  %72 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %71, i32 0, i32 0
  store i32 0, i32* %72, align 8
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
