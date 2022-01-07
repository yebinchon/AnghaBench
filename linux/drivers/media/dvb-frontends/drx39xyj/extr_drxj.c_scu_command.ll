; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_scu_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_scu_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_device_addr = type { i32 }
%struct.drxjscu_cmd = type { i32, i32, i64*, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@SCU_RAM_COMMAND__A = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"error %d\0A\00", align 1
@DRX_SCU_READY = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@SCU_RAM_PARAM_4__A = common dso_local global i32 0, align 4
@SCU_RAM_PARAM_3__A = common dso_local global i32 0, align 4
@SCU_RAM_PARAM_2__A = common dso_local global i32 0, align 4
@SCU_RAM_PARAM_1__A = common dso_local global i32 0, align 4
@SCU_RAM_PARAM_0__A = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@DRXJ_MAX_WAITTIME = common dso_local global i32 0, align 4
@SCU_RAM_PARAM_0_RESULT_UNKSTD = common dso_local global i64 0, align 8
@SCU_RAM_PARAM_0_RESULT_UNKCMD = common dso_local global i64 0, align 8
@SCU_RAM_PARAM_0_RESULT_INVPAR = common dso_local global i64 0, align 8
@SCU_RAM_PARAM_0_RESULT_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_device_addr*, %struct.drxjscu_cmd*)* @scu_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scu_command(%struct.i2c_device_addr* %0, %struct.drxjscu_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_device_addr*, align 8
  %5 = alloca %struct.drxjscu_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.i2c_device_addr* %0, %struct.i2c_device_addr** %4, align 8
  store %struct.drxjscu_cmd* %1, %struct.drxjscu_cmd** %5, align 8
  store i64 0, i64* %7, align 8
  %10 = load %struct.drxjscu_cmd*, %struct.drxjscu_cmd** %5, align 8
  %11 = icmp eq %struct.drxjscu_cmd* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %266

15:                                               ; preds = %2
  %16 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %17 = load i32, i32* @SCU_RAM_COMMAND__A, align 4
  %18 = call i32 @drxj_dap_read_reg16(%struct.i2c_device_addr* %16, i32 %17, i64* %7, i32 0)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %264

24:                                               ; preds = %15
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @DRX_SCU_READY, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %266

31:                                               ; preds = %24
  %32 = load %struct.drxjscu_cmd*, %struct.drxjscu_cmd** %5, align 8
  %33 = getelementptr inbounds %struct.drxjscu_cmd, %struct.drxjscu_cmd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %111 [
    i32 5, label %35
    i32 4, label %50
    i32 3, label %65
    i32 2, label %80
    i32 1, label %95
    i32 0, label %110
  ]

35:                                               ; preds = %31
  %36 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %37 = load i32, i32* @SCU_RAM_PARAM_4__A, align 4
  %38 = load %struct.drxjscu_cmd*, %struct.drxjscu_cmd** %5, align 8
  %39 = getelementptr inbounds %struct.drxjscu_cmd, %struct.drxjscu_cmd* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 4
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %36, i32 %37, i32 %42, i32 0)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %35
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %264

49:                                               ; preds = %35
  br label %50

50:                                               ; preds = %31, %49
  %51 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %52 = load i32, i32* @SCU_RAM_PARAM_3__A, align 4
  %53 = load %struct.drxjscu_cmd*, %struct.drxjscu_cmd** %5, align 8
  %54 = getelementptr inbounds %struct.drxjscu_cmd, %struct.drxjscu_cmd* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %51, i32 %52, i32 %57, i32 0)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %50
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %264

64:                                               ; preds = %50
  br label %65

65:                                               ; preds = %31, %64
  %66 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %67 = load i32, i32* @SCU_RAM_PARAM_2__A, align 4
  %68 = load %struct.drxjscu_cmd*, %struct.drxjscu_cmd** %5, align 8
  %69 = getelementptr inbounds %struct.drxjscu_cmd, %struct.drxjscu_cmd* %68, i32 0, i32 4
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %66, i32 %67, i32 %72, i32 0)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %65
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %77)
  br label %264

79:                                               ; preds = %65
  br label %80

80:                                               ; preds = %31, %79
  %81 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %82 = load i32, i32* @SCU_RAM_PARAM_1__A, align 4
  %83 = load %struct.drxjscu_cmd*, %struct.drxjscu_cmd** %5, align 8
  %84 = getelementptr inbounds %struct.drxjscu_cmd, %struct.drxjscu_cmd* %83, i32 0, i32 4
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %81, i32 %82, i32 %87, i32 0)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %80
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %92)
  br label %264

94:                                               ; preds = %80
  br label %95

