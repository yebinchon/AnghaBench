; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser.c_get_ss_entry_number.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser.c_get_ss_entry_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios_parser = type { i32 }

@ASIC_INTERNAL_SS_ON_DP = common dso_local global i64 0, align 8
@ASIC_INTERNAL_SS_ON_LVDS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bios_parser*, i64)* @get_ss_entry_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_ss_entry_number(%struct.bios_parser* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.bios_parser*, align 8
  %5 = alloca i64, align 8
  store %struct.bios_parser* %0, %struct.bios_parser** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @ASIC_INTERNAL_SS_ON_DP, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @ASIC_INTERNAL_SS_ON_LVDS, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %9, %2
  %14 = load %struct.bios_parser*, %struct.bios_parser** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @get_ss_entry_number_from_ss_info_tbl(%struct.bios_parser* %14, i64 %15)
  store i64 %16, i64* %3, align 8
  br label %21

17:                                               ; preds = %9
  %18 = load %struct.bios_parser*, %struct.bios_parser** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @get_ss_entry_number_from_internal_ss_info_tbl_v2_1(%struct.bios_parser* %18, i64 %19)
  store i64 %20, i64* %3, align 8
  br label %21

21:                                               ; preds = %17, %13
  %22 = load i64, i64* %3, align 8
  ret i64 %22
}

declare dso_local i64 @get_ss_entry_number_from_ss_info_tbl(%struct.bios_parser*, i64) #1

declare dso_local i64 @get_ss_entry_number_from_internal_ss_info_tbl_v2_1(%struct.bios_parser*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
