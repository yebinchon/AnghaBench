; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen6.c_cyapa_gen6_set_power_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen6.c_cyapa_gen6_set_power_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { i64, %struct.gen6_interval_setting, %struct.TYPE_2__* }
%struct.gen6_interval_setting = type { i64, i64 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@CYAPA_STATE_GEN6_APP = common dso_local global i64 0, align 8
@UNINIT_PWR_MODE = common dso_local global i64 0, align 8
@PWR_MODE_OFF = common dso_local global i64 0, align 8
@UNINIT_SLEEP_TIME = common dso_local global i64 0, align 8
@PWR_MODE_FULL_ACTIVE = common dso_local global i64 0, align 8
@PWR_MODE_BTN_ONLY = common dso_local global i64 0, align 8
@GEN6_DISABLE_CMD_IRQ = common dso_local global i32 0, align 4
@PIP_DEEP_SLEEP_STATE_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"enter deep sleep fail: %d\0A\00", align 1
@PIP_DEEP_SLEEP_STATE_ON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"deep sleep wake fail: %d\0A\00", align 1
@GEN6_POWER_MODE_ACTIVE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"change to active fail: %d\0A\00", align 1
@GEN6_POWER_MODE_BTN_ONLY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"fail to button only mode: %d\0A\00", align 1
@GEN6_POWER_MODE_LP_MODE1 = common dso_local global i64 0, align 8
@GEN6_POWER_MODE_LP_MODE2 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [38 x i8] c"set power state to 0x%02x failed: %d\0A\00", align 1
@GEN6_ENABLE_CMD_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyapa*, i64, i64, i32)* @cyapa_gen6_set_power_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_gen6_set_power_mode(%struct.cyapa* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cyapa*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.gen6_interval_setting*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %15 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %10, align 8
  %18 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %19 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %18, i32 0, i32 1
  store %struct.gen6_interval_setting* %19, %struct.gen6_interval_setting** %11, align 8
  %20 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %21 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CYAPA_STATE_GEN6_APP, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %219

26:                                               ; preds = %4
  %27 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %28 = call i64 @PIP_DEV_GET_PWR_STATE(%struct.cyapa* %27)
  %29 = load i64, i64* @UNINIT_PWR_MODE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %33 = load i64, i64* @PWR_MODE_OFF, align 8
  %34 = call i32 @PIP_DEV_SET_PWR_STATE(%struct.cyapa* %32, i64 %33)
  br label %35

35:                                               ; preds = %31, %26
  %36 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %37 = call i64 @PIP_DEV_UNINIT_SLEEP_TIME(%struct.cyapa* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %41 = call i64 @PIP_DEV_GET_PWR_STATE(%struct.cyapa* %40)
  %42 = load i64, i64* @PWR_MODE_OFF, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %46 = load i64, i64* @UNINIT_SLEEP_TIME, align 8
  %47 = call i32 @PIP_DEV_SET_SLEEP_TIME(%struct.cyapa* %45, i64 %46)
  br label %48

48:                                               ; preds = %44, %39, %35
  %49 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %50 = call i64 @PIP_DEV_GET_PWR_STATE(%struct.cyapa* %49)
  %51 = load i64, i64* %7, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %72

53:                                               ; preds = %48
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* @PWR_MODE_OFF, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %70, label %57

57:                                               ; preds = %53
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* @PWR_MODE_FULL_ACTIVE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %70, label %61

61:                                               ; preds = %57
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* @PWR_MODE_BTN_ONLY, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %70, label %65

65:                                               ; preds = %61
  %66 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %67 = call i64 @PIP_DEV_GET_SLEEP_TIME(%struct.cyapa* %66)
  %68 = load i64, i64* %8, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %65, %61, %57, %53
  store i32 0, i32* %5, align 4
  br label %219

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %71, %48
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* @PWR_MODE_OFF, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %95

76:                                               ; preds = %72
  %77 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %78 = load i32, i32* @GEN6_DISABLE_CMD_IRQ, align 4
  %79 = call i32 @cyapa_gen6_config_dev_irq(%struct.cyapa* %77, i32 %78)
  %80 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %81 = load i32, i32* @PIP_DEEP_SLEEP_STATE_OFF, align 4
  %82 = call i32 @cyapa_gen6_deep_sleep(%struct.cyapa* %80, i32 %81)
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %76
  %86 = load %struct.device*, %struct.device** %10, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %86, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %88)
  %90 = load i32, i32* %13, align 4
  store i32 %90, i32* %5, align 4
  br label %219

91:                                               ; preds = %76
  %92 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %93 = load i64, i64* @PWR_MODE_OFF, align 8
  %94 = call i32 @PIP_DEV_SET_PWR_STATE(%struct.cyapa* %92, i64 %93)
  store i32 0, i32* %5, align 4
  br label %219

95:                                               ; preds = %72
  %96 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %97 = call i64 @PIP_DEV_GET_PWR_STATE(%struct.cyapa* %96)
  %98 = load i64, i64* @PWR_MODE_OFF, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %113

100:                                              ; preds = %95
  %101 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %102 = load i32, i32* @PIP_DEEP_SLEEP_STATE_ON, align 4
  %103 = call i32 @cyapa_gen6_deep_sleep(%struct.cyapa* %101, i32 %102)
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = load %struct.device*, %struct.device** %10, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %107, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %109)
  %111 = load i32, i32* %13, align 4
  store i32 %111, i32* %5, align 4
  br label %219

