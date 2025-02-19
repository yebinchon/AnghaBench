; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_init_dac_encoder_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_init_dac_encoder_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios_parser = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32* }

@DAC1EncoderControl = common dso_local global i32 0, align 4
@dac1_encoder_control_v1 = common dso_local global i32* null, align 8
@DAC2EncoderControl = common dso_local global i32 0, align 4
@dac2_encoder_control_v1 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bios_parser*)* @init_dac_encoder_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_dac_encoder_control(%struct.bios_parser* %0) #0 {
  %2 = alloca %struct.bios_parser*, align 8
  store %struct.bios_parser* %0, %struct.bios_parser** %2, align 8
  %3 = load i32, i32* @DAC1EncoderControl, align 4
  %4 = call i32 @BIOS_CMD_TABLE_PARA_REVISION(i32 %3)
  switch i32 %4, label %10 [
    i32 1, label %5
  ]

5:                                                ; preds = %1
  %6 = load i32*, i32** @dac1_encoder_control_v1, align 8
  %7 = load %struct.bios_parser*, %struct.bios_parser** %2, align 8
  %8 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  store i32* %6, i32** %9, align 8
  br label %14

10:                                               ; preds = %1
  %11 = load %struct.bios_parser*, %struct.bios_parser** %2, align 8
  %12 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store i32* null, i32** %13, align 8
  br label %14

14:                                               ; preds = %10, %5
  %15 = load i32, i32* @DAC2EncoderControl, align 4
  %16 = call i32 @BIOS_CMD_TABLE_PARA_REVISION(i32 %15)
  switch i32 %16, label %22 [
    i32 1, label %17
  ]

17:                                               ; preds = %14
  %18 = load i32*, i32** @dac2_encoder_control_v1, align 8
  %19 = load %struct.bios_parser*, %struct.bios_parser** %2, align 8
  %20 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32* %18, i32** %21, align 8
  br label %26

22:                                               ; preds = %14
  %23 = load %struct.bios_parser*, %struct.bios_parser** %2, align 8
  %24 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %22, %17
  ret void
}

declare dso_local i32 @BIOS_CMD_TABLE_PARA_REVISION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
