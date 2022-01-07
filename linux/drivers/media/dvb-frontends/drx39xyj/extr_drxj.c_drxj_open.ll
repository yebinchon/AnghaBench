; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_drxj_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_drxj_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drx_demod_instance = type { %struct.TYPE_2__*, i32*, %struct.i2c_device_addr* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.i2c_device_addr = type { i32 }
%struct.drxj_data = type { i32, i32 }
%struct.drx_common_attr = type { i32, i32, i32, i32, i32*, i32 }
%struct.drxu_code_info = type { i32* }
%struct.drx_cfg_mpeg_output = type { i32 }

@DRX_POWER_UP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to powerup device\0A\00", align 1
@SIO_CC_SOFT_RST__A = common dso_local global i32 0, align 4
@SIO_CC_SOFT_RST_SYS__M = common dso_local global i32 0, align 4
@SIO_CC_SOFT_RST_OSC__M = common dso_local global i32 0, align 4
@SIO_CC_UPDATE__A = common dso_local global i32 0, align 4
@SIO_CC_UPDATE_KEY = common dso_local global i32 0, align 4
@ATV_TOP_STDBY__A = common dso_local global i32 0, align 4
@ATV_TOP_STDBY_CVBS_STDBY_A2_ACTIVE = common dso_local global i32 0, align 4
@ATV_TOP_STDBY_SIF_STDBY_STANDBY = common dso_local global i32 0, align 4
@SCU_COMM_EXEC__A = common dso_local global i32 0, align 4
@SCU_COMM_EXEC_STOP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Should powerup before loading the firmware.\00", align 1
@UCODE_UPLOAD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"error %d while uploading the firmware\0A\00", align 1
@UCODE_VERIFY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"error %d while verifying the firmware\0A\00", align 1
@SCU_COMM_EXEC_ACTIVE = common dso_local global i32 0, align 4
@DRXJ_SCAN_TIMEOUT = common dso_local global i32 0, align 4
@DRX_LOCKED = common dso_local global i32 0, align 4
@DRX_STANDARD_UNKNOWN = common dso_local global i32 0, align 4
@VERSION_MAJOR = common dso_local global i32 0, align 4
@VERSION_MINOR = common dso_local global i32 0, align 4
@VERSION_PATCH = common dso_local global i32 0, align 4
@SCU_RAM_DRIVER_VER_HI__A = common dso_local global i32 0, align 4
@SCU_RAM_DRIVER_VER_LO__A = common dso_local global i32 0, align 4
@drxj_default_aud_data_g = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drx_demod_instance*)* @drxj_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drxj_open(%struct.drx_demod_instance* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drx_demod_instance*, align 8
  %4 = alloca %struct.i2c_device_addr*, align 8
  %5 = alloca %struct.drxj_data*, align 8
  %6 = alloca %struct.drx_common_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drxu_code_info, align 8
  %9 = alloca %struct.drx_cfg_mpeg_output, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drx_demod_instance* %0, %struct.drx_demod_instance** %3, align 8
  store %struct.i2c_device_addr* null, %struct.i2c_device_addr** %4, align 8
  store %struct.drxj_data* null, %struct.drxj_data** %5, align 8
  store %struct.drx_common_attr* null, %struct.drx_common_attr** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* @DRX_POWER_UP, align 4
  store i32 %12, i32* %11, align 4
  %13 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %14 = icmp eq %struct.drx_demod_instance* %13, null
  br i1 %14, label %37, label %15

15:                                               ; preds = %1
  %16 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %17 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp eq %struct.TYPE_2__* %18, null
  br i1 %19, label %37, label %20

20:                                               ; preds = %15
  %21 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %22 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %37, label %25

25:                                               ; preds = %20
  %26 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %27 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %26, i32 0, i32 2
  %28 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %27, align 8
  %29 = icmp eq %struct.i2c_device_addr* %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %25
  %31 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %32 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30, %25, %20, %15, %1
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %346

40:                                               ; preds = %30
  %41 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %42 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %346

48:                                               ; preds = %40
  %49 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %50 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %49, i32 0, i32 2
  %51 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %50, align 8
  store %struct.i2c_device_addr* %51, %struct.i2c_device_addr** %4, align 8
  %52 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %53 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = bitcast i32* %54 to %struct.drxj_data*
  store %struct.drxj_data* %55, %struct.drxj_data** %5, align 8
  %56 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %57 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = bitcast %struct.TYPE_2__* %58 to %struct.drx_common_attr*
  store %struct.drx_common_attr* %59, %struct.drx_common_attr** %6, align 8
  %60 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %61 = call i32 @ctrl_power_mode(%struct.drx_demod_instance* %60, i32* %11)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %48
  %65 = load i32, i32* %10, align 4
  %66 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %342

67:                                               ; preds = %48
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @DRX_POWER_UP, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %10, align 4
  %74 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %342

75:                                               ; preds = %67
  %76 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %77 = call i32 @get_device_capabilities(%struct.drx_demod_instance* %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i32, i32* %10, align 4
  %82 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %81)
  br label %342

83:                                               ; preds = %75
  %84 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %85 = load i32, i32* @SIO_CC_SOFT_RST__A, align 4
  %86 = load i32, i32* @SIO_CC_SOFT_RST_SYS__M, align 4
  %87 = or i32 4, %86
  %88 = load i32, i32* @SIO_CC_SOFT_RST_OSC__M, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %84, i32 %85, i32 %89, i32 0)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %83
  %94 = load i32, i32* %10, align 4
  %95 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %94)
  br label %342

