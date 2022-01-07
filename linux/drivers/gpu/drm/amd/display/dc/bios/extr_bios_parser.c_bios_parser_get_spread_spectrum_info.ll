; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser.c_bios_parser_get_spread_spectrum_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser.c_bios_parser_get_spread_spectrum_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_bios = type { i32 }
%struct.spread_spectrum_info = type { i32 }
%struct.bios_parser = type { i32 }
%struct.atom_data_revision = type { i32, i32 }

@BP_RESULT_UNSUPPORTED = common dso_local global i32 0, align 4
@ATOM_COMMON_TABLE_HEADER = common dso_local global i32 0, align 4
@header = common dso_local global i32 0, align 4
@BP_RESULT_BADINPUT = common dso_local global i32 0, align 4
@ASIC_InternalSS_Info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_bios*, i32, i32, %struct.spread_spectrum_info*)* @bios_parser_get_spread_spectrum_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bios_parser_get_spread_spectrum_info(%struct.dc_bios* %0, i32 %1, i32 %2, %struct.spread_spectrum_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dc_bios*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.spread_spectrum_info*, align 8
  %10 = alloca %struct.bios_parser*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.atom_data_revision, align 4
  store %struct.dc_bios* %0, %struct.dc_bios** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.spread_spectrum_info* %3, %struct.spread_spectrum_info** %9, align 8
  %14 = load %struct.dc_bios*, %struct.dc_bios** %6, align 8
  %15 = call %struct.bios_parser* @BP_FROM_DCB(%struct.dc_bios* %14)
  store %struct.bios_parser* %15, %struct.bios_parser** %10, align 8
  %16 = load i32, i32* @BP_RESULT_UNSUPPORTED, align 4
  store i32 %16, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %17 = load i32, i32* @ATOM_COMMON_TABLE_HEADER, align 4
  %18 = load i32, i32* @header, align 4
  %19 = mul nsw i32 %17, %18
  %20 = load %struct.spread_spectrum_info*, %struct.spread_spectrum_info** %9, align 8
  %21 = icmp ne %struct.spread_spectrum_info* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @BP_RESULT_BADINPUT, align 4
  store i32 %23, i32* %5, align 4
  br label %76

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @signal_to_ss_id(i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* @ASIC_InternalSS_Info, align 4
  %28 = call i32 @DATA_TABLES(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = load %struct.bios_parser*, %struct.bios_parser** %10, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.spread_spectrum_info*, %struct.spread_spectrum_info** %9, align 8
  %37 = call i32 @get_ss_info_from_ss_info_table(%struct.bios_parser* %34, i32 %35, %struct.spread_spectrum_info* %36)
  store i32 %37, i32* %5, align 4
  br label %76

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %24
  %40 = load i32, i32* @ATOM_COMMON_TABLE_HEADER, align 4
  %41 = load i32, i32* @ASIC_InternalSS_Info, align 4
  %42 = call i32 @DATA_TABLES(i32 %41)
  %43 = call i32 @GET_IMAGE(i32 %40, i32 %42)
  store i32 %43, i32* @header, align 4
  %44 = load i32, i32* @header, align 4
  %45 = call i32 @get_atom_data_table_revision(i32 %44, %struct.atom_data_revision* %13)
  %46 = getelementptr inbounds %struct.atom_data_revision, %struct.atom_data_revision* %13, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %73 [
    i32 2, label %48
    i32 3, label %62
  ]

48:                                               ; preds = %39
  %49 = getelementptr inbounds %struct.atom_data_revision, %struct.atom_data_revision* %13, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %60 [
    i32 1, label %51
  ]

51:                                               ; preds = %48
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = load %struct.bios_parser*, %struct.bios_parser** %10, align 8
  %56 = load i32, i32* %12, align 4
  %57 = load %struct.spread_spectrum_info*, %struct.spread_spectrum_info** %9, align 8
  %58 = call i32 @get_ss_info_from_tbl(%struct.bios_parser* %55, i32 %56, %struct.spread_spectrum_info* %57)
  store i32 %58, i32* %5, align 4
  br label %76

59:                                               ; preds = %51
  br label %61

60:                                               ; preds = %48
  br label %61

61:                                               ; preds = %60, %59
  br label %74

62:                                               ; preds = %39
  %63 = getelementptr inbounds %struct.atom_data_revision, %struct.atom_data_revision* %13, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  switch i32 %64, label %71 [
    i32 1, label %65
  ]

65:                                               ; preds = %62
  %66 = load %struct.bios_parser*, %struct.bios_parser** %10, align 8
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.spread_spectrum_info*, %struct.spread_spectrum_info** %9, align 8
  %70 = call i32 @get_ss_info_v3_1(%struct.bios_parser* %66, i32 %67, i32 %68, %struct.spread_spectrum_info* %69)
  store i32 %70, i32* %5, align 4
  br label %76

71:                                               ; preds = %62
  br label %72

72:                                               ; preds = %71
  br label %74

73:                                               ; preds = %39
  br label %74

74:                                               ; preds = %73, %72, %61
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %74, %65, %54, %33, %22
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local %struct.bios_parser* @BP_FROM_DCB(%struct.dc_bios*) #1

declare dso_local i32 @signal_to_ss_id(i32) #1

declare dso_local i32 @DATA_TABLES(i32) #1

declare dso_local i32 @get_ss_info_from_ss_info_table(%struct.bios_parser*, i32, %struct.spread_spectrum_info*) #1

declare dso_local i32 @GET_IMAGE(i32, i32) #1

declare dso_local i32 @get_atom_data_table_revision(i32, %struct.atom_data_revision*) #1

declare dso_local i32 @get_ss_info_from_tbl(%struct.bios_parser*, i32, %struct.spread_spectrum_info*) #1

declare dso_local i32 @get_ss_info_v3_1(%struct.bios_parser*, i32, i32, %struct.spread_spectrum_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
