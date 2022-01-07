; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_kvmgt.c_intel_vgpu_reg_rw_edid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_kvmgt.c_intel_vgpu_reg_rw_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.vfio_edid_region = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@VFIO_PCI_NUM_REGIONS = common dso_local global i32 0, align 4
@VFIO_PCI_OFFSET_MASK = common dso_local global i64 0, align 8
@EDID_BLOB_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"failed to access EDID region\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.intel_vgpu*, i8*, i64, i64*, i32)* @intel_vgpu_reg_rw_edid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @intel_vgpu_reg_rw_edid(%struct.intel_vgpu* %0, i8* %1, i64 %2, i64* %3, i32 %4) #0 {
  %6 = alloca %struct.intel_vgpu*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.vfio_edid_region*, align 8
  %14 = alloca i64, align 8
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load i64*, i64** %9, align 8
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @VFIO_PCI_OFFSET_TO_INDEX(i64 %16)
  %18 = load i32, i32* @VFIO_PCI_NUM_REGIONS, align 4
  %19 = sub i32 %17, %18
  store i32 %19, i32* %12, align 4
  %20 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %21 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = load i32, i32* %12, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.vfio_edid_region*
  store %struct.vfio_edid_region* %29, %struct.vfio_edid_region** %13, align 8
  %30 = load i64*, i64** %9, align 8
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @VFIO_PCI_OFFSET_MASK, align 8
  %33 = and i64 %31, %32
  store i64 %33, i64* %14, align 8
  %34 = load i64, i64* %14, align 8
  %35 = load %struct.vfio_edid_region*, %struct.vfio_edid_region** %13, align 8
  %36 = getelementptr inbounds %struct.vfio_edid_region, %struct.vfio_edid_region* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %34, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %5
  %41 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %42 = load %struct.vfio_edid_region*, %struct.vfio_edid_region** %13, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %14, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @handle_edid_regs(%struct.intel_vgpu* %41, %struct.vfio_edid_region* %42, i8* %43, i64 %44, i64 %45, i32 %46)
  store i32 %47, i32* %11, align 4
  br label %58

48:                                               ; preds = %5
  %49 = load i64, i64* @EDID_BLOB_OFFSET, align 8
  %50 = load i64, i64* %14, align 8
  %51 = sub nsw i64 %50, %49
  store i64 %51, i64* %14, align 8
  %52 = load %struct.vfio_edid_region*, %struct.vfio_edid_region** %13, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %14, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @handle_edid_blob(%struct.vfio_edid_region* %52, i8* %53, i64 %54, i64 %55, i32 %56)
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %48, %40
  %59 = load i32, i32* %11, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %58
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  ret i64 %65
}

declare dso_local i32 @VFIO_PCI_OFFSET_TO_INDEX(i64) #1

declare dso_local i32 @handle_edid_regs(%struct.intel_vgpu*, %struct.vfio_edid_region*, i8*, i64, i64, i32) #1

declare dso_local i32 @handle_edid_blob(%struct.vfio_edid_region*, i8*, i64, i64, i32) #1

declare dso_local i32 @gvt_vgpu_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