96:                                               ; preds = %83
  %97 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %98 = load i32, i32* @SIO_CC_UPDATE__A, align 4
  %99 = load i32, i32* @SIO_CC_UPDATE_KEY, align 4
  %100 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %97, i32 %98, i32 %99, i32 0)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %96
  %104 = load i32, i32* %10, align 4
  %105 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %104)
  br label %342

106:                                              ; preds = %96
  %107 = call i32 @msleep(i32 1)
  %108 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %109 = load i32, i32* @ATV_TOP_STDBY__A, align 4
  %110 = load i32, i32* @ATV_TOP_STDBY_CVBS_STDBY_A2_ACTIVE, align 4
  %111 = xor i32 %110, -1
  %112 = load i32, i32* @ATV_TOP_STDBY_SIF_STDBY_STANDBY, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %108, i32 %109, i32 %113, i32 0)
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %106
  %118 = load i32, i32* %10, align 4
  %119 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %118)
  br label %342

120:                                              ; preds = %106
  %121 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %122 = call i32 @set_iqm_af(%struct.drx_demod_instance* %121, i32 0)
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load i32, i32* %10, align 4
  %127 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %126)
  br label %342

128:                                              ; preds = %120
  %129 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %130 = call i32 @set_orx_nsu_aox(%struct.drx_demod_instance* %129, i32 0)
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %10, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load i32, i32* %10, align 4
  %135 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %134)
  br label %342

136:                                              ; preds = %128
  %137 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %138 = call i32 @init_hi(%struct.drx_demod_instance* %137)
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* %10, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load i32, i32* %10, align 4
  %143 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %142)
  br label %342

144:                                              ; preds = %136
  %145 = load %struct.drx_common_attr*, %struct.drx_common_attr** %6, align 8
  %146 = getelementptr inbounds %struct.drx_common_attr, %struct.drx_common_attr* %145, i32 0, i32 5
  %147 = call i32 @memcpy(%struct.drx_cfg_mpeg_output* %9, i32* %146, i32 4)
  %148 = getelementptr inbounds %struct.drx_cfg_mpeg_output, %struct.drx_cfg_mpeg_output* %9, i32 0, i32 0
  store i32 0, i32* %148, align 4
  %149 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %150 = call i32 @ctrl_set_cfg_mpeg_output(%struct.drx_demod_instance* %149, %struct.drx_cfg_mpeg_output* %9)
  store i32 %150, i32* %10, align 4
  %151 = load i32, i32* %10, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %144
  %154 = load i32, i32* %10, align 4
  %155 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %154)
  br label %342

