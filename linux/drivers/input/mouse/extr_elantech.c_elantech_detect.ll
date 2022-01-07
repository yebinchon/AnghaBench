; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elantech.c_elantech_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elantech.c_elantech_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i8*, i8*, %struct.ps2dev }
%struct.ps2dev = type { i32 }

@PSMOUSE_CMD_RESET_DIS = common dso_local global i32 0, align 4
@PSMOUSE_CMD_DISABLE = common dso_local global i32 0, align 4
@PSMOUSE_CMD_SETSCALE11 = common dso_local global i32 0, align 4
@PSMOUSE_CMD_GETINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"sending Elantech magic knock failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"unexpected magic knock result 0x%02x, 0x%02x, 0x%02x.\0A\00", align 1
@ETP_FW_VERSION_QUERY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"failed to query firmware version.\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"Elantech version query result 0x%02x, 0x%02x, 0x%02x.\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"Probably not a real Elantech touchpad. Aborting.\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Elantech\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Touchpad\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elantech_detect(%struct.psmouse* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ps2dev*, align 8
  %7 = alloca [3 x i8], align 1
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %9 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %8, i32 0, i32 2
  store %struct.ps2dev* %9, %struct.ps2dev** %6, align 8
  %10 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %11 = load i32, i32* @PSMOUSE_CMD_RESET_DIS, align 4
  %12 = call i64 @ps2_command(%struct.ps2dev* %10, i8* null, i32 %11)
  %13 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %14 = load i32, i32* @PSMOUSE_CMD_DISABLE, align 4
  %15 = call i64 @ps2_command(%struct.ps2dev* %13, i8* null, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %38, label %17

17:                                               ; preds = %2
  %18 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %19 = load i32, i32* @PSMOUSE_CMD_SETSCALE11, align 4
  %20 = call i64 @ps2_command(%struct.ps2dev* %18, i8* null, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %17
  %23 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %24 = load i32, i32* @PSMOUSE_CMD_SETSCALE11, align 4
  %25 = call i64 @ps2_command(%struct.ps2dev* %23, i8* null, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %22
  %28 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %29 = load i32, i32* @PSMOUSE_CMD_SETSCALE11, align 4
  %30 = call i64 @ps2_command(%struct.ps2dev* %28, i8* null, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %34 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %35 = load i32, i32* @PSMOUSE_CMD_GETINFO, align 4
  %36 = call i64 @ps2_command(%struct.ps2dev* %33, i8* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32, %27, %22, %17, %2
  %39 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %40 = call i32 (%struct.psmouse*, i8*, ...) @psmouse_dbg(%struct.psmouse* %39, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %109

41:                                               ; preds = %32
  %42 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp ne i32 %44, 60
  br i1 %45, label %61, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp ne i32 %49, 3
  br i1 %50, label %61, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 2
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp ne i32 %54, 200
  br i1 %55, label %56, label %73

56:                                               ; preds = %51
  %57 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 2
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %56, %46, %41
  %62 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %63 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 1
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 2
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = call i32 (%struct.psmouse*, i8*, ...) @psmouse_dbg(%struct.psmouse* %62, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %68, i32 %71)
  store i32 -1, i32* %3, align 4
  br label %109

73:                                               ; preds = %56, %51
  %74 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %75 = load i32, i32* @ETP_FW_VERSION_QUERY, align 4
  %76 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %77 = call i64 @synaptics_send_cmd(%struct.psmouse* %74, i32 %75, i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %81 = call i32 (%struct.psmouse*, i8*, ...) @psmouse_dbg(%struct.psmouse* %80, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %109

82:                                               ; preds = %73
  %83 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %84 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 1
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 2
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = call i32 (%struct.psmouse*, i8*, ...) @psmouse_dbg(%struct.psmouse* %83, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %86, i32 %89, i32 %92)
  %94 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %95 = call i32 @elantech_is_signature_valid(i8* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %82
  %98 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %99 = call i32 (%struct.psmouse*, i8*, ...) @psmouse_dbg(%struct.psmouse* %98, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %109

100:                                              ; preds = %82
  %101 = load i32, i32* %5, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %105 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %104, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %105, align 8
  %106 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %107 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %106, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %107, align 8
  br label %108

108:                                              ; preds = %103, %100
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %97, %79, %61, %38
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i64 @ps2_command(%struct.ps2dev*, i8*, i32) #1

declare dso_local i32 @psmouse_dbg(%struct.psmouse*, i8*, ...) #1

declare dso_local i64 @synaptics_send_cmd(%struct.psmouse*, i32, i8*) #1

declare dso_local i32 @elantech_is_signature_valid(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
