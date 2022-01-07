; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-base.c_im_explorer_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-base.c_im_explorer_detect.c"
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
@REL_HWHEEL = common dso_local global i32 0, align 4
@BTN_SIDE = common dso_local global i32 0, align 4
@BTN_EXTRA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Generic\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Explorer Mouse\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i32)* @im_explorer_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @im_explorer_detect(%struct.psmouse* %0, i32 %1) #0 {
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
  %10 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %11 = call i32 @intellimouse_detect(%struct.psmouse* %10, i32 0)
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 200, i32* %12, align 4
  %13 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %15 = load i32, i32* @PSMOUSE_CMD_SETRATE, align 4
  %16 = call i32 @ps2_command(%struct.ps2dev* %13, i32* %14, i32 %15)
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 200, i32* %17, align 4
  %18 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %20 = load i32, i32* @PSMOUSE_CMD_SETRATE, align 4
  %21 = call i32 @ps2_command(%struct.ps2dev* %18, i32* %19, i32 %20)
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 80, i32* %22, align 4
  %23 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %25 = load i32, i32* @PSMOUSE_CMD_SETRATE, align 4
  %26 = call i32 @ps2_command(%struct.ps2dev* %23, i32* %24, i32 %25)
  %27 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %29 = load i32, i32* @PSMOUSE_CMD_GETID, align 4
  %30 = call i32 @ps2_command(%struct.ps2dev* %27, i32* %28, i32 %29)
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 4
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %110

37:                                               ; preds = %2
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 200, i32* %38, align 4
  %39 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %41 = load i32, i32* @PSMOUSE_CMD_SETRATE, align 4
  %42 = call i32 @ps2_command(%struct.ps2dev* %39, i32* %40, i32 %41)
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 80, i32* %43, align 4
  %44 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %46 = load i32, i32* @PSMOUSE_CMD_SETRATE, align 4
  %47 = call i32 @ps2_command(%struct.ps2dev* %44, i32* %45, i32 %46)
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 40, i32* %48, align 4
  %49 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %51 = load i32, i32* @PSMOUSE_CMD_SETRATE, align 4
  %52 = call i32 @ps2_command(%struct.ps2dev* %49, i32* %50, i32 %51)
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %109

55:                                               ; preds = %37
  %56 = load i32, i32* @BTN_MIDDLE, align 4
  %57 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %58 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %57, i32 0, i32 3
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @__set_bit(i32 %56, i32 %61)
  %63 = load i32, i32* @REL_WHEEL, align 4
  %64 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %65 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %64, i32 0, i32 3
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @__set_bit(i32 %63, i32 %68)
  %70 = load i32, i32* @REL_HWHEEL, align 4
  %71 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %72 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %71, i32 0, i32 3
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @__set_bit(i32 %70, i32 %75)
  %77 = load i32, i32* @BTN_SIDE, align 4
  %78 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %79 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %78, i32 0, i32 3
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @__set_bit(i32 %77, i32 %82)
  %84 = load i32, i32* @BTN_EXTRA, align 4
  %85 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %86 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %85, i32 0, i32 3
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @__set_bit(i32 %84, i32 %89)
  %91 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %92 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %55
  %96 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %97 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %96, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %97, align 8
  br label %98

98:                                               ; preds = %95, %55
  %99 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %100 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %105 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %104, i32 0, i32 1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %105, align 8
  br label %106

106:                                              ; preds = %103, %98
  %107 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %108 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %107, i32 0, i32 2
  store i32 4, i32* %108, align 8
  br label %109

109:                                              ; preds = %106, %37
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %109, %34
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @intellimouse_detect(%struct.psmouse*, i32) #1

declare dso_local i32 @ps2_command(%struct.ps2dev*, i32*, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
