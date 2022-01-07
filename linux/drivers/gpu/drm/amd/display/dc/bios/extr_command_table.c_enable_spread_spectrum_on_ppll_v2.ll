; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_enable_spread_spectrum_on_ppll_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_enable_spread_spectrum_on_ppll_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios_parser = type { i32 }
%struct.bp_spread_spectrum_parameters = type { i64, i64, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_8__ = type { i32, i8*, i32, i8*, i8* }

@BP_RESULT_FAILURE = common dso_local global i32 0, align 4
@CLOCK_SOURCE_ID_PLL1 = common dso_local global i64 0, align 8
@ATOM_PPLL_SS_TYPE_V2_P1PLL = common dso_local global i32 0, align 4
@CLOCK_SOURCE_ID_PLL2 = common dso_local global i64 0, align 8
@ATOM_PPLL_SS_TYPE_V2_P2PLL = common dso_local global i32 0, align 4
@ATOM_ENABLE = common dso_local global i32 0, align 4
@ATOM_PPLL_SS_TYPE_V2_EXT_SPREAD = common dso_local global i32 0, align 4
@ATOM_PPLL_SS_TYPE_V2_CENTRE_SPREAD = common dso_local global i32 0, align 4
@ATOM_PPLL_SS_AMOUNT_V2_FBDIV_SHIFT = common dso_local global i32 0, align 4
@ATOM_PPLL_SS_AMOUNT_V2_FBDIV_MASK = common dso_local global i32 0, align 4
@ATOM_PPLL_SS_AMOUNT_V2_NFRAC_SHIFT = common dso_local global i32 0, align 4
@ATOM_PPLL_SS_AMOUNT_V2_NFRAC_MASK = common dso_local global i32 0, align 4
@ATOM_DISABLE = common dso_local global i32 0, align 4
@EnableSpreadSpectrumOnPPLL = common dso_local global i32 0, align 4
@BP_RESULT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bios_parser*, %struct.bp_spread_spectrum_parameters*, i32)* @enable_spread_spectrum_on_ppll_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_spread_spectrum_on_ppll_v2(%struct.bios_parser* %0, %struct.bp_spread_spectrum_parameters* %1, i32 %2) #0 {
  %4 = alloca %struct.bios_parser*, align 8
  %5 = alloca %struct.bp_spread_spectrum_parameters*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__, align 8
  store %struct.bios_parser* %0, %struct.bios_parser** %4, align 8
  store %struct.bp_spread_spectrum_parameters* %1, %struct.bp_spread_spectrum_parameters** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @BP_RESULT_FAILURE, align 4
  store i32 %9, i32* %7, align 4
  %10 = call i32 @memset(%struct.TYPE_8__* %8, i32 0, i32 40)
  %11 = load %struct.bp_spread_spectrum_parameters*, %struct.bp_spread_spectrum_parameters** %5, align 8
  %12 = getelementptr inbounds %struct.bp_spread_spectrum_parameters, %struct.bp_spread_spectrum_parameters* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CLOCK_SOURCE_ID_PLL1, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @ATOM_PPLL_SS_TYPE_V2_P1PLL, align 4
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  store i32 %17, i32* %18, align 8
  br label %31

19:                                               ; preds = %3
  %20 = load %struct.bp_spread_spectrum_parameters*, %struct.bp_spread_spectrum_parameters** %5, align 8
  %21 = getelementptr inbounds %struct.bp_spread_spectrum_parameters, %struct.bp_spread_spectrum_parameters* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CLOCK_SOURCE_ID_PLL2, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @ATOM_PPLL_SS_TYPE_V2_P2PLL, align 4
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  store i32 %26, i32* %27, align 8
  br label %30

28:                                               ; preds = %19
  %29 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %30

30:                                               ; preds = %28, %25
  br label %31

31:                                               ; preds = %30, %16
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %96

