; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_hw_init_v4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_hw_init_v4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.ps2dev }
%struct.ps2dev = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Failed to enter absolute mode\0A\00", align 1
@PSMOUSE_CMD_SETRATE = common dso_local global i32 0, align 4
@PSMOUSE_CMD_GETID = common dso_local global i32 0, align 4
@PSMOUSE_CMD_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to enable data reporting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @alps_hw_init_v4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_hw_init_v4(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.ps2dev*, align 8
  %5 = alloca [4 x i8], align 1
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %6 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %7 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %6, i32 0, i32 0
  store %struct.ps2dev* %7, %struct.ps2dev** %4, align 8
  %8 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %9 = call i64 @alps_enter_command_mode(%struct.psmouse* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %105

12:                                               ; preds = %1
  %13 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %14 = call i64 @alps_absolute_mode_v4(%struct.psmouse* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %18 = call i32 @psmouse_err(%struct.psmouse* %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %105

19:                                               ; preds = %12
  %20 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %21 = call i64 @alps_command_mode_write_reg(%struct.psmouse* %20, i32 7, i32 140)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %105

24:                                               ; preds = %19
  %25 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %26 = call i64 @alps_command_mode_write_reg(%struct.psmouse* %25, i32 329, i32 3)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %105

29:                                               ; preds = %24
  %30 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %31 = call i64 @alps_command_mode_write_reg(%struct.psmouse* %30, i32 352, i32 3)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %105

34:                                               ; preds = %29
  %35 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %36 = call i64 @alps_command_mode_write_reg(%struct.psmouse* %35, i32 383, i32 21)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %105

39:                                               ; preds = %34
  %40 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %41 = call i64 @alps_command_mode_write_reg(%struct.psmouse* %40, i32 337, i32 1)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %105

44:                                               ; preds = %39
  %45 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %46 = call i64 @alps_command_mode_write_reg(%struct.psmouse* %45, i32 360, i32 3)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %105

49:                                               ; preds = %44
  %50 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %51 = call i64 @alps_command_mode_write_reg(%struct.psmouse* %50, i32 330, i32 3)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %105

54:                                               ; preds = %49
  %55 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %56 = call i64 @alps_command_mode_write_reg(%struct.psmouse* %55, i32 353, i32 3)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %105

59:                                               ; preds = %54
  %60 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %61 = call i32 @alps_exit_command_mode(%struct.psmouse* %60)
  %62 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  store i8 -56, i8* %62, align 1
  %63 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 1
  store i8 100, i8* %63, align 1
  %64 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 2
  store i8 80, i8* %64, align 1
  %65 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %66 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %67 = load i32, i32* @PSMOUSE_CMD_SETRATE, align 4
  %68 = call i64 @ps2_command(%struct.ps2dev* %65, i8* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %88, label %70

70:                                               ; preds = %59
  %71 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %72 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 1
  %73 = load i32, i32* @PSMOUSE_CMD_SETRATE, align 4
  %74 = call i64 @ps2_command(%struct.ps2dev* %71, i8* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %88, label %76

76:                                               ; preds = %70
  %77 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %78 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 2
  %79 = load i32, i32* @PSMOUSE_CMD_SETRATE, align 4
  %80 = call i64 @ps2_command(%struct.ps2dev* %77, i8* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %76
  %83 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %84 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %85 = load i32, i32* @PSMOUSE_CMD_GETID, align 4
  %86 = call i64 @ps2_command(%struct.ps2dev* %83, i8* %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82, %76, %70, %59
  store i32 -1, i32* %2, align 4
  br label %108

89:                                               ; preds = %82
  %90 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  store i8 100, i8* %90, align 1
  %91 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %92 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %93 = load i32, i32* @PSMOUSE_CMD_SETRATE, align 4
  %94 = call i64 @ps2_command(%struct.ps2dev* %91, i8* %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %89
  %97 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %98 = load i32, i32* @PSMOUSE_CMD_ENABLE, align 4
  %99 = call i64 @ps2_command(%struct.ps2dev* %97, i8* null, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96, %89
  %102 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %103 = call i32 @psmouse_err(%struct.psmouse* %102, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %108

104:                                              ; preds = %96
  store i32 0, i32* %2, align 4
  br label %108

105:                                              ; preds = %58, %53, %48, %43, %38, %33, %28, %23, %16, %11
  %106 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %107 = call i32 @alps_exit_command_mode(%struct.psmouse* %106)
  store i32 -1, i32* %2, align 4
  br label %108

108:                                              ; preds = %105, %104, %101, %88
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i64 @alps_enter_command_mode(%struct.psmouse*) #1

declare dso_local i64 @alps_absolute_mode_v4(%struct.psmouse*) #1

declare dso_local i32 @psmouse_err(%struct.psmouse*, i8*) #1

declare dso_local i64 @alps_command_mode_write_reg(%struct.psmouse*, i32, i32) #1

declare dso_local i32 @alps_exit_command_mode(%struct.psmouse*) #1

declare dso_local i64 @ps2_command(%struct.ps2dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
