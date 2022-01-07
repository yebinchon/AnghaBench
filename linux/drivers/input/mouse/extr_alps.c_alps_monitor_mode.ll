; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_monitor_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_monitor_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.ps2dev }
%struct.ps2dev = type { i32 }

@PSMOUSE_CMD_RESET_WRAP = common dso_local global i32 0, align 4
@PSMOUSE_CMD_GETINFO = common dso_local global i32 0, align 4
@PSMOUSE_CMD_DISABLE = common dso_local global i32 0, align 4
@PSMOUSE_CMD_SETSCALE21 = common dso_local global i32 0, align 4
@PSMOUSE_CMD_SETSCALE11 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i32)* @alps_monitor_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_monitor_mode(%struct.psmouse* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ps2dev*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %8 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %7, i32 0, i32 0
  store %struct.ps2dev* %8, %struct.ps2dev** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %53

11:                                               ; preds = %2
  %12 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %13 = load i32, i32* @PSMOUSE_CMD_RESET_WRAP, align 4
  %14 = call i64 @ps2_command(%struct.ps2dev* %12, i32* null, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %51, label %16

16:                                               ; preds = %11
  %17 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %18 = load i32, i32* @PSMOUSE_CMD_GETINFO, align 4
  %19 = call i64 @ps2_command(%struct.ps2dev* %17, i32* null, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %51, label %21

21:                                               ; preds = %16
  %22 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %23 = load i32, i32* @PSMOUSE_CMD_DISABLE, align 4
  %24 = call i64 @ps2_command(%struct.ps2dev* %22, i32* null, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %51, label %26

26:                                               ; preds = %21
  %27 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %28 = load i32, i32* @PSMOUSE_CMD_DISABLE, align 4
  %29 = call i64 @ps2_command(%struct.ps2dev* %27, i32* null, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %51, label %31

31:                                               ; preds = %26
  %32 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %33 = load i32, i32* @PSMOUSE_CMD_SETSCALE21, align 4
  %34 = call i64 @ps2_command(%struct.ps2dev* %32, i32* null, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %51, label %36

36:                                               ; preds = %31
  %37 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %38 = load i32, i32* @PSMOUSE_CMD_SETSCALE11, align 4
  %39 = call i64 @ps2_command(%struct.ps2dev* %37, i32* null, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %36
  %42 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %43 = load i32, i32* @PSMOUSE_CMD_SETSCALE21, align 4
  %44 = call i64 @ps2_command(%struct.ps2dev* %42, i32* null, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %48 = load i32, i32* @PSMOUSE_CMD_GETINFO, align 4
  %49 = call i64 @ps2_command(%struct.ps2dev* %47, i32* null, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46, %41, %36, %31, %26, %21, %16, %11
  store i32 -1, i32* %3, align 4
  br label %61

52:                                               ; preds = %46
  br label %60

53:                                               ; preds = %2
  %54 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %55 = load i32, i32* @PSMOUSE_CMD_RESET_WRAP, align 4
  %56 = call i64 @ps2_command(%struct.ps2dev* %54, i32* null, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 -1, i32* %3, align 4
  br label %61

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59, %52
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %58, %51
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @ps2_command(%struct.ps2dev*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
