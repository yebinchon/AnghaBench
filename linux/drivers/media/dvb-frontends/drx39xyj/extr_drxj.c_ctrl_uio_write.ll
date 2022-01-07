; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_ctrl_uio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_ctrl_uio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drx_demod_instance = type { i32, i64 }
%struct.drxuio_data = type { i32, i32 }
%struct.drxj_data = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SIO_TOP_COMM_KEY__A = common dso_local global i32 0, align 4
@SIO_TOP_COMM_KEY_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"error %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@DRX_UIO_MODE_READWRITE = common dso_local global i32 0, align 4
@DRX_UIO_MODE_FIRMWARE_SAW = common dso_local global i32 0, align 4
@SIO_PDR_SMA_TX_CFG__A = common dso_local global i32 0, align 4
@SIO_PDR_UIO_OUT_LO__A = common dso_local global i32 0, align 4
@SIO_PDR_SMA_RX_CFG__A = common dso_local global i32 0, align 4
@SIO_PDR_GPIO_CFG__A = common dso_local global i32 0, align 4
@SIO_PDR_UIO_OUT_HI__A = common dso_local global i32 0, align 4
@SIO_PDR_IRQN_CFG__A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drx_demod_instance*, %struct.drxuio_data*)* @ctrl_uio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_uio_write(%struct.drx_demod_instance* %0, %struct.drxuio_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drx_demod_instance*, align 8
  %5 = alloca %struct.drxuio_data*, align 8
  %6 = alloca %struct.drxj_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drx_demod_instance* %0, %struct.drx_demod_instance** %4, align 8
  store %struct.drxuio_data* %1, %struct.drxuio_data** %5, align 8
  store %struct.drxj_data* null, %struct.drxj_data** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.drxuio_data*, %struct.drxuio_data** %5, align 8
  %11 = icmp eq %struct.drxuio_data* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %14 = icmp eq %struct.drx_demod_instance* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12, %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %325

18:                                               ; preds = %12
  %19 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %20 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.drxj_data*
  store %struct.drxj_data* %22, %struct.drxj_data** %6, align 8
  %23 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %24 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SIO_TOP_COMM_KEY__A, align 4
  %27 = load i32, i32* @SIO_TOP_COMM_KEY_KEY, align 4
  %28 = call i32 @drxj_dap_write_reg16(i32 %25, i32 %26, i32 %27, i32 0)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %18
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %323

34:                                               ; preds = %18
  %35 = load %struct.drxuio_data*, %struct.drxuio_data** %5, align 8
  %36 = getelementptr inbounds %struct.drxuio_data, %struct.drxuio_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %308 [
    i32 131, label %38
    i32 130, label %110
    i32 129, label %176
    i32 128, label %242
  ]

38:                                               ; preds = %34
  %39 = load %struct.drxj_data*, %struct.drxj_data** %6, align 8
  %40 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %325

46:                                               ; preds = %38
  %47 = load %struct.drxj_data*, %struct.drxj_data** %6, align 8
  %48 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @DRX_UIO_MODE_READWRITE, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  %53 = load %struct.drxj_data*, %struct.drxj_data** %6, align 8
  %54 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @DRX_UIO_MODE_FIRMWARE_SAW, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %325

61:                                               ; preds = %52, %46
  store i32 0, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, 275
  store i32 %63, i32* %8, align 4
  %64 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %65 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @SIO_PDR_SMA_TX_CFG__A, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @drxj_dap_write_reg16(i32 %66, i32 %67, i32 %68, i32 0)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %61
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %323

75:                                               ; preds = %61
  %76 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %77 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @SIO_PDR_UIO_OUT_LO__A, align 4
  %80 = call i32 @drxj_dap_read_reg16(i32 %78, i32 %79, i32* %9, i32 0)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %75
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %84)
  br label %323

86:                                               ; preds = %75
  %87 = load %struct.drxuio_data*, %struct.drxuio_data** %5, align 8
  %88 = getelementptr inbounds %struct.drxuio_data, %struct.drxuio_data* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %86
  %92 = load i32, i32* %9, align 4
  %93 = and i32 %92, 32767
  store i32 %93, i32* %9, align 4
  br label %97

94:                                               ; preds = %86
  %95 = load i32, i32* %9, align 4
  %96 = or i32 %95, 32768
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %94, %91
  %98 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %99 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @SIO_PDR_UIO_OUT_LO__A, align 4
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @drxj_dap_write_reg16(i32 %100, i32 %101, i32 %102, i32 0)
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %97
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %107)
  br label %323

109:                                              ; preds = %97
  br label %311

