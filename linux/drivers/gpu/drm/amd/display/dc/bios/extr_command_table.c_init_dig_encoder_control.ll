; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_init_dig_encoder_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_init_dig_encoder_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios_parser = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DIGxEncoderControl = common dso_local global i32 0, align 4
@encoder_control_digx_v3 = common dso_local global i32 0, align 4
@encoder_control_digx_v4 = common dso_local global i32 0, align 4
@encoder_control_digx_v5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bios_parser*)* @init_dig_encoder_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_dig_encoder_control(%struct.bios_parser* %0) #0 {
  %2 = alloca %struct.bios_parser*, align 8
  %3 = alloca i32, align 4
  store %struct.bios_parser* %0, %struct.bios_parser** %2, align 8
  %4 = load i32, i32* @DIGxEncoderControl, align 4
  %5 = call i32 @BIOS_CMD_TABLE_PARA_REVISION(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %22 [
    i32 2, label %7
    i32 4, label %12
    i32 5, label %17
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* @encoder_control_digx_v3, align 4
  %9 = load %struct.bios_parser*, %struct.bios_parser** %2, align 8
  %10 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 4
  br label %25

12:                                               ; preds = %1
  %13 = load i32, i32* @encoder_control_digx_v4, align 4
  %14 = load %struct.bios_parser*, %struct.bios_parser** %2, align 8
  %15 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  br label %25

17:                                               ; preds = %1
  %18 = load i32, i32* @encoder_control_digx_v5, align 4
  %19 = load %struct.bios_parser*, %struct.bios_parser** %2, align 8
  %20 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  br label %25

22:                                               ; preds = %1
  %23 = load %struct.bios_parser*, %struct.bios_parser** %2, align 8
  %24 = call i32 @init_encoder_control_dig_v1(%struct.bios_parser* %23)
  br label %25

25:                                               ; preds = %22, %17, %12, %7
  ret void
}

declare dso_local i32 @BIOS_CMD_TABLE_PARA_REVISION(i32) #1

declare dso_local i32 @init_encoder_control_dig_v1(%struct.bios_parser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
