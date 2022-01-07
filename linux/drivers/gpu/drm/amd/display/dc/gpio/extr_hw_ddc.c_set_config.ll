; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_hw_ddc.c_set_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_hw_ddc.c_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.hw_gpio_pin = type { i32 }
%struct.gpio_config_data = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.hw_ddc = type { %struct.TYPE_8__*, %struct.hw_gpio }
%struct.TYPE_8__ = type { i32, i32 }
%struct.hw_gpio = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@GPIO_RESULT_NULL_HANDLE = common dso_local global i32 0, align 4
@gpio = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@DC_GPIO_DDC1DATA_PD_EN = common dso_local global i32 0, align 4
@DC_GPIO_DDC1CLK_PD_EN = common dso_local global i32 0, align 4
@AUX_PAD1_MODE = common dso_local global i32 0, align 4
@GPIO_DDC_LINE_VIP_PAD = common dso_local global i32 0, align 4
@GPIO_CONFIG_TYPE_I2C_AUX_DUAL_MODE = common dso_local global i32 0, align 4
@DC_GPIO_SDA_PD_DIS = common dso_local global i32 0, align 4
@DC_GPIO_SCL_PD_DIS = common dso_local global i32 0, align 4
@GPIO_RESULT_OK = common dso_local global i32 0, align 4
@GPIO_DDC_LINE_DDC1 = common dso_local global i32 0, align 4
@GPIO_DDC_LINE_DDC_VGA = common dso_local global i32 0, align 4
@ddc_setup = common dso_local global i32 0, align 4
@DC_I2C_DDC1_ENABLE = common dso_local global i32 0, align 4
@DC_I2C_DDC1_EDID_DETECT_ENABLE = common dso_local global i32 0, align 4
@DC_I2C_DDC1_EDID_DETECT_MODE = common dso_local global i32 0, align 4
@GPIO_RESULT_NON_SPECIFIC_ERROR = common dso_local global i32 0, align 4
@AUX_PAD_RXSEL = common dso_local global i32 0, align 4
@DDC_PAD_I2CMODE = common dso_local global i32 0, align 4
@dc_gpio_aux_ctrl_5 = common dso_local global i32 0, align 4
@phy_aux_cntl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw_gpio_pin*, %struct.gpio_config_data*)* @set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_config(%struct.hw_gpio_pin* %0, %struct.gpio_config_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hw_gpio_pin*, align 8
  %5 = alloca %struct.gpio_config_data*, align 8
  %6 = alloca %struct.hw_ddc*, align 8
  %7 = alloca %struct.hw_gpio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hw_gpio_pin* %0, %struct.hw_gpio_pin** %4, align 8
  store %struct.gpio_config_data* %1, %struct.gpio_config_data** %5, align 8
  %15 = load %struct.hw_gpio_pin*, %struct.hw_gpio_pin** %4, align 8
  %16 = call %struct.hw_ddc* @HW_DDC_FROM_BASE(%struct.hw_gpio_pin* %15)
  store %struct.hw_ddc* %16, %struct.hw_ddc** %6, align 8
  store %struct.hw_gpio* null, %struct.hw_gpio** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = load %struct.hw_ddc*, %struct.hw_ddc** %6, align 8
  %18 = getelementptr inbounds %struct.hw_ddc, %struct.hw_ddc* %17, i32 0, i32 1
  store %struct.hw_gpio* %18, %struct.hw_gpio** %7, align 8
  %19 = load %struct.hw_gpio*, %struct.hw_gpio** %7, align 8
  %20 = icmp eq %struct.hw_gpio* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = call i32 @ASSERT_CRITICAL(i32 0)
  %23 = load i32, i32* @GPIO_RESULT_NULL_HANDLE, align 4
  store i32 %23, i32* %3, align 4
  br label %203

24:                                               ; preds = %2
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gpio, i32 0, i32 0), align 4
  %26 = load i32, i32* @DC_GPIO_DDC1DATA_PD_EN, align 4
  %27 = load i32, i32* @DC_GPIO_DDC1CLK_PD_EN, align 4
  %28 = load i32, i32* @AUX_PAD1_MODE, align 4
  %29 = call i32 @REG_GET_3(i32 %25, i32 %26, i32* %9, i32 %27, i32* %10, i32 %28, i32* %11)
  store i32 %29, i32* %8, align 4
  %30 = load %struct.gpio_config_data*, %struct.gpio_config_data** %5, align 8
  %31 = getelementptr inbounds %struct.gpio_config_data, %struct.gpio_config_data* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %200 [
    i32 130, label %35
    i32 131, label %125
    i32 129, label %135
    i32 128, label %157
    i32 132, label %179
  ]

