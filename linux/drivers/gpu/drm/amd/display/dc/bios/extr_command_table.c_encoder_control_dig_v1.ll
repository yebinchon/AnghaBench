; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_encoder_control_dig_v1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_encoder_control_dig_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios_parser = type { %struct.cmd_tbl }
%struct.cmd_tbl = type { i32 (%struct.bios_parser.0*, %struct.bp_encoder_control*)*, i32 (%struct.bios_parser.1*, %struct.bp_encoder_control.2*)* }
%struct.bios_parser.0 = type opaque
%struct.bp_encoder_control = type opaque
%struct.bios_parser.1 = type opaque
%struct.bp_encoder_control.2 = type opaque
%struct.bp_encoder_control.3 = type { i32 }

@BP_RESULT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bios_parser*, %struct.bp_encoder_control.3*)* @encoder_control_dig_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encoder_control_dig_v1(%struct.bios_parser* %0, %struct.bp_encoder_control.3* %1) #0 {
  %3 = alloca %struct.bios_parser*, align 8
  %4 = alloca %struct.bp_encoder_control.3*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cmd_tbl*, align 8
  store %struct.bios_parser* %0, %struct.bios_parser** %3, align 8
  store %struct.bp_encoder_control.3* %1, %struct.bp_encoder_control.3** %4, align 8
  %7 = load i32, i32* @BP_RESULT_FAILURE, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.bios_parser*, %struct.bios_parser** %3, align 8
  %9 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %8, i32 0, i32 0
  store %struct.cmd_tbl* %9, %struct.cmd_tbl** %6, align 8
  %10 = load %struct.bp_encoder_control.3*, %struct.bp_encoder_control.3** %4, align 8
  %11 = icmp ne %struct.bp_encoder_control.3* %10, null
  br i1 %11, label %12, label %48

12:                                               ; preds = %2
  %13 = load %struct.bp_encoder_control.3*, %struct.bp_encoder_control.3** %4, align 8
  %14 = getelementptr inbounds %struct.bp_encoder_control.3, %struct.bp_encoder_control.3* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %46 [
    i32 129, label %16
    i32 128, label %31
  ]

16:                                               ; preds = %12
  %17 = load %struct.cmd_tbl*, %struct.cmd_tbl** %6, align 8
  %18 = getelementptr inbounds %struct.cmd_tbl, %struct.cmd_tbl* %17, i32 0, i32 0
  %19 = load i32 (%struct.bios_parser.0*, %struct.bp_encoder_control*)*, i32 (%struct.bios_parser.0*, %struct.bp_encoder_control*)** %18, align 8
  %20 = icmp ne i32 (%struct.bios_parser.0*, %struct.bp_encoder_control*)* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load %struct.cmd_tbl*, %struct.cmd_tbl** %6, align 8
  %23 = getelementptr inbounds %struct.cmd_tbl, %struct.cmd_tbl* %22, i32 0, i32 0
  %24 = load i32 (%struct.bios_parser.0*, %struct.bp_encoder_control*)*, i32 (%struct.bios_parser.0*, %struct.bp_encoder_control*)** %23, align 8
  %25 = load %struct.bios_parser*, %struct.bios_parser** %3, align 8
  %26 = bitcast %struct.bios_parser* %25 to %struct.bios_parser.0*
  %27 = load %struct.bp_encoder_control.3*, %struct.bp_encoder_control.3** %4, align 8
  %28 = bitcast %struct.bp_encoder_control.3* %27 to %struct.bp_encoder_control*
  %29 = call i32 %24(%struct.bios_parser.0* %26, %struct.bp_encoder_control* %28)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %21, %16
  br label %47

31:                                               ; preds = %12
  %32 = load %struct.cmd_tbl*, %struct.cmd_tbl** %6, align 8
  %33 = getelementptr inbounds %struct.cmd_tbl, %struct.cmd_tbl* %32, i32 0, i32 1
  %34 = load i32 (%struct.bios_parser.1*, %struct.bp_encoder_control.2*)*, i32 (%struct.bios_parser.1*, %struct.bp_encoder_control.2*)** %33, align 8
  %35 = icmp ne i32 (%struct.bios_parser.1*, %struct.bp_encoder_control.2*)* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load %struct.cmd_tbl*, %struct.cmd_tbl** %6, align 8
  %38 = getelementptr inbounds %struct.cmd_tbl, %struct.cmd_tbl* %37, i32 0, i32 1
  %39 = load i32 (%struct.bios_parser.1*, %struct.bp_encoder_control.2*)*, i32 (%struct.bios_parser.1*, %struct.bp_encoder_control.2*)** %38, align 8
  %40 = load %struct.bios_parser*, %struct.bios_parser** %3, align 8
  %41 = bitcast %struct.bios_parser* %40 to %struct.bios_parser.1*
  %42 = load %struct.bp_encoder_control.3*, %struct.bp_encoder_control.3** %4, align 8
  %43 = bitcast %struct.bp_encoder_control.3* %42 to %struct.bp_encoder_control.2*
  %44 = call i32 %39(%struct.bios_parser.1* %41, %struct.bp_encoder_control.2* %43)
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %36, %31
  br label %47

46:                                               ; preds = %12
  br label %47

47:                                               ; preds = %46, %45, %30
  br label %48

48:                                               ; preds = %47, %2
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
