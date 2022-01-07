; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-base.c_intellimouse_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-base.c_intellimouse_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i8*, i8*, i32, %struct.TYPE_2__*, %struct.ps2dev }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ps2dev = type { i32 }

@PSMOUSE_CMD_SETRATE = common dso_local global i32 0, align 4
@PSMOUSE_CMD_GETID = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@REL_WHEEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Generic\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Wheel Mouse\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i32)* @intellimouse_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intellimouse_detect(%struct.psmouse* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ps2dev*, align 8
  %7 = alloca [2 x i32], align 4
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %9 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %8, i32 0, i32 4
  store %struct.ps2dev* %9, %struct.ps2dev** %6, align 8
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 200, i32* %10, align 4
  %11 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %13 = load i32, i32* @PSMOUSE_CMD_SETRATE, align 4
  %14 = call i32 @ps2_command(%struct.ps2dev* %11, i32* %12, i32 %13)
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 100, i32* %15, align 4
  %16 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %18 = load i32, i32* @PSMOUSE_CMD_SETRATE, align 4
  %19 = call i32 @ps2_command(%struct.ps2dev* %16, i32* %17, i32 %18)
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 80, i32* %20, align 4
  %21 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %23 = load i32, i32* @PSMOUSE_CMD_SETRATE, align 4
  %24 = call i32 @ps2_command(%struct.ps2dev* %21, i32* %22, i32 %23)
  %25 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %27 = load i32, i32* @PSMOUSE_CMD_GETID, align 4
  %28 = call i32 @ps2_command(%struct.ps2dev* %25, i32* %26, i32 %27)
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 3
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %72

35:                                               ; preds = %2
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %71

38:                                               ; preds = %35
  %39 = load i32, i32* @BTN_MIDDLE, align 4
  %40 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %41 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %40, i32 0, i32 3
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @__set_bit(i32 %39, i32 %44)
  %46 = load i32, i32* @REL_WHEEL, align 4
  %47 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %48 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %47, i32 0, i32 3
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @__set_bit(i32 %46, i32 %51)
  %53 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %54 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %38
  %58 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %59 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %58, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %59, align 8
  br label %60

60:                                               ; preds = %57, %38
  %61 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %62 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %67 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %66, i32 0, i32 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %67, align 8
  br label %68

68:                                               ; preds = %65, %60
  %69 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %70 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %69, i32 0, i32 2
  store i32 4, i32* %70, align 8
  br label %71

71:                                               ; preds = %68, %35
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %32
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @ps2_command(%struct.ps2dev*, i32*, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
