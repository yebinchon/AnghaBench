; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gemfs.c_i915_gemfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gemfs.c_i915_gemfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.vfsmount* }
%struct.vfsmount = type { i32 }
%struct.file_system_type = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"tmpfs\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gemfs_init(%struct.drm_i915_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.file_system_type*, align 8
  %5 = alloca %struct.vfsmount*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  %6 = call %struct.file_system_type* @get_fs_type(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.file_system_type* %6, %struct.file_system_type** %4, align 8
  %7 = load %struct.file_system_type*, %struct.file_system_type** %4, align 8
  %8 = icmp ne %struct.file_system_type* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %26

12:                                               ; preds = %1
  %13 = load %struct.file_system_type*, %struct.file_system_type** %4, align 8
  %14 = call %struct.vfsmount* @kern_mount(%struct.file_system_type* %13)
  store %struct.vfsmount* %14, %struct.vfsmount** %5, align 8
  %15 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %16 = call i64 @IS_ERR(%struct.vfsmount* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %20 = call i32 @PTR_ERR(%struct.vfsmount* %19)
  store i32 %20, i32* %2, align 4
  br label %26

21:                                               ; preds = %12
  %22 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %24 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store %struct.vfsmount* %22, %struct.vfsmount** %25, align 8
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %21, %18, %9
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.file_system_type* @get_fs_type(i8*) #1

declare dso_local %struct.vfsmount* @kern_mount(%struct.file_system_type*) #1

declare dso_local i64 @IS_ERR(%struct.vfsmount*) #1

declare dso_local i32 @PTR_ERR(%struct.vfsmount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
