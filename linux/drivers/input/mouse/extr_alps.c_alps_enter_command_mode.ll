; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_enter_command_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_enter_command_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32 }

@PSMOUSE_CMD_RESET_WRAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to enter command mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"unknown response while entering command mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @alps_enter_command_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_enter_command_mode(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca [4 x i8], align 1
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %5 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %6 = load i32, i32* @PSMOUSE_CMD_RESET_WRAP, align 4
  %7 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %8 = call i64 @alps_rpt_cmd(%struct.psmouse* %5, i32 0, i32 %6, i8* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %12 = call i32 @psmouse_err(%struct.psmouse* %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %21

13:                                               ; preds = %1
  %14 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %15 = call i32 @alps_check_valid_firmware_id(i8* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %19 = call i32 @psmouse_dbg(%struct.psmouse* %18, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %21

20:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %17, %10
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i64 @alps_rpt_cmd(%struct.psmouse*, i32, i32, i8*) #1

declare dso_local i32 @psmouse_err(%struct.psmouse*, i8*) #1

declare dso_local i32 @alps_check_valid_firmware_id(i8*) #1

declare dso_local i32 @psmouse_dbg(%struct.psmouse*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
