; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_gen5_set_power_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_gen5_set_power_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@CYAPA_STATE_GEN5_APP = common dso_local global i64 0, align 8
@UNINIT_PWR_MODE = common dso_local global i64 0, align 8
@PWR_MODE_OFF = common dso_local global i64 0, align 8
@GEN5_PARAMETER_LP_INTRVL_ID = common dso_local global i32 0, align 4
@UNINIT_SLEEP_TIME = common dso_local global i64 0, align 8
@PWR_MODE_FULL_ACTIVE = common dso_local global i64 0, align 8
@PWR_MODE_BTN_ONLY = common dso_local global i64 0, align 8
@PIP_DEEP_SLEEP_STATE_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"enter deep sleep fail: %d\0A\00", align 1
@PIP_DEEP_SLEEP_STATE_ON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"deep sleep wake fail: %d\0A\00", align 1
@GEN5_POWER_STATE_ACTIVE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"change to active fail: %d\0A\00", align 1
@GEN5_POWER_STATE_BTN_ONLY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"fail to button only mode: %d\0A\00", align 1
@GEN5_POWER_READY_MAX_INTRVL_TIME = common dso_local global i64 0, align 8
@GEN5_POWER_STATE_READY = common dso_local global i64 0, align 8
@GEN5_POWER_STATE_IDLE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [38 x i8] c"set power state to 0x%02x failed: %d\0A\00", align 1
@CYAPA_PM_SUSPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyapa*, i64, i64, i32)* @cyapa_gen5_set_power_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_gen5_set_power_mode(%struct.cyapa* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cyapa*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %14 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %10, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %18 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CYAPA_STATE_GEN5_APP, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %211

23:                                               ; preds = %4
  %24 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @cyapa_set_pip_pm_state(%struct.cyapa* %24, i32 %25)
  %27 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %28 = call i64 @PIP_DEV_GET_PWR_STATE(%struct.cyapa* %27)
  %29 = load i64, i64* @UNINIT_PWR_MODE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %33 = load i64, i64* @PWR_MODE_OFF, align 8
  %34 = call i32 @PIP_DEV_SET_PWR_STATE(%struct.cyapa* %32, i64 %33)
  br label %35

35:                                               ; preds = %31, %23
  %36 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %37 = call i64 @PIP_DEV_UNINIT_SLEEP_TIME(%struct.cyapa* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %35
  %40 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %41 = call i64 @PIP_DEV_GET_PWR_STATE(%struct.cyapa* %40)
  %42 = load i64, i64* @PWR_MODE_OFF, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %46 = load i32, i32* @GEN5_PARAMETER_LP_INTRVL_ID, align 4
  %47 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %48 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %47, i32 0, i32 1
  %49 = call i64 @cyapa_gen5_get_interval_time(%struct.cyapa* %45, i32 %46, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %53 = load i64, i64* @UNINIT_SLEEP_TIME, align 8
  %54 = call i32 @PIP_DEV_SET_SLEEP_TIME(%struct.cyapa* %52, i64 %53)
  br label %55

55:                                               ; preds = %51, %44
  br label %56

56:                                               ; preds = %55, %39, %35
  %57 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %58 = call i64 @PIP_DEV_GET_PWR_STATE(%struct.cyapa* %57)
  %59 = load i64, i64* %7, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %80

61:                                               ; preds = %56
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* @PWR_MODE_OFF, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %78, label %65

65:                                               ; preds = %61
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* @PWR_MODE_FULL_ACTIVE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %78, label %69

69:                                               ; preds = %65
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* @PWR_MODE_BTN_ONLY, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %78, label %73

73:                                               ; preds = %69
  %74 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %75 = call i64 @PIP_DEV_GET_SLEEP_TIME(%struct.cyapa* %74)
  %76 = load i64, i64* %8, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %73, %69, %65, %61
  br label %207

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %79, %56
  %81 = load i64, i64* %7, align 8
  %82 = load i64, i64* @PWR_MODE_OFF, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %99

84:                                               ; preds = %80
  %85 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %86 = load i32, i32* @PIP_DEEP_SLEEP_STATE_OFF, align 4
  %87 = call i32 @cyapa_pip_deep_sleep(%struct.cyapa* %85, i32 %86)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load %struct.device*, %struct.device** %10, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %91, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %93)
  br label %207

95:                                               ; preds = %84
  %96 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %97 = load i64, i64* @PWR_MODE_OFF, align 8
  %98 = call i32 @PIP_DEV_SET_PWR_STATE(%struct.cyapa* %96, i64 %97)
  br label %207

99:                                               ; preds = %80
  %100 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %101 = call i64 @PIP_DEV_GET_PWR_STATE(%struct.cyapa* %100)
  %102 = load i64, i64* @PWR_MODE_OFF, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %116

104:                                              ; preds = %99
  %105 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %106 = load i32, i32* @PIP_DEEP_SLEEP_STATE_ON, align 4
  %107 = call i32 @cyapa_pip_deep_sleep(%struct.cyapa* %105, i32 %106)
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %104
  %111 = load %struct.device*, %struct.device** %10, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %111, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %113)
  br label %207

115:                                              ; preds = %104
  br label %116

116:                                              ; preds = %115, %99
  %117 = load i64, i64* %7, align 8
  %118 = load i64, i64* @PWR_MODE_FULL_ACTIVE, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %135

120:                                              ; preds = %116
  %121 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %122 = load i64, i64* @GEN5_POWER_STATE_ACTIVE, align 8
  %123 = call i32 @cyapa_gen5_change_power_state(%struct.cyapa* %121, i64 %122)
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %12, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %120
  %127 = load %struct.device*, %struct.device** %10, align 8
  %128 = load i32, i32* %12, align 4
  %129 = sext i32 %128 to i64
  %130 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %127, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %129)
  br label %207