110:                                              ; preds = %34
  %111 = load %struct.drxj_data*, %struct.drxj_data** %6, align 8
  %112 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %110
  %116 = load i32, i32* @EIO, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %3, align 4
  br label %325

118:                                              ; preds = %110
  %119 = load %struct.drxj_data*, %struct.drxj_data** %6, align 8
  %120 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @DRX_UIO_MODE_READWRITE, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = load i32, i32* @EIO, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %325

127:                                              ; preds = %118
  store i32 0, i32* %8, align 4
  %128 = load i32, i32* %8, align 4
  %129 = or i32 %128, 275
  store i32 %129, i32* %8, align 4
  %130 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %131 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @SIO_PDR_SMA_RX_CFG__A, align 4
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @drxj_dap_write_reg16(i32 %132, i32 %133, i32 %134, i32 0)
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* %7, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %127
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %139)
  br label %323

141:                                              ; preds = %127
  %142 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %143 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @SIO_PDR_UIO_OUT_LO__A, align 4
  %146 = call i32 @drxj_dap_read_reg16(i32 %144, i32 %145, i32* %9, i32 0)
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* %7, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %141
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %150)
  br label %323

152:                                              ; preds = %141
  %153 = load %struct.drxuio_data*, %struct.drxuio_data** %5, align 8
  %154 = getelementptr inbounds %struct.drxuio_data, %struct.drxuio_data* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %152
  %158 = load i32, i32* %9, align 4
  %159 = and i32 %158, 49151
  store i32 %159, i32* %9, align 4
  br label %163

160:                                              ; preds = %152
  %161 = load i32, i32* %9, align 4
  %162 = or i32 %161, 16384
  store i32 %162, i32* %9, align 4
  br label %163

163:                                              ; preds = %160, %157
  %164 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %165 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @SIO_PDR_UIO_OUT_LO__A, align 4
  %168 = load i32, i32* %9, align 4
  %169 = call i32 @drxj_dap_write_reg16(i32 %166, i32 %167, i32 %168, i32 0)
  store i32 %169, i32* %7, align 4
  %170 = load i32, i32* %7, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %163
  %173 = load i32, i32* %7, align 4
  %174 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %173)
  br label %323

175:                                              ; preds = %163
  br label %311

176:                                              ; preds = %34
  %177 = load %struct.drxj_data*, %struct.drxj_data** %6, align 8
  %178 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %184, label %181

181:                                              ; preds = %176
  %182 = load i32, i32* @EIO, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %3, align 4
  br label %325

184:                                              ; preds = %176
  %185 = load %struct.drxj_data*, %struct.drxj_data** %6, align 8
  %186 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @DRX_UIO_MODE_READWRITE, align 4
  %189 = icmp ne i32 %187, %188
  br i1 %189, label %190, label %193

190:                                              ; preds = %184
  %191 = load i32, i32* @EIO, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %3, align 4
  br label %325

193:                                              ; preds = %184
  store i32 0, i32* %8, align 4
  %194 = load i32, i32* %8, align 4
  %195 = or i32 %194, 275
  store i32 %195, i32* %8, align 4
  %196 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %197 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @SIO_PDR_GPIO_CFG__A, align 4
  %200 = load i32, i32* %8, align 4
  %201 = call i32 @drxj_dap_write_reg16(i32 %198, i32 %199, i32 %200, i32 0)
  store i32 %201, i32* %7, align 4
  %202 = load i32, i32* %7, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %193
  %205 = load i32, i32* %7, align 4
  %206 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %205)
  br label %323

207:                                              ; preds = %193
  %208 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %209 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @SIO_PDR_UIO_OUT_HI__A, align 4
  %212 = call i32 @drxj_dap_read_reg16(i32 %210, i32 %211, i32* %9, i32 0)
  store i32 %212, i32* %7, align 4
  %213 = load i32, i32* %7, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %207
  %216 = load i32, i32* %7, align 4
  %217 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %216)
  br label %323

218:                                              ; preds = %207
  %219 = load %struct.drxuio_data*, %struct.drxuio_data** %5, align 8
  %220 = getelementptr inbounds %struct.drxuio_data, %struct.drxuio_data* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %226, label %223

223:                                              ; preds = %218
  %224 = load i32, i32* %9, align 4
  %225 = and i32 %224, 65531
  store i32 %225, i32* %9, align 4
  br label %229

226:                                              ; preds = %218
  %227 = load i32, i32* %9, align 4
  %228 = or i32 %227, 4
  store i32 %228, i32* %9, align 4
  br label %229

229:                                              ; preds = %226, %223
  %230 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %231 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @SIO_PDR_UIO_OUT_HI__A, align 4
  %234 = load i32, i32* %9, align 4
  %235 = call i32 @drxj_dap_write_reg16(i32 %232, i32 %233, i32 %234, i32 0)
  store i32 %235, i32* %7, align 4
  %236 = load i32, i32* %7, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %241

