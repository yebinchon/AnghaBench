; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_eb_select_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_eb_select_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_execbuffer = type { i32, i32, %struct.i915_gem_context*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.i915_gem_context = type { i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EXEC_OBJECT_NEEDS_GTT = common dso_local global i32 0, align 4
@UCONTEXT_NO_ZEROMAP = common dso_local global i32 0, align 4
@__EXEC_OBJECT_NEEDS_BIAS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_execbuffer*)* @eb_select_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eb_select_context(%struct.i915_execbuffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i915_execbuffer*, align 8
  %4 = alloca %struct.i915_gem_context*, align 8
  store %struct.i915_execbuffer* %0, %struct.i915_execbuffer** %3, align 8
  %5 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %6 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %5, i32 0, i32 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %11 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %10, i32 0, i32 3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.i915_gem_context* @i915_gem_context_lookup(i32 %9, i32 %14)
  store %struct.i915_gem_context* %15, %struct.i915_gem_context** %4, align 8
  %16 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  %17 = icmp ne %struct.i915_gem_context* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %54

25:                                               ; preds = %1
  %26 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  %27 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %28 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %27, i32 0, i32 2
  store %struct.i915_gem_context* %26, %struct.i915_gem_context** %28, align 8
  %29 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  %30 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %25
  %34 = load i32, i32* @EXEC_OBJECT_NEEDS_GTT, align 4
  %35 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %36 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %33, %25
  %40 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %41 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load i32, i32* @UCONTEXT_NO_ZEROMAP, align 4
  %43 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  %44 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %43, i32 0, i32 0
  %45 = call i64 @test_bit(i32 %42, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %39
  %48 = load i32, i32* @__EXEC_OBJECT_NEEDS_BIAS, align 4
  %49 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %50 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %47, %39
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %22
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.i915_gem_context* @i915_gem_context_lookup(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
