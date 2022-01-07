; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser.c_bios_parser_get_firmware_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser.c_bios_parser_get_firmware_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_bios = type { i32 }
%struct.dc_firmware_info = type { i32 }
%struct.bios_parser = type { i32 }
%struct.atom_data_revision = type { i32, i32 }

@BP_RESULT_BADBIOSTABLE = common dso_local global i32 0, align 4
@ATOM_COMMON_TABLE_HEADER = common dso_local global i32 0, align 4
@header = common dso_local global i32 0, align 4
@FirmwareInfo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_bios*, %struct.dc_firmware_info*)* @bios_parser_get_firmware_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bios_parser_get_firmware_info(%struct.dc_bios* %0, %struct.dc_firmware_info* %1) #0 {
  %3 = alloca %struct.dc_bios*, align 8
  %4 = alloca %struct.dc_firmware_info*, align 8
  %5 = alloca %struct.bios_parser*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.atom_data_revision, align 4
  store %struct.dc_bios* %0, %struct.dc_bios** %3, align 8
  store %struct.dc_firmware_info* %1, %struct.dc_firmware_info** %4, align 8
  %8 = load %struct.dc_bios*, %struct.dc_bios** %3, align 8
  %9 = call %struct.bios_parser* @BP_FROM_DCB(%struct.dc_bios* %8)
  store %struct.bios_parser* %9, %struct.bios_parser** %5, align 8
  %10 = load i32, i32* @BP_RESULT_BADBIOSTABLE, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @ATOM_COMMON_TABLE_HEADER, align 4
  %12 = load i32, i32* @header, align 4
  %13 = mul nsw i32 %11, %12
  %14 = load %struct.dc_firmware_info*, %struct.dc_firmware_info** %4, align 8
  %15 = icmp ne %struct.dc_firmware_info* %14, null
  br i1 %15, label %16, label %53

16:                                               ; preds = %2
  %17 = load i32, i32* @FirmwareInfo, align 4
  %18 = call i64 @DATA_TABLES(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %53

20:                                               ; preds = %16
  %21 = load i32, i32* @ATOM_COMMON_TABLE_HEADER, align 4
  %22 = load i32, i32* @FirmwareInfo, align 4
  %23 = call i64 @DATA_TABLES(i32 %22)
  %24 = call i32 @GET_IMAGE(i32 %21, i64 %23)
  store i32 %24, i32* @header, align 4
  %25 = load i32, i32* @header, align 4
  %26 = call i32 @get_atom_data_table_revision(i32 %25, %struct.atom_data_revision* %7)
  %27 = getelementptr inbounds %struct.atom_data_revision, %struct.atom_data_revision* %7, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %51 [
    i32 1, label %29
    i32 2, label %38
  ]

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.atom_data_revision, %struct.atom_data_revision* %7, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %36 [
    i32 4, label %32
  ]

32:                                               ; preds = %29
  %33 = load %struct.bios_parser*, %struct.bios_parser** %5, align 8
  %34 = load %struct.dc_firmware_info*, %struct.dc_firmware_info** %4, align 8
  %35 = call i32 @get_firmware_info_v1_4(%struct.bios_parser* %33, %struct.dc_firmware_info* %34)
  store i32 %35, i32* %6, align 4
  br label %37

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %32
  br label %52

38:                                               ; preds = %20
  %39 = getelementptr inbounds %struct.atom_data_revision, %struct.atom_data_revision* %7, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %49 [
    i32 1, label %41
    i32 2, label %45
  ]

41:                                               ; preds = %38
  %42 = load %struct.bios_parser*, %struct.bios_parser** %5, align 8
  %43 = load %struct.dc_firmware_info*, %struct.dc_firmware_info** %4, align 8
  %44 = call i32 @get_firmware_info_v2_1(%struct.bios_parser* %42, %struct.dc_firmware_info* %43)
  store i32 %44, i32* %6, align 4
  br label %50

45:                                               ; preds = %38
  %46 = load %struct.bios_parser*, %struct.bios_parser** %5, align 8
  %47 = load %struct.dc_firmware_info*, %struct.dc_firmware_info** %4, align 8
  %48 = call i32 @get_firmware_info_v2_2(%struct.bios_parser* %46, %struct.dc_firmware_info* %47)
  store i32 %48, i32* %6, align 4
  br label %50

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49, %45, %41
  br label %52

51:                                               ; preds = %20
  br label %52

52:                                               ; preds = %51, %50, %37
  br label %53

53:                                               ; preds = %52, %16, %2
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local %struct.bios_parser* @BP_FROM_DCB(%struct.dc_bios*) #1

declare dso_local i64 @DATA_TABLES(i32) #1

declare dso_local i32 @GET_IMAGE(i32, i64) #1

declare dso_local i32 @get_atom_data_table_revision(i32, %struct.atom_data_revision*) #1

declare dso_local i32 @get_firmware_info_v1_4(%struct.bios_parser*, %struct.dc_firmware_info*) #1

declare dso_local i32 @get_firmware_info_v2_1(%struct.bios_parser*, %struct.dc_firmware_info*) #1

declare dso_local i32 @get_firmware_info_v2_2(%struct.bios_parser*, %struct.dc_firmware_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
