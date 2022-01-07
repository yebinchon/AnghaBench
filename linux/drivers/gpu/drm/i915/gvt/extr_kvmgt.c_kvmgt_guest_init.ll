; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_kvmgt.c_kvmgt_guest_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_kvmgt.c_kvmgt_guest_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.mdev_device = type { i32 }
%struct.kvmgt_guest_info = type { i32, %struct.TYPE_5__, %struct.kvm*, %struct.intel_vgpu* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.kvm = type { i64 }
%struct.intel_vgpu = type { i64, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.kvm* }

@EEXIST = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"KVM is required to use Intel vGPU\0A\00", align 1
@ESRCH = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@kvmgt_page_track_write = common dso_local global i32 0, align 4
@kvmgt_page_track_flush_slot = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"kvmgt_nr_cache_entries\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdev_device*)* @kvmgt_guest_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmgt_guest_init(%struct.mdev_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mdev_device*, align 8
  %4 = alloca %struct.kvmgt_guest_info*, align 8
  %5 = alloca %struct.intel_vgpu*, align 8
  %6 = alloca %struct.kvm*, align 8
  store %struct.mdev_device* %0, %struct.mdev_device** %3, align 8
  %7 = load %struct.mdev_device*, %struct.mdev_device** %3, align 8
  %8 = call %struct.intel_vgpu* @mdev_get_drvdata(%struct.mdev_device* %7)
  store %struct.intel_vgpu* %8, %struct.intel_vgpu** %5, align 8
  %9 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %10 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i64 @handle_valid(i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EEXIST, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %94

17:                                               ; preds = %1
  %18 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %19 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.kvm*, %struct.kvm** %20, align 8
  store %struct.kvm* %21, %struct.kvm** %6, align 8
  %22 = load %struct.kvm*, %struct.kvm** %6, align 8
  %23 = icmp ne %struct.kvm* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = load %struct.kvm*, %struct.kvm** %6, align 8
  %26 = getelementptr inbounds %struct.kvm, %struct.kvm* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %24, %17
  %33 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ESRCH, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %94

36:                                               ; preds = %24
  %37 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %38 = load %struct.kvm*, %struct.kvm** %6, align 8
  %39 = call i64 @__kvmgt_vgpu_exist(%struct.intel_vgpu* %37, %struct.kvm* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @EEXIST, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %94

44:                                               ; preds = %36
  %45 = call %struct.kvmgt_guest_info* @vzalloc(i32 32)
  store %struct.kvmgt_guest_info* %45, %struct.kvmgt_guest_info** %4, align 8
  %46 = load %struct.kvmgt_guest_info*, %struct.kvmgt_guest_info** %4, align 8
  %47 = icmp ne %struct.kvmgt_guest_info* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %94

51:                                               ; preds = %44
  %52 = load %struct.kvmgt_guest_info*, %struct.kvmgt_guest_info** %4, align 8
  %53 = ptrtoint %struct.kvmgt_guest_info* %52 to i64
  %54 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %55 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %57 = load %struct.kvmgt_guest_info*, %struct.kvmgt_guest_info** %4, align 8
  %58 = getelementptr inbounds %struct.kvmgt_guest_info, %struct.kvmgt_guest_info* %57, i32 0, i32 3
  store %struct.intel_vgpu* %56, %struct.intel_vgpu** %58, align 8
  %59 = load %struct.kvm*, %struct.kvm** %6, align 8
  %60 = load %struct.kvmgt_guest_info*, %struct.kvmgt_guest_info** %4, align 8
  %61 = getelementptr inbounds %struct.kvmgt_guest_info, %struct.kvmgt_guest_info* %60, i32 0, i32 2
  store %struct.kvm* %59, %struct.kvm** %61, align 8
  %62 = load %struct.kvmgt_guest_info*, %struct.kvmgt_guest_info** %4, align 8
  %63 = getelementptr inbounds %struct.kvmgt_guest_info, %struct.kvmgt_guest_info* %62, i32 0, i32 2
  %64 = load %struct.kvm*, %struct.kvm** %63, align 8
  %65 = call i32 @kvm_get_kvm(%struct.kvm* %64)
  %66 = load %struct.kvmgt_guest_info*, %struct.kvmgt_guest_info** %4, align 8
  %67 = call i32 @kvmgt_protect_table_init(%struct.kvmgt_guest_info* %66)
  %68 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %69 = call i32 @gvt_cache_init(%struct.intel_vgpu* %68)
  %70 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %71 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %70, i32 0, i32 3
  %72 = call i32 @init_completion(i32* %71)
  %73 = load i32, i32* @kvmgt_page_track_write, align 4
  %74 = load %struct.kvmgt_guest_info*, %struct.kvmgt_guest_info** %4, align 8
  %75 = getelementptr inbounds %struct.kvmgt_guest_info, %struct.kvmgt_guest_info* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 4
  %77 = load i32, i32* @kvmgt_page_track_flush_slot, align 4
  %78 = load %struct.kvmgt_guest_info*, %struct.kvmgt_guest_info** %4, align 8
  %79 = getelementptr inbounds %struct.kvmgt_guest_info, %struct.kvmgt_guest_info* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 4
  %81 = load %struct.kvm*, %struct.kvm** %6, align 8
  %82 = load %struct.kvmgt_guest_info*, %struct.kvmgt_guest_info** %4, align 8
  %83 = getelementptr inbounds %struct.kvmgt_guest_info, %struct.kvmgt_guest_info* %82, i32 0, i32 1
  %84 = call i32 @kvm_page_track_register_notifier(%struct.kvm* %81, %struct.TYPE_5__* %83)
  %85 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %86 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %89 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = call i32 @debugfs_create_ulong(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 292, i32 %87, i32* %90)
  %92 = load %struct.kvmgt_guest_info*, %struct.kvmgt_guest_info** %4, align 8
  %93 = getelementptr inbounds %struct.kvmgt_guest_info, %struct.kvmgt_guest_info* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %51, %48, %41, %32, %14
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.intel_vgpu* @mdev_get_drvdata(%struct.mdev_device*) #1

declare dso_local i64 @handle_valid(i64) #1

declare dso_local i32 @gvt_vgpu_err(i8*) #1

declare dso_local i64 @__kvmgt_vgpu_exist(%struct.intel_vgpu*, %struct.kvm*) #1

declare dso_local %struct.kvmgt_guest_info* @vzalloc(i32) #1

declare dso_local i32 @kvm_get_kvm(%struct.kvm*) #1

declare dso_local i32 @kvmgt_protect_table_init(%struct.kvmgt_guest_info*) #1

declare dso_local i32 @gvt_cache_init(%struct.intel_vgpu*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @kvm_page_track_register_notifier(%struct.kvm*, %struct.TYPE_5__*) #1

declare dso_local i32 @debugfs_create_ulong(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
