; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_dac2_output_control_v1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_dac2_output_control_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios_parser = type { i32 }
%struct.TYPE_3__ = type { i32 }

@BP_RESULT_FAILURE = common dso_local global i32 0, align 4
@ATOM_ENABLE = common dso_local global i32 0, align 4
@ATOM_DISABLE = common dso_local global i32 0, align 4
@DAC2OutputControl = common dso_local global i32 0, align 4
@BP_RESULT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bios_parser*, i32)* @dac2_output_control_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dac2_output_control_v1(%struct.bios_parser* %0, i32 %1) #0 {
  %3 = alloca %struct.bios_parser*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__, align 4
  store %struct.bios_parser* %0, %struct.bios_parser** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @BP_RESULT_FAILURE, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @ATOM_ENABLE, align 4
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  br label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ATOM_DISABLE, align 4
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  br label %16

16:                                               ; preds = %13, %10
  %17 = load i32, i32* @DAC2OutputControl, align 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @EXEC_BIOS_CMD_TABLE(i32 %17, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @BP_RESULT_OK, align 4
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %22, %16
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

declare dso_local i64 @EXEC_BIOS_CMD_TABLE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
