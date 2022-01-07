; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_ctrl_power_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_ctrl_power_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drx_demod_instance = type { %struct.i2c_device_addr*, i64, i64 }
%struct.i2c_device_addr = type { i32 }
%struct.drx_common_attr = type { i32 }
%struct.drxj_data = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SIO_CC_PWD_MODE_LEVEL_NONE = common dso_local global i32 0, align 4
@SIO_CC_PWD_MODE_LEVEL_CLOCK = common dso_local global i32 0, align 4
@SIO_CC_PWD_MODE_LEVEL_PLL = common dso_local global i32 0, align 4
@SIO_CC_PWD_MODE_LEVEL_OSC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"error %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SIO_CC_PWD_MODE__A = common dso_local global i32 0, align 4
@SIO_CC_UPDATE__A = common dso_local global i32 0, align 4
@SIO_CC_UPDATE_KEY = common dso_local global i32 0, align 4
@SIO_HI_RA_RAM_PAR_5_CFG_SLEEP_ZZZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drx_demod_instance*, i32*)* @ctrl_power_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_power_mode(%struct.drx_demod_instance* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drx_demod_instance*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.drx_common_attr*, align 8
  %7 = alloca %struct.drxj_data*, align 8
  %8 = alloca %struct.i2c_device_addr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drx_demod_instance* %0, %struct.drx_demod_instance** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.drx_common_attr* null, %struct.drx_common_attr** %6, align 8
  store %struct.drxj_data* null, %struct.drxj_data** %7, align 8
  store %struct.i2c_device_addr* null, %struct.i2c_device_addr** %8, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %12 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.drx_common_attr*
  store %struct.drx_common_attr* %14, %struct.drx_common_attr** %6, align 8
  %15 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %16 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.drxj_data*
  store %struct.drxj_data* %18, %struct.drxj_data** %7, align 8
  %19 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %20 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %19, i32 0, i32 0
  %21 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %20, align 8
  store %struct.i2c_device_addr* %21, %struct.i2c_device_addr** %8, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %170

27:                                               ; preds = %2
  %28 = load %struct.drx_common_attr*, %struct.drx_common_attr** %6, align 8
  %29 = getelementptr inbounds %struct.drx_common_attr, %struct.drx_common_attr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %170

35:                                               ; preds = %27
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %46 [
    i32 141, label %38
    i32 144, label %38
    i32 145, label %40
    i32 143, label %42
    i32 142, label %44
  ]

38:                                               ; preds = %35, %35
  %39 = load i32, i32* @SIO_CC_PWD_MODE_LEVEL_NONE, align 4
  store i32 %39, i32* %10, align 4
  br label %49

40:                                               ; preds = %35
  %41 = load i32, i32* @SIO_CC_PWD_MODE_LEVEL_CLOCK, align 4
  store i32 %41, i32* %10, align 4
  br label %49

42:                                               ; preds = %35
  %43 = load i32, i32* @SIO_CC_PWD_MODE_LEVEL_PLL, align 4
  store i32 %43, i32* %10, align 4
  br label %49

44:                                               ; preds = %35
  %45 = load i32, i32* @SIO_CC_PWD_MODE_LEVEL_OSC, align 4
  store i32 %45, i32* %10, align 4
  br label %49

46:                                               ; preds = %35
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %170

49:                                               ; preds = %44, %42, %40, %38
  %50 = load %struct.drx_common_attr*, %struct.drx_common_attr** %6, align 8
  %51 = getelementptr inbounds %struct.drx_common_attr, %struct.drx_common_attr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 141
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %56 = call i32 @power_up_device(%struct.drx_demod_instance* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %168

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62, %49
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 141
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load %struct.drxj_data*, %struct.drxj_data** %7, align 8
  %69 = call i32 @drxj_reset_mode(%struct.drxj_data* %68)
  br label %112

70:                                               ; preds = %63
  %71 = load %struct.drxj_data*, %struct.drxj_data** %7, align 8
  %72 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  switch i32 %73, label %106 [
    i32 137, label %74
    i32 136, label %74
    i32 135, label %74
    i32 140, label %83
    i32 133, label %92
    i32 132, label %92
    i32 131, label %92
    i32 130, label %92
    i32 129, label %92
    i32 134, label %92
    i32 138, label %92
    i32 128, label %104
    i32 139, label %105
  ]

74:                                               ; preds = %70, %70, %70
  %75 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %76 = call i32 @power_down_qam(%struct.drx_demod_instance* %75, i32 1)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %80)
  br label %168

82:                                               ; preds = %74
  br label %109

83:                                               ; preds = %70
  %84 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %85 = call i32 @power_down_vsb(%struct.drx_demod_instance* %84, i32 1)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %89)
  br label %168

