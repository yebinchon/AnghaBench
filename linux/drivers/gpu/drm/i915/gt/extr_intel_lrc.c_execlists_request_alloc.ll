; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_execlists_request_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_execlists_request_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 (%struct.i915_request*, i32)* }
%struct.TYPE_4__ = type { i32 }

@EXECLISTS_REQUEST_SIZE = common dso_local global i64 0, align 8
@EMIT_INVALIDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_request*)* @execlists_request_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @execlists_request_alloc(%struct.i915_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i915_request*, align 8
  %4 = alloca i32, align 4
  store %struct.i915_request* %0, %struct.i915_request** %3, align 8
  %5 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %6 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %5, i32 0, i32 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = call i32 @intel_context_is_pinned(%struct.TYPE_4__* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @GEM_BUG_ON(i32 %11)
  %13 = load i64, i64* @EXECLISTS_REQUEST_SIZE, align 8
  %14 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %15 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %17, %13
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %15, align 8
  %20 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %21 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @i915_vm_is_4lvl(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %1
  %28 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %29 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32 (%struct.i915_request*, i32)*, i32 (%struct.i915_request*, i32)** %31, align 8
  %33 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %34 = load i32, i32* @EMIT_INVALIDATE, align 4
  %35 = call i32 %32(%struct.i915_request* %33, i32 %34)
  store i32 %35, i32* %4, align 4
  br label %39

36:                                               ; preds = %1
  %37 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %38 = call i32 @emit_pdps(%struct.i915_request* %37)
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %36, %27
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %52

44:                                               ; preds = %39
  %45 = load i64, i64* @EXECLISTS_REQUEST_SIZE, align 8
  %46 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %47 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = sub nsw i64 %49, %45
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %47, align 8
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %44, %42
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @intel_context_is_pinned(%struct.TYPE_4__*) #1

declare dso_local i64 @i915_vm_is_4lvl(i32) #1

declare dso_local i32 @emit_pdps(%struct.i915_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
