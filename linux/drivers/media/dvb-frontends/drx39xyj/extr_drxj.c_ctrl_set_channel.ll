; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_ctrl_set_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_ctrl_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drx_demod_instance = type { i64, %struct.i2c_device_addr* }
%struct.i2c_device_addr = type { i32 }
%struct.drx_channel = type { i32, i64, i32, i32, i32 }
%struct.drxj_data = type { i32, i64, i32, i32 }
%struct.drxuio_cfg = type { i64, i32 }
%struct.drxuio_data = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@DRX_STANDARD_NTSC = common dso_local global i32 0, align 4
@DRX_UIO1 = common dso_local global i32 0, align 4
@DRX_UIO_MODE_FIRMWARE_SAW = common dso_local global i64 0, align 8
@DRXJ_QAM_SYMBOLRATE_MIN = common dso_local global i64 0, align 8
@DRXJ_QAM_SYMBOLRATE_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"error %d\0A\00", align 1
@SCU_COMM_EXEC__A = common dso_local global i32 0, align 4
@SCU_COMM_EXEC_ACTIVE = common dso_local global i32 0, align 4
@DRX_MIRROR_AUTO = common dso_local global i32 0, align 4
@DRX_MIRROR_NO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drx_demod_instance*, %struct.drx_channel*)* @ctrl_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_set_channel(%struct.drx_demod_instance* %0, %struct.drx_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drx_demod_instance*, align 8
  %5 = alloca %struct.drx_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.drxj_data*, align 8
  %9 = alloca %struct.i2c_device_addr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.drxuio_cfg, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.drxuio_data, align 4
  store %struct.drx_demod_instance* %0, %struct.drx_demod_instance** %4, align 8
  store %struct.drx_channel* %1, %struct.drx_channel** %5, align 8
  store i64 0, i64* %7, align 8
  store %struct.drxj_data* null, %struct.drxj_data** %8, align 8
  store %struct.i2c_device_addr* null, %struct.i2c_device_addr** %9, align 8
  store i32 128, i32* %10, align 4
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %18 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %19 = icmp eq %struct.drx_demod_instance* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load %struct.drx_channel*, %struct.drx_channel** %5, align 8
  %22 = icmp eq %struct.drx_channel* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20, %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %274

26:                                               ; preds = %20
  %27 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %28 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %27, i32 0, i32 1
  %29 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %28, align 8
  store %struct.i2c_device_addr* %29, %struct.i2c_device_addr** %9, align 8
  %30 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %31 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.drxj_data*
  store %struct.drxj_data* %33, %struct.drxj_data** %8, align 8
  %34 = load %struct.drxj_data*, %struct.drxj_data** %8, align 8
  %35 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  switch i32 %37, label %40 [
    i32 132, label %38
    i32 131, label %38
    i32 130, label %38
    i32 129, label %38
    i32 128, label %39
  ]

38:                                               ; preds = %26, %26, %26, %26
  br label %43

39:                                               ; preds = %26
  br label %40

40:                                               ; preds = %26, %39
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %274

43:                                               ; preds = %38
  %44 = load i32, i32* %10, align 4
  %45 = icmp eq i32 %44, 130
  br i1 %45, label %53, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %10, align 4
  %48 = icmp eq i32 %47, 132
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @DRX_STANDARD_NTSC, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %49, %46, %43
  %54 = load %struct.drx_channel*, %struct.drx_channel** %5, align 8
  %55 = getelementptr inbounds %struct.drx_channel, %struct.drx_channel* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %61 [
    i32 161, label %57
    i32 158, label %57
    i32 159, label %60
    i32 160, label %60
  ]

57:                                               ; preds = %53, %53
  %58 = load %struct.drx_channel*, %struct.drx_channel** %5, align 8
  %59 = getelementptr inbounds %struct.drx_channel, %struct.drx_channel* %58, i32 0, i32 0
  store i32 161, i32* %59, align 8
  br label %64

60:                                               ; preds = %53, %53
  br label %61

61:                                               ; preds = %53, %60
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %274

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64, %49
  %66 = load i32, i32* %10, align 4
  %67 = icmp eq i32 %66, 131
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %10, align 4
  %70 = icmp eq i32 %69, 129
  br i1 %70, label %71, label %154

71:                                               ; preds = %68, %65
  %72 = getelementptr inbounds %struct.drxuio_cfg, %struct.drxuio_cfg* %15, i32 0, i32 0
  %73 = load i32, i32* @DRX_UIO1, align 4
  %74 = sext i32 %73 to i64
  store i64 %74, i64* %72, align 8
  %75 = getelementptr inbounds %struct.drxuio_cfg, %struct.drxuio_cfg* %15, i32 0, i32 1
  %76 = load i64, i64* @DRX_UIO_MODE_FIRMWARE_SAW, align 8
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %75, align 8
  store i32 0, i32* %16, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp eq i32 %78, 131
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 115, i32 113
  store i32 %81, i32* %16, align 4
  %82 = load i64, i64* @DRXJ_QAM_SYMBOLRATE_MIN, align 8
  store i64 %82, i64* %11, align 8
  %83 = load i64, i64* @DRXJ_QAM_SYMBOLRATE_MAX, align 8
  store i64 %83, i64* %12, align 8
  %84 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %85 = call i32 @ctrl_set_uio_cfg(%struct.drx_demod_instance* %84, %struct.drxuio_cfg* %15)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %71
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %89)
  br label %272

