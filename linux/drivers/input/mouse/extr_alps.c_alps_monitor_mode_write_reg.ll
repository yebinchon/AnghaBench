; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_monitor_mode_write_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_monitor_mode_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.ps2dev }
%struct.ps2dev = type { i32 }

@PSMOUSE_CMD_ENABLE = common dso_local global i32 0, align 4
@PSMOUSE_CMD_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i32, i32)* @alps_monitor_mode_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_monitor_mode_write_reg(%struct.psmouse* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.psmouse*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ps2dev*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %10 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %9, i32 0, i32 0
  store %struct.ps2dev* %10, %struct.ps2dev** %8, align 8
  %11 = load %struct.ps2dev*, %struct.ps2dev** %8, align 8
  %12 = load i32, i32* @PSMOUSE_CMD_ENABLE, align 4
  %13 = call i64 @ps2_command(%struct.ps2dev* %11, i32* null, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %34, label %15

15:                                               ; preds = %3
  %16 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %17 = call i64 @alps_monitor_mode_send_word(%struct.psmouse* %16, i32 160)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %15
  %20 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @alps_monitor_mode_send_word(%struct.psmouse* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %19
  %25 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @alps_monitor_mode_send_word(%struct.psmouse* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.ps2dev*, %struct.ps2dev** %8, align 8
  %31 = load i32, i32* @PSMOUSE_CMD_DISABLE, align 4
  %32 = call i64 @ps2_command(%struct.ps2dev* %30, i32* null, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %24, %19, %15, %3
  store i32 -1, i32* %4, align 4
  br label %36

35:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %34
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i64 @ps2_command(%struct.ps2dev*, i32*, i32) #1

declare dso_local i64 @alps_monitor_mode_send_word(%struct.psmouse*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
