; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_i915_forcewake_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_i915_forcewake_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32, i32 }
%struct.file = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @i915_forcewake_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_forcewake_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 0
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  store %struct.drm_i915_private* %9, %struct.drm_i915_private** %6, align 8
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %11 = call i32 @INTEL_GEN(%struct.drm_i915_private* %10)
  %12 = icmp slt i32 %11, 6
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %24

14:                                               ; preds = %2
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %16 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %15, i32 0, i32 1
  %17 = call i64 @intel_runtime_pm_get(i32* %16)
  %18 = inttoptr i64 %17 to i8*
  %19 = load %struct.file*, %struct.file** %5, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %22 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %21, i32 0, i32 0
  %23 = call i32 @intel_uncore_forcewake_user_get(i32* %22)
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %14, %13
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @intel_runtime_pm_get(i32*) #1

declare dso_local i32 @intel_uncore_forcewake_user_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
