; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_opregion.c_intel_vgpu_clean_opregion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_opregion.c_intel_vgpu_clean_opregion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.intel_vgpu = type { i32 }
%struct.TYPE_3__ = type { i32*, i64 }

@.str = private unnamed_addr constant [29 x i8] c"vgpu%d: clean vgpu opregion\0A\00", align 1
@intel_gvt_host = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@INTEL_GVT_HYPERVISOR_XEN = common dso_local global i64 0, align 8
@INTEL_GVT_HYPERVISOR_KVM = common dso_local global i64 0, align 8
@INTEL_GVT_OPREGION_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_vgpu_clean_opregion(%struct.intel_vgpu* %0) #0 {
  %2 = alloca %struct.intel_vgpu*, align 8
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %2, align 8
  %3 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %4 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @gvt_dbg_core(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %8 = call %struct.TYPE_3__* @vgpu_opregion(%struct.intel_vgpu* %7)
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %45

13:                                               ; preds = %1
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_gvt_host, i32 0, i32 0), align 8
  %15 = load i64, i64* @INTEL_GVT_HYPERVISOR_XEN, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %19 = call %struct.TYPE_3__* @vgpu_opregion(%struct.intel_vgpu* %18)
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %25 = call i32 @map_vgpu_opregion(%struct.intel_vgpu* %24, i32 0)
  br label %26

26:                                               ; preds = %23, %17
  br label %33

27:                                               ; preds = %13
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_gvt_host, i32 0, i32 0), align 8
  %29 = load i64, i64* @INTEL_GVT_HYPERVISOR_KVM, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %31, %27
  br label %33

33:                                               ; preds = %32, %26
  %34 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %35 = call %struct.TYPE_3__* @vgpu_opregion(%struct.intel_vgpu* %34)
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = ptrtoint i32* %37 to i64
  %39 = load i32, i32* @INTEL_GVT_OPREGION_SIZE, align 4
  %40 = call i32 @get_order(i32 %39)
  %41 = call i32 @free_pages(i64 %38, i32 %40)
  %42 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %43 = call %struct.TYPE_3__* @vgpu_opregion(%struct.intel_vgpu* %42)
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %33, %12
  ret void
}

declare dso_local i32 @gvt_dbg_core(i8*, i32) #1

declare dso_local %struct.TYPE_3__* @vgpu_opregion(%struct.intel_vgpu*) #1

declare dso_local i32 @map_vgpu_opregion(%struct.intel_vgpu*, i32) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @get_order(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