112:                                              ; preds = %100
  br label %113

113:                                              ; preds = %112, %95
  %114 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %115 = load i32, i32* @GEN6_DISABLE_CMD_IRQ, align 4
  %116 = call i32 @cyapa_gen6_config_dev_irq(%struct.cyapa* %114, i32 %115)
  %117 = load i64, i64* %7, align 8
  %118 = load i64, i64* @PWR_MODE_FULL_ACTIVE, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %138

120:                                              ; preds = %113
  %121 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %122 = load i64, i64* @GEN6_POWER_MODE_ACTIVE, align 8
  %123 = call i32 @cyapa_gen6_change_power_state(%struct.cyapa* %121, i64 %122)
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* %13, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %120
  %127 = load %struct.device*, %struct.device** %10, align 8
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %127, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %129)
  br label %214

131:                                              ; preds = %120
  %132 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %133 = load i64, i64* @PWR_MODE_FULL_ACTIVE, align 8
  %134 = call i32 @PIP_DEV_SET_PWR_STATE(%struct.cyapa* %132, i64 %133)
  %135 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %136 = load %struct.gen6_interval_setting*, %struct.gen6_interval_setting** %11, align 8
  %137 = call i32 @cyapa_gen6_get_interval_setting(%struct.cyapa* %135, %struct.gen6_interval_setting* %136)
  br label %213

138:                                              ; preds = %113
  %139 = load i64, i64* %7, align 8
  %140 = load i64, i64* @PWR_MODE_BTN_ONLY, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %157

142:                                              ; preds = %138
  %143 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %144 = load i64, i64* @GEN6_POWER_MODE_BTN_ONLY, align 8
  %145 = call i32 @cyapa_gen6_change_power_state(%struct.cyapa* %143, i64 %144)
  store i32 %145, i32* %13, align 4
  %146 = load i32, i32* %13, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %142
  %149 = load %struct.device*, %struct.device** %10, align 8
  %150 = load i32, i32* %13, align 4
  %151 = sext i32 %150 to i64
  %152 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %149, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %151)
  br label %214

153:                                              ; preds = %142
  %154 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %155 = load i64, i64* @PWR_MODE_BTN_ONLY, align 8
  %156 = call i32 @PIP_DEV_SET_PWR_STATE(%struct.cyapa* %154, i64 %155)
  br label %212

157:                                              ; preds = %138
  %158 = load %struct.gen6_interval_setting*, %struct.gen6_interval_setting** %11, align 8
  %159 = getelementptr inbounds %struct.gen6_interval_setting, %struct.gen6_interval_setting* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* %8, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %157
  %164 = load i64, i64* @GEN6_POWER_MODE_LP_MODE1, align 8
  store i64 %164, i64* %12, align 8
  br label %193

165:                                              ; preds = %157
  %166 = load %struct.gen6_interval_setting*, %struct.gen6_interval_setting** %11, align 8
  %167 = getelementptr inbounds %struct.gen6_interval_setting, %struct.gen6_interval_setting* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* %8, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %165
  %172 = load i64, i64* @GEN6_POWER_MODE_LP_MODE2, align 8
  store i64 %172, i64* %12, align 8
  br label %192

