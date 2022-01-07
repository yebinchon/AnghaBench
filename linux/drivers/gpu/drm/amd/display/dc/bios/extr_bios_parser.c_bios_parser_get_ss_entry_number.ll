; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser.c_bios_parser_get_ss_entry_number.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser.c_bios_parser_get_ss_entry_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_bios = type { i32 }
%struct.bios_parser = type { i32 }
%struct.atom_data_revision = type { i32, i32 }

@ATOM_COMMON_TABLE_HEADER = common dso_local global i32 0, align 4
@header = common dso_local global i32 0, align 4
@ASIC_InternalSS_Info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_bios*, i32)* @bios_parser_get_ss_entry_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bios_parser_get_ss_entry_number(%struct.dc_bios* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dc_bios*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bios_parser*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.atom_data_revision, align 4
  store %struct.dc_bios* %0, %struct.dc_bios** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.dc_bios*, %struct.dc_bios** %4, align 8
  %10 = call %struct.bios_parser* @BP_FROM_DCB(%struct.dc_bios* %9)
  store %struct.bios_parser* %10, %struct.bios_parser** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* @ATOM_COMMON_TABLE_HEADER, align 4
  %12 = load i32, i32* @header, align 4
  %13 = mul nsw i32 %11, %12
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @signal_to_ss_id(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @ASIC_InternalSS_Info, align 4
  %17 = call i32 @DATA_TABLES(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load %struct.bios_parser*, %struct.bios_parser** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @get_ss_entry_number_from_ss_info_tbl(%struct.bios_parser* %20, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %52

23:                                               ; preds = %2
  %24 = load i32, i32* @ATOM_COMMON_TABLE_HEADER, align 4
  %25 = load i32, i32* @ASIC_InternalSS_Info, align 4
  %26 = call i32 @DATA_TABLES(i32 %25)
  %27 = call i32 @GET_IMAGE(i32 %24, i32 %26)
  store i32 %27, i32* @header, align 4
  %28 = load i32, i32* @header, align 4
  %29 = call i32 @get_atom_data_table_revision(i32 %28, %struct.atom_data_revision* %8)
  %30 = getelementptr inbounds %struct.atom_data_revision, %struct.atom_data_revision* %8, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %50 [
    i32 2, label %32
    i32 3, label %41
  ]

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.atom_data_revision, %struct.atom_data_revision* %8, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %39 [
    i32 1, label %35
  ]

35:                                               ; preds = %32
  %36 = load %struct.bios_parser*, %struct.bios_parser** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @get_ss_entry_number(%struct.bios_parser* %36, i32 %37)
  store i32 %38, i32* %3, align 4
  br label %52

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39
  br label %51

41:                                               ; preds = %23
  %42 = getelementptr inbounds %struct.atom_data_revision, %struct.atom_data_revision* %8, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %48 [
    i32 1, label %44
  ]

44:                                               ; preds = %41
  %45 = load %struct.bios_parser*, %struct.bios_parser** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @get_ss_entry_number_from_internal_ss_info_tbl_V3_1(%struct.bios_parser* %45, i32 %46)
  store i32 %47, i32* %3, align 4
  br label %52

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48
  br label %51

50:                                               ; preds = %23
  br label %51

51:                                               ; preds = %50, %49, %40
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %44, %35, %19
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.bios_parser* @BP_FROM_DCB(%struct.dc_bios*) #1

declare dso_local i32 @signal_to_ss_id(i32) #1

declare dso_local i32 @DATA_TABLES(i32) #1

declare dso_local i32 @get_ss_entry_number_from_ss_info_tbl(%struct.bios_parser*, i32) #1

declare dso_local i32 @GET_IMAGE(i32, i32) #1

declare dso_local i32 @get_atom_data_table_revision(i32, %struct.atom_data_revision*) #1

declare dso_local i32 @get_ss_entry_number(%struct.bios_parser*, i32) #1

declare dso_local i32 @get_ss_entry_number_from_internal_ss_info_tbl_V3_1(%struct.bios_parser*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
