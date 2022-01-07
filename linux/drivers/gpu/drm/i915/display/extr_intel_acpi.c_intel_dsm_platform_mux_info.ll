; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_acpi.c_intel_dsm_platform_mux_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_acpi.c_intel_dsm_platform_mux_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %union.acpi_object* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32* }

@intel_dsm_guid = common dso_local global i32 0, align 4
@INTEL_DSM_REVISION_ID = common dso_local global i32 0, align 4
@INTEL_DSM_FN_PLATFORM_MUX_INFO = common dso_local global i32 0, align 4
@ACPI_TYPE_PACKAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to evaluate _DSM\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"MUX info connectors: %lld\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Connector id: 0x%016llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"  port id: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"  display mux info: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"  aux/dc mux info: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"  hpd mux info: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @intel_dsm_platform_mux_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_dsm_platform_mux_info(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %union.acpi_object*, align 8
  %5 = alloca %union.acpi_object*, align 8
  %6 = alloca %union.acpi_object*, align 8
  %7 = alloca %union.acpi_object*, align 8
  %8 = alloca %union.acpi_object*, align 8
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @INTEL_DSM_REVISION_ID, align 4
  %11 = load i32, i32* @INTEL_DSM_FN_PLATFORM_MUX_INFO, align 4
  %12 = load i32, i32* @ACPI_TYPE_PACKAGE, align 4
  %13 = call %union.acpi_object* @acpi_evaluate_dsm_typed(i32 %9, i32* @intel_dsm_guid, i32 %10, i32 %11, i32* null, i32 %12)
  store %union.acpi_object* %13, %union.acpi_object** %4, align 8
  %14 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %15 = icmp ne %union.acpi_object* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %97

18:                                               ; preds = %1
  %19 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %20 = bitcast %union.acpi_object* %19 to %struct.TYPE_4__*
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %union.acpi_object*, %union.acpi_object** %21, align 8
  %23 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %22, i64 0
  store %union.acpi_object* %23, %union.acpi_object** %5, align 8
  %24 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %25 = bitcast %union.acpi_object* %24 to %struct.TYPE_5__*
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %27)
  store i32 1, i32* %3, align 4
  br label %29

29:                                               ; preds = %91, %18
  %30 = load i32, i32* %3, align 4
  %31 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %32 = bitcast %union.acpi_object* %31 to %struct.TYPE_4__*
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %30, %34
  br i1 %35, label %36, label %94

36:                                               ; preds = %29
  %37 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %38 = bitcast %union.acpi_object* %37 to %struct.TYPE_4__*
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load %union.acpi_object*, %union.acpi_object** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %40, i64 %42
  store %union.acpi_object* %43, %union.acpi_object** %6, align 8
  %44 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %45 = bitcast %union.acpi_object* %44 to %struct.TYPE_4__*
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load %union.acpi_object*, %union.acpi_object** %46, align 8
  %48 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %47, i64 0
  store %union.acpi_object* %48, %union.acpi_object** %7, align 8
  %49 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %50 = bitcast %union.acpi_object* %49 to %struct.TYPE_4__*
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load %union.acpi_object*, %union.acpi_object** %51, align 8
  %53 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %52, i64 1
  store %union.acpi_object* %53, %union.acpi_object** %8, align 8
  %54 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %55 = bitcast %union.acpi_object* %54 to %struct.TYPE_5__*
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %57)
  %59 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %60 = bitcast %union.acpi_object* %59 to %struct.TYPE_6__*
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @intel_dsm_port_name(i32 %64)
  %66 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i64 %65)
  %67 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %68 = bitcast %union.acpi_object* %67 to %struct.TYPE_6__*
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @intel_dsm_mux_type(i32 %72)
  %74 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i64 %73)
  %75 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %76 = bitcast %union.acpi_object* %75 to %struct.TYPE_6__*
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @intel_dsm_mux_type(i32 %80)
  %82 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i64 %81)
  %83 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %84 = bitcast %union.acpi_object* %83 to %struct.TYPE_6__*
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 3
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @intel_dsm_mux_type(i32 %88)
  %90 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i64 %89)
  br label %91

91:                                               ; preds = %36
  %92 = load i32, i32* %3, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %3, align 4
  br label %29

94:                                               ; preds = %29
  %95 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %96 = call i32 @ACPI_FREE(%union.acpi_object* %95)
  br label %97

97:                                               ; preds = %94, %16
  ret void
}

declare dso_local %union.acpi_object* @acpi_evaluate_dsm_typed(i32, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, ...) #1

declare dso_local i64 @intel_dsm_port_name(i32) #1

declare dso_local i64 @intel_dsm_mux_type(i32) #1

declare dso_local i32 @ACPI_FREE(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
