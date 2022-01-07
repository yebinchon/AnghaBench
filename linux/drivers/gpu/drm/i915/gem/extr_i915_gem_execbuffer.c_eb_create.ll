; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_eb_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_eb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_execbuffer = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@I915_EXEC_HANDLE_LUT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_execbuffer*)* @eb_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eb_create(%struct.i915_execbuffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i915_execbuffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.i915_execbuffer* %0, %struct.i915_execbuffer** %3, align 8
  %6 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %7 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %6, i32 0, i32 3
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @I915_EXEC_HANDLE_LUT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %63, label %14

14:                                               ; preds = %1
  %15 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %16 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @ilog2(i32 %17)
  %19 = add nsw i32 1, %18
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %45, %14
  %21 = load i32, i32* @GFP_KERNEL, align 4
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ugt i32 %22, 1
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i32, i32* @__GFP_NORETRY, align 4
  %26 = load i32, i32* @__GFP_NOWARN, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %24, %20
  %31 = load i32, i32* %4, align 4
  %32 = zext i32 %31 to i64
  %33 = shl i64 4, %32
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @kzalloc(i32 %34, i32 %35)
  %37 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %38 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %40 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  br label %49

44:                                               ; preds = %30
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %4, align 4
  %47 = add i32 %46, -1
  store i32 %47, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %20, label %49

49:                                               ; preds = %45, %43
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %71

59:                                               ; preds = %49
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %62 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  br label %70

63:                                               ; preds = %1
  %64 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %65 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sub i32 0, %66
  %68 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %69 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %63, %59
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %56
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
