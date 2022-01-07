; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_i915_gem_fence_regs_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_i915_gem_fence_regs_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.i915_fence_reg* }
%struct.i915_fence_reg = type { i32, %struct.i915_vma* }
%struct.i915_vma = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"Total fences = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Fence %d, pin count = %d, object = \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"unused\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @i915_gem_fence_regs_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_gem_fence_regs_info(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i915_fence_reg*, align 8
  %8 = alloca %struct.i915_vma*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.drm_i915_private* @node_to_i915(i32 %11)
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %5, align 8
  %13 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %15 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = call i32 (...) @rcu_read_lock()
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %58, %2
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %23 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ult i32 %21, %25
  br i1 %26, label %27, label %61

27:                                               ; preds = %20
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %29 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.i915_fence_reg, %struct.i915_fence_reg* %31, i64 %33
  store %struct.i915_fence_reg* %34, %struct.i915_fence_reg** %7, align 8
  %35 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %7, align 8
  %36 = getelementptr inbounds %struct.i915_fence_reg, %struct.i915_fence_reg* %35, i32 0, i32 1
  %37 = load %struct.i915_vma*, %struct.i915_vma** %36, align 8
  store %struct.i915_vma* %37, %struct.i915_vma** %8, align 8
  %38 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %7, align 8
  %41 = getelementptr inbounds %struct.i915_fence_reg, %struct.i915_fence_reg* %40, i32 0, i32 0
  %42 = call i32 @atomic_read(i32* %41)
  %43 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %42)
  %44 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %45 = icmp ne %struct.i915_vma* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %27
  %47 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %48 = call i32 @seq_puts(%struct.seq_file* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %55

49:                                               ; preds = %27
  %50 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %51 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %52 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @describe_obj(%struct.seq_file* %50, i32 %53)
  br label %55

55:                                               ; preds = %49, %46
  %56 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %57 = call i32 @seq_putc(%struct.seq_file* %56, i8 signext 10)
  br label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %6, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %20

61:                                               ; preds = %20
  %62 = call i32 (...) @rcu_read_unlock()
  ret i32 0
}

declare dso_local %struct.drm_i915_private* @node_to_i915(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @describe_obj(%struct.seq_file*, i32) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