238:                                              ; preds = %229
  %239 = load i32, i32* %7, align 4
  %240 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %239)
  br label %323

241:                                              ; preds = %229
  br label %311

242:                                              ; preds = %34
  %243 = load %struct.drxj_data*, %struct.drxj_data** %6, align 8
  %244 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %250, label %247

247:                                              ; preds = %242
  %248 = load i32, i32* @EIO, align 4
  %249 = sub nsw i32 0, %248
  store i32 %249, i32* %3, align 4
  br label %325

250:                                              ; preds = %242
  %251 = load %struct.drxj_data*, %struct.drxj_data** %6, align 8
  %252 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @DRX_UIO_MODE_READWRITE, align 4
  %255 = icmp ne i32 %253, %254
  br i1 %255, label %256, label %259

256:                                              ; preds = %250
  %257 = load i32, i32* @EIO, align 4
  %258 = sub nsw i32 0, %257
  store i32 %258, i32* %3, align 4
  br label %325

259:                                              ; preds = %250
  store i32 0, i32* %8, align 4
  %260 = load i32, i32* %8, align 4
  %261 = or i32 %260, 275
  store i32 %261, i32* %8, align 4
  %262 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %263 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* @SIO_PDR_IRQN_CFG__A, align 4
  %266 = load i32, i32* %8, align 4
  %267 = call i32 @drxj_dap_write_reg16(i32 %264, i32 %265, i32 %266, i32 0)
  store i32 %267, i32* %7, align 4
  %268 = load i32, i32* %7, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %259
  %271 = load i32, i32* %7, align 4
  %272 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %271)
  br label %323

273:                                              ; preds = %259
  %274 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %275 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* @SIO_PDR_UIO_OUT_LO__A, align 4
  %278 = call i32 @drxj_dap_read_reg16(i32 %276, i32 %277, i32* %9, i32 0)
  store i32 %278, i32* %7, align 4
  %279 = load i32, i32* %7, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %284

281:                                              ; preds = %273
  %282 = load i32, i32* %7, align 4
  %283 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %282)
  br label %323

284:                                              ; preds = %273
  %285 = load %struct.drxuio_data*, %struct.drxuio_data** %5, align 8
  %286 = getelementptr inbounds %struct.drxuio_data, %struct.drxuio_data* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %292

289:                                              ; preds = %284
  %290 = load i32, i32* %9, align 4
  %291 = and i32 %290, 61439
  store i32 %291, i32* %9, align 4
  br label %295

292:                                              ; preds = %284
  %293 = load i32, i32* %9, align 4
  %294 = or i32 %293, 4096
  store i32 %294, i32* %9, align 4
  br label %295

295:                                              ; preds = %292, %289
  %296 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %297 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* @SIO_PDR_UIO_OUT_LO__A, align 4
  %300 = load i32, i32* %9, align 4
  %301 = call i32 @drxj_dap_write_reg16(i32 %298, i32 %299, i32 %300, i32 0)
  store i32 %301, i32* %7, align 4
  %302 = load i32, i32* %7, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %307

304:                                              ; preds = %295
  %305 = load i32, i32* %7, align 4
  %306 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %305)
  br label %323

307:                                              ; preds = %295
  br label %311

308:                                              ; preds = %34
  %309 = load i32, i32* @EINVAL, align 4
  %310 = sub nsw i32 0, %309
  store i32 %310, i32* %3, align 4
  br label %325

311:                                              ; preds = %307, %241, %175, %109
  %312 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %313 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* @SIO_TOP_COMM_KEY__A, align 4
  %316 = call i32 @drxj_dap_write_reg16(i32 %314, i32 %315, i32 0, i32 0)
  store i32 %316, i32* %7, align 4
  %317 = load i32, i32* %7, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %322

319:                                              ; preds = %311
  %320 = load i32, i32* %7, align 4
  %321 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %320)
  br label %323

322:                                              ; preds = %311
  store i32 0, i32* %3, align 4
  br label %325

323:                                              ; preds = %319, %304, %281, %270, %238, %215, %204, %172, %149, %138, %106, %83, %72, %31
  %324 = load i32, i32* %7, align 4
  store i32 %324, i32* %3, align 4
  br label %325

325:                                              ; preds = %323, %322, %308, %256, %247, %190, %181, %124, %115, %58, %43, %15
  %326 = load i32, i32* %3, align 4
  ret i32 %326
}

declare dso_local i32 @drxj_dap_write_reg16(i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @drxj_dap_read_reg16(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