131:                                              ; preds = %120
  %132 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %133 = load i64, i64* @PWR_MODE_FULL_ACTIVE, align 8
  %134 = call i32 @PIP_DEV_SET_PWR_STATE(%struct.cyapa* %132, i64 %133)
  br label %206

135:                                              ; preds = %116
  %136 = load i64, i64* %7, align 8
  %137 = load i64, i64* @PWR_MODE_BTN_ONLY, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %154

139:                                              ; preds = %135
  %140 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %141 = load i64, i64* @GEN5_POWER_STATE_BTN_ONLY, align 8
  %142 = call i32 @cyapa_gen5_change_power_state(%struct.cyapa* %140, i64 %141)
  store i32 %142, i32* %12, align 4
  %143 = load i32, i32* %12, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %139
  %146 = load %struct.device*, %struct.device** %10, align 8
  %147 = load i32, i32* %12, align 4
  %148 = sext i32 %147 to i64
  %149 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %146, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %148)
  br label %207

150:                                              ; preds = %139
  %151 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %152 = load i64, i64* @PWR_MODE_BTN_ONLY, align 8
  %153 = call i32 @PIP_DEV_SET_PWR_STATE(%struct.cyapa* %151, i64 %152)
  br label %205

154:                                              ; preds = %135
  %155 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %156 = call i64 @PIP_DEV_UNINIT_SLEEP_TIME(%struct.cyapa* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %154
  %159 = load i64, i64* %8, align 8
  %160 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %161 = call i64 @PIP_DEV_GET_SLEEP_TIME(%struct.cyapa* %160)
  %162 = icmp ne i64 %159, %161
  br i1 %162, label %163, label %174

163:                                              ; preds = %158, %154
  %164 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %165 = load i32, i32* @GEN5_PARAMETER_LP_INTRVL_ID, align 4
  %166 = load i64, i64* %8, align 8
  %167 = call i64 @cyapa_gen5_set_interval_time(%struct.cyapa* %164, i32 %165, i64 %166)
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %163
  %170 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %171 = load i64, i64* %8, align 8
  %172 = call i32 @PIP_DEV_SET_SLEEP_TIME(%struct.cyapa* %170, i64 %171)
  br label %173

173:                                              ; preds = %169, %163
  br label %174

174:                                              ; preds = %173, %158
  %175 = load i64, i64* %8, align 8
  %176 = load i64, i64* @GEN5_POWER_READY_MAX_INTRVL_TIME, align 8
  %177 = icmp sle i64 %175, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %174
  %179 = load i64, i64* @GEN5_POWER_STATE_READY, align 8
  store i64 %179, i64* %11, align 8
  br label %182

180:                                              ; preds = %174
  %181 = load i64, i64* @GEN5_POWER_STATE_IDLE, align 8
  store i64 %181, i64* %11, align 8
  br label %182

182:                                              ; preds = %180, %178
  %183 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %184 = load i64, i64* %11, align 8
  %185 = call i32 @cyapa_gen5_change_power_state(%struct.cyapa* %183, i64 %184)
  store i32 %185, i32* %12, align 4
  %186 = load i32, i32* %12, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %182
  %189 = load %struct.device*, %struct.device** %10, align 8
  %190 = load i64, i64* %11, align 8
  %191 = load i32, i32* %12, align 4
  %192 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %189, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i64 %190, i32 %191)
  br label %207

