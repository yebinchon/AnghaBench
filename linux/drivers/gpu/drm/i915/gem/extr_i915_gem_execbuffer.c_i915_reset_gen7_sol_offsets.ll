; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_i915_reset_gen7_sol_offsets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_i915_reset_gen7_sol_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@RCS0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"sol reset is gen7/rcs only\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MI_NOOP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_request*)* @i915_reset_gen7_sol_offsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_reset_gen7_sol_offsets(%struct.i915_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i915_request*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.i915_request* %0, %struct.i915_request** %3, align 8
  %6 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %7 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @IS_GEN(i32 %8, i32 7)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %13 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @RCS0, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %11, %1
  %20 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %58

23:                                               ; preds = %11
  %24 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %25 = call i32* @intel_ring_begin(%struct.i915_request* %24, i32 10)
  store i32* %25, i32** %4, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i64 @IS_ERR(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @PTR_ERR(i32* %30)
  store i32 %31, i32* %2, align 4
  br label %58

32:                                               ; preds = %23
  %33 = call i32 @MI_LOAD_REGISTER_IMM(i32 4)
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %4, align 8
  store i32 %33, i32* %34, align 4
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %47, %32
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 4
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @GEN7_SO_WRITE_OFFSET(i32 %40)
  %42 = call i32 @i915_mmio_reg_offset(i32 %41)
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %4, align 8
  store i32 %42, i32* %43, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %4, align 8
  store i32 0, i32* %45, align 4
  br label %47

47:                                               ; preds = %39
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %36

50:                                               ; preds = %36
  %51 = load i64, i64* @MI_NOOP, align 8
  %52 = trunc i64 %51 to i32
  %53 = load i32*, i32** %4, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %4, align 8
  store i32 %52, i32* %53, align 4
  %55 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @intel_ring_advance(%struct.i915_request* %55, i32* %56)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %50, %29, %19
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @IS_GEN(i32, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32* @intel_ring_begin(%struct.i915_request*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @MI_LOAD_REGISTER_IMM(i32) #1

declare dso_local i32 @i915_mmio_reg_offset(i32) #1

declare dso_local i32 @GEN7_SO_WRITE_OFFSET(i32) #1

declare dso_local i32 @intel_ring_advance(%struct.i915_request*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
