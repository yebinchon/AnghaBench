; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max77693.c_max77693_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max77693.c_max77693_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77693_led_device = type { i64, %struct.regmap* }
%struct.regmap = type { i32 }
%struct.max77693_led_config_data = type { i64, i32, i32, i64* }

@FLED1 = common dso_local global i64 0, align 8
@FLED2 = common dso_local global i64 0, align 8
@TORCH_TMR_NO_TIMER = common dso_local global i32 0, align 4
@MAX77693_LED_TRIG_TYPE_LEVEL = common dso_local global i32 0, align 4
@MAX77693_LED_REG_ITORCHTIMER = common dso_local global i32 0, align 4
@MAX_FLASH1_MAX_FL_EN = common dso_local global i32 0, align 4
@MAX77693_LED_REG_MAX_FLASH1 = common dso_local global i32 0, align 4
@MAX77693_LED_REG_MAX_FLASH2 = common dso_local global i32 0, align 4
@MAX77693_LED_BOOST_FIXED = common dso_local global i32 0, align 4
@FLASH_BOOST_FIXED = common dso_local global i32 0, align 4
@FLASH_BOOST_LEDNUM_2 = common dso_local global i32 0, align 4
@MAX77693_LED_REG_VOUT_CNTL = common dso_local global i32 0, align 4
@MAX77693_LED_REG_VOUT_FLASH1 = common dso_local global i32 0, align 4
@MODE_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77693_led_device*, %struct.max77693_led_config_data*)* @max77693_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77693_setup(%struct.max77693_led_device* %0, %struct.max77693_led_config_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.max77693_led_device*, align 8
  %5 = alloca %struct.max77693_led_config_data*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x i64], align 16
  %12 = alloca i32, align 4
  store %struct.max77693_led_device* %0, %struct.max77693_led_device** %4, align 8
  store %struct.max77693_led_config_data* %1, %struct.max77693_led_config_data** %5, align 8
  %13 = load %struct.max77693_led_device*, %struct.max77693_led_device** %4, align 8
  %14 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %13, i32 0, i32 1
  %15 = load %struct.regmap*, %struct.regmap** %14, align 8
  store %struct.regmap* %15, %struct.regmap** %6, align 8
  %16 = load %struct.max77693_led_device*, %struct.max77693_led_device** %4, align 8
  %17 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %2
  %21 = load i64, i64* @FLED1, align 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %8, align 4
  %23 = load i64, i64* @FLED1, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %9, align 4
  %25 = load %struct.max77693_led_config_data*, %struct.max77693_led_config_data** %5, align 8
  %26 = getelementptr inbounds %struct.max77693_led_config_data, %struct.max77693_led_config_data* %25, i32 0, i32 3
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* @FLED1, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.max77693_led_config_data*, %struct.max77693_led_config_data** %5, align 8
  %32 = getelementptr inbounds %struct.max77693_led_config_data, %struct.max77693_led_config_data* %31, i32 0, i32 3
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* @FLED2, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %30, %36
  %38 = load i64, i64* @FLED1, align 8
  %39 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 %38
  store i64 %37, i64* %39, align 8
  br label %79