156:                                              ; preds = %144
  %157 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %158 = call i32 @power_down_aud(%struct.drx_demod_instance* %157)
  store i32 %158, i32* %10, align 4
  %159 = load i32, i32* %10, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load i32, i32* %10, align 4
  %163 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %162)
  br label %342

164:                                              ; preds = %156
  %165 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %166 = load i32, i32* @SCU_COMM_EXEC__A, align 4
  %167 = load i32, i32* @SCU_COMM_EXEC_STOP, align 4
  %168 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %165, i32 %166, i32 %167, i32 0)
  store i32 %168, i32* %10, align 4
  %169 = load i32, i32* %10, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %164
  %172 = load i32, i32* %10, align 4
  %173 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %172)
  br label %342

174:                                              ; preds = %164
  %175 = load %struct.drx_common_attr*, %struct.drx_common_attr** %6, align 8
  %176 = getelementptr inbounds %struct.drx_common_attr, %struct.drx_common_attr* %175, i32 0, i32 4
  %177 = load i32*, i32** %176, align 8
  %178 = icmp ne i32* %177, null
  br i1 %178, label %179, label %224

179:                                              ; preds = %174
  %180 = load %struct.drx_common_attr*, %struct.drx_common_attr** %6, align 8
  %181 = getelementptr inbounds %struct.drx_common_attr, %struct.drx_common_attr* %180, i32 0, i32 0
  store i32 1, i32* %181, align 8
  %182 = load %struct.drx_common_attr*, %struct.drx_common_attr** %6, align 8
  %183 = getelementptr inbounds %struct.drx_common_attr, %struct.drx_common_attr* %182, i32 0, i32 4
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds %struct.drxu_code_info, %struct.drxu_code_info* %8, i32 0, i32 0
  store i32* %184, i32** %185, align 8
  %186 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %187 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %186, i32 0, i32 0
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call i64 @DRX_ISPOWERDOWNMODE(i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %179
  %194 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %195 = load i32, i32* @EINVAL, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %2, align 4
  br label %346

197:                                              ; preds = %179
  %198 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %199 = load i32, i32* @UCODE_UPLOAD, align 4
  %200 = call i32 @drx_ctrl_u_code(%struct.drx_demod_instance* %198, %struct.drxu_code_info* %8, i32 %199)
  store i32 %200, i32* %10, align 4
  %201 = load i32, i32* %10, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %197
  %204 = load i32, i32* %10, align 4
  %205 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %204)
  br label %342

206:                                              ; preds = %197
  %207 = load %struct.drx_common_attr*, %struct.drx_common_attr** %6, align 8
  %208 = getelementptr inbounds %struct.drx_common_attr, %struct.drx_common_attr* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = icmp eq i32 %209, 1
  br i1 %210, label %211, label %221

211:                                              ; preds = %206
  %212 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %213 = load i32, i32* @UCODE_VERIFY, align 4
  %214 = call i32 @drx_ctrl_u_code(%struct.drx_demod_instance* %212, %struct.drxu_code_info* %8, i32 %213)
  store i32 %214, i32* %10, align 4
  %215 = load i32, i32* %10, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %211
  %218 = load i32, i32* %10, align 4
  %219 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %218)
  br label %342

220:                                              ; preds = %211
  br label %221

221:                                              ; preds = %220, %206
  %222 = load %struct.drx_common_attr*, %struct.drx_common_attr** %6, align 8
  %223 = getelementptr inbounds %struct.drx_common_attr, %struct.drx_common_attr* %222, i32 0, i32 0
  store i32 0, i32* %223, align 8
  br label %224

224:                                              ; preds = %221, %174
  %225 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %226 = load i32, i32* @SCU_COMM_EXEC__A, align 4
  %227 = load i32, i32* @SCU_COMM_EXEC_ACTIVE, align 4
  %228 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %225, i32 %226, i32 %227, i32 0)
  store i32 %228, i32* %10, align 4
  %229 = load i32, i32* %10, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %224
  %232 = load i32, i32* %10, align 4
  %233 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %232)
  br label %342

