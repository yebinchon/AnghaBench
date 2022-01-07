; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn21/extr_dcn21_resource.c_calculate_wm_set_for_vlevel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn21/extr_dcn21_resource.c_calculate_wm_set_for_vlevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm_range_table_entry = type { double }
%struct.dcn_watermarks = type { i32, i32, i32, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.display_mode_lib = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { double, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.wm_range_table_entry*, %struct.dcn_watermarks*, %struct.display_mode_lib*, %struct.TYPE_18__*, i32)* @calculate_wm_set_for_vlevel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calculate_wm_set_for_vlevel(i32 %0, %struct.wm_range_table_entry* %1, %struct.dcn_watermarks* %2, %struct.display_mode_lib* %3, %struct.TYPE_18__* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.wm_range_table_entry*, align 8
  %9 = alloca %struct.dcn_watermarks*, align 8
  %10 = alloca %struct.display_mode_lib*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  store i32 %0, i32* %7, align 4
  store %struct.wm_range_table_entry* %1, %struct.wm_range_table_entry** %8, align 8
  store %struct.dcn_watermarks* %2, %struct.dcn_watermarks** %9, align 8
  store %struct.display_mode_lib* %3, %struct.display_mode_lib** %10, align 8
  store %struct.TYPE_18__* %4, %struct.TYPE_18__** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load %struct.display_mode_lib*, %struct.display_mode_lib** %10, align 8
  %15 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load double, double* %16, align 8
  store double %17, double* %13, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.display_mode_lib*, %struct.display_mode_lib** %10, align 8
  %20 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %18, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  store i32 %26, i32* %30, align 4
  %31 = load %struct.display_mode_lib*, %struct.display_mode_lib** %10, align 8
  %32 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 2
  store i32 %39, i32* %43, align 4
  %44 = load %struct.display_mode_lib*, %struct.display_mode_lib** %10, align 8
  %45 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  store i32 %52, i32* %56, align 4
  %57 = load %struct.wm_range_table_entry*, %struct.wm_range_table_entry** %8, align 8
  %58 = getelementptr inbounds %struct.wm_range_table_entry, %struct.wm_range_table_entry* %57, i32 0, i32 0
  %59 = load double, double* %58, align 8
  %60 = load %struct.display_mode_lib*, %struct.display_mode_lib** %10, align 8
  %61 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  store double %59, double* %62, align 8
  %63 = load %struct.display_mode_lib*, %struct.display_mode_lib** %10, align 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @get_wm_urgent(%struct.display_mode_lib* %63, %struct.TYPE_18__* %64, i32 %65)
  %67 = mul nsw i32 %66, 1000
  %68 = load %struct.dcn_watermarks*, %struct.dcn_watermarks** %9, align 8
  %69 = getelementptr inbounds %struct.dcn_watermarks, %struct.dcn_watermarks* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.display_mode_lib*, %struct.display_mode_lib** %10, align 8
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @get_wm_stutter_enter_exit(%struct.display_mode_lib* %70, %struct.TYPE_18__* %71, i32 %72)
  %74 = mul nsw i32 %73, 1000
  %75 = load %struct.dcn_watermarks*, %struct.dcn_watermarks** %9, align 8
  %76 = getelementptr inbounds %struct.dcn_watermarks, %struct.dcn_watermarks* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 4
  %78 = load %struct.display_mode_lib*, %struct.display_mode_lib** %10, align 8
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @get_wm_stutter_exit(%struct.display_mode_lib* %78, %struct.TYPE_18__* %79, i32 %80)
  %82 = mul nsw i32 %81, 1000
  %83 = load %struct.dcn_watermarks*, %struct.dcn_watermarks** %9, align 8
  %84 = getelementptr inbounds %struct.dcn_watermarks, %struct.dcn_watermarks* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 4
  %86 = load %struct.display_mode_lib*, %struct.display_mode_lib** %10, align 8
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @get_wm_dram_clock_change(%struct.display_mode_lib* %86, %struct.TYPE_18__* %87, i32 %88)
  %90 = mul nsw i32 %89, 1000
  %91 = load %struct.dcn_watermarks*, %struct.dcn_watermarks** %9, align 8
  %92 = getelementptr inbounds %struct.dcn_watermarks, %struct.dcn_watermarks* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 2
  store i32 %90, i32* %93, align 4
  %94 = load %struct.display_mode_lib*, %struct.display_mode_lib** %10, align 8
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @get_wm_memory_trip(%struct.display_mode_lib* %94, %struct.TYPE_18__* %95, i32 %96)
  %98 = mul nsw i32 %97, 1000
  %99 = load %struct.dcn_watermarks*, %struct.dcn_watermarks** %9, align 8
  %100 = getelementptr inbounds %struct.dcn_watermarks, %struct.dcn_watermarks* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load double, double* %13, align 8
  %102 = load %struct.display_mode_lib*, %struct.display_mode_lib** %10, align 8
  %103 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  store double %101, double* %104, align 8
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @get_wm_urgent(%struct.display_mode_lib*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @get_wm_stutter_enter_exit(%struct.display_mode_lib*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @get_wm_stutter_exit(%struct.display_mode_lib*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @get_wm_dram_clock_change(%struct.display_mode_lib*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @get_wm_memory_trip(%struct.display_mode_lib*, %struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
