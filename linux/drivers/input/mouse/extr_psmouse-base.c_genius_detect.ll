; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-base.c_genius_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-base.c_genius_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i8*, i8*, i32, %struct.TYPE_2__*, %struct.ps2dev }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ps2dev = type { i32 }

@PSMOUSE_CMD_SETRES = common dso_local global i32 0, align 4
@PSMOUSE_CMD_SETSCALE11 = common dso_local global i32 0, align 4
@PSMOUSE_CMD_GETINFO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@BTN_EXTRA = common dso_local global i32 0, align 4
@BTN_SIDE = common dso_local global i32 0, align 4
@REL_WHEEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Genius\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Mouse\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i32)* @genius_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @genius_detect(%struct.psmouse* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ps2dev*, align 8
  %7 = alloca [4 x i32], align 16
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %9 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %8, i32 0, i32 4
  store %struct.ps2dev* %9, %struct.ps2dev** %6, align 8
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 3, i32* %10, align 16
  %11 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %13 = load i32, i32* @PSMOUSE_CMD_SETRES, align 4
  %14 = call i32 @ps2_command(%struct.ps2dev* %11, i32* %12, i32 %13)
  %15 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %16 = load i32, i32* @PSMOUSE_CMD_SETSCALE11, align 4
  %17 = call i32 @ps2_command(%struct.ps2dev* %15, i32* null, i32 %16)
  %18 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %19 = load i32, i32* @PSMOUSE_CMD_SETSCALE11, align 4
  %20 = call i32 @ps2_command(%struct.ps2dev* %18, i32* null, i32 %19)
  %21 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %22 = load i32, i32* @PSMOUSE_CMD_SETSCALE11, align 4
  %23 = call i32 @ps2_command(%struct.ps2dev* %21, i32* null, i32 %22)
  %24 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %26 = load i32, i32* @PSMOUSE_CMD_GETINFO, align 4
  %27 = call i32 @ps2_command(%struct.ps2dev* %24, i32* %25, i32 %26)
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %29 = load i32, i32* %28, align 16
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %2
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 51
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 85
  br i1 %38, label %39, label %42

39:                                               ; preds = %35, %31, %2
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %81

42:                                               ; preds = %35
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %80

45:                                               ; preds = %42
  %46 = load i32, i32* @BTN_MIDDLE, align 4
  %47 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %48 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %47, i32 0, i32 3
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @__set_bit(i32 %46, i32 %51)
  %53 = load i32, i32* @BTN_EXTRA, align 4
  %54 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %55 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %54, i32 0, i32 3
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @__set_bit(i32 %53, i32 %58)
  %60 = load i32, i32* @BTN_SIDE, align 4
  %61 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %62 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %61, i32 0, i32 3
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @__set_bit(i32 %60, i32 %65)
  %67 = load i32, i32* @REL_WHEEL, align 4
  %68 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %69 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %68, i32 0, i32 3
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @__set_bit(i32 %67, i32 %72)
  %74 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %75 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %74, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %75, align 8
  %76 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %77 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %76, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %77, align 8
  %78 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %79 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %78, i32 0, i32 2
  store i32 4, i32* %79, align 8
  br label %80

80:                                               ; preds = %45, %42
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %39
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @ps2_command(%struct.ps2dev*, i32*, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
