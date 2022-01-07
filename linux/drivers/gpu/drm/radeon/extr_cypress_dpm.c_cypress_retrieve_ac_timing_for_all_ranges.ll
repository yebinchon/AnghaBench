; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_retrieve_ac_timing_for_all_ranges.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_retrieve_ac_timing_for_all_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.atom_memory_clock_range_table = type { i64, i32* }
%struct.evergreen_power_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.atom_memory_clock_range_table*)* @cypress_retrieve_ac_timing_for_all_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cypress_retrieve_ac_timing_for_all_ranges(%struct.radeon_device* %0, %struct.atom_memory_clock_range_table* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.atom_memory_clock_range_table*, align 8
  %5 = alloca %struct.evergreen_power_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.atom_memory_clock_range_table* %1, %struct.atom_memory_clock_range_table** %4, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %8)
  store %struct.evergreen_power_info* %9, %struct.evergreen_power_info** %5, align 8
  store i64 0, i64* %6, align 8
  br label %10

10:                                               ; preds = %46, %2
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.atom_memory_clock_range_table*, %struct.atom_memory_clock_range_table** %4, align 8
  %13 = getelementptr inbounds %struct.atom_memory_clock_range_table, %struct.atom_memory_clock_range_table* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %49

16:                                               ; preds = %10
  %17 = load %struct.atom_memory_clock_range_table*, %struct.atom_memory_clock_range_table** %4, align 8
  %18 = getelementptr inbounds %struct.atom_memory_clock_range_table, %struct.atom_memory_clock_range_table* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %24 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i32 %22, i32* %29, align 8
  %30 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %31 = load %struct.atom_memory_clock_range_table*, %struct.atom_memory_clock_range_table** %4, align 8
  %32 = getelementptr inbounds %struct.atom_memory_clock_range_table, %struct.atom_memory_clock_range_table* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @radeon_atom_set_ac_timing(%struct.radeon_device* %30, i32 %36)
  %38 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %39 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %40 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %43
  %45 = call i32 @cypress_retrieve_ac_timing_for_one_entry(%struct.radeon_device* %38, %struct.TYPE_4__* %44)
  br label %46

46:                                               ; preds = %16
  %47 = load i64, i64* %6, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %6, align 8
  br label %10

49:                                               ; preds = %10
  %50 = load %struct.atom_memory_clock_range_table*, %struct.atom_memory_clock_range_table** %4, align 8
  %51 = getelementptr inbounds %struct.atom_memory_clock_range_table, %struct.atom_memory_clock_range_table* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %54 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i64 %52, i64* %55, align 8
  %56 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %57 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  store i32 0, i32* %58, align 8
  store i64 0, i64* %6, align 8
  br label %59

59:                                               ; preds = %112, %49
  %60 = load i64, i64* %6, align 8
  %61 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %62 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ult i64 %60, %64
  br i1 %65, label %66, label %115

66:                                               ; preds = %59
  store i64 1, i64* %7, align 8
  br label %67

67:                                               ; preds = %108, %66
  %68 = load i64, i64* %7, align 8
  %69 = load %struct.atom_memory_clock_range_table*, %struct.atom_memory_clock_range_table** %4, align 8
  %70 = getelementptr inbounds %struct.atom_memory_clock_range_table, %struct.atom_memory_clock_range_table* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ult i64 %68, %71
  br i1 %72, label %73, label %111

73:                                               ; preds = %67
  %74 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %75 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i64, i64* %7, align 8
  %79 = sub i64 %78, 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = load i64, i64* %6, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %87 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 3
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = load i64, i64* %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = load i64, i64* %6, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %85, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %73
  %99 = load i64, i64* %6, align 8
  %100 = trunc i64 %99 to i32
  %101 = shl i32 1, %100
  %102 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %103 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %101
  store i32 %106, i32* %104, align 8
  br label %111

107:                                              ; preds = %73
  br label %108

108:                                              ; preds = %107
  %109 = load i64, i64* %7, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %7, align 8
  br label %67

111:                                              ; preds = %98, %67
  br label %112

112:                                              ; preds = %111
  %113 = load i64, i64* %6, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %6, align 8
  br label %59

115:                                              ; preds = %59
  ret void
}

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @radeon_atom_set_ac_timing(%struct.radeon_device*, i32) #1

declare dso_local i32 @cypress_retrieve_ac_timing_for_one_entry(%struct.radeon_device*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