34:                                               ; preds = %31
  %35 = load %struct.bp_spread_spectrum_parameters*, %struct.bp_spread_spectrum_parameters** %5, align 8
  %36 = getelementptr inbounds %struct.bp_spread_spectrum_parameters, %struct.bp_spread_spectrum_parameters* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %96

39:                                               ; preds = %34
  %40 = load i32, i32* @ATOM_ENABLE, align 4
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i32 %40, i32* %41, align 8
  %42 = load %struct.bp_spread_spectrum_parameters*, %struct.bp_spread_spectrum_parameters** %5, align 8
  %43 = getelementptr inbounds %struct.bp_spread_spectrum_parameters, %struct.bp_spread_spectrum_parameters* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i8* @cpu_to_le16(i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 4
  store i8* %46, i8** %47, align 8
  %48 = load %struct.bp_spread_spectrum_parameters*, %struct.bp_spread_spectrum_parameters** %5, align 8
  %49 = getelementptr inbounds %struct.bp_spread_spectrum_parameters, %struct.bp_spread_spectrum_parameters* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i8* @cpu_to_le16(i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  store i8* %53, i8** %54, align 8
  %55 = load %struct.bp_spread_spectrum_parameters*, %struct.bp_spread_spectrum_parameters** %5, align 8
  %56 = getelementptr inbounds %struct.bp_spread_spectrum_parameters, %struct.bp_spread_spectrum_parameters* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %39
  %61 = load i32, i32* @ATOM_PPLL_SS_TYPE_V2_EXT_SPREAD, align 4
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %61
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %60, %39
  %66 = load %struct.bp_spread_spectrum_parameters*, %struct.bp_spread_spectrum_parameters** %5, align 8
  %67 = getelementptr inbounds %struct.bp_spread_spectrum_parameters, %struct.bp_spread_spectrum_parameters* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load i32, i32* @ATOM_PPLL_SS_TYPE_V2_CENTRE_SPREAD, align 4
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %72
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %71, %65
  %77 = load %struct.bp_spread_spectrum_parameters*, %struct.bp_spread_spectrum_parameters** %5, align 8
  %78 = getelementptr inbounds %struct.bp_spread_spectrum_parameters, %struct.bp_spread_spectrum_parameters* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @ATOM_PPLL_SS_AMOUNT_V2_FBDIV_SHIFT, align 4
  %82 = shl i32 %80, %81
  %83 = load i32, i32* @ATOM_PPLL_SS_AMOUNT_V2_FBDIV_MASK, align 4
  %84 = and i32 %82, %83
  %85 = load %struct.bp_spread_spectrum_parameters*, %struct.bp_spread_spectrum_parameters** %5, align 8
  %86 = getelementptr inbounds %struct.bp_spread_spectrum_parameters, %struct.bp_spread_spectrum_parameters* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @ATOM_PPLL_SS_AMOUNT_V2_NFRAC_SHIFT, align 4
  %90 = shl i32 %88, %89
  %91 = load i32, i32* @ATOM_PPLL_SS_AMOUNT_V2_NFRAC_MASK, align 4
  %92 = and i32 %90, %91
  %93 = or i32 %84, %92
  %94 = call i8* @cpu_to_le16(i32 %93)
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  store i8* %94, i8** %95, align 8
  br label %99

96:                                               ; preds = %34, %31
  %97 = load i32, i32* @ATOM_DISABLE, align 4
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i32 %97, i32* %98, align 8
  br label %99

99:                                               ; preds = %96, %76
  %100 = load i32, i32* @EnableSpreadSpectrumOnPPLL, align 4
  %101 = call i64 @EXEC_BIOS_CMD_TABLE(i32 %100, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %8)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i32, i32* @BP_RESULT_OK, align 4
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %103, %99
  %106 = load i32, i32* %7, align 4
  ret i32 %106
}

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i64 @EXEC_BIOS_CMD_TABLE(i32, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