95:                                               ; preds = %31, %94
  %96 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %97 = load i32, i32* @SCU_RAM_PARAM_0__A, align 4
  %98 = load %struct.drxjscu_cmd*, %struct.drxjscu_cmd** %5, align 8
  %99 = getelementptr inbounds %struct.drxjscu_cmd, %struct.drxjscu_cmd* %98, i32 0, i32 4
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %96, i32 %97, i32 %102, i32 0)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %95
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %107)
  br label %264

109:                                              ; preds = %95
  br label %110

110:                                              ; preds = %31, %109
  br label %114

111:                                              ; preds = %31
  %112 = load i32, i32* @EIO, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %3, align 4
  br label %266

114:                                              ; preds = %110
  %115 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %116 = load i32, i32* @SCU_RAM_COMMAND__A, align 4
  %117 = load %struct.drxjscu_cmd*, %struct.drxjscu_cmd** %5, align 8
  %118 = getelementptr inbounds %struct.drxjscu_cmd, %struct.drxjscu_cmd* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %115, i32 %116, i32 %119, i32 0)
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* %6, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %114
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %124)
  br label %264

126:                                              ; preds = %114
  %127 = load i64, i64* @jiffies, align 8
  %128 = load i32, i32* @DRXJ_MAX_WAITTIME, align 4
  %129 = call i64 @msecs_to_jiffies(i32 %128)
  %130 = add i64 %127, %129
  store i64 %130, i64* %8, align 8
  br label %131

131:                                              ; preds = %149, %126
  %132 = load i64, i64* %8, align 8
  %133 = call i64 @time_is_after_jiffies(i64 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %151

135:                                              ; preds = %131
  %136 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %137 = load i32, i32* @SCU_RAM_COMMAND__A, align 4
  %138 = call i32 @drxj_dap_read_reg16(%struct.i2c_device_addr* %136, i32 %137, i64* %7, i32 0)
  store i32 %138, i32* %6, align 4
  %139 = load i32, i32* %6, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %135
  %142 = load i32, i32* %6, align 4
  %143 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %142)
  br label %264

144:                                              ; preds = %135
  %145 = load i64, i64* %7, align 8
  %146 = load i64, i64* @DRX_SCU_READY, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  br label %151

149:                                              ; preds = %144
  %150 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %131

151:                                              ; preds = %148, %131
  %152 = load i64, i64* %7, align 8
  %153 = load i64, i64* @DRX_SCU_READY, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %151
  %156 = load i32, i32* @EIO, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %3, align 4
  br label %266

158:                                              ; preds = %151
  %159 = load %struct.drxjscu_cmd*, %struct.drxjscu_cmd** %5, align 8
  %160 = getelementptr inbounds %struct.drxjscu_cmd, %struct.drxjscu_cmd* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %263

163:                                              ; preds = %158
  %164 = load %struct.drxjscu_cmd*, %struct.drxjscu_cmd** %5, align 8
  %165 = getelementptr inbounds %struct.drxjscu_cmd, %struct.drxjscu_cmd* %164, i32 0, i32 2
  %166 = load i64*, i64** %165, align 8
  %167 = icmp ne i64* %166, null
  br i1 %167, label %168, label %263

168:                                              ; preds = %163
  %169 = load %struct.drxjscu_cmd*, %struct.drxjscu_cmd** %5, align 8
  %170 = getelementptr inbounds %struct.drxjscu_cmd, %struct.drxjscu_cmd* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  switch i32 %171, label %229 [
    i32 4, label %172
    i32 3, label %186
    i32 2, label %200
    i32 1, label %214
    i32 0, label %228
  ]

172:                                              ; preds = %168
  %173 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %174 = load i32, i32* @SCU_RAM_PARAM_3__A, align 4
  %175 = load %struct.drxjscu_cmd*, %struct.drxjscu_cmd** %5, align 8
  %176 = getelementptr inbounds %struct.drxjscu_cmd, %struct.drxjscu_cmd* %175, i32 0, i32 2
  %177 = load i64*, i64** %176, align 8
  %178 = getelementptr inbounds i64, i64* %177, i64 3
  %179 = call i32 @drxj_dap_read_reg16(%struct.i2c_device_addr* %173, i32 %174, i64* %178, i32 0)
  store i32 %179, i32* %6, align 4
  %180 = load i32, i32* %6, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %172
  %183 = load i32, i32* %6, align 4
  %184 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %183)
  br label %264

185:                                              ; preds = %172
  br label %186

186:                                              ; preds = %168, %185
  %187 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %188 = load i32, i32* @SCU_RAM_PARAM_2__A, align 4
  %189 = load %struct.drxjscu_cmd*, %struct.drxjscu_cmd** %5, align 8
  %190 = getelementptr inbounds %struct.drxjscu_cmd, %struct.drxjscu_cmd* %189, i32 0, i32 2
  %191 = load i64*, i64** %190, align 8
  %192 = getelementptr inbounds i64, i64* %191, i64 2
  %193 = call i32 @drxj_dap_read_reg16(%struct.i2c_device_addr* %187, i32 %188, i64* %192, i32 0)
  store i32 %193, i32* %6, align 4
  %194 = load i32, i32* %6, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %186
  %197 = load i32, i32* %6, align 4
  %198 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %197)
  br label %264