91:                                               ; preds = %71
  %92 = load %struct.drx_channel*, %struct.drx_channel** %5, align 8
  %93 = getelementptr inbounds %struct.drx_channel, %struct.drx_channel* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %11, align 8
  %96 = icmp slt i64 %94, %95
  br i1 %96, label %103, label %97

97:                                               ; preds = %91
  %98 = load %struct.drx_channel*, %struct.drx_channel** %5, align 8
  %99 = getelementptr inbounds %struct.drx_channel, %struct.drx_channel* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %12, align 8
  %102 = icmp sgt i64 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %97, %91
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %3, align 4
  br label %274

106:                                              ; preds = %97
  %107 = load %struct.drx_channel*, %struct.drx_channel** %5, align 8
  %108 = getelementptr inbounds %struct.drx_channel, %struct.drx_channel* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  switch i32 %109, label %150 [
    i32 155, label %110
    i32 153, label %110
    i32 152, label %110
    i32 156, label %110
    i32 154, label %110
  ]

110:                                              ; preds = %106, %106, %106, %106, %106
  %111 = load %struct.drx_channel*, %struct.drx_channel** %5, align 8
  %112 = getelementptr inbounds %struct.drx_channel, %struct.drx_channel* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* %16, align 4
  %115 = sext i32 %114 to i64
  %116 = mul nsw i64 %113, %115
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %13, align 4
  %118 = load i32, i32* %13, align 4
  %119 = sdiv i32 %118, 100
  store i32 %119, i32* %14, align 4
  %120 = load i32, i32* %13, align 4
  %121 = srem i32 %120, 100
  %122 = icmp sge i32 %121, 50
  br i1 %122, label %123, label %126

123:                                              ; preds = %110
  %124 = load i32, i32* %14, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %14, align 4
  br label %126

126:                                              ; preds = %123, %110
  %127 = load i32, i32* %14, align 4
  %128 = icmp sle i32 %127, 6100000
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load %struct.drx_channel*, %struct.drx_channel** %5, align 8
  %131 = getelementptr inbounds %struct.drx_channel, %struct.drx_channel* %130, i32 0, i32 0
  store i32 161, i32* %131, align 8
  br label %149

132:                                              ; preds = %126
  %133 = load i32, i32* %14, align 4
  %134 = icmp sgt i32 %133, 6100000
  br i1 %134, label %135, label %141

135:                                              ; preds = %132
  %136 = load i32, i32* %14, align 4
  %137 = icmp sle i32 %136, 7100000
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load %struct.drx_channel*, %struct.drx_channel** %5, align 8
  %140 = getelementptr inbounds %struct.drx_channel, %struct.drx_channel* %139, i32 0, i32 0
  store i32 160, i32* %140, align 8
  br label %148

141:                                              ; preds = %135, %132
  %142 = load i32, i32* %14, align 4
  %143 = icmp sgt i32 %142, 7100000
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load %struct.drx_channel*, %struct.drx_channel** %5, align 8
  %146 = getelementptr inbounds %struct.drx_channel, %struct.drx_channel* %145, i32 0, i32 0
  store i32 159, i32* %146, align 8
  br label %147

147:                                              ; preds = %144, %141
  br label %148

148:                                              ; preds = %147, %138
  br label %149

149:                                              ; preds = %148, %129
  br label %153

150:                                              ; preds = %106
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %3, align 4
  br label %274

