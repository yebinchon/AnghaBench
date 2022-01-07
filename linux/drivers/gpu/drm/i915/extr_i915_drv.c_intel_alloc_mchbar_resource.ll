; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_intel_alloc_mchbar_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_intel_alloc_mchbar_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i8*, i64, i32 }
%struct.TYPE_5__ = type { i32 }

@MCHBAR_I965 = common dso_local global i32 0, align 4
@MCHBAR_I915 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"i915 MCHBAR\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@MCHBAR_SIZE = common dso_local global i64 0, align 8
@PCIBIOS_MIN_MEM = common dso_local global i32 0, align 4
@pcibios_align_resource = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"failed bus alloc: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*)* @intel_alloc_mchbar_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_alloc_mchbar_resource(%struct.drm_i915_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %10 = call i32 @INTEL_GEN(%struct.drm_i915_private* %9)
  %11 = icmp sge i32 %10, 4
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @MCHBAR_I965, align 4
  br label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @MCHBAR_I915, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  store i32 %17, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %19 = call i32 @INTEL_GEN(%struct.drm_i915_private* %18)
  %20 = icmp sge i32 %19, 4
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %23 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 4
  %27 = call i32 @pci_read_config_dword(%struct.TYPE_5__* %24, i32 %26, i32* %6)
  br label %28

28:                                               ; preds = %21, %16
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %30 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @pci_read_config_dword(%struct.TYPE_5__* %31, i32 %32, i32* %5)
  %34 = load i32, i32* %6, align 4
  %35 = shl i32 %34, 32
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %7, align 4
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %39 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %40, align 8
  %41 = load i32, i32* @IORESOURCE_MEM, align 4
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %43 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 8
  %45 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %46 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %51 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %50, i32 0, i32 0
  %52 = load i64, i64* @MCHBAR_SIZE, align 8
  %53 = load i64, i64* @MCHBAR_SIZE, align 8
  %54 = load i32, i32* @PCIBIOS_MIN_MEM, align 4
  %55 = load i32, i32* @pcibios_align_resource, align 4
  %56 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %57 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %56, i32 0, i32 1
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = call i32 @pci_bus_alloc_resource(i32 %49, %struct.TYPE_6__* %51, i64 %52, i64 %53, i32 %54, i32 0, i32 %55, %struct.TYPE_5__* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %28
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %66 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %2, align 4
  br label %96

69:                                               ; preds = %28
  %70 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %71 = call i32 @INTEL_GEN(%struct.drm_i915_private* %70)
  %72 = icmp sge i32 %71, 4
  br i1 %72, label %73, label %85

73:                                               ; preds = %69
  %74 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %75 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %74, i32 0, i32 1
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 4
  %79 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %80 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @upper_32_bits(i64 %82)
  %84 = call i32 @pci_write_config_dword(%struct.TYPE_5__* %76, i32 %78, i32 %83)
  br label %85

85:                                               ; preds = %73, %69
  %86 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %87 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %86, i32 0, i32 1
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %91 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @lower_32_bits(i64 %93)
  %95 = call i32 @pci_write_config_dword(%struct.TYPE_5__* %88, i32 %89, i32 %94)
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %85, %62
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @pci_read_config_dword(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @pci_bus_alloc_resource(i32, %struct.TYPE_6__*, i64, i64, i32, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

declare dso_local i32 @pci_write_config_dword(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @lower_32_bits(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