193:                                              ; preds = %182
  %194 = load i32, i32* %9, align 4
  %195 = load i32, i32* @CYAPA_PM_SUSPEND, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %200

197:                                              ; preds = %193
  %198 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %199 = call i32 @cyapa_gen5_disable_pip_report(%struct.cyapa* %198)
  br label %200

200:                                              ; preds = %197, %193
  %201 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %202 = load i64, i64* %8, align 8
  %203 = call i64 @cyapa_sleep_time_to_pwr_cmd(i64 %202)
  %204 = call i32 @PIP_DEV_SET_PWR_STATE(%struct.cyapa* %201, i64 %203)
  br label %205

205:                                              ; preds = %200, %150
  br label %206

206:                                              ; preds = %205, %131
  br label %207

207:                                              ; preds = %206, %188, %145, %126, %110, %95, %90, %78
  %208 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %209 = call i32 @cyapa_reset_pip_pm_state(%struct.cyapa* %208)
  %210 = load i32, i32* %12, align 4
  store i32 %210, i32* %5, align 4
  br label %211

211:                                              ; preds = %207, %22
  %212 = load i32, i32* %5, align 4
  ret i32 %212
}

declare dso_local i32 @cyapa_set_pip_pm_state(%struct.cyapa*, i32) #1

declare dso_local i64 @PIP_DEV_GET_PWR_STATE(%struct.cyapa*) #1

declare dso_local i32 @PIP_DEV_SET_PWR_STATE(%struct.cyapa*, i64) #1

declare dso_local i64 @PIP_DEV_UNINIT_SLEEP_TIME(%struct.cyapa*) #1

declare dso_local i64 @cyapa_gen5_get_interval_time(%struct.cyapa*, i32, i32*) #1

declare dso_local i32 @PIP_DEV_SET_SLEEP_TIME(%struct.cyapa*, i64) #1

declare dso_local i64 @PIP_DEV_GET_SLEEP_TIME(%struct.cyapa*) #1

declare dso_local i32 @cyapa_pip_deep_sleep(%struct.cyapa*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, ...) #1

declare dso_local i32 @cyapa_gen5_change_power_state(%struct.cyapa*, i64) #1

declare dso_local i64 @cyapa_gen5_set_interval_time(%struct.cyapa*, i32, i64) #1

declare dso_local i32 @cyapa_gen5_disable_pip_report(%struct.cyapa*) #1

declare dso_local i64 @cyapa_sleep_time_to_pwr_cmd(i64) #1

declare dso_local i32 @cyapa_reset_pip_pm_state(%struct.cyapa*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