153:                                              ; preds = %149
  br label %154

154:                                              ; preds = %153, %68
  %155 = load i32, i32* %10, align 4
  %156 = icmp eq i32 %155, 130
  br i1 %156, label %157, label %174

157:                                              ; preds = %154
  %158 = load %struct.drx_channel*, %struct.drx_channel** %5, align 8
  %159 = getelementptr inbounds %struct.drx_channel, %struct.drx_channel* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  switch i32 %160, label %162 [
    i32 157, label %161
    i32 154, label %161
    i32 152, label %161
  ]

161:                                              ; preds = %157, %157, %157
  br label %165

162:                                              ; preds = %157
  %163 = load i32, i32* @EINVAL, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %3, align 4
  br label %274

165:                                              ; preds = %161
  %166 = load %struct.drx_channel*, %struct.drx_channel** %5, align 8
  %167 = getelementptr inbounds %struct.drx_channel, %struct.drx_channel* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  switch i32 %168, label %170 [
    i32 148, label %169
    i32 147, label %169
    i32 146, label %169
    i32 135, label %169
    i32 145, label %169
    i32 137, label %169
    i32 144, label %169
    i32 138, label %169
    i32 143, label %169
    i32 134, label %169
    i32 142, label %169
    i32 141, label %169
    i32 140, label %169
    i32 139, label %169
    i32 136, label %169
    i32 150, label %169
    i32 149, label %169
    i32 133, label %169
    i32 151, label %169
  ]

169:                                              ; preds = %165, %165, %165, %165, %165, %165, %165, %165, %165, %165, %165, %165, %165, %165, %165, %165, %165, %165, %165
  br label %173

170:                                              ; preds = %165
  %171 = load i32, i32* @EINVAL, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %3, align 4
  br label %274

173:                                              ; preds = %169
  br label %174

174:                                              ; preds = %173, %154
  %175 = load %struct.drxj_data*, %struct.drxj_data** %8, align 8
  %176 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @DRX_UIO_MODE_FIRMWARE_SAW, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %207

180:                                              ; preds = %174
  %181 = getelementptr inbounds %struct.drxuio_data, %struct.drxuio_data* %17, i32 0, i32 0
  %182 = load i32, i32* @DRX_UIO1, align 4
  store i32 %182, i32* %181, align 4
  %183 = getelementptr inbounds %struct.drxuio_data, %struct.drxuio_data* %17, i32 0, i32 1
  store i32 0, i32* %183, align 4
  %184 = getelementptr inbounds %struct.drxuio_data, %struct.drxuio_data* %17, i32 0, i32 2
  store i32 0, i32* %184, align 4
  %185 = load %struct.drx_channel*, %struct.drx_channel** %5, align 8
  %186 = getelementptr inbounds %struct.drx_channel, %struct.drx_channel* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  switch i32 %187, label %195 [
    i32 159, label %188
    i32 160, label %190
    i32 161, label %192
    i32 158, label %194
  ]

188:                                              ; preds = %180
  %189 = getelementptr inbounds %struct.drxuio_data, %struct.drxuio_data* %17, i32 0, i32 1
  store i32 1, i32* %189, align 4
  br label %198

190:                                              ; preds = %180
  %191 = getelementptr inbounds %struct.drxuio_data, %struct.drxuio_data* %17, i32 0, i32 1
  store i32 0, i32* %191, align 4
  br label %198

192:                                              ; preds = %180
  %193 = getelementptr inbounds %struct.drxuio_data, %struct.drxuio_data* %17, i32 0, i32 1
  store i32 0, i32* %193, align 4
  br label %198

194:                                              ; preds = %180
  br label %195

195:                                              ; preds = %180, %194
  %196 = load i32, i32* @EINVAL, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %3, align 4
  br label %274

198:                                              ; preds = %192, %190, %188
  %199 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %200 = call i32 @ctrl_uio_write(%struct.drx_demod_instance* %199, %struct.drxuio_data* %17)
  store i32 %200, i32* %6, align 4
  %201 = load i32, i32* %6, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %198
  %204 = load i32, i32* %6, align 4
  %205 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %204)
  br label %272

206:                                              ; preds = %198
  br label %207

207:                                              ; preds = %206, %174
  %208 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %9, align 8
  %209 = load i32, i32* @SCU_COMM_EXEC__A, align 4
  %210 = load i32, i32* @SCU_COMM_EXEC_ACTIVE, align 4
  %211 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %208, i32 %209, i32 %210, i32 0)
  store i32 %211, i32* %6, align 4
  %212 = load i32, i32* %6, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %207
  %215 = load i32, i32* %6, align 4
  %216 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %215)
  br label %272