199:                                              ; preds = %186
  br label %200

200:                                              ; preds = %168, %199
  %201 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %202 = load i32, i32* @SCU_RAM_PARAM_1__A, align 4
  %203 = load %struct.drxjscu_cmd*, %struct.drxjscu_cmd** %5, align 8
  %204 = getelementptr inbounds %struct.drxjscu_cmd, %struct.drxjscu_cmd* %203, i32 0, i32 2
  %205 = load i64*, i64** %204, align 8
  %206 = getelementptr inbounds i64, i64* %205, i64 1
  %207 = call i32 @drxj_dap_read_reg16(%struct.i2c_device_addr* %201, i32 %202, i64* %206, i32 0)
  store i32 %207, i32* %6, align 4
  %208 = load i32, i32* %6, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %200
  %211 = load i32, i32* %6, align 4
  %212 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %211)
  br label %264

213:                                              ; preds = %200
  br label %214

214:                                              ; preds = %168, %213
  %215 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %216 = load i32, i32* @SCU_RAM_PARAM_0__A, align 4
  %217 = load %struct.drxjscu_cmd*, %struct.drxjscu_cmd** %5, align 8
  %218 = getelementptr inbounds %struct.drxjscu_cmd, %struct.drxjscu_cmd* %217, i32 0, i32 2
  %219 = load i64*, i64** %218, align 8
  %220 = getelementptr inbounds i64, i64* %219, i64 0
  %221 = call i32 @drxj_dap_read_reg16(%struct.i2c_device_addr* %215, i32 %216, i64* %220, i32 0)
  store i32 %221, i32* %6, align 4
  %222 = load i32, i32* %6, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %214
  %225 = load i32, i32* %6, align 4
  %226 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %225)
  br label %264

227:                                              ; preds = %214
  br label %228

228:                                              ; preds = %168, %227
  br label %232

229:                                              ; preds = %168
  %230 = load i32, i32* @EIO, align 4
  %231 = sub nsw i32 0, %230
  store i32 %231, i32* %3, align 4
  br label %266

232:                                              ; preds = %228
  %233 = load %struct.drxjscu_cmd*, %struct.drxjscu_cmd** %5, align 8
  %234 = getelementptr inbounds %struct.drxjscu_cmd, %struct.drxjscu_cmd* %233, i32 0, i32 2
  %235 = load i64*, i64** %234, align 8
  %236 = getelementptr inbounds i64, i64* %235, i64 0
  %237 = load i64, i64* %236, align 8
  store i64 %237, i64* %9, align 8
  %238 = load i64, i64* %9, align 8
  %239 = load i64, i64* @SCU_RAM_PARAM_0_RESULT_UNKSTD, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %253, label %241

241:                                              ; preds = %232
  %242 = load i64, i64* %9, align 8
  %243 = load i64, i64* @SCU_RAM_PARAM_0_RESULT_UNKCMD, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %253, label %245

245:                                              ; preds = %241
  %246 = load i64, i64* %9, align 8
  %247 = load i64, i64* @SCU_RAM_PARAM_0_RESULT_INVPAR, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %253, label %249

249:                                              ; preds = %245
  %250 = load i64, i64* %9, align 8
  %251 = load i64, i64* @SCU_RAM_PARAM_0_RESULT_SIZE, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %256

253:                                              ; preds = %249, %245, %241, %232
  %254 = load i32, i32* @EINVAL, align 4
  %255 = sub nsw i32 0, %254
  store i32 %255, i32* %3, align 4
  br label %266

256:                                              ; preds = %249
  %257 = load i64, i64* %9, align 8
  %258 = icmp slt i64 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %256
  %260 = load i32, i32* @EIO, align 4
  %261 = sub nsw i32 0, %260
  store i32 %261, i32* %3, align 4
  br label %266

262:                                              ; preds = %256
  store i32 0, i32* %3, align 4
  br label %266

263:                                              ; preds = %163, %158
  store i32 0, i32* %3, align 4
  br label %266

264:                                              ; preds = %224, %210, %196, %182, %141, %123, %106, %91, %76, %61, %46, %21
  %265 = load i32, i32* %6, align 4
  store i32 %265, i32* %3, align 4
  br label %266

266:                                              ; preds = %264, %263, %262, %259, %253, %229, %155, %111, %28, %12
  %267 = load i32, i32* %3, align 4
  ret i32 %267
}

declare dso_local i32 @drxj_dap_read_reg16(%struct.i2c_device_addr*, i32, i64*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @drxj_dap_write_reg16(%struct.i2c_device_addr*, i32, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_is_after_jiffies(i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