35:                                               ; preds = %24
  %36 = load %struct.hw_gpio*, %struct.hw_gpio** %7, align 8
  %37 = getelementptr inbounds %struct.hw_gpio, %struct.hw_gpio* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @GPIO_DDC_LINE_VIP_PAD, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %63

42:                                               ; preds = %35
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %62, label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gpio, i32 0, i32 0), align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @DC_GPIO_DDC1DATA_PD_EN, align 4
  %52 = load i32, i32* @DC_GPIO_DDC1CLK_PD_EN, align 4
  %53 = call i32 @REG_SET_2(i32 %49, i32 %50, i32 %51, i32 1, i32 %52, i32 1)
  %54 = load %struct.gpio_config_data*, %struct.gpio_config_data** %5, align 8
  %55 = getelementptr inbounds %struct.gpio_config_data, %struct.gpio_config_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @GPIO_CONFIG_TYPE_I2C_AUX_DUAL_MODE, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = call i32 @msleep(i32 3)
  br label %61

61:                                               ; preds = %59, %48
  br label %62

62:                                               ; preds = %61, %45
  br label %100

63:                                               ; preds = %35
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gpio, i32 0, i32 0), align 4
  %65 = load i32, i32* @DC_GPIO_SDA_PD_DIS, align 4
  %66 = load i32, i32* @DC_GPIO_SCL_PD_DIS, align 4
  %67 = call i32 @REG_GET_2(i32 %64, i32 %65, i32* %13, i32 %66, i32* %14)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %63
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gpio, i32 0, i32 0), align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @DC_GPIO_SDA_PD_DIS, align 4
  %74 = call i32 @REG_SET(i32 %71, i32 %72, i32 %73, i32 0)
  %75 = load %struct.gpio_config_data*, %struct.gpio_config_data** %5, align 8
  %76 = getelementptr inbounds %struct.gpio_config_data, %struct.gpio_config_data* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @GPIO_CONFIG_TYPE_I2C_AUX_DUAL_MODE, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %70
  %81 = call i32 @msleep(i32 3)
  br label %82

82:                                               ; preds = %80, %70
  br label %83

83:                                               ; preds = %82, %63
  %84 = load i32, i32* %14, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %99, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gpio, i32 0, i32 0), align 4
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @DC_GPIO_SCL_PD_DIS, align 4
  %90 = call i32 @REG_SET(i32 %87, i32 %88, i32 %89, i32 1)
  %91 = load %struct.gpio_config_data*, %struct.gpio_config_data** %5, align 8
  %92 = getelementptr inbounds %struct.gpio_config_data, %struct.gpio_config_data* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @GPIO_CONFIG_TYPE_I2C_AUX_DUAL_MODE, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %86
  %97 = call i32 @msleep(i32 3)
  br label %98

98:                                               ; preds = %96, %86
  br label %99

99:                                               ; preds = %98, %83
  br label %100

100:                                              ; preds = %99, %62
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %123

103:                                              ; preds = %100
  %104 = load %struct.gpio_config_data*, %struct.gpio_config_data** %5, align 8
  %105 = getelementptr inbounds %struct.gpio_config_data, %struct.gpio_config_data* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %117, label %110

110:                                              ; preds = %103
  %111 = load %struct.gpio_config_data*, %struct.gpio_config_data** %5, align 8
  %112 = getelementptr inbounds %struct.gpio_config_data, %struct.gpio_config_data* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %110, %103
  %118 = call i32 @msleep(i32 2)
  br label %119

119:                                              ; preds = %117, %110
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gpio, i32 0, i32 0), align 4
  %121 = load i32, i32* @AUX_PAD1_MODE, align 4
  %122 = call i32 @REG_UPDATE(i32 %120, i32 %121, i32 0)
  br label %123

123:                                              ; preds = %119, %100
  %124 = load i32, i32* @GPIO_RESULT_OK, align 4
  store i32 %124, i32* %3, align 4
  br label %203

125:                                              ; preds = %24
  %126 = load i32, i32* %11, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %125
  %129 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gpio, i32 0, i32 0), align 4
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* @AUX_PAD1_MODE, align 4
  %132 = call i32 @REG_SET(i32 %129, i32 %130, i32 %131, i32 1)
  br label %133

133:                                              ; preds = %128, %125
  %134 = load i32, i32* @GPIO_RESULT_OK, align 4
  store i32 %134, i32* %3, align 4
  br label %203

135:                                              ; preds = %24
  %136 = load %struct.hw_gpio*, %struct.hw_gpio** %7, align 8
  %137 = getelementptr inbounds %struct.hw_gpio, %struct.hw_gpio* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @GPIO_DDC_LINE_DDC1, align 4
  %141 = icmp sge i32 %139, %140
  br i1 %141, label %142, label %156