217:                                              ; preds = %207
  store i64 0, i64* %7, align 8
  %218 = load i32, i32* %10, align 4
  switch i32 %218, label %266 [
    i32 132, label %219
    i32 131, label %254
    i32 130, label %254
    i32 129, label %254
    i32 128, label %265
  ]

219:                                              ; preds = %217
  %220 = load %struct.drx_channel*, %struct.drx_channel** %5, align 8
  %221 = getelementptr inbounds %struct.drx_channel, %struct.drx_channel* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @DRX_MIRROR_AUTO, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %229

225:                                              ; preds = %219
  %226 = load i32, i32* @DRX_MIRROR_NO, align 4
  %227 = load %struct.drxj_data*, %struct.drxj_data** %8, align 8
  %228 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %227, i32 0, i32 3
  store i32 %226, i32* %228, align 4
  br label %235

229:                                              ; preds = %219
  %230 = load %struct.drx_channel*, %struct.drx_channel** %5, align 8
  %231 = getelementptr inbounds %struct.drx_channel, %struct.drx_channel* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.drxj_data*, %struct.drxj_data** %8, align 8
  %234 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %233, i32 0, i32 3
  store i32 %232, i32* %234, align 4
  br label %235

235:                                              ; preds = %229, %225
  %236 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %237 = call i32 @set_vsb(%struct.drx_demod_instance* %236)
  store i32 %237, i32* %6, align 4
  %238 = load i32, i32* %6, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %235
  %241 = load i32, i32* %6, align 4
  %242 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %241)
  br label %272

243:                                              ; preds = %235
  %244 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %245 = load %struct.drx_channel*, %struct.drx_channel** %5, align 8
  %246 = load i64, i64* %7, align 8
  %247 = call i32 @set_frequency(%struct.drx_demod_instance* %244, %struct.drx_channel* %245, i64 %246)
  store i32 %247, i32* %6, align 4
  %248 = load i32, i32* %6, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %243
  %251 = load i32, i32* %6, align 4
  %252 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %251)
  br label %272

253:                                              ; preds = %243
  br label %269

254:                                              ; preds = %217, %217, %217
  %255 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %256 = load %struct.drx_channel*, %struct.drx_channel** %5, align 8
  %257 = load i64, i64* %7, align 8
  %258 = call i32 @set_qam_channel(%struct.drx_demod_instance* %255, %struct.drx_channel* %256, i64 %257)
  store i32 %258, i32* %6, align 4
  %259 = load i32, i32* %6, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %254
  %262 = load i32, i32* %6, align 4
  %263 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %262)
  br label %272

264:                                              ; preds = %254
  br label %269

265:                                              ; preds = %217
  br label %266

266:                                              ; preds = %217, %265
  %267 = load i32, i32* @EIO, align 4
  %268 = sub nsw i32 0, %267
  store i32 %268, i32* %3, align 4
  br label %274

269:                                              ; preds = %264, %253
  %270 = load %struct.drxj_data*, %struct.drxj_data** %8, align 8
  %271 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %270, i32 0, i32 2
  store i32 1, i32* %271, align 8
  store i32 0, i32* %3, align 4
  br label %274

272:                                              ; preds = %261, %250, %240, %214, %203, %88
  %273 = load i32, i32* %6, align 4
  store i32 %273, i32* %3, align 4
  br label %274

274:                                              ; preds = %272, %269, %266, %195, %170, %162, %150, %103, %61, %40, %23
  %275 = load i32, i32* %3, align 4
  ret i32 %275
}

declare dso_local i32 @ctrl_set_uio_cfg(%struct.drx_demod_instance*, %struct.drxuio_cfg*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @ctrl_uio_write(%struct.drx_demod_instance*, %struct.drxuio_data*) #1

declare dso_local i32 @drxj_dap_write_reg16(%struct.i2c_device_addr*, i32, i32, i32) #1

declare dso_local i32 @set_vsb(%struct.drx_demod_instance*) #1

declare dso_local i32 @set_frequency(%struct.drx_demod_instance*, %struct.drx_channel*, i64) #1

declare dso_local i32 @set_qam_channel(%struct.drx_demod_instance*, %struct.drx_channel*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
