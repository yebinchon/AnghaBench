; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_check_clk_voltage_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_check_clk_voltage_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_8__, %struct.vega10_hwmgr* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.vega10_hwmgr = type { %struct.TYPE_5__, %struct.vega10_odn_dpm_table }
%struct.TYPE_5__ = type { %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table }
%struct.vega10_single_dpm_table = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.vega10_odn_dpm_table = type { i64, i64 }

@.str = private unnamed_addr constant [41 x i8] c"OD voltage is out of range [%d - %d] mV\0A\00", align 1
@PP_OD_EDIT_SCLK_VDDC_TABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"OD engine clock is out of range [%d - %d] MHz\0A\00", align 1
@PP_OD_EDIT_MCLK_VDDC_TABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"OD memory clock is out of range [%d - %d] MHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32, i64, i64)* @vega10_check_clk_voltage_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega10_check_clk_voltage_valid(%struct.pp_hwmgr* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pp_hwmgr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vega10_hwmgr*, align 8
  %11 = alloca %struct.vega10_odn_dpm_table*, align 8
  %12 = alloca %struct.vega10_single_dpm_table*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %14 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %13, i32 0, i32 1
  %15 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %14, align 8
  store %struct.vega10_hwmgr* %15, %struct.vega10_hwmgr** %10, align 8
  %16 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %10, align 8
  %17 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %16, i32 0, i32 1
  store %struct.vega10_odn_dpm_table* %17, %struct.vega10_odn_dpm_table** %11, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load %struct.vega10_odn_dpm_table*, %struct.vega10_odn_dpm_table** %11, align 8
  %20 = getelementptr inbounds %struct.vega10_odn_dpm_table, %struct.vega10_odn_dpm_table* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %18, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %4
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.vega10_odn_dpm_table*, %struct.vega10_odn_dpm_table** %11, align 8
  %26 = getelementptr inbounds %struct.vega10_odn_dpm_table, %struct.vega10_odn_dpm_table* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %24, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %23, %4
  %30 = load %struct.vega10_odn_dpm_table*, %struct.vega10_odn_dpm_table** %11, align 8
  %31 = getelementptr inbounds %struct.vega10_odn_dpm_table, %struct.vega10_odn_dpm_table* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = load %struct.vega10_odn_dpm_table*, %struct.vega10_odn_dpm_table** %11, align 8
  %35 = getelementptr inbounds %struct.vega10_odn_dpm_table, %struct.vega10_odn_dpm_table* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %37)
  store i32 0, i32* %5, align 4
  br label %126

39:                                               ; preds = %23
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @PP_OD_EDIT_SCLK_VDDC_TABLE, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %81

43:                                               ; preds = %39
  %44 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %10, align 8
  %45 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  store %struct.vega10_single_dpm_table* %46, %struct.vega10_single_dpm_table** %12, align 8
  %47 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %12, align 8
  %48 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %63, label %55

55:                                               ; preds = %43
  %56 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %57 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %8, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %80

63:                                               ; preds = %55, %43
  %64 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %12, align 8
  %65 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = sdiv i64 %69, 100
  %71 = trunc i64 %70 to i32
  %72 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %73 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = sdiv i64 %76, 100
  %78 = trunc i64 %77 to i32
  %79 = call i32 @pr_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %78)
  store i32 0, i32* %5, align 4
  br label %126

80:                                               ; preds = %55
  br label %125

81:                                               ; preds = %39
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @PP_OD_EDIT_MCLK_VDDC_TABLE, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %123

85:                                               ; preds = %81
  %86 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %10, align 8
  %87 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  store %struct.vega10_single_dpm_table* %88, %struct.vega10_single_dpm_table** %12, align 8
  %89 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %12, align 8
  %90 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i64 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %8, align 8
  %96 = icmp sgt i64 %94, %95
  br i1 %96, label %105, label %97

97:                                               ; preds = %85
  %98 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %99 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %8, align 8
  %104 = icmp slt i64 %102, %103
  br i1 %104, label %105, label %122

105:                                              ; preds = %97, %85
  %106 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %12, align 8
  %107 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %106, i32 0, i32 0
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i64 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = sdiv i64 %111, 100
  %113 = trunc i64 %112 to i32
  %114 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %115 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = sdiv i64 %118, 100
  %120 = trunc i64 %119 to i32
  %121 = call i32 @pr_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %113, i32 %120)
  store i32 0, i32* %5, align 4
  br label %126

122:                                              ; preds = %97
  br label %124

123:                                              ; preds = %81
  store i32 0, i32* %5, align 4
  br label %126

124:                                              ; preds = %122
  br label %125

125:                                              ; preds = %124, %80
  store i32 1, i32* %5, align 4
  br label %126

126:                                              ; preds = %125, %123, %105, %63, %29
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i32 @pr_info(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