142:                                              ; preds = %135
  %143 = load %struct.hw_gpio*, %struct.hw_gpio** %7, align 8
  %144 = getelementptr inbounds %struct.hw_gpio, %struct.hw_gpio* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @GPIO_DDC_LINE_DDC_VGA, align 4
  %148 = icmp sle i32 %146, %147
  br i1 %148, label %149, label %156

149:                                              ; preds = %142
  %150 = load i32, i32* @ddc_setup, align 4
  %151 = load i32, i32* @DC_I2C_DDC1_ENABLE, align 4
  %152 = load i32, i32* @DC_I2C_DDC1_EDID_DETECT_ENABLE, align 4
  %153 = load i32, i32* @DC_I2C_DDC1_EDID_DETECT_MODE, align 4
  %154 = call i32 @REG_UPDATE_3(i32 %150, i32 %151, i32 1, i32 %152, i32 1, i32 %153, i32 0)
  %155 = load i32, i32* @GPIO_RESULT_OK, align 4
  store i32 %155, i32* %3, align 4
  br label %203

156:                                              ; preds = %142, %135
  br label %200

157:                                              ; preds = %24
  %158 = load %struct.hw_gpio*, %struct.hw_gpio** %7, align 8
  %159 = getelementptr inbounds %struct.hw_gpio, %struct.hw_gpio* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @GPIO_DDC_LINE_DDC1, align 4
  %163 = icmp sge i32 %161, %162
  br i1 %163, label %164, label %178

164:                                              ; preds = %157
  %165 = load %struct.hw_gpio*, %struct.hw_gpio** %7, align 8
  %166 = getelementptr inbounds %struct.hw_gpio, %struct.hw_gpio* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @GPIO_DDC_LINE_DDC_VGA, align 4
  %170 = icmp sle i32 %168, %169
  br i1 %170, label %171, label %178

171:                                              ; preds = %164
  %172 = load i32, i32* @ddc_setup, align 4
  %173 = load i32, i32* @DC_I2C_DDC1_ENABLE, align 4
  %174 = load i32, i32* @DC_I2C_DDC1_EDID_DETECT_ENABLE, align 4
  %175 = load i32, i32* @DC_I2C_DDC1_EDID_DETECT_MODE, align 4
  %176 = call i32 @REG_UPDATE_3(i32 %172, i32 %173, i32 1, i32 %174, i32 1, i32 %175, i32 1)
  %177 = load i32, i32* @GPIO_RESULT_OK, align 4
  store i32 %177, i32* %3, align 4
  br label %203

178:                                              ; preds = %164, %157
  br label %200

179:                                              ; preds = %24
  %180 = load %struct.hw_gpio*, %struct.hw_gpio** %7, align 8
  %181 = getelementptr inbounds %struct.hw_gpio, %struct.hw_gpio* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @GPIO_DDC_LINE_DDC1, align 4
  %185 = icmp sge i32 %183, %184
  br i1 %185, label %186, label %199

186:                                              ; preds = %179
  %187 = load %struct.hw_gpio*, %struct.hw_gpio** %7, align 8
  %188 = getelementptr inbounds %struct.hw_gpio, %struct.hw_gpio* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @GPIO_DDC_LINE_DDC_VGA, align 4
  %192 = icmp sle i32 %190, %191
  br i1 %192, label %193, label %199

193:                                              ; preds = %186
  %194 = load i32, i32* @ddc_setup, align 4
  %195 = load i32, i32* @DC_I2C_DDC1_ENABLE, align 4
  %196 = load i32, i32* @DC_I2C_DDC1_EDID_DETECT_ENABLE, align 4
  %197 = call i32 @REG_UPDATE_2(i32 %194, i32 %195, i32 0, i32 %196, i32 0)
  %198 = load i32, i32* @GPIO_RESULT_OK, align 4
  store i32 %198, i32* %3, align 4
  br label %203

199:                                              ; preds = %186, %179
  br label %200

200:                                              ; preds = %24, %199, %178, %156
  %201 = call i32 (...) @BREAK_TO_DEBUGGER()
  %202 = load i32, i32* @GPIO_RESULT_NON_SPECIFIC_ERROR, align 4
  store i32 %202, i32* %3, align 4
  br label %203

203:                                              ; preds = %200, %193, %171, %149, %133, %123, %21
  %204 = load i32, i32* %3, align 4
  ret i32 %204
}

declare dso_local %struct.hw_ddc* @HW_DDC_FROM_BASE(%struct.hw_gpio_pin*) #1

declare dso_local i32 @ASSERT_CRITICAL(i32) #1

declare dso_local i32 @REG_GET_3(i32, i32, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @REG_SET_2(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @REG_GET_2(i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE_3(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
