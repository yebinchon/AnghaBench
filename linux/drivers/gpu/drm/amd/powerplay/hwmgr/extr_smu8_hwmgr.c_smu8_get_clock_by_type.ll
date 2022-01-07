; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_get_clock_by_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_get_clock_by_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_4__, %struct.smu8_hwmgr* }
%struct.TYPE_4__ = type { %struct.phm_clock_voltage_dependency_table* }
%struct.phm_clock_voltage_dependency_table = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.smu8_hwmgr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i32* }
%struct.amd_pp_clocks = type { i32, i32* }

@SMU8_NUM_NBPMEMORYCLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32, %struct.amd_pp_clocks*)* @smu8_get_clock_by_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu8_get_clock_by_type(%struct.pp_hwmgr* %0, i32 %1, %struct.amd_pp_clocks* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pp_hwmgr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.amd_pp_clocks*, align 8
  %8 = alloca %struct.smu8_hwmgr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.phm_clock_voltage_dependency_table*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.amd_pp_clocks* %2, %struct.amd_pp_clocks** %7, align 8
  %11 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %12 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %11, i32 0, i32 1
  %13 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %12, align 8
  store %struct.smu8_hwmgr* %13, %struct.smu8_hwmgr** %8, align 8
  %14 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %15 = call i32 @smu8_get_max_sclk_level(%struct.pp_hwmgr* %14)
  %16 = load %struct.amd_pp_clocks*, %struct.amd_pp_clocks** %7, align 8
  %17 = getelementptr inbounds %struct.amd_pp_clocks, %struct.amd_pp_clocks* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %112 [
    i32 130, label %19
    i32 128, label %46
    i32 129, label %77
  ]

19:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %42, %19
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.amd_pp_clocks*, %struct.amd_pp_clocks** %7, align 8
  %23 = getelementptr inbounds %struct.amd_pp_clocks, %struct.amd_pp_clocks* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %20
  %27 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %8, align 8
  %28 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %34, 10
  %36 = load %struct.amd_pp_clocks*, %struct.amd_pp_clocks** %7, align 8
  %37 = getelementptr inbounds %struct.amd_pp_clocks, %struct.amd_pp_clocks* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %35, i32* %41, align 4
  br label %42

42:                                               ; preds = %26
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %20

45:                                               ; preds = %20
  br label %113

46:                                               ; preds = %3
  %47 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %48 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %49, align 8
  store %struct.phm_clock_voltage_dependency_table* %50, %struct.phm_clock_voltage_dependency_table** %10, align 8
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %73, %46
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.amd_pp_clocks*, %struct.amd_pp_clocks** %7, align 8
  %54 = getelementptr inbounds %struct.amd_pp_clocks, %struct.amd_pp_clocks* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %76

57:                                               ; preds = %51
  %58 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %10, align 8
  %59 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %65, 10
  %67 = load %struct.amd_pp_clocks*, %struct.amd_pp_clocks** %7, align 8
  %68 = getelementptr inbounds %struct.amd_pp_clocks, %struct.amd_pp_clocks* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %66, i32* %72, align 4
  br label %73

73:                                               ; preds = %57
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %51

76:                                               ; preds = %51
  br label %113

77:                                               ; preds = %3
  %78 = load i32, i32* @SMU8_NUM_NBPMEMORYCLOCK, align 4
  %79 = load %struct.amd_pp_clocks*, %struct.amd_pp_clocks** %7, align 8
  %80 = getelementptr inbounds %struct.amd_pp_clocks, %struct.amd_pp_clocks* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %108, %77
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.amd_pp_clocks*, %struct.amd_pp_clocks** %7, align 8
  %84 = getelementptr inbounds %struct.amd_pp_clocks, %struct.amd_pp_clocks* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %111

87:                                               ; preds = %81
  %88 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %8, align 8
  %89 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.amd_pp_clocks*, %struct.amd_pp_clocks** %7, align 8
  %93 = getelementptr inbounds %struct.amd_pp_clocks, %struct.amd_pp_clocks* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sub nsw i32 %94, 1
  %96 = load i32, i32* %9, align 4
  %97 = sub nsw i32 %95, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %91, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = mul nsw i32 %100, 10
  %102 = load %struct.amd_pp_clocks*, %struct.amd_pp_clocks** %7, align 8
  %103 = getelementptr inbounds %struct.amd_pp_clocks, %struct.amd_pp_clocks* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %101, i32* %107, align 4
  br label %108

108:                                              ; preds = %87
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %9, align 4
  br label %81

111:                                              ; preds = %81
  br label %113

112:                                              ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %114

113:                                              ; preds = %111, %76, %45
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %113, %112
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @smu8_get_max_sclk_level(%struct.pp_hwmgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
