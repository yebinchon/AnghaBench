; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_sentelic.c_fsp_activate_protocol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_sentelic.c_fsp_activate_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.ps2dev, %struct.fsp_data* }
%struct.ps2dev = type { i32 }
%struct.fsp_data = type { i64, i32, i32 }

@PSMOUSE_CMD_SETRATE = common dso_local global i32 0, align 4
@PSMOUSE_CMD_GETID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Unable to enable 4 bytes packet format.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@FSP_VER_STL3888_C0 = common dso_local global i64 0, align 8
@FSP_REG_SYSCTL5 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Unable to read SYSCTL5 register.\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Unable to retrieve number of buttons.\0A\00", align 1
@FSP_BIT_EN_MSID7 = common dso_local global i32 0, align 4
@FSP_BIT_EN_MSID8 = common dso_local global i32 0, align 4
@FSP_BIT_EN_AUTO_MSID8 = common dso_local global i32 0, align 4
@FSP_BIT_EN_PKT_G0 = common dso_local global i32 0, align 4
@FSP_BIT_EN_MSID6 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Unable to set up required mode bits.\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Failed to enable OPC tag mode.\0A\00", align 1
@FSPDRV_FLAG_EN_OPC = common dso_local global i32 0, align 4
@FSP_REG_SWC1 = common dso_local global i32 0, align 4
@FSP_BIT_SWC1_EN_ABS_1F = common dso_local global i32 0, align 4
@FSP_BIT_SWC1_EN_ABS_2F = common dso_local global i32 0, align 4
@FSP_BIT_SWC1_EN_FUP_OUT = common dso_local global i32 0, align 4
@FSP_BIT_SWC1_EN_ABS_CON = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"Unable to enable absolute coordinates output.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @fsp_activate_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsp_activate_protocol(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.fsp_data*, align 8
  %5 = alloca %struct.ps2dev*, align 8
  %6 = alloca [2 x i8], align 1
  %7 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %8 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %9 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %8, i32 0, i32 1
  %10 = load %struct.fsp_data*, %struct.fsp_data** %9, align 8
  store %struct.fsp_data* %10, %struct.fsp_data** %4, align 8
  %11 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %12 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %11, i32 0, i32 0
  store %struct.ps2dev* %12, %struct.ps2dev** %5, align 8
  %13 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  store i8 -56, i8* %13, align 1
  %14 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %15 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %16 = load i32, i32* @PSMOUSE_CMD_SETRATE, align 4
  %17 = call i32 @ps2_command(%struct.ps2dev* %14, i8* %15, i32 %16)
  %18 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  store i8 -56, i8* %18, align 1
  %19 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %20 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %21 = load i32, i32* @PSMOUSE_CMD_SETRATE, align 4
  %22 = call i32 @ps2_command(%struct.ps2dev* %19, i8* %20, i32 %21)
  %23 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  store i8 80, i8* %23, align 1
  %24 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %25 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %26 = load i32, i32* @PSMOUSE_CMD_SETRATE, align 4
  %27 = call i32 @ps2_command(%struct.ps2dev* %24, i8* %25, i32 %26)
  %28 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %29 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %30 = load i32, i32* @PSMOUSE_CMD_GETID, align 4
  %31 = call i32 @ps2_command(%struct.ps2dev* %28, i8* %29, i32 %30)
  %32 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp ne i32 %34, 4
  br i1 %35, label %36, label %41

