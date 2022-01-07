; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table2.c_dal_firmware_parser_init_cmd_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table2.c_dal_firmware_parser_init_cmd_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios_parser = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dal_firmware_parser_init_cmd_tbl(%struct.bios_parser* %0) #0 {
  %2 = alloca %struct.bios_parser*, align 8
  store %struct.bios_parser* %0, %struct.bios_parser** %2, align 8
  %3 = load %struct.bios_parser*, %struct.bios_parser** %2, align 8
  %4 = call i32 @init_dig_encoder_control(%struct.bios_parser* %3)
  %5 = load %struct.bios_parser*, %struct.bios_parser** %2, align 8
  %6 = call i32 @init_transmitter_control(%struct.bios_parser* %5)
  %7 = load %struct.bios_parser*, %struct.bios_parser** %2, align 8
  %8 = call i32 @init_set_pixel_clock(%struct.bios_parser* %7)
  %9 = load %struct.bios_parser*, %struct.bios_parser** %2, align 8
  %10 = call i32 @init_set_crtc_timing(%struct.bios_parser* %9)
  %11 = load %struct.bios_parser*, %struct.bios_parser** %2, align 8
  %12 = call i32 @init_enable_crtc(%struct.bios_parser* %11)
  %13 = load %struct.bios_parser*, %struct.bios_parser** %2, align 8
  %14 = call i32 @init_external_encoder_control(%struct.bios_parser* %13)
  %15 = load %struct.bios_parser*, %struct.bios_parser** %2, align 8
  %16 = call i32 @init_enable_disp_power_gating(%struct.bios_parser* %15)
  %17 = load %struct.bios_parser*, %struct.bios_parser** %2, align 8
  %18 = call i32 @init_set_dce_clock(%struct.bios_parser* %17)
  %19 = load %struct.bios_parser*, %struct.bios_parser** %2, align 8
  %20 = call i32 @init_get_smu_clock_info(%struct.bios_parser* %19)
  ret void
}

declare dso_local i32 @init_dig_encoder_control(%struct.bios_parser*) #1

declare dso_local i32 @init_transmitter_control(%struct.bios_parser*) #1

declare dso_local i32 @init_set_pixel_clock(%struct.bios_parser*) #1

declare dso_local i32 @init_set_crtc_timing(%struct.bios_parser*) #1

declare dso_local i32 @init_enable_crtc(%struct.bios_parser*) #1

declare dso_local i32 @init_external_encoder_control(%struct.bios_parser*) #1

declare dso_local i32 @init_enable_disp_power_gating(%struct.bios_parser*) #1

declare dso_local i32 @init_set_dce_clock(%struct.bios_parser*) #1

declare dso_local i32 @init_get_smu_clock_info(%struct.bios_parser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