234:                                              ; preds = %224
  %235 = load i32, i32* @DRXJ_SCAN_TIMEOUT, align 4
  %236 = load %struct.drx_common_attr*, %struct.drx_common_attr** %6, align 8
  %237 = getelementptr inbounds %struct.drx_common_attr, %struct.drx_common_attr* %236, i32 0, i32 3
  store i32 %235, i32* %237, align 4
  %238 = load i32, i32* @DRX_LOCKED, align 4
  %239 = load %struct.drx_common_attr*, %struct.drx_common_attr** %6, align 8
  %240 = getelementptr inbounds %struct.drx_common_attr, %struct.drx_common_attr* %239, i32 0, i32 2
  store i32 %238, i32* %240, align 8
  %241 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %242 = call i32 @drxj_reset_mode(%struct.drxj_data* %241)
  %243 = load i32, i32* @DRX_STANDARD_UNKNOWN, align 4
  %244 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %245 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %244, i32 0, i32 1
  store i32 %243, i32* %245, align 4
  %246 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %247 = call i32 @smart_ant_init(%struct.drx_demod_instance* %246)
  store i32 %247, i32* %10, align 4
  %248 = load i32, i32* %10, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %234
  %251 = load i32, i32* %10, align 4
  %252 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %251)
  br label %342

253:                                              ; preds = %234
  %254 = load i32, i32* @VERSION_MAJOR, align 4
  %255 = sdiv i32 %254, 100
  %256 = srem i32 %255, 10
  store i32 %256, i32* %7, align 4
  %257 = load i32, i32* %7, align 4
  %258 = shl i32 %257, 4
  store i32 %258, i32* %7, align 4
  %259 = load i32, i32* @VERSION_MAJOR, align 4
  %260 = sdiv i32 %259, 10
  %261 = srem i32 %260, 10
  %262 = load i32, i32* %7, align 4
  %263 = add nsw i32 %262, %261
  store i32 %263, i32* %7, align 4
  %264 = load i32, i32* %7, align 4
  %265 = shl i32 %264, 4
  store i32 %265, i32* %7, align 4
  %266 = load i32, i32* @VERSION_MAJOR, align 4
  %267 = srem i32 %266, 10
  %268 = load i32, i32* %7, align 4
  %269 = add nsw i32 %268, %267
  store i32 %269, i32* %7, align 4
  %270 = load i32, i32* %7, align 4
  %271 = shl i32 %270, 4
  store i32 %271, i32* %7, align 4
  %272 = load i32, i32* @VERSION_MINOR, align 4
  %273 = srem i32 %272, 10
  %274 = load i32, i32* %7, align 4
  %275 = add nsw i32 %274, %273
  store i32 %275, i32* %7, align 4
  %276 = load i32, i32* %7, align 4
  %277 = shl i32 %276, 4
  store i32 %277, i32* %7, align 4
  %278 = load i32, i32* @VERSION_PATCH, align 4
  %279 = sdiv i32 %278, 1000
  %280 = srem i32 %279, 10
  %281 = load i32, i32* %7, align 4
  %282 = add nsw i32 %281, %280
  store i32 %282, i32* %7, align 4
  %283 = load i32, i32* %7, align 4
  %284 = shl i32 %283, 4
  store i32 %284, i32* %7, align 4
  %285 = load i32, i32* @VERSION_PATCH, align 4
  %286 = sdiv i32 %285, 100
  %287 = srem i32 %286, 10
  %288 = load i32, i32* %7, align 4
  %289 = add nsw i32 %288, %287
  store i32 %289, i32* %7, align 4
  %290 = load i32, i32* %7, align 4
  %291 = shl i32 %290, 4
  store i32 %291, i32* %7, align 4
  %292 = load i32, i32* @VERSION_PATCH, align 4
  %293 = sdiv i32 %292, 10
  %294 = srem i32 %293, 10
  %295 = load i32, i32* %7, align 4
  %296 = add nsw i32 %295, %294
  store i32 %296, i32* %7, align 4
  %297 = load i32, i32* %7, align 4
  %298 = shl i32 %297, 4
  store i32 %298, i32* %7, align 4
  %299 = load i32, i32* @VERSION_PATCH, align 4
  %300 = srem i32 %299, 10
  %301 = load i32, i32* %7, align 4
  %302 = add nsw i32 %301, %300
  store i32 %302, i32* %7, align 4
  %303 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %304 = load i32, i32* @SCU_RAM_DRIVER_VER_HI__A, align 4
  %305 = load i32, i32* %7, align 4
  %306 = ashr i32 %305, 16
  %307 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %303, i32 %304, i32 %306, i32 0)
  store i32 %307, i32* %10, align 4
  %308 = load i32, i32* %10, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %313

