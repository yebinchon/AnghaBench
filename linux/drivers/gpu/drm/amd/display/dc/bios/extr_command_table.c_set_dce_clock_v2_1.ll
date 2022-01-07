; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_set_dce_clock_v2_1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_set_dce_clock_v2_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios_parser = type { %struct.command_table_helper* }
%struct.command_table_helper = type { i32 (i32, i8**)*, i32 (i32, i8**)* }
%struct.bp_set_dce_clock_parameters = type { i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i64, i64, i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i8*, i8* }

@BP_RESULT_FAILURE = common dso_local global i32 0, align 4
@BP_RESULT_BADINPUT = common dso_local global i32 0, align 4
@DCECLOCK_TYPE_DPREFCLK = common dso_local global i32 0, align 4
@DCE_CLOCK_FLAG_PLL_REFCLK_SRC_GENLK = common dso_local global i32 0, align 4
@DCE_CLOCK_FLAG_PLL_REFCLK_SRC_PCIE = common dso_local global i32 0, align 4
@DCE_CLOCK_FLAG_PLL_REFCLK_SRC_XTALIN = common dso_local global i32 0, align 4
@DCE_CLOCK_FLAG_PLL_REFCLK_SRC_GENERICA = common dso_local global i32 0, align 4
@SetDCEClock = common dso_local global i32 0, align 4
@BP_RESULT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bios_parser*, %struct.bp_set_dce_clock_parameters*)* @set_dce_clock_v2_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_dce_clock_v2_1(%struct.bios_parser* %0, %struct.bp_set_dce_clock_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bios_parser*, align 8
  %5 = alloca %struct.bp_set_dce_clock_parameters*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.command_table_helper*, align 8
  store %struct.bios_parser* %0, %struct.bios_parser** %4, align 8
  store %struct.bp_set_dce_clock_parameters* %1, %struct.bp_set_dce_clock_parameters** %5, align 8
  %11 = load i32, i32* @BP_RESULT_FAILURE, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.bios_parser*, %struct.bios_parser** %4, align 8
  %13 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %12, i32 0, i32 0
  %14 = load %struct.command_table_helper*, %struct.command_table_helper** %13, align 8
  store %struct.command_table_helper* %14, %struct.command_table_helper** %10, align 8
  %15 = call i32 @memset(%struct.TYPE_8__* %7, i32 0, i32 24)
  %16 = load %struct.command_table_helper*, %struct.command_table_helper** %10, align 8
  %17 = getelementptr inbounds %struct.command_table_helper, %struct.command_table_helper* %16, i32 0, i32 1
  %18 = load i32 (i32, i8**)*, i32 (i32, i8**)** %17, align 8
  %19 = load %struct.bp_set_dce_clock_parameters*, %struct.bp_set_dce_clock_parameters** %5, align 8
  %20 = getelementptr inbounds %struct.bp_set_dce_clock_parameters, %struct.bp_set_dce_clock_parameters* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 %18(i32 %21, i8** %8)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %2
  %25 = load %struct.command_table_helper*, %struct.command_table_helper** %10, align 8
  %26 = getelementptr inbounds %struct.command_table_helper, %struct.command_table_helper* %25, i32 0, i32 0
  %27 = load i32 (i32, i8**)*, i32 (i32, i8**)** %26, align 8
  %28 = load %struct.bp_set_dce_clock_parameters*, %struct.bp_set_dce_clock_parameters** %5, align 8
  %29 = getelementptr inbounds %struct.bp_set_dce_clock_parameters, %struct.bp_set_dce_clock_parameters* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 %27(i32 %30, i8** %9)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %24, %2
  %34 = load i32, i32* @BP_RESULT_BADINPUT, align 4
  store i32 %34, i32* %3, align 4
  br label %119

35:                                               ; preds = %24
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load %struct.bp_set_dce_clock_parameters*, %struct.bp_set_dce_clock_parameters** %5, align 8
  %43 = getelementptr inbounds %struct.bp_set_dce_clock_parameters, %struct.bp_set_dce_clock_parameters* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @DCECLOCK_TYPE_DPREFCLK, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %96

47:                                               ; preds = %35
  %48 = load %struct.bp_set_dce_clock_parameters*, %struct.bp_set_dce_clock_parameters** %5, align 8
  %49 = getelementptr inbounds %struct.bp_set_dce_clock_parameters, %struct.bp_set_dce_clock_parameters* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load i32, i32* @DCE_CLOCK_FLAG_PLL_REFCLK_SRC_GENLK, align 4
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %53, %47
  %60 = load %struct.bp_set_dce_clock_parameters*, %struct.bp_set_dce_clock_parameters** %5, align 8
  %61 = getelementptr inbounds %struct.bp_set_dce_clock_parameters, %struct.bp_set_dce_clock_parameters* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load i32, i32* @DCE_CLOCK_FLAG_PLL_REFCLK_SRC_PCIE, align 4
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %65, %59
  %72 = load %struct.bp_set_dce_clock_parameters*, %struct.bp_set_dce_clock_parameters** %5, align 8
  %73 = getelementptr inbounds %struct.bp_set_dce_clock_parameters, %struct.bp_set_dce_clock_parameters* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = load i32, i32* @DCE_CLOCK_FLAG_PLL_REFCLK_SRC_XTALIN, align 4
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %77, %71
  %84 = load %struct.bp_set_dce_clock_parameters*, %struct.bp_set_dce_clock_parameters** %5, align 8
  %85 = getelementptr inbounds %struct.bp_set_dce_clock_parameters, %struct.bp_set_dce_clock_parameters* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = load i32, i32* @DCE_CLOCK_FLAG_PLL_REFCLK_SRC_GENERICA, align 4
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %89, %83
  br label %104

96:                                               ; preds = %35
  %97 = load %struct.bp_set_dce_clock_parameters*, %struct.bp_set_dce_clock_parameters** %5, align 8
  %98 = getelementptr inbounds %struct.bp_set_dce_clock_parameters, %struct.bp_set_dce_clock_parameters* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sdiv i32 %99, 10
  %101 = call i32 @cpu_to_le32(i32 %100)
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  br label %104

104:                                              ; preds = %96, %95
  %105 = load i32, i32* @SetDCEClock, align 4
  %106 = call i64 @EXEC_BIOS_CMD_TABLE(i32 %105, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %7)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @le32_to_cpu(i32 %111)
  %113 = mul nsw i32 %112, 10
  %114 = load %struct.bp_set_dce_clock_parameters*, %struct.bp_set_dce_clock_parameters** %5, align 8
  %115 = getelementptr inbounds %struct.bp_set_dce_clock_parameters, %struct.bp_set_dce_clock_parameters* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load i32, i32* @BP_RESULT_OK, align 4
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %108, %104
  %118 = load i32, i32* %6, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %117, %33
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @EXEC_BIOS_CMD_TABLE(i32, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
