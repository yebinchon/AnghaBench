; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_qam64auto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_qam64auto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drx_demod_instance = type { %struct.i2c_device_addr*, %struct.drxj_data* }
%struct.i2c_device_addr = type { %struct.drx39xxj_state* }
%struct.drx39xxj_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.dtv_frontend_properties }
%struct.dtv_frontend_properties = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.drxj_data = type { i32 }
%struct.drx_channel = type { i32 }

@DRX_NOT_LOCKED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"error %d\0A\00", align 1
@DRXJ_DEMOD_LOCK = common dso_local global i32 0, align 4
@DRXJ_QAM_DEMOD_LOCK_EXT_WAITTIME = common dso_local global i32 0, align 4
@DRXJ_QAM_FEC_LOCK_WAITTIME = common dso_local global i64 0, align 8
@QAM_SY_TIMEOUT__A = common dso_local global i32 0, align 4
@DRX_MIRROR_AUTO = common dso_local global i32 0, align 4
@DRX_MIRROR_YES = common dso_local global i32 0, align 4
@DRXJ_QAM_MAX_WAITTIME = common dso_local global i64 0, align 8
@DRX_LOCKED = common dso_local global i32 0, align 4
@DRX_NEVER_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drx_demod_instance*, %struct.drx_channel*, i32, i32*)* @qam64auto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qam64auto(%struct.drx_demod_instance* %0, %struct.drx_channel* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drx_demod_instance*, align 8
  %7 = alloca %struct.drx_channel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.drxj_data*, align 8
  %11 = alloca %struct.i2c_device_addr*, align 8
  %12 = alloca %struct.drx39xxj_state*, align 8
  %13 = alloca %struct.dtv_frontend_properties*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.drx_demod_instance* %0, %struct.drx_demod_instance** %6, align 8
  store %struct.drx_channel* %1, %struct.drx_channel** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %20 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %6, align 8
  %21 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %20, i32 0, i32 1
  %22 = load %struct.drxj_data*, %struct.drxj_data** %21, align 8
  store %struct.drxj_data* %22, %struct.drxj_data** %10, align 8
  %23 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %6, align 8
  %24 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %23, i32 0, i32 0
  %25 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %24, align 8
  store %struct.i2c_device_addr* %25, %struct.i2c_device_addr** %11, align 8
  %26 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %11, align 8
  %27 = getelementptr inbounds %struct.i2c_device_addr, %struct.i2c_device_addr* %26, i32 0, i32 0
  %28 = load %struct.drx39xxj_state*, %struct.drx39xxj_state** %27, align 8
  store %struct.drx39xxj_state* %28, %struct.drx39xxj_state** %12, align 8
  %29 = load %struct.drx39xxj_state*, %struct.drx39xxj_state** %12, align 8
  %30 = getelementptr inbounds %struct.drx39xxj_state, %struct.drx39xxj_state* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store %struct.dtv_frontend_properties* %31, %struct.dtv_frontend_properties** %13, align 8
  store i64 130, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i32 0, i32* %19, align 4
  %32 = load i32, i32* @DRX_NOT_LOCKED, align 4
  %33 = load i32*, i32** %9, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @jiffies, align 4
  %35 = call i64 @jiffies_to_msecs(i32 %34)
  store i64 %35, i64* %16, align 8
  store i64 130, i64* %15, align 8
  br label %36

36:                                               ; preds = %260, %4
  %37 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %6, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @ctrl_lock_status(%struct.drx_demod_instance* %37, i32* %38)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* %14, align 4
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %263

45:                                               ; preds = %36
  %46 = load i64, i64* %15, align 8
  switch i64 %46, label %238 [
    i64 130, label %47
    i64 131, label %78
    i64 128, label %117
    i64 129, label %176
  ]

47:                                               ; preds = %45
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @DRXJ_DEMOD_LOCK, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %77

52:                                               ; preds = %47
  %53 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %6, align 8
  %54 = call i32 @ctrl_get_qam_sig_quality(%struct.drx_demod_instance* %53)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %263

60:                                               ; preds = %52
  %61 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %13, align 8
  %62 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp sgt i32 %67, 20800
  br i1 %68, label %69, label %76

69:                                               ; preds = %60
  store i64 131, i64* %15, align 8
  %70 = load i32, i32* @DRXJ_QAM_DEMOD_LOCK_EXT_WAITTIME, align 4
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* %18, align 8
  %73 = add nsw i64 %72, %71
  store i64 %73, i64* %18, align 8
  %74 = load i32, i32* @jiffies, align 4
  %75 = call i64 @jiffies_to_msecs(i32 %74)
  store i64 %75, i64* %17, align 8
  br label %76

76:                                               ; preds = %69, %60
  br label %77

77:                                               ; preds = %76, %47
  br label %239

78:                                               ; preds = %45
  %79 = load i32*, i32** %9, align 8
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @DRXJ_DEMOD_LOCK, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %116

83:                                               ; preds = %78
  %84 = load i32, i32* @jiffies, align 4
  %85 = call i64 @jiffies_to_msecs(i32 %84)
  %86 = load i64, i64* %17, align 8
  %87 = sub nsw i64 %85, %86
  %88 = load i64, i64* @DRXJ_QAM_FEC_LOCK_WAITTIME, align 8
  %89 = icmp sgt i64 %87, %88
  br i1 %89, label %90, label %116

90:                                               ; preds = %83
  %91 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %6, align 8
  %92 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %91, i32 0, i32 0
  %93 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %92, align 8
  %94 = load i32, i32* @QAM_SY_TIMEOUT__A, align 4
  %95 = call i32 @drxj_dap_read_reg16(%struct.i2c_device_addr* %93, i32 %94, i32* %19, i32 0)
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %90
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %99)
  br label %263

