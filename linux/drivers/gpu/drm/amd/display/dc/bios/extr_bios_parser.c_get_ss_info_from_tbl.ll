; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser.c_get_ss_info_from_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser.c_get_ss_info_from_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios_parser = type { i32 }
%struct.spread_spectrum_info = type { i32 }

@BP_RESULT_BADINPUT = common dso_local global i32 0, align 4
@ASIC_INTERNAL_SS_ON_DP = common dso_local global i64 0, align 8
@ASIC_INTERNAL_SS_ON_LVDS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bios_parser*, i64, %struct.spread_spectrum_info*)* @get_ss_info_from_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ss_info_from_tbl(%struct.bios_parser* %0, i64 %1, %struct.spread_spectrum_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bios_parser*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.spread_spectrum_info*, align 8
  store %struct.bios_parser* %0, %struct.bios_parser** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.spread_spectrum_info* %2, %struct.spread_spectrum_info** %7, align 8
  %8 = load %struct.spread_spectrum_info*, %struct.spread_spectrum_info** %7, align 8
  %9 = icmp ne %struct.spread_spectrum_info* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* @BP_RESULT_BADINPUT, align 4
  store i32 %11, i32* %4, align 4
  br label %30

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @ASIC_INTERNAL_SS_ON_DP, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @ASIC_INTERNAL_SS_ON_LVDS, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %16, %12
  %21 = load %struct.bios_parser*, %struct.bios_parser** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.spread_spectrum_info*, %struct.spread_spectrum_info** %7, align 8
  %24 = call i32 @get_ss_info_from_ss_info_table(%struct.bios_parser* %21, i64 %22, %struct.spread_spectrum_info* %23)
  store i32 %24, i32* %4, align 4
  br label %30

25:                                               ; preds = %16
  %26 = load %struct.bios_parser*, %struct.bios_parser** %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.spread_spectrum_info*, %struct.spread_spectrum_info** %7, align 8
  %29 = call i32 @get_ss_info_from_internal_ss_info_tbl_V2_1(%struct.bios_parser* %26, i64 %27, %struct.spread_spectrum_info* %28)
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %25, %20, %10
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @get_ss_info_from_ss_info_table(%struct.bios_parser*, i64, %struct.spread_spectrum_info*) #1

declare dso_local i32 @get_ss_info_from_internal_ss_info_tbl_V2_1(%struct.bios_parser*, i64, %struct.spread_spectrum_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
