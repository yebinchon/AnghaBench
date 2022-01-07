; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_eb_release_vmas.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_eb_release_vmas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_execbuffer = type { i32, i32*, %struct.i915_vma** }
%struct.i915_vma = type { i32* }

@__EXEC_OBJECT_HAS_PIN = common dso_local global i32 0, align 4
@__EXEC_OBJECT_HAS_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_execbuffer*)* @eb_release_vmas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eb_release_vmas(%struct.i915_execbuffer* %0) #0 {
  %2 = alloca %struct.i915_execbuffer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.i915_vma*, align 8
  %6 = alloca i32, align 4
  store %struct.i915_execbuffer* %0, %struct.i915_execbuffer** %2, align 8
  %7 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %2, align 8
  %8 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %70, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %73

14:                                               ; preds = %10
  %15 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %2, align 8
  %16 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %15, i32 0, i32 2
  %17 = load %struct.i915_vma**, %struct.i915_vma*** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.i915_vma*, %struct.i915_vma** %17, i64 %19
  %21 = load %struct.i915_vma*, %struct.i915_vma** %20, align 8
  store %struct.i915_vma* %21, %struct.i915_vma** %5, align 8
  %22 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %2, align 8
  %23 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %6, align 4
  %29 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %30 = icmp ne %struct.i915_vma* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %14
  br label %73

32:                                               ; preds = %14
  %33 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %34 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %2, align 8
  %37 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = icmp ne i32* %35, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @GEM_BUG_ON(i32 %43)
  %45 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %46 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  %47 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %2, align 8
  %48 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %47, i32 0, i32 2
  %49 = load %struct.i915_vma**, %struct.i915_vma*** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.i915_vma*, %struct.i915_vma** %49, i64 %51
  store %struct.i915_vma* null, %struct.i915_vma** %52, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @__EXEC_OBJECT_HAS_PIN, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %32
  %58 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @__eb_unreserve_vma(%struct.i915_vma* %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %32
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @__EXEC_OBJECT_HAS_REF, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %68 = call i32 @i915_vma_put(%struct.i915_vma* %67)
  br label %69

69:                                               ; preds = %66, %61
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %4, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %10

73:                                               ; preds = %31, %10
  ret void
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @__eb_unreserve_vma(%struct.i915_vma*, i32) #1

declare dso_local i32 @i915_vma_put(%struct.i915_vma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