101:                                              ; preds = %90
  %102 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %6, align 8
  %103 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %102, i32 0, i32 0
  %104 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %103, align 8
  %105 = load i32, i32* @QAM_SY_TIMEOUT__A, align 4
  %106 = load i32, i32* %19, align 4
  %107 = or i32 %106, 1
  %108 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %104, i32 %105, i32 %107, i32 0)
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %14, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %101
  %112 = load i32, i32* %14, align 4
  %113 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %112)
  br label %263

114:                                              ; preds = %101
  store i64 128, i64* %15, align 8
  %115 = call i32 @msleep(i32 10)
  br label %116

116:                                              ; preds = %114, %83, %78
  br label %239

117:                                              ; preds = %45
  %118 = load i32*, i32** %9, align 8
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @DRXJ_DEMOD_LOCK, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %175

122:                                              ; preds = %117
  %123 = load %struct.drx_channel*, %struct.drx_channel** %7, align 8
  %124 = getelementptr inbounds %struct.drx_channel, %struct.drx_channel* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @DRX_MIRROR_AUTO, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %167

128:                                              ; preds = %122
  %129 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %6, align 8
  %130 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %129, i32 0, i32 0
  %131 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %130, align 8
  %132 = load i32, i32* @QAM_SY_TIMEOUT__A, align 4
  %133 = call i32 @drxj_dap_read_reg16(%struct.i2c_device_addr* %131, i32 %132, i32* %19, i32 0)
  store i32 %133, i32* %14, align 4
  %134 = load i32, i32* %14, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %128
  %137 = load i32, i32* %14, align 4
  %138 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %137)
  br label %263

139:                                              ; preds = %128
  %140 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %6, align 8
  %141 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %140, i32 0, i32 0
  %142 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %141, align 8
  %143 = load i32, i32* @QAM_SY_TIMEOUT__A, align 4
  %144 = load i32, i32* %19, align 4
  %145 = and i32 %144, 65534
  %146 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %142, i32 %143, i32 %145, i32 0)
  store i32 %146, i32* %14, align 4
  %147 = load i32, i32* %14, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %139
  %150 = load i32, i32* %14, align 4
  %151 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %150)
  br label %263

152:                                              ; preds = %139
  %153 = load i32, i32* @DRX_MIRROR_YES, align 4
  %154 = load %struct.drxj_data*, %struct.drxj_data** %10, align 8
  %155 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 4
  %156 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %6, align 8
  %157 = load %struct.drx_channel*, %struct.drx_channel** %7, align 8
  %158 = call i32 @qam_flip_spec(%struct.drx_demod_instance* %156, %struct.drx_channel* %157)
  store i32 %158, i32* %14, align 4
  %159 = load i32, i32* %14, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %152
  %162 = load i32, i32* %14, align 4
  %163 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %162)
  br label %263

164:                                              ; preds = %152
  store i64 129, i64* %15, align 8
  %165 = load i32, i32* @jiffies, align 4
  %166 = call i64 @jiffies_to_msecs(i32 %165)
  store i64 %166, i64* %17, align 8
  store i64 %166, i64* %16, align 8
  store i64 0, i64* %18, align 8
  br label %174

167:                                              ; preds = %122
  %168 = load i32, i32* @jiffies, align 4
  %169 = call i64 @jiffies_to_msecs(i32 %168)
  %170 = load i64, i64* @DRXJ_QAM_MAX_WAITTIME, align 8
  %171 = sub nsw i64 %169, %170
  %172 = load i64, i64* %18, align 8
  %173 = sub nsw i64 %171, %172
  store i64 %173, i64* %16, align 8
  br label %174

174:                                              ; preds = %167, %164
  br label %175

175:                                              ; preds = %174, %117
  br label %239

176:                                              ; preds = %45
  %177 = load i32*, i32** %9, align 8
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @DRXJ_DEMOD_LOCK, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %237

