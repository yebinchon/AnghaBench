; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-base.c_psmouse_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-base.c_psmouse_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.ps2dev }
%struct.ps2dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PSMOUSE_CMD_GETID = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@PSMOUSE_CMD_RESET_DIS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to reset mouse on %s: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @psmouse_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psmouse_probe(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.ps2dev*, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %7 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %8 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %7, i32 0, i32 0
  store %struct.ps2dev* %8, %struct.ps2dev** %4, align 8
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 165, i32* %9, align 4
  %10 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %12 = load i32, i32* @PSMOUSE_CMD_GETID, align 4
  %13 = call i32 @ps2_command(%struct.ps2dev* %10, i32* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %53

18:                                               ; preds = %1
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 3
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 4
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 255
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %53

37:                                               ; preds = %30, %26, %22, %18
  %38 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %39 = load i32, i32* @PSMOUSE_CMD_RESET_DIS, align 4
  %40 = call i32 @ps2_command(%struct.ps2dev* %38, i32* null, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %45 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %46 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @psmouse_warn(%struct.psmouse* %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %43, %37
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %34, %16
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @ps2_command(%struct.ps2dev*, i32*, i32) #1

declare dso_local i32 @psmouse_warn(%struct.psmouse*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
