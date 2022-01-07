; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_opregion.c_map_vgpu_opregion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_opregion.c_map_vgpu_opregion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { i32 }
%struct.TYPE_2__ = type { i32, i32*, i64 }

@INTEL_GVT_OPREGION_PAGES = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@INTEL_GVT_INVALID_ADDR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"fail to get MFN from VA\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"fail to map GFN to MFN, errno: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu*, i32)* @map_vgpu_opregion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_vgpu_opregion(%struct.intel_vgpu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_vgpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %51, %2
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @INTEL_GVT_OPREGION_PAGES, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %54

13:                                               ; preds = %9
  %14 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %15 = call %struct.TYPE_2__* @vgpu_opregion(%struct.intel_vgpu* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @PAGE_SIZE, align 4
  %20 = mul nsw i32 %18, %19
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %17, %21
  %23 = call i64 @intel_gvt_hypervisor_virt_to_mfn(i64 %22)
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @INTEL_GVT_INVALID_ADDR, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %13
  %28 = call i32 (i8*, ...) @gvt_vgpu_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %59

31:                                               ; preds = %13
  %32 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %33 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %34 = call %struct.TYPE_2__* @vgpu_opregion(%struct.intel_vgpu* %33)
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %6, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @intel_gvt_hypervisor_map_gfn_to_mfn(%struct.intel_vgpu* %32, i32 %40, i64 %41, i32 1, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %31
  %47 = load i32, i32* %8, align 4
  %48 = call i32 (i8*, ...) @gvt_vgpu_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %59

50:                                               ; preds = %31
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %9

54:                                               ; preds = %9
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %57 = call %struct.TYPE_2__* @vgpu_opregion(%struct.intel_vgpu* %56)
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %54, %46, %27
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @intel_gvt_hypervisor_virt_to_mfn(i64) #1

declare dso_local %struct.TYPE_2__* @vgpu_opregion(%struct.intel_vgpu*) #1

declare dso_local i32 @gvt_vgpu_err(i8*, ...) #1

declare dso_local i32 @intel_gvt_hypervisor_map_gfn_to_mfn(%struct.intel_vgpu*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
