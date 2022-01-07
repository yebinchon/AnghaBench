; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_init_encoder_control_dig_v1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_init_encoder_control_dig_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios_parser = type { %struct.cmd_tbl }
%struct.cmd_tbl = type { i32, i32*, i32* }

@DIG1EncoderControl = common dso_local global i32 0, align 4
@encoder_control_dig1_v1 = common dso_local global i32* null, align 8
@DIG2EncoderControl = common dso_local global i32 0, align 4
@encoder_control_dig2_v1 = common dso_local global i32* null, align 8
@encoder_control_dig_v1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bios_parser*)* @init_encoder_control_dig_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_encoder_control_dig_v1(%struct.bios_parser* %0) #0 {
  %2 = alloca %struct.bios_parser*, align 8
  %3 = alloca %struct.cmd_tbl*, align 8
  store %struct.bios_parser* %0, %struct.bios_parser** %2, align 8
  %4 = load %struct.bios_parser*, %struct.bios_parser** %2, align 8
  %5 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %4, i32 0, i32 0
  store %struct.cmd_tbl* %5, %struct.cmd_tbl** %3, align 8
  %6 = load i32, i32* @DIG1EncoderControl, align 4
  %7 = call i32 @BIOS_CMD_TABLE_PARA_REVISION(i32 %6)
  %8 = icmp eq i32 1, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32*, i32** @encoder_control_dig1_v1, align 8
  %11 = load %struct.cmd_tbl*, %struct.cmd_tbl** %3, align 8
  %12 = getelementptr inbounds %struct.cmd_tbl, %struct.cmd_tbl* %11, i32 0, i32 2
  store i32* %10, i32** %12, align 8
  br label %16

13:                                               ; preds = %1
  %14 = load %struct.cmd_tbl*, %struct.cmd_tbl** %3, align 8
  %15 = getelementptr inbounds %struct.cmd_tbl, %struct.cmd_tbl* %14, i32 0, i32 2
  store i32* null, i32** %15, align 8
  br label %16

16:                                               ; preds = %13, %9
  %17 = load i32, i32* @DIG2EncoderControl, align 4
  %18 = call i32 @BIOS_CMD_TABLE_PARA_REVISION(i32 %17)
  %19 = icmp eq i32 1, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32*, i32** @encoder_control_dig2_v1, align 8
  %22 = load %struct.cmd_tbl*, %struct.cmd_tbl** %3, align 8
  %23 = getelementptr inbounds %struct.cmd_tbl, %struct.cmd_tbl* %22, i32 0, i32 1
  store i32* %21, i32** %23, align 8
  br label %27

24:                                               ; preds = %16
  %25 = load %struct.cmd_tbl*, %struct.cmd_tbl** %3, align 8
  %26 = getelementptr inbounds %struct.cmd_tbl, %struct.cmd_tbl* %25, i32 0, i32 1
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %24, %20
  %28 = load i32, i32* @encoder_control_dig_v1, align 4
  %29 = load %struct.cmd_tbl*, %struct.cmd_tbl** %3, align 8
  %30 = getelementptr inbounds %struct.cmd_tbl, %struct.cmd_tbl* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  ret void
}

declare dso_local i32 @BIOS_CMD_TABLE_PARA_REVISION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
