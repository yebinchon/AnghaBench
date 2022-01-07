; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_enable_spread_spectrum_on_ppll_v1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_enable_spread_spectrum_on_ppll_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios_parser = type { i32 }
%struct.bp_spread_spectrum_parameters = type { i64, i64, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i32, i64, i64 }
%struct.TYPE_8__ = type { i32, i32, i8*, i8*, i8*, i32, i32 }

@BP_RESULT_FAILURE = common dso_local global i32 0, align 4
@ATOM_ENABLE = common dso_local global i32 0, align 4
@ATOM_DISABLE = common dso_local global i32 0, align 4
@ATOM_EXTERNAL_SS_MASK = common dso_local global i32 0, align 4
@ATOM_SS_CENTRE_SPREAD_MODE = common dso_local global i32 0, align 4
@CLOCK_SOURCE_ID_PLL1 = common dso_local global i64 0, align 8
@ATOM_PPLL1 = common dso_local global i32 0, align 4
@CLOCK_SOURCE_ID_PLL2 = common dso_local global i64 0, align 8
@ATOM_PPLL2 = common dso_local global i32 0, align 4
@EnableSpreadSpectrumOnPPLL = common dso_local global i32 0, align 4
@BP_RESULT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bios_parser*, %struct.bp_spread_spectrum_parameters*, i32)* @enable_spread_spectrum_on_ppll_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_spread_spectrum_on_ppll_v1(%struct.bios_parser* %0, %struct.bp_spread_spectrum_parameters* %1, i32 %2) #0 {
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
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = load %struct.bp_spread_spectrum_parameters*, %struct.bp_spread_spectrum_parameters** %5, align 8
  %15 = getelementptr inbounds %struct.bp_spread_spectrum_parameters, %struct.bp_spread_spectrum_parameters* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @ATOM_ENABLE, align 4
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 6
  store i32 %19, i32* %20, align 4
  br label %24

21:                                               ; preds = %13, %3
  %22 = load i32, i32* @ATOM_DISABLE, align 4
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 6
  store i32 %22, i32* %23, align 4
  br label %24

24:                                               ; preds = %21, %18
  %25 = load %struct.bp_spread_spectrum_parameters*, %struct.bp_spread_spectrum_parameters** %5, align 8
  %26 = getelementptr inbounds %struct.bp_spread_spectrum_parameters, %struct.bp_spread_spectrum_parameters* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 @cpu_to_le16(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 5
  store i32 %29, i32* %30, align 8
  %31 = load %struct.bp_spread_spectrum_parameters*, %struct.bp_spread_spectrum_parameters** %5, align 8
  %32 = getelementptr inbounds %struct.bp_spread_spectrum_parameters, %struct.bp_spread_spectrum_parameters* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 4
  store i8* %35, i8** %36, align 8
  %37 = load %struct.bp_spread_spectrum_parameters*, %struct.bp_spread_spectrum_parameters** %5, align 8
  %38 = getelementptr inbounds %struct.bp_spread_spectrum_parameters, %struct.bp_spread_spectrum_parameters* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  store i8* %41, i8** %42, align 8
  %43 = load %struct.bp_spread_spectrum_parameters*, %struct.bp_spread_spectrum_parameters** %5, align 8
  %44 = getelementptr inbounds %struct.bp_spread_spectrum_parameters, %struct.bp_spread_spectrum_parameters* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sdiv i32 %46, 10000
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  store i8* %49, i8** %50, align 8
  %51 = load %struct.bp_spread_spectrum_parameters*, %struct.bp_spread_spectrum_parameters** %5, align 8
  %52 = getelementptr inbounds %struct.bp_spread_spectrum_parameters, %struct.bp_spread_spectrum_parameters* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %24
  %57 = load i32, i32* @ATOM_EXTERNAL_SS_MASK, align 4
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %57
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %56, %24
  %62 = load %struct.bp_spread_spectrum_parameters*, %struct.bp_spread_spectrum_parameters** %5, align 8
  %63 = getelementptr inbounds %struct.bp_spread_spectrum_parameters, %struct.bp_spread_spectrum_parameters* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load i32, i32* @ATOM_SS_CENTRE_SPREAD_MODE, align 4
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %68
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %67, %61
  %73 = load %struct.bp_spread_spectrum_parameters*, %struct.bp_spread_spectrum_parameters** %5, align 8
  %74 = getelementptr inbounds %struct.bp_spread_spectrum_parameters, %struct.bp_spread_spectrum_parameters* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @CLOCK_SOURCE_ID_PLL1, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load i32, i32* @ATOM_PPLL1, align 4
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i32 %79, i32* %80, align 8
  br label %93

81:                                               ; preds = %72
  %82 = load %struct.bp_spread_spectrum_parameters*, %struct.bp_spread_spectrum_parameters** %5, align 8
  %83 = getelementptr inbounds %struct.bp_spread_spectrum_parameters, %struct.bp_spread_spectrum_parameters* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @CLOCK_SOURCE_ID_PLL2, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i32, i32* @ATOM_PPLL2, align 4
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i32 %88, i32* %89, align 8
  br label %92

90:                                               ; preds = %81
  %91 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %92

92:                                               ; preds = %90, %87
  br label %93

93:                                               ; preds = %92, %78
  %94 = load i32, i32* @EnableSpreadSpectrumOnPPLL, align 4
  %95 = call i64 @EXEC_BIOS_CMD_TABLE(i32 %94, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %8)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i32, i32* @BP_RESULT_OK, align 4
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %97, %93
  %100 = load i32, i32* %7, align 4
  ret i32 %100
}

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i64 @EXEC_BIOS_CMD_TABLE(i32, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