181:                                              ; preds = %176
  %182 = load i32, i32* @jiffies, align 4
  %183 = call i64 @jiffies_to_msecs(i32 %182)
  %184 = load i64, i64* %17, align 8
  %185 = sub nsw i64 %183, %184
  %186 = load i64, i64* @DRXJ_QAM_FEC_LOCK_WAITTIME, align 8
  %187 = icmp sgt i64 %185, %186
  br i1 %187, label %188, label %237

188:                                              ; preds = %181
  %189 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %6, align 8
  %190 = call i32 @ctrl_get_qam_sig_quality(%struct.drx_demod_instance* %189)
  store i32 %190, i32* %14, align 4
  %191 = load i32, i32* %14, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %188
  %194 = load i32, i32* %14, align 4
  %195 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %194)
  br label %263

196:                                              ; preds = %188
  %197 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %13, align 8
  %198 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i64 0
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = icmp sgt i32 %203, 20800
  br i1 %204, label %205, label %236

205:                                              ; preds = %196
  %206 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %6, align 8
  %207 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %206, i32 0, i32 0
  %208 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %207, align 8
  %209 = load i32, i32* @QAM_SY_TIMEOUT__A, align 4
  %210 = call i32 @drxj_dap_read_reg16(%struct.i2c_device_addr* %208, i32 %209, i32* %19, i32 0)
  store i32 %210, i32* %14, align 4
  %211 = load i32, i32* %14, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %205
  %214 = load i32, i32* %14, align 4
  %215 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %214)
  br label %263

216:                                              ; preds = %205
  %217 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %6, align 8
  %218 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %217, i32 0, i32 0
  %219 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %218, align 8
  %220 = load i32, i32* @QAM_SY_TIMEOUT__A, align 4
  %221 = load i32, i32* %19, align 4
  %222 = or i32 %221, 1
  %223 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %219, i32 %220, i32 %222, i32 0)
  store i32 %223, i32* %14, align 4
  %224 = load i32, i32* %14, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %216
  %227 = load i32, i32* %14, align 4
  %228 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %227)
  br label %263

229:                                              ; preds = %216
  %230 = load i32, i32* @jiffies, align 4
  %231 = call i64 @jiffies_to_msecs(i32 %230)
  %232 = load i64, i64* @DRXJ_QAM_MAX_WAITTIME, align 8
  %233 = sub nsw i64 %231, %232
  %234 = load i64, i64* %18, align 8
  %235 = sub nsw i64 %233, %234
  store i64 %235, i64* %16, align 8
  br label %236

236:                                              ; preds = %229, %196
  br label %237

237:                                              ; preds = %236, %181, %176
  br label %239

238:                                              ; preds = %45
  br label %239

239:                                              ; preds = %238, %237, %175, %116, %77
  %240 = call i32 @msleep(i32 10)
  br label %241

241:                                              ; preds = %239
  %242 = load i32*, i32** %9, align 8
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @DRX_LOCKED, align 4
  %245 = icmp ne i32 %243, %244
  br i1 %245, label %246, label %260

246:                                              ; preds = %241
  %247 = load i32*, i32** %9, align 8
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @DRX_NEVER_LOCK, align 4
  %250 = icmp ne i32 %248, %249
  br i1 %250, label %251, label %260

251:                                              ; preds = %246
  %252 = load i32, i32* @jiffies, align 4
  %253 = call i64 @jiffies_to_msecs(i32 %252)
  %254 = load i64, i64* %16, align 8
  %255 = sub nsw i64 %253, %254
  %256 = load i64, i64* @DRXJ_QAM_MAX_WAITTIME, align 8
  %257 = load i64, i64* %18, align 8
  %258 = add nsw i64 %256, %257
  %259 = icmp slt i64 %255, %258
  br label %260

260:                                              ; preds = %251, %246, %241
  %261 = phi i1 [ false, %246 ], [ false, %241 ], [ %259, %251 ]
  br i1 %261, label %36, label %262

262:                                              ; preds = %260
  store i32 0, i32* %5, align 4
  br label %265

263:                                              ; preds = %226, %213, %193, %161, %149, %136, %111, %98, %57, %42
  %264 = load i32, i32* %14, align 4
  store i32 %264, i32* %5, align 4
  br label %265

265:                                              ; preds = %263, %262
  %266 = load i32, i32* %5, align 4
  ret i32 %266
}

declare dso_local i64 @jiffies_to_msecs(i32) #1

declare dso_local i32 @ctrl_lock_status(%struct.drx_demod_instance*, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @ctrl_get_qam_sig_quality(%struct.drx_demod_instance*) #1

declare dso_local i32 @drxj_dap_read_reg16(%struct.i2c_device_addr*, i32, i32*, i32) #1

declare dso_local i32 @drxj_dap_write_reg16(%struct.i2c_device_addr*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @qam_flip_spec(%struct.drx_demod_instance*, %struct.drx_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