173:                                              ; preds = %165
  %174 = load %struct.gen6_interval_setting*, %struct.gen6_interval_setting** %11, align 8
  %175 = getelementptr inbounds %struct.gen6_interval_setting, %struct.gen6_interval_setting* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %173
  %179 = load i64, i64* %8, align 8
  %180 = load %struct.gen6_interval_setting*, %struct.gen6_interval_setting** %11, align 8
  %181 = getelementptr inbounds %struct.gen6_interval_setting, %struct.gen6_interval_setting* %180, i32 0, i32 0
  store i64 %179, i64* %181, align 8
  %182 = load i64, i64* @GEN6_POWER_MODE_LP_MODE1, align 8
  store i64 %182, i64* %12, align 8
  br label %188

183:                                              ; preds = %173
  %184 = load i64, i64* %8, align 8
  %185 = load %struct.gen6_interval_setting*, %struct.gen6_interval_setting** %11, align 8
  %186 = getelementptr inbounds %struct.gen6_interval_setting, %struct.gen6_interval_setting* %185, i32 0, i32 1
  store i64 %184, i64* %186, align 8
  %187 = load i64, i64* @GEN6_POWER_MODE_LP_MODE2, align 8
  store i64 %187, i64* %12, align 8
  br label %188

188:                                              ; preds = %183, %178
  %189 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %190 = load %struct.gen6_interval_setting*, %struct.gen6_interval_setting** %11, align 8
  %191 = call i32 @cyapa_gen6_set_interval_setting(%struct.cyapa* %189, %struct.gen6_interval_setting* %190)
  br label %192

192:                                              ; preds = %188, %171
  br label %193

193:                                              ; preds = %192, %163
  %194 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %195 = load i64, i64* %12, align 8
  %196 = call i32 @cyapa_gen6_change_power_state(%struct.cyapa* %194, i64 %195)
  store i32 %196, i32* %13, align 4
  %197 = load i32, i32* %13, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %193
  %200 = load %struct.device*, %struct.device** %10, align 8
  %201 = load i64, i64* %12, align 8
  %202 = load i32, i32* %13, align 4
  %203 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %200, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i64 %201, i32 %202)
  br label %214

204:                                              ; preds = %193
  %205 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %206 = load i64, i64* %8, align 8
  %207 = call i32 @PIP_DEV_SET_SLEEP_TIME(%struct.cyapa* %205, i64 %206)
  %208 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %209 = load i64, i64* %8, align 8
  %210 = call i64 @cyapa_sleep_time_to_pwr_cmd(i64 %209)
  %211 = call i32 @PIP_DEV_SET_PWR_STATE(%struct.cyapa* %208, i64 %210)
  br label %212

212:                                              ; preds = %204, %153
  br label %213

213:                                              ; preds = %212, %131
  br label %214

214:                                              ; preds = %213, %199, %148, %126
  %215 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %216 = load i32, i32* @GEN6_ENABLE_CMD_IRQ, align 4
  %217 = call i32 @cyapa_gen6_config_dev_irq(%struct.cyapa* %215, i32 %216)
  %218 = load i32, i32* %13, align 4
  store i32 %218, i32* %5, align 4
  br label %219

219:                                              ; preds = %214, %106, %91, %85, %70, %25
  %220 = load i32, i32* %5, align 4
  ret i32 %220
}

declare dso_local i64 @PIP_DEV_GET_PWR_STATE(%struct.cyapa*) #1

declare dso_local i32 @PIP_DEV_SET_PWR_STATE(%struct.cyapa*, i64) #1

declare dso_local i64 @PIP_DEV_UNINIT_SLEEP_TIME(%struct.cyapa*) #1

declare dso_local i32 @PIP_DEV_SET_SLEEP_TIME(%struct.cyapa*, i64) #1

declare dso_local i64 @PIP_DEV_GET_SLEEP_TIME(%struct.cyapa*) #1

declare dso_local i32 @cyapa_gen6_config_dev_irq(%struct.cyapa*, i32) #1

declare dso_local i32 @cyapa_gen6_deep_sleep(%struct.cyapa*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, ...) #1

declare dso_local i32 @cyapa_gen6_change_power_state(%struct.cyapa*, i64) #1

declare dso_local i32 @cyapa_gen6_get_interval_setting(%struct.cyapa*, %struct.gen6_interval_setting*) #1

declare dso_local i32 @cyapa_gen6_set_interval_setting(%struct.cyapa*, %struct.gen6_interval_setting*) #1

declare dso_local i64 @cyapa_sleep_time_to_pwr_cmd(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