36:                                               ; preds = %1
  %37 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %38 = call i32 @psmouse_err(%struct.psmouse* %37, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %136

41:                                               ; preds = %1
  %42 = load %struct.fsp_data*, %struct.fsp_data** %4, align 8
  %43 = getelementptr inbounds %struct.fsp_data, %struct.fsp_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @FSP_VER_STL3888_C0, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %117

47:                                               ; preds = %41
  %48 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %49 = load i32, i32* @FSP_REG_SYSCTL5, align 4
  %50 = call i64 @fsp_reg_read(%struct.psmouse* %48, i32 %49, i32* %7)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %54 = call i32 @psmouse_err(%struct.psmouse* %53, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %136

57:                                               ; preds = %47
  %58 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %59 = load %struct.fsp_data*, %struct.fsp_data** %4, align 8
  %60 = getelementptr inbounds %struct.fsp_data, %struct.fsp_data* %59, i32 0, i32 1
  %61 = call i64 @fsp_get_buttons(%struct.psmouse* %58, i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %65 = call i32 @psmouse_err(%struct.psmouse* %64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* @EIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %136

68:                                               ; preds = %57
  %69 = load i32, i32* @FSP_BIT_EN_MSID7, align 4
  %70 = load i32, i32* @FSP_BIT_EN_MSID8, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @FSP_BIT_EN_AUTO_MSID8, align 4
  %73 = or i32 %71, %72
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %7, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* @FSP_BIT_EN_PKT_G0, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %7, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %7, align 4
  %81 = load %struct.fsp_data*, %struct.fsp_data** %4, align 8
  %82 = getelementptr inbounds %struct.fsp_data, %struct.fsp_data* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, 6
  br i1 %84, label %85, label %89

85:                                               ; preds = %68
  %86 = load i32, i32* @FSP_BIT_EN_MSID6, align 4
  %87 = load i32, i32* %7, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %85, %68
  %90 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %91 = load i32, i32* @FSP_REG_SYSCTL5, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i64 @fsp_reg_write(%struct.psmouse* %90, i32 %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %89
  %96 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %97 = call i32 @psmouse_err(%struct.psmouse* %96, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %98 = load i32, i32* @EIO, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %136

100:                                              ; preds = %89
  %101 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %102 = call i64 @fsp_opc_tag_enable(%struct.psmouse* %101, i32 1)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %106 = call i32 @psmouse_warn(%struct.psmouse* %105, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %107

107:                                              ; preds = %104, %100
  %108 = load i32, i32* @FSPDRV_FLAG_EN_OPC, align 4
  %109 = load %struct.fsp_data*, %struct.fsp_data** %4, align 8
  %110 = getelementptr inbounds %struct.fsp_data, %struct.fsp_data* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  %113 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %114 = call i32 @fsp_onpad_vscr(%struct.psmouse* %113, i32 1)
  %115 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %116 = call i32 @fsp_onpad_hscr(%struct.psmouse* %115, i32 1)
  br label %135

117:                                              ; preds = %41
  %118 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %119 = load i32, i32* @FSP_REG_SWC1, align 4
  %120 = load i32, i32* @FSP_BIT_SWC1_EN_ABS_1F, align 4
  %121 = load i32, i32* @FSP_BIT_SWC1_EN_ABS_2F, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @FSP_BIT_SWC1_EN_FUP_OUT, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @FSP_BIT_SWC1_EN_ABS_CON, align 4
  %126 = or i32 %124, %125
  %127 = call i64 @fsp_reg_write(%struct.psmouse* %118, i32 %119, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %117
  %130 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %131 = call i32 @psmouse_err(%struct.psmouse* %130, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  %132 = load i32, i32* @EIO, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %2, align 4
  br label %136

134:                                              ; preds = %117
  br label %135

135:                                              ; preds = %134, %107
  store i32 0, i32* %2, align 4
  br label %136

136:                                              ; preds = %135, %129, %95, %63, %52, %36
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i32 @ps2_command(%struct.ps2dev*, i8*, i32) #1

declare dso_local i32 @psmouse_err(%struct.psmouse*, i8*) #1

declare dso_local i64 @fsp_reg_read(%struct.psmouse*, i32, i32*) #1

declare dso_local i64 @fsp_get_buttons(%struct.psmouse*, i32*) #1

declare dso_local i64 @fsp_reg_write(%struct.psmouse*, i32, i32) #1

declare dso_local i64 @fsp_opc_tag_enable(%struct.psmouse*, i32) #1

declare dso_local i32 @psmouse_warn(%struct.psmouse*, i8*) #1

declare dso_local i32 @fsp_onpad_vscr(%struct.psmouse*, i32) #1

declare dso_local i32 @fsp_onpad_hscr(%struct.psmouse*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
