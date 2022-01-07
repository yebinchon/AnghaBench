; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_kvmgt.c_kvmgt_set_opregion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_kvmgt.c_kvmgt_set_opregion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { i32 }
%struct.TYPE_2__ = type { i8* }

@ENOMEM = common dso_local global i32 0, align 4
@OPREGION_SIGNATURE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_INTEL = common dso_local global i32 0, align 4
@VFIO_REGION_TYPE_PCI_VENDOR_TYPE = common dso_local global i32 0, align 4
@VFIO_REGION_SUBTYPE_INTEL_IGD_OPREGION = common dso_local global i32 0, align 4
@intel_vgpu_regops_opregion = common dso_local global i32 0, align 4
@OPREGION_SIZE = common dso_local global i32 0, align 4
@VFIO_REGION_INFO_FLAG_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @kvmgt_set_opregion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmgt_set_opregion(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.intel_vgpu*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.intel_vgpu*
  store %struct.intel_vgpu* %8, %struct.intel_vgpu** %4, align 8
  %9 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %10 = call %struct.TYPE_2__* @vgpu_opregion(%struct.intel_vgpu* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %39

18:                                               ; preds = %1
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* @OPREGION_SIGNATURE, align 4
  %21 = call i64 @memcmp(i8* %19, i32 %20, i32 16)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @memunmap(i8* %24)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %39

28:                                               ; preds = %18
  %29 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %30 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %31 = load i32, i32* @VFIO_REGION_TYPE_PCI_VENDOR_TYPE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @VFIO_REGION_SUBTYPE_INTEL_IGD_OPREGION, align 4
  %34 = load i32, i32* @OPREGION_SIZE, align 4
  %35 = load i32, i32* @VFIO_REGION_INFO_FLAG_READ, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @intel_vgpu_register_reg(%struct.intel_vgpu* %29, i32 %32, i32 %33, i32* @intel_vgpu_regops_opregion, i32 %34, i32 %35, i8* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %28, %23, %15
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.TYPE_2__* @vgpu_opregion(%struct.intel_vgpu*) #1

declare dso_local i64 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @memunmap(i8*) #1

declare dso_local i32 @intel_vgpu_register_reg(%struct.intel_vgpu*, i32, i32, i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
