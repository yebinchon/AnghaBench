; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_kvmgt.c_intel_vgpu_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_kvmgt.c_intel_vgpu_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.intel_vgpu* (i8*, %struct.intel_vgpu_type*)*, %struct.intel_vgpu_type* (i8*, i32)* }
%struct.intel_vgpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.mdev_device*, i32 }
%struct.mdev_device = type { i32 }
%struct.intel_vgpu_type = type { i32 }
%struct.kobject = type { i32 }
%struct.device = type { i32 }
%struct.TYPE_5__ = type { i8* }

@intel_gvt_ops = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"failed to find type %s to create\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to create intel vgpu: %d\0A\00", align 1
@intel_vgpu_release_work = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"intel_vgpu_create succeeded for mdev: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.mdev_device*)* @intel_vgpu_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_vgpu_create(%struct.kobject* %0, %struct.mdev_device* %1) #0 {
  %3 = alloca %struct.kobject*, align 8
  %4 = alloca %struct.mdev_device*, align 8
  %5 = alloca %struct.intel_vgpu*, align 8
  %6 = alloca %struct.intel_vgpu_type*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %3, align 8
  store %struct.mdev_device* %1, %struct.mdev_device** %4, align 8
  store %struct.intel_vgpu* null, %struct.intel_vgpu** %5, align 8
  %10 = load %struct.mdev_device*, %struct.mdev_device** %4, align 8
  %11 = call %struct.device* @mdev_parent_dev(%struct.mdev_device* %10)
  store %struct.device* %11, %struct.device** %7, align 8
  %12 = load %struct.device*, %struct.device** %7, align 8
  %13 = call %struct.TYPE_5__* @kdev_to_i915(%struct.device* %12)
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %8, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @intel_gvt_ops, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load %struct.intel_vgpu_type* (i8*, i32)*, %struct.intel_vgpu_type* (i8*, i32)** %17, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load %struct.kobject*, %struct.kobject** %3, align 8
  %21 = call i32 @kobject_name(%struct.kobject* %20)
  %22 = call %struct.intel_vgpu_type* %18(i8* %19, i32 %21)
  store %struct.intel_vgpu_type* %22, %struct.intel_vgpu_type** %6, align 8
  %23 = load %struct.intel_vgpu_type*, %struct.intel_vgpu_type** %6, align 8
  %24 = icmp ne %struct.intel_vgpu_type* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %2
  %26 = load %struct.kobject*, %struct.kobject** %3, align 8
  %27 = call i32 @kobject_name(%struct.kobject* %26)
  %28 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %9, align 4
  br label %71

31:                                               ; preds = %2
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @intel_gvt_ops, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.intel_vgpu* (i8*, %struct.intel_vgpu_type*)*, %struct.intel_vgpu* (i8*, %struct.intel_vgpu_type*)** %33, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load %struct.intel_vgpu_type*, %struct.intel_vgpu_type** %6, align 8
  %37 = call %struct.intel_vgpu* %34(i8* %35, %struct.intel_vgpu_type* %36)
  store %struct.intel_vgpu* %37, %struct.intel_vgpu** %5, align 8
  %38 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %39 = call i64 @IS_ERR_OR_NULL(%struct.intel_vgpu* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %31
  %42 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %43 = icmp eq %struct.intel_vgpu* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* @EFAULT, align 4
  %46 = sub nsw i32 0, %45
  br label %50

47:                                               ; preds = %41
  %48 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %49 = call i32 @PTR_ERR(%struct.intel_vgpu* %48)
  br label %50

50:                                               ; preds = %47, %44
  %51 = phi i32 [ %46, %44 ], [ %49, %47 ]
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @gvt_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %71

54:                                               ; preds = %31
  %55 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %56 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* @intel_vgpu_release_work, align 4
  %59 = call i32 @INIT_WORK(i32* %57, i32 %58)
  %60 = load %struct.mdev_device*, %struct.mdev_device** %4, align 8
  %61 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %62 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store %struct.mdev_device* %60, %struct.mdev_device** %63, align 8
  %64 = load %struct.mdev_device*, %struct.mdev_device** %4, align 8
  %65 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %66 = call i32 @mdev_set_drvdata(%struct.mdev_device* %64, %struct.intel_vgpu* %65)
  %67 = load %struct.mdev_device*, %struct.mdev_device** %4, align 8
  %68 = call i32 @mdev_dev(%struct.mdev_device* %67)
  %69 = call i32 @dev_name(i32 %68)
  %70 = call i32 @gvt_dbg_core(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  store i32 0, i32* %9, align 4
  br label %71

71:                                               ; preds = %54, %50, %25
  %72 = load i32, i32* %9, align 4
  ret i32 %72
}

declare dso_local %struct.device* @mdev_parent_dev(%struct.mdev_device*) #1

declare dso_local %struct.TYPE_5__* @kdev_to_i915(%struct.device*) #1

declare dso_local i32 @kobject_name(%struct.kobject*) #1

declare dso_local i32 @gvt_vgpu_err(i8*, i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.intel_vgpu*) #1

declare dso_local i32 @PTR_ERR(%struct.intel_vgpu*) #1

declare dso_local i32 @gvt_err(i8*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mdev_set_drvdata(%struct.mdev_device*, %struct.intel_vgpu*) #1

declare dso_local i32 @gvt_dbg_core(i8*, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @mdev_dev(%struct.mdev_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
