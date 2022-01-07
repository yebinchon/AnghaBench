; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_mpt.h_intel_gvt_hypervisor_inject_msi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_mpt.h_intel_gvt_hypervisor_inject_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32, i32, i32)* }
%struct.intel_vgpu = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@MSI_CAP_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"only support one MSI format\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@intel_gvt_host = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu*)* @intel_gvt_hypervisor_inject_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_gvt_hypervisor_inject_msi(%struct.intel_vgpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_vgpu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %3, align 8
  %9 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %10 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %9, i32 0, i32 2
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %4, align 8
  %15 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %16 = call i64 @vgpu_cfg_space(%struct.intel_vgpu* %15)
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @MSI_CAP_CONTROL(i64 %17)
  %19 = add nsw i64 %16, %18
  %20 = inttoptr i64 %19 to i32*
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  %22 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %23 = call i64 @vgpu_cfg_space(%struct.intel_vgpu* %22)
  %24 = load i64, i64* %4, align 8
  %25 = call i64 @MSI_CAP_ADDRESS(i64 %24)
  %26 = add nsw i64 %23, %25
  %27 = inttoptr i64 %26 to i32*
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  %29 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %30 = call i64 @vgpu_cfg_space(%struct.intel_vgpu* %29)
  %31 = load i64, i64* %4, align 8
  %32 = call i64 @MSI_CAP_DATA(i64 %31)
  %33 = add nsw i64 %30, %32
  %34 = inttoptr i64 %33 to i32*
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @MSI_CAP_EN, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %71

41:                                               ; preds = %1
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @GENMASK(i32 15, i32 1)
  %44 = and i32 %42, %43
  %45 = call i64 @WARN(i32 %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %71

50:                                               ; preds = %41
  %51 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %52 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @trace_inject_msi(i32 %53, i32 %54, i32 %55)
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_gvt_host, i32 0, i32 0), align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %58, align 8
  %60 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %61 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 %59(i32 %62, i32 %63, i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %50
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %2, align 4
  br label %71

70:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %68, %47, %40
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i64 @vgpu_cfg_space(%struct.intel_vgpu*) #1

declare dso_local i64 @MSI_CAP_CONTROL(i64) #1

declare dso_local i64 @MSI_CAP_ADDRESS(i64) #1

declare dso_local i64 @MSI_CAP_DATA(i64) #1

declare dso_local i64 @WARN(i32, i8*) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @trace_inject_msi(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
