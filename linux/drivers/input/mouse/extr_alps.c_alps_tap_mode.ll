; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_tap_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_tap_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.ps2dev }
%struct.ps2dev = type { i32 }

@PSMOUSE_CMD_SETRATE = common dso_local global i32 0, align 4
@PSMOUSE_CMD_SETRES = common dso_local global i32 0, align 4
@PSMOUSE_CMD_GETINFO = common dso_local global i32 0, align 4
@PSMOUSE_CMD_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i32)* @alps_tap_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_tap_mode(%struct.psmouse* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ps2dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca [4 x i8], align 1
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %11 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %10, i32 0, i32 0
  store %struct.ps2dev* %11, %struct.ps2dev** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @PSMOUSE_CMD_SETRATE, align 4
  br label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @PSMOUSE_CMD_SETRES, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 10, i32 0
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %8, align 1
  %25 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %26 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %27 = load i32, i32* @PSMOUSE_CMD_GETINFO, align 4
  %28 = call i64 @ps2_command(%struct.ps2dev* %25, i8* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %45, label %30

30:                                               ; preds = %18
  %31 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %32 = load i32, i32* @PSMOUSE_CMD_DISABLE, align 4
  %33 = call i64 @ps2_command(%struct.ps2dev* %31, i8* null, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %30
  %36 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %37 = load i32, i32* @PSMOUSE_CMD_DISABLE, align 4
  %38 = call i64 @ps2_command(%struct.ps2dev* %36, i8* null, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @ps2_command(%struct.ps2dev* %41, i8* %8, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40, %35, %30, %18
  store i32 -1, i32* %3, align 4
  br label %53

46:                                               ; preds = %40
  %47 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %48 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %49 = call i64 @alps_get_status(%struct.psmouse* %47, i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 -1, i32* %3, align 4
  br label %53

52:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %51, %45
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i64 @ps2_command(%struct.ps2dev*, i8*, i32) #1

declare dso_local i64 @alps_get_status(%struct.psmouse*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
