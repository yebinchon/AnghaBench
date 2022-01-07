; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_populate_smc_link_levels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_populate_smc_link_levels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.vega10_hwmgr* }
%struct.vega10_hwmgr = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.vega10_pcie_table }
%struct.vega10_pcie_table = type { i64, i32*, i32*, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i32*, i32* }

@.str = private unnamed_addr constant [34 x i8] c"Populate LClock Level %d Failed!\0A\00", align 1
@NUM_LINK_LEVELS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @vega10_populate_smc_link_levels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega10_populate_smc_link_levels(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vega10_hwmgr*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.vega10_pcie_table*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store i32 -1, i32* %4, align 4
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %11 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %10, i32 0, i32 0
  %12 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %11, align 8
  store %struct.vega10_hwmgr* %12, %struct.vega10_hwmgr** %5, align 8
  %13 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %5, align 8
  %14 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %6, align 8
  %16 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %5, align 8
  %17 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store %struct.vega10_pcie_table* %18, %struct.vega10_pcie_table** %7, align 8
  store i64 0, i64* %8, align 8
  br label %19

19:                                               ; preds = %68, %1
  %20 = load i64, i64* %8, align 8
  %21 = load %struct.vega10_pcie_table*, %struct.vega10_pcie_table** %7, align 8
  %22 = getelementptr inbounds %struct.vega10_pcie_table, %struct.vega10_pcie_table* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %25, label %71

25:                                               ; preds = %19
  %26 = load %struct.vega10_pcie_table*, %struct.vega10_pcie_table** %7, align 8
  %27 = getelementptr inbounds %struct.vega10_pcie_table, %struct.vega10_pcie_table* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32 %31, i32* %36, align 4
  %37 = load %struct.vega10_pcie_table*, %struct.vega10_pcie_table** %7, align 8
  %38 = getelementptr inbounds %struct.vega10_pcie_table, %struct.vega10_pcie_table* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32 %42, i32* %47, align 4
  %48 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %49 = load %struct.vega10_pcie_table*, %struct.vega10_pcie_table** %7, align 8
  %50 = getelementptr inbounds %struct.vega10_pcie_table, %struct.vega10_pcie_table* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* %8, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* %8, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = call i32 @vega10_populate_single_lclk_level(%struct.pp_hwmgr* %48, i32 %54, i32* %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %25
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %64)
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %125

67:                                               ; preds = %25
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %8, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %8, align 8
  br label %19

71:                                               ; preds = %19
  %72 = load i64, i64* %8, align 8
  %73 = sub i64 %72, 1
  store i64 %73, i64* %9, align 8
  br label %74

74:                                               ; preds = %120, %71
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* @NUM_LINK_LEVELS, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %78, label %123

78:                                               ; preds = %74
  %79 = load %struct.vega10_pcie_table*, %struct.vega10_pcie_table** %7, align 8
  %80 = getelementptr inbounds %struct.vega10_pcie_table, %struct.vega10_pcie_table* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* %9, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load i64, i64* %8, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32 %84, i32* %89, align 4
  %90 = load %struct.vega10_pcie_table*, %struct.vega10_pcie_table** %7, align 8
  %91 = getelementptr inbounds %struct.vega10_pcie_table, %struct.vega10_pcie_table* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* %9, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* %8, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32 %95, i32* %100, align 4
  %101 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %102 = load %struct.vega10_pcie_table*, %struct.vega10_pcie_table** %7, align 8
  %103 = getelementptr inbounds %struct.vega10_pcie_table, %struct.vega10_pcie_table* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i64, i64* %9, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i64, i64* %8, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = call i32 @vega10_populate_single_lclk_level(%struct.pp_hwmgr* %101, i32 %107, i32* %112)
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* %4, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %78
  %117 = load i64, i64* %8, align 8
  %118 = call i32 @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %117)
  %119 = load i32, i32* %4, align 4
  store i32 %119, i32* %2, align 4
  br label %125

120:                                              ; preds = %78
  %121 = load i64, i64* %8, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %8, align 8
  br label %74

123:                                              ; preds = %74
  %124 = load i32, i32* %4, align 4
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %123, %116, %63
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i32 @vega10_populate_single_lclk_level(%struct.pp_hwmgr*, i32, i32*) #1

declare dso_local i32 @pr_info(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
