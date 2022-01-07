; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_hw_init_v3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_hw_init_v3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.ps2dev, %struct.alps_data* }
%struct.ps2dev = type { i32 }
%struct.alps_data = type { i32 }

@ALPS_DUALPOINT = common dso_local global i32 0, align 4
@ALPS_REG_BASE_PINNACLE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to enter absolute mode\0A\00", align 1
@PSMOUSE_CMD_SETRATE = common dso_local global i32 0, align 4
@PSMOUSE_CMD_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to enable data reporting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @alps_hw_init_v3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_hw_init_v3(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.alps_data*, align 8
  %5 = alloca %struct.ps2dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4 x i8], align 1
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %8 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %9 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %8, i32 0, i32 1
  %10 = load %struct.alps_data*, %struct.alps_data** %9, align 8
  store %struct.alps_data* %10, %struct.alps_data** %4, align 8
  %11 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %12 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %11, i32 0, i32 0
  store %struct.ps2dev* %12, %struct.ps2dev** %5, align 8
  %13 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %14 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ALPS_DUALPOINT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %21 = load i32, i32* @ALPS_REG_BASE_PINNACLE, align 4
  %22 = call i32 @alps_setup_trackstick_v3(%struct.psmouse* %20, i32 %21)
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %122

27:                                               ; preds = %19, %1
  %28 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %29 = call i64 @alps_enter_command_mode(%struct.psmouse* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %33 = call i64 @alps_absolute_mode_v3(%struct.psmouse* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31, %27
  %36 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %37 = call i32 @psmouse_err(%struct.psmouse* %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %122

38:                                               ; preds = %31
  %39 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %40 = call i32 @alps_command_mode_read_reg(%struct.psmouse* %39, i32 6)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %122

44:                                               ; preds = %38
  %45 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = or i32 %46, 1
  %48 = call i64 @__alps_command_mode_write_reg(%struct.psmouse* %45, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %122

51:                                               ; preds = %44
  %52 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %53 = call i32 @alps_command_mode_read_reg(%struct.psmouse* %52, i32 7)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %122

57:                                               ; preds = %51
  %58 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, 1
  %61 = call i64 @__alps_command_mode_write_reg(%struct.psmouse* %58, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %122

64:                                               ; preds = %57
  %65 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %66 = call i32 @alps_command_mode_read_reg(%struct.psmouse* %65, i32 324)
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %122

69:                                               ; preds = %64
  %70 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %71 = call i64 @__alps_command_mode_write_reg(%struct.psmouse* %70, i32 4)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %122

74:                                               ; preds = %69
  %75 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %76 = call i32 @alps_command_mode_read_reg(%struct.psmouse* %75, i32 345)
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %122

79:                                               ; preds = %74
  %80 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %81 = call i64 @__alps_command_mode_write_reg(%struct.psmouse* %80, i32 3)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %122

84:                                               ; preds = %79
  %85 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %86 = call i32 @alps_command_mode_read_reg(%struct.psmouse* %85, i32 355)
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %122

89:                                               ; preds = %84
  %90 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %91 = call i64 @alps_command_mode_write_reg(%struct.psmouse* %90, i32 355, i32 3)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  br label %122

94:                                               ; preds = %89
  %95 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %96 = call i32 @alps_command_mode_read_reg(%struct.psmouse* %95, i32 354)
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  br label %122

99:                                               ; preds = %94
  %100 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %101 = call i64 @alps_command_mode_write_reg(%struct.psmouse* %100, i32 354, i32 4)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  br label %122

104:                                              ; preds = %99
  %105 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %106 = call i32 @alps_exit_command_mode(%struct.psmouse* %105)
  %107 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  store i8 100, i8* %107, align 1
  %108 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %109 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %110 = load i32, i32* @PSMOUSE_CMD_SETRATE, align 4
  %111 = call i64 @ps2_command(%struct.ps2dev* %108, i8* %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %104
  %114 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %115 = load i32, i32* @PSMOUSE_CMD_ENABLE, align 4
  %116 = call i64 @ps2_command(%struct.ps2dev* %114, i8* null, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %113, %104
  %119 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %120 = call i32 @psmouse_err(%struct.psmouse* %119, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %125

121:                                              ; preds = %113
  store i32 0, i32* %2, align 4
  br label %125

122:                                              ; preds = %103, %98, %93, %88, %83, %78, %73, %68, %63, %56, %50, %43, %35, %26
  %123 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %124 = call i32 @alps_exit_command_mode(%struct.psmouse* %123)
  store i32 -1, i32* %2, align 4
  br label %125

125:                                              ; preds = %122, %121, %118
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i32 @alps_setup_trackstick_v3(%struct.psmouse*, i32) #1

declare dso_local i64 @alps_enter_command_mode(%struct.psmouse*) #1

declare dso_local i64 @alps_absolute_mode_v3(%struct.psmouse*) #1

declare dso_local i32 @psmouse_err(%struct.psmouse*, i8*) #1

declare dso_local i32 @alps_command_mode_read_reg(%struct.psmouse*, i32) #1

declare dso_local i64 @__alps_command_mode_write_reg(%struct.psmouse*, i32) #1

declare dso_local i64 @alps_command_mode_write_reg(%struct.psmouse*, i32, i32) #1

declare dso_local i32 @alps_exit_command_mode(%struct.psmouse*) #1

declare dso_local i64 @ps2_command(%struct.ps2dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
