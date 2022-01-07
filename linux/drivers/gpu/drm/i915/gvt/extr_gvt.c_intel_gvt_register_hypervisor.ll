; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gvt.c_intel_gvt_register_hypervisor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gvt.c_intel_gvt_register_hypervisor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, %struct.intel_gvt_mpt*, i32 }
%struct.intel_gvt_mpt = type { i64 }
%struct.TYPE_3__ = type { i64 }

@intel_gvt_host = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ENODEV = common dso_local global i32 0, align 4
@INTEL_GVT_HYPERVISOR_KVM = common dso_local global i64 0, align 8
@INTEL_GVT_HYPERVISOR_XEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@intel_gvt_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to init %s hypervisor module\0A\00", align 1
@supported_hypervisors = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Running with hypervisor %s in host mode\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_gvt_register_hypervisor(%struct.intel_gvt_mpt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_gvt_mpt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.intel_gvt_mpt* %0, %struct.intel_gvt_mpt** %3, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_gvt_host, i32 0, i32 3), align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %64

11:                                               ; preds = %1
  %12 = load %struct.intel_gvt_mpt*, %struct.intel_gvt_mpt** %3, align 8
  %13 = getelementptr inbounds %struct.intel_gvt_mpt, %struct.intel_gvt_mpt* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @INTEL_GVT_HYPERVISOR_KVM, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %11
  %18 = load %struct.intel_gvt_mpt*, %struct.intel_gvt_mpt** %3, align 8
  %19 = getelementptr inbounds %struct.intel_gvt_mpt, %struct.intel_gvt_mpt* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @INTEL_GVT_HYPERVISOR_XEN, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %64

26:                                               ; preds = %17, %11
  %27 = load i32, i32* @THIS_MODULE, align 4
  %28 = call i32 @try_module_get(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %64

33:                                               ; preds = %26
  %34 = load %struct.intel_gvt_mpt*, %struct.intel_gvt_mpt** %3, align 8
  store %struct.intel_gvt_mpt* %34, %struct.intel_gvt_mpt** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_gvt_host, i32 0, i32 2), align 8
  %35 = load %struct.intel_gvt_mpt*, %struct.intel_gvt_mpt** %3, align 8
  %36 = getelementptr inbounds %struct.intel_gvt_mpt, %struct.intel_gvt_mpt* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_gvt_host, i32 0, i32 0), align 8
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_gvt_host, i32 0, i32 1), align 8
  %39 = call %struct.TYPE_3__* @kdev_to_i915(i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i8*
  store i8* %42, i8** %5, align 8
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_gvt_host, i32 0, i32 1), align 8
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @intel_gvt_hypervisor_host_init(i32 %43, i8* %44, i32* @intel_gvt_ops)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %33
  %49 = load i32*, i32** @supported_hypervisors, align 8
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_gvt_host, i32 0, i32 0), align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @gvt_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @THIS_MODULE, align 4
  %55 = call i32 @module_put(i32 %54)
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %64

58:                                               ; preds = %33
  %59 = load i32*, i32** @supported_hypervisors, align 8
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_gvt_host, i32 0, i32 0), align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @gvt_dbg_core(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %58, %48, %30, %23, %8
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @try_module_get(i32) #1

declare dso_local %struct.TYPE_3__* @kdev_to_i915(i32) #1

declare dso_local i32 @intel_gvt_hypervisor_host_init(i32, i8*, i32*) #1

declare dso_local i32 @gvt_err(i8*, i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @gvt_dbg_core(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
