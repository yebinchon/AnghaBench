; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_vmmouse.c_vmmouse_report_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_vmmouse.c_vmmouse_report_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.vmmouse_data*, %struct.input_dev* }
%struct.vmmouse_data = type { %struct.input_dev* }
%struct.input_dev = type { i32 }

@ABSPOINTER_STATUS = common dso_local global i32 0, align 4
@VMMOUSE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to fetch status data\0A\00", align 1
@PSMOUSE_BAD_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid queue length\0A\00", align 1
@ABSPOINTER_DATA = common dso_local global i32 0, align 4
@VMMOUSE_RELATIVE_PACKET = common dso_local global i32 0, align 4
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@REL_WHEEL = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@VMMOUSE_LEFT_BUTTON = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@VMMOUSE_RIGHT_BUTTON = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@VMMOUSE_MIDDLE_BUTTON = common dso_local global i32 0, align 4
@PSMOUSE_FULL_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @vmmouse_report_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmmouse_report_events(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca %struct.vmmouse_data*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %17 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %18 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %17, i32 0, i32 1
  %19 = load %struct.input_dev*, %struct.input_dev** %18, align 8
  store %struct.input_dev* %19, %struct.input_dev** %4, align 8
  %20 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %21 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %20, i32 0, i32 0
  %22 = load %struct.vmmouse_data*, %struct.vmmouse_data** %21, align 8
  store %struct.vmmouse_data* %22, %struct.vmmouse_data** %5, align 8
  %23 = load %struct.vmmouse_data*, %struct.vmmouse_data** %5, align 8
  %24 = getelementptr inbounds %struct.vmmouse_data, %struct.vmmouse_data* %23, i32 0, i32 0
  %25 = load %struct.input_dev*, %struct.input_dev** %24, align 8
  store %struct.input_dev* %25, %struct.input_dev** %6, align 8
  store i32 255, i32* %16, align 4
  br label %26

26:                                               ; preds = %92, %1
  %27 = load i32, i32* %16, align 4
  %28 = add i32 %27, -1
  store i32 %28, i32* %16, align 4
  %29 = icmp ne i32 %27, 0
  br i1 %29, label %30, label %131

30:                                               ; preds = %26
  %31 = load i32, i32* @ABSPOINTER_STATUS, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %14, align 4
  %36 = call i32 @VMMOUSE_CMD(i32 %31, i32 0, i32 %32, i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @VMMOUSE_ERROR, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @VMMOUSE_ERROR, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %30
  %43 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %44 = call i32 @psmouse_err(%struct.psmouse* %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @PSMOUSE_BAD_DATA, align 4
  store i32 %45, i32* %2, align 4
  br label %133

46:                                               ; preds = %30
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, 65535
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %131

52:                                               ; preds = %46
  %53 = load i32, i32* %15, align 4
  %54 = urem i32 %53, 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %58 = call i32 @psmouse_err(%struct.psmouse* %57, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @PSMOUSE_BAD_DATA, align 4
  store i32 %59, i32* %2, align 4
  br label %133

60:                                               ; preds = %52
  %61 = load i32, i32* @ABSPOINTER_DATA, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @VMMOUSE_CMD(i32 %61, i32 4, i32 %62, i32 %63, i32 %64, i32 %65)
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @VMMOUSE_RELATIVE_PACKET, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %60
  %72 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  store %struct.input_dev* %72, %struct.input_dev** %7, align 8
  %73 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %74 = load i32, i32* @REL_X, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @input_report_rel(%struct.input_dev* %73, i32 %74, i32 %75)
  %77 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %78 = load i32, i32* @REL_Y, align 4
  %79 = load i32, i32* %10, align 4
  %80 = sub nsw i32 0, %79
  %81 = call i32 @input_report_rel(%struct.input_dev* %77, i32 %78, i32 %80)
  br label %92

82:                                               ; preds = %60
  %83 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  store %struct.input_dev* %83, %struct.input_dev** %7, align 8
  %84 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %85 = load i32, i32* @ABS_X, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @input_report_abs(%struct.input_dev* %84, i32 %85, i32 %86)
  %88 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %89 = load i32, i32* @ABS_Y, align 4
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @input_report_abs(%struct.input_dev* %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %82, %71
  %93 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %94 = load i32, i32* @REL_WHEEL, align 4
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = trunc i64 %96 to i32
  %98 = sub nsw i32 0, %97
  %99 = call i32 @input_report_rel(%struct.input_dev* %93, i32 %94, i32 %98)
  %100 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %101 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %102 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %103 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %104 = load i32, i32* @BTN_LEFT, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @VMMOUSE_LEFT_BUTTON, align 4
  %107 = and i32 %105, %106
  %108 = call i32 @vmmouse_report_button(%struct.psmouse* %100, %struct.input_dev* %101, %struct.input_dev* %102, %struct.input_dev* %103, i32 %104, i32 %107)
  %109 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %110 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %111 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %112 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %113 = load i32, i32* @BTN_RIGHT, align 4
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* @VMMOUSE_RIGHT_BUTTON, align 4
  %116 = and i32 %114, %115
  %117 = call i32 @vmmouse_report_button(%struct.psmouse* %109, %struct.input_dev* %110, %struct.input_dev* %111, %struct.input_dev* %112, i32 %113, i32 %116)
  %118 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %119 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %120 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %121 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %122 = load i32, i32* @BTN_MIDDLE, align 4
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* @VMMOUSE_MIDDLE_BUTTON, align 4
  %125 = and i32 %123, %124
  %126 = call i32 @vmmouse_report_button(%struct.psmouse* %118, %struct.input_dev* %119, %struct.input_dev* %120, %struct.input_dev* %121, i32 %122, i32 %125)
  %127 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %128 = call i32 @input_sync(%struct.input_dev* %127)
  %129 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %130 = call i32 @input_sync(%struct.input_dev* %129)
  br label %26

131:                                              ; preds = %51, %26
  %132 = load i32, i32* @PSMOUSE_FULL_PACKET, align 4
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %131, %56, %42
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i32 @VMMOUSE_CMD(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @psmouse_err(%struct.psmouse*, i8*) #1

declare dso_local i32 @input_report_rel(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @vmmouse_report_button(%struct.psmouse*, %struct.input_dev*, %struct.input_dev*, %struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