91:                                               ; preds = %83
  br label %109

92:                                               ; preds = %70, %70, %70, %70, %70, %70, %70
  %93 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %94 = load %struct.drxj_data*, %struct.drxj_data** %7, align 8
  %95 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @power_down_atv(%struct.drx_demod_instance* %93, i32 %96, i32 1)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %92
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %101)
  br label %168

103:                                              ; preds = %92
  br label %109

104:                                              ; preds = %70
  br label %109

105:                                              ; preds = %70
  br label %106

106:                                              ; preds = %70, %105
  %107 = load i32, i32* @EIO, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %170

109:                                              ; preds = %104, %103, %91, %82
  %110 = load %struct.drxj_data*, %struct.drxj_data** %7, align 8
  %111 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %110, i32 0, i32 0
  store i32 128, i32* %111, align 4
  br label %112

112:                                              ; preds = %109, %67
  %113 = load i32*, i32** %5, align 8
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 144
  br i1 %115, label %116, label %163

116:                                              ; preds = %112
  %117 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %8, align 8
  %118 = load i32, i32* @SIO_CC_PWD_MODE__A, align 4
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %117, i32 %118, i32 %119, i32 0)
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %116
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %124)
  br label %168

126:                                              ; preds = %116
  %127 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %8, align 8
  %128 = load i32, i32* @SIO_CC_UPDATE__A, align 4
  %129 = load i32, i32* @SIO_CC_UPDATE_KEY, align 4
  %130 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %127, i32 %128, i32 %129, i32 0)
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %126
  %134 = load i32, i32* %9, align 4
  %135 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %134)
  br label %168

136:                                              ; preds = %126
  %137 = load i32*, i32** %5, align 8
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 141
  br i1 %139, label %140, label %162

140:                                              ; preds = %136
  %141 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %142 = call i32 @init_hi(%struct.drx_demod_instance* %141)
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %146)
  br label %168

148:                                              ; preds = %140
  %149 = load i32, i32* @SIO_HI_RA_RAM_PAR_5_CFG_SLEEP_ZZZ, align 4
  %150 = load %struct.drxj_data*, %struct.drxj_data** %7, align 8
  %151 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 4
  %154 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %155 = call i32 @hi_cfg_command(%struct.drx_demod_instance* %154)
  store i32 %155, i32* %9, align 4
  %156 = load i32, i32* %9, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %148
  %159 = load i32, i32* %9, align 4
  %160 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %159)
  br label %168

161:                                              ; preds = %148
  br label %162

162:                                              ; preds = %161, %136
  br label %163

163:                                              ; preds = %162, %112
  %164 = load i32*, i32** %5, align 8
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.drx_common_attr*, %struct.drx_common_attr** %6, align 8
  %167 = getelementptr inbounds %struct.drx_common_attr, %struct.drx_common_attr* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 4
  store i32 0, i32* %3, align 4
  br label %170

168:                                              ; preds = %158, %145, %133, %123, %100, %88, %79, %59
  %169 = load i32, i32* %9, align 4
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %168, %163, %106, %46, %34, %24
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i32 @power_up_device(%struct.drx_demod_instance*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @drxj_reset_mode(%struct.drxj_data*) #1

declare dso_local i32 @power_down_qam(%struct.drx_demod_instance*, i32) #1

declare dso_local i32 @power_down_vsb(%struct.drx_demod_instance*, i32) #1

declare dso_local i32 @power_down_atv(%struct.drx_demod_instance*, i32, i32) #1

declare dso_local i32 @drxj_dap_write_reg16(%struct.i2c_device_addr*, i32, i32, i32) #1

declare dso_local i32 @init_hi(%struct.drx_demod_instance*) #1

declare dso_local i32 @hi_cfg_command(%struct.drx_demod_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