40:                                               ; preds = %2
  %41 = load %struct.max77693_led_device*, %struct.max77693_led_device** %4, align 8
  %42 = load i64, i64* @FLED1, align 8
  %43 = call i64 @max77693_fled_used(%struct.max77693_led_device* %41, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i64, i64* @FLED1, align 8
  br label %49

47:                                               ; preds = %40
  %48 = load i64, i64* @FLED2, align 8
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i64 [ %46, %45 ], [ %48, %47 ]
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %8, align 4
  %52 = load %struct.max77693_led_device*, %struct.max77693_led_device** %4, align 8
  %53 = load i64, i64* @FLED2, align 8
  %54 = call i64 @max77693_fled_used(%struct.max77693_led_device* %52, i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i64, i64* @FLED2, align 8
  br label %60

58:                                               ; preds = %49
  %59 = load i64, i64* @FLED1, align 8
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i64 [ %57, %56 ], [ %59, %58 ]
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %9, align 4
  %63 = load %struct.max77693_led_config_data*, %struct.max77693_led_config_data** %5, align 8
  %64 = getelementptr inbounds %struct.max77693_led_config_data, %struct.max77693_led_config_data* %63, i32 0, i32 3
  %65 = load i64*, i64** %64, align 8
  %66 = load i64, i64* @FLED1, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @FLED1, align 8
  %70 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 %69
  store i64 %68, i64* %70, align 8
  %71 = load %struct.max77693_led_config_data*, %struct.max77693_led_config_data** %5, align 8
  %72 = getelementptr inbounds %struct.max77693_led_config_data, %struct.max77693_led_config_data* %71, i32 0, i32 3
  %73 = load i64*, i64** %72, align 8
  %74 = load i64, i64* @FLED2, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @FLED2, align 8
  %78 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 %77
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %60, %20
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %98, %79
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp sle i32 %82, %83
  br i1 %84, label %85, label %101

85:                                               ; preds = %81
  %86 = load %struct.max77693_led_device*, %struct.max77693_led_device** %4, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @max77693_set_flash_current(%struct.max77693_led_device* %86, i32 %87, i64 %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %85
  %96 = load i32, i32* %10, align 4
  store i32 %96, i32* %3, align 4
  br label %200

97:                                               ; preds = %85
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %81

101:                                              ; preds = %81
  %102 = load i32, i32* @TORCH_TMR_NO_TIMER, align 4
  %103 = load i32, i32* @MAX77693_LED_TRIG_TYPE_LEVEL, align 4
  %104 = or i32 %102, %103
  store i32 %104, i32* %12, align 4
  %105 = load %struct.regmap*, %struct.regmap** %6, align 8
  %106 = load i32, i32* @MAX77693_LED_REG_ITORCHTIMER, align 4
  %107 = load i32, i32* %12, align 4
  %108 = call i32 @regmap_write(%struct.regmap* %105, i32 %106, i32 %107)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %101
  %112 = load i32, i32* %10, align 4
  store i32 %112, i32* %3, align 4
  br label %200

113:                                              ; preds = %101
  %114 = load %struct.max77693_led_config_data*, %struct.max77693_led_config_data** %5, align 8
  %115 = getelementptr inbounds %struct.max77693_led_config_data, %struct.max77693_led_config_data* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %113
  %119 = load %struct.max77693_led_config_data*, %struct.max77693_led_config_data** %5, align 8
  %120 = getelementptr inbounds %struct.max77693_led_config_data, %struct.max77693_led_config_data* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @max77693_led_vsys_to_reg(i64 %121)
  %123 = load i32, i32* @MAX_FLASH1_MAX_FL_EN, align 4
  %124 = or i32 %122, %123
  store i32 %124, i32* %12, align 4
  br label %126

125:                                              ; preds = %113
  store i32 0, i32* %12, align 4
  br label %126

126:                                              ; preds = %125, %118
  %127 = load %struct.regmap*, %struct.regmap** %6, align 8
  %128 = load i32, i32* @MAX77693_LED_REG_MAX_FLASH1, align 4
  %129 = load i32, i32* %12, align 4
  %130 = call i32 @regmap_write(%struct.regmap* %127, i32 %128, i32 %129)
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %10, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %126
  %134 = load i32, i32* %10, align 4
  store i32 %134, i32* %3, align 4
  br label %200

135:                                              ; preds = %126
  %136 = load %struct.regmap*, %struct.regmap** %6, align 8
  %137 = load i32, i32* @MAX77693_LED_REG_MAX_FLASH2, align 4
  %138 = call i32 @regmap_write(%struct.regmap* %136, i32 %137, i32 0)
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* %10, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %135
  %142 = load i32, i32* %10, align 4
  store i32 %142, i32* %3, align 4
  br label %200

143:                                              ; preds = %135
  %144 = load %struct.max77693_led_config_data*, %struct.max77693_led_config_data** %5, align 8
  %145 = getelementptr inbounds %struct.max77693_led_config_data, %struct.max77693_led_config_data* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @MAX77693_LED_BOOST_FIXED, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %143
  %150 = load i32, i32* @FLASH_BOOST_FIXED, align 4
  store i32 %150, i32* %12, align 4
  br label %160

151:                                              ; preds = %143
  %152 = load %struct.max77693_led_config_data*, %struct.max77693_led_config_data** %5, align 8
  %153 = getelementptr inbounds %struct.max77693_led_config_data, %struct.max77693_led_config_data* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.max77693_led_config_data*, %struct.max77693_led_config_data** %5, align 8
  %156 = getelementptr inbounds %struct.max77693_led_config_data, %struct.max77693_led_config_data* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = shl i32 %157, 1
  %159 = or i32 %154, %158
  store i32 %159, i32* %12, align 4
  br label %160

160:                                              ; preds = %151, %149
  %161 = load %struct.max77693_led_device*, %struct.max77693_led_device** %4, align 8
  %162 = load i64, i64* @FLED1, align 8
  %163 = call i64 @max77693_fled_used(%struct.max77693_led_device* %161, i64 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %160
  %166 = load %struct.max77693_led_device*, %struct.max77693_led_device** %4, align 8
  %167 = load i64, i64* @FLED2, align 8
  %168 = call i64 @max77693_fled_used(%struct.max77693_led_device* %166, i64 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %165
  %171 = load i32, i32* @FLASH_BOOST_LEDNUM_2, align 4
  %172 = load i32, i32* %12, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %12, align 4
  br label %174

174:                                              ; preds = %170, %165, %160
  %175 = load %struct.regmap*, %struct.regmap** %6, align 8
  %176 = load i32, i32* @MAX77693_LED_REG_VOUT_CNTL, align 4
  %177 = load i32, i32* %12, align 4
  %178 = call i32 @regmap_write(%struct.regmap* %175, i32 %176, i32 %177)
  store i32 %178, i32* %10, align 4
  %179 = load i32, i32* %10, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %174
  %182 = load i32, i32* %10, align 4
  store i32 %182, i32* %3, align 4
  br label %200

183:                                              ; preds = %174
  %184 = load %struct.max77693_led_config_data*, %struct.max77693_led_config_data** %5, align 8
  %185 = getelementptr inbounds %struct.max77693_led_config_data, %struct.max77693_led_config_data* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @max77693_led_vout_to_reg(i32 %186)
  store i32 %187, i32* %12, align 4
  %188 = load %struct.regmap*, %struct.regmap** %6, align 8
  %189 = load i32, i32* @MAX77693_LED_REG_VOUT_FLASH1, align 4
  %190 = load i32, i32* %12, align 4
  %191 = call i32 @regmap_write(%struct.regmap* %188, i32 %189, i32 %190)
  store i32 %191, i32* %10, align 4
  %192 = load i32, i32* %10, align 4
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %183
  %195 = load i32, i32* %10, align 4
  store i32 %195, i32* %3, align 4
  br label %200

196:                                              ; preds = %183
  %197 = load %struct.max77693_led_device*, %struct.max77693_led_device** %4, align 8
  %198 = load i32, i32* @MODE_OFF, align 4
  %199 = call i32 @max77693_set_mode_reg(%struct.max77693_led_device* %197, i32 %198)
  store i32 %199, i32* %3, align 4
  br label %200

200:                                              ; preds = %196, %194, %181, %141, %133, %111, %95
  %201 = load i32, i32* %3, align 4
  ret i32 %201
}

declare dso_local i64 @max77693_fled_used(%struct.max77693_led_device*, i64) #1

declare dso_local i32 @max77693_set_flash_current(%struct.max77693_led_device*, i32, i64) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @max77693_led_vsys_to_reg(i64) #1

declare dso_local i32 @max77693_led_vout_to_reg(i32) #1

declare dso_local i32 @max77693_set_mode_reg(%struct.max77693_led_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