310:                                              ; preds = %253
  %311 = load i32, i32* %10, align 4
  %312 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %311)
  br label %342

313:                                              ; preds = %253
  %314 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %315 = load i32, i32* @SCU_RAM_DRIVER_VER_LO__A, align 4
  %316 = load i32, i32* %7, align 4
  %317 = and i32 %316, 65535
  %318 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %314, i32 %315, i32 %317, i32 0)
  store i32 %318, i32* %10, align 4
  %319 = load i32, i32* %10, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %324

321:                                              ; preds = %313
  %322 = load i32, i32* %10, align 4
  %323 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %322)
  br label %342

324:                                              ; preds = %313
  %325 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %326 = call i32 @ctrl_set_oob(%struct.drx_demod_instance* %325, i32* null)
  store i32 %326, i32* %10, align 4
  %327 = load i32, i32* %10, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %332

329:                                              ; preds = %324
  %330 = load i32, i32* %10, align 4
  %331 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %330)
  br label %342

332:                                              ; preds = %324
  %333 = load i32, i32* @drxj_default_aud_data_g, align 4
  %334 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %335 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %334, i32 0, i32 0
  store i32 %333, i32* %335, align 4
  %336 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %337 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %336, i32 0, i32 0
  %338 = load %struct.TYPE_2__*, %struct.TYPE_2__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %338, i32 0, i32 0
  store i32 1, i32* %339, align 4
  %340 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %341 = call i32 @drxj_set_lna_state(%struct.drx_demod_instance* %340, i32 0)
  store i32 0, i32* %2, align 4
  br label %346

342:                                              ; preds = %329, %321, %310, %250, %231, %217, %203, %171, %161, %153, %141, %133, %125, %117, %103, %93, %80, %71, %64
  %343 = load %struct.drx_common_attr*, %struct.drx_common_attr** %6, align 8
  %344 = getelementptr inbounds %struct.drx_common_attr, %struct.drx_common_attr* %343, i32 0, i32 0
  store i32 0, i32* %344, align 8
  %345 = load i32, i32* %10, align 4
  store i32 %345, i32* %2, align 4
  br label %346

346:                                              ; preds = %342, %332, %193, %45, %37
  %347 = load i32, i32* %2, align 4
  ret i32 %347
}

declare dso_local i32 @ctrl_power_mode(%struct.drx_demod_instance*, i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @get_device_capabilities(%struct.drx_demod_instance*) #1

declare dso_local i32 @drxj_dap_write_reg16(%struct.i2c_device_addr*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @set_iqm_af(%struct.drx_demod_instance*, i32) #1

declare dso_local i32 @set_orx_nsu_aox(%struct.drx_demod_instance*, i32) #1

declare dso_local i32 @init_hi(%struct.drx_demod_instance*) #1

declare dso_local i32 @memcpy(%struct.drx_cfg_mpeg_output*, i32*, i32) #1

declare dso_local i32 @ctrl_set_cfg_mpeg_output(%struct.drx_demod_instance*, %struct.drx_cfg_mpeg_output*) #1

declare dso_local i32 @power_down_aud(%struct.drx_demod_instance*) #1

declare dso_local i64 @DRX_ISPOWERDOWNMODE(i32) #1

declare dso_local i32 @drx_ctrl_u_code(%struct.drx_demod_instance*, %struct.drxu_code_info*, i32) #1

declare dso_local i32 @drxj_reset_mode(%struct.drxj_data*) #1

declare dso_local i32 @smart_ant_init(%struct.drx_demod_instance*) #1

declare dso_local i32 @ctrl_set_oob(%struct.drx_demod_instance*, i32*) #1

declare dso_local i32 @drxj_set_lna_state(%struct.drx_demod_instance*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
