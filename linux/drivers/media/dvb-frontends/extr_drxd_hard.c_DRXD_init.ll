; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_DRXD_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_DRXD_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drxd_state = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32*, i64, i64, i64, i32, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32, i64 (i32, i32, i32)* }

@OM_Default = common dso_local global i32 0, align 4
@DRXD_DEF_AG_PWD_PRO = common dso_local global i32 0, align 4
@DRXD_DEF_AG_PWD_CONSUMER = common dso_local global i32 0, align 4
@DRXD_DEF_AG_AGC_SIO = common dso_local global i32 0, align 4
@CSCD_INIT = common dso_local global i32 0, align 4
@SC_COMM_EXEC__A = common dso_local global i32 0, align 4
@SC_COMM_EXEC_CTL_STOP = common dso_local global i32 0, align 4
@LC_COMM_EXEC__A = common dso_local global i32 0, align 4
@VERSION_MAJOR = common dso_local global i32 0, align 4
@VERSION_MINOR = common dso_local global i32 0, align 4
@VERSION_PATCH = common dso_local global i32 0, align 4
@SC_RA_RAM_DRIVER_VERSION__AX = common dso_local global i32 0, align 4
@DRXD_STOPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drxd_state*, i32*, i32)* @DRXD_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DRXD_init(%struct.drxd_state* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drxd_state*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.drxd_state* %0, %struct.drxd_state** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %14 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %348

18:                                               ; preds = %3
  %19 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %20 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %21 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %20, i32 0, i32 15
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %27 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %26, i32 0, i32 15
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  br label %31

30:                                               ; preds = %18
  br label %31

31:                                               ; preds = %30, %25
  %32 = phi i32 [ %29, %25 ], [ 36000000, %30 ]
  %33 = call i32 @CDRXD(%struct.drxd_state* %19, i32 %32)
  br label %34

34:                                               ; preds = %31
  %35 = load i32, i32* @OM_Default, align 4
  %36 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %37 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %36, i32 0, i32 17
  store i32 %35, i32* %37, align 8
  %38 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %39 = call i32 @SetDeviceTypeId(%struct.drxd_state* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %346

43:                                               ; preds = %34
  %44 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %45 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %44, i32 0, i32 11
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %63, label %48

48:                                               ; preds = %43
  %49 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %50 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %49, i32 0, i32 16
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  %54 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %55 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %56 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %55, i32 0, i32 16
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @WriteTable(%struct.drxd_state* %54, i64 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %346

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62, %48, %43
  %64 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %65 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %64, i32 0, i32 11
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %70 = call i32 @Write16(%struct.drxd_state* %69, i32 4391213, i32 1151, i32 0)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %346

74:                                               ; preds = %68
  br label %75

75:                                               ; preds = %74, %63
  %76 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %77 = call i32 @HI_ResetCommand(%struct.drxd_state* %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %346

81:                                               ; preds = %75
  %82 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %83 = call i32 @StopAllProcessors(%struct.drxd_state* %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %346

87:                                               ; preds = %81
  %88 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %89 = call i32 @InitCC(%struct.drxd_state* %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %346

93:                                               ; preds = %87
  %94 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %95 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %94, i32 0, i32 13
  store i64 0, i64* %95, align 8
  %96 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %97 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %96, i32 0, i32 15
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i64 (i32, i32, i32)*, i64 (i32, i32, i32)** %98, align 8
  %100 = icmp ne i64 (i32, i32, i32)* %99, null
  br i1 %100, label %101, label %112

101:                                              ; preds = %93
  %102 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %103 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %102, i32 0, i32 15
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i64 (i32, i32, i32)*, i64 (i32, i32, i32)** %104, align 8
  %106 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %107 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %106, i32 0, i32 14
  %108 = load i32, i32* %107, align 8
  %109 = call i64 %105(i32 %108, i32 0, i32 0)
  %110 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %111 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %110, i32 0, i32 13
  store i64 %109, i64* %111, align 8
  br label %112

112:                                              ; preds = %101, %93
  %113 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %114 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %113, i32 0, i32 13
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %117 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = mul nsw i64 %115, %118
  store i64 %119, i64* %11, align 8
  %120 = load i64, i64* %11, align 8
  %121 = sdiv i64 %120, 1000000
  store i64 %121, i64* %12, align 8
  %122 = load i64, i64* %11, align 8
  %123 = icmp sgt i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %112
  store i64 2, i64* %10, align 8
  br label %126

125:                                              ; preds = %112
  store i64 -2, i64* %10, align 8
  br label %126

126:                                              ; preds = %125, %124
  %127 = load i64, i64* %10, align 8
  %128 = load i64, i64* %11, align 8
  %129 = srem i64 %128, 1000000
  %130 = mul nsw i64 %127, %129
  %131 = icmp sgt i64 %130, 1000000
  br i1 %131, label %132, label %137

132:                                              ; preds = %126
  %133 = load i64, i64* %10, align 8
  %134 = sdiv i64 %133, 2
  %135 = load i64, i64* %12, align 8
  %136 = add nsw i64 %135, %134
  store i64 %136, i64* %12, align 8
  br label %137

137:                                              ; preds = %132, %126
  %138 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %139 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* %12, align 8
  %142 = add nsw i64 %140, %141
  %143 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %144 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %143, i32 0, i32 12
  store i64 %142, i64* %144, align 8
  %145 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %146 = call i32 @InitHI(%struct.drxd_state* %145)
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* %8, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %137
  br label %346

150:                                              ; preds = %137
  %151 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %152 = call i32 @InitAtomicRead(%struct.drxd_state* %151)
  store i32 %152, i32* %8, align 4
  %153 = load i32, i32* %8, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %150
  br label %346

156:                                              ; preds = %150
  %157 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %158 = call i32 @EnableAndResetMB(%struct.drxd_state* %157)
  store i32 %158, i32* %8, align 4
  %159 = load i32, i32* %8, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  br label %346

162:                                              ; preds = %156
  %163 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %164 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %163, i32 0, i32 11
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %162
  %168 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %169 = call i32 @ResetCEFR(%struct.drxd_state* %168)
  store i32 %169, i32* %8, align 4
  %170 = load i32, i32* %8, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %167
  br label %346

173:                                              ; preds = %167
  br label %174

174:                                              ; preds = %173, %162
  %175 = load i32*, i32** %6, align 8
  %176 = icmp ne i32* %175, null
  br i1 %176, label %177, label %186

177:                                              ; preds = %174
  %178 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %179 = load i32*, i32** %6, align 8
  %180 = load i32, i32* %7, align 4
  %181 = call i32 @DownloadMicrocode(%struct.drxd_state* %178, i32* %179, i32 %180)
  store i32 %181, i32* %8, align 4
  %182 = load i32, i32* %8, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %177
  br label %346

185:                                              ; preds = %177
  br label %199

186:                                              ; preds = %174
  %187 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %188 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %189 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %188, i32 0, i32 10
  %190 = load i32*, i32** %189, align 8
  %191 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %192 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @DownloadMicrocode(%struct.drxd_state* %187, i32* %190, i32 %193)
  store i32 %194, i32* %8, align 4
  %195 = load i32, i32* %8, align 4
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %186
  br label %346

198:                                              ; preds = %186
  br label %199

199:                                              ; preds = %198, %185
  %200 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %201 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %200, i32 0, i32 9
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %199
  %205 = load i32, i32* @DRXD_DEF_AG_PWD_PRO, align 4
  %206 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %207 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %206, i32 0, i32 8
  store i32 %205, i32* %207, align 8
  %208 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %209 = call i32 @SetCfgPga(%struct.drxd_state* %208, i32 0)
  br label %214

210:                                              ; preds = %199
  %211 = load i32, i32* @DRXD_DEF_AG_PWD_CONSUMER, align 4
  %212 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %213 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %212, i32 0, i32 8
  store i32 %211, i32* %213, align 8
  br label %214

214:                                              ; preds = %210, %204
  %215 = load i32, i32* @DRXD_DEF_AG_AGC_SIO, align 4
  %216 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %217 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %216, i32 0, i32 7
  store i32 %215, i32* %217, align 4
  %218 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %219 = call i32 @InitFE(%struct.drxd_state* %218)
  store i32 %219, i32* %8, align 4
  %220 = load i32, i32* %8, align 4
  %221 = icmp slt i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %214
  br label %346

223:                                              ; preds = %214
  %224 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %225 = call i32 @InitFT(%struct.drxd_state* %224)
  store i32 %225, i32* %8, align 4
  %226 = load i32, i32* %8, align 4
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %223
  br label %346

229:                                              ; preds = %223
  %230 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %231 = call i32 @InitCP(%struct.drxd_state* %230)
  store i32 %231, i32* %8, align 4
  %232 = load i32, i32* %8, align 4
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %229
  br label %346

235:                                              ; preds = %229
  %236 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %237 = call i32 @InitCE(%struct.drxd_state* %236)
  store i32 %237, i32* %8, align 4
  %238 = load i32, i32* %8, align 4
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %235
  br label %346

241:                                              ; preds = %235
  %242 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %243 = call i32 @InitEQ(%struct.drxd_state* %242)
  store i32 %243, i32* %8, align 4
  %244 = load i32, i32* %8, align 4
  %245 = icmp slt i32 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %241
  br label %346

247:                                              ; preds = %241
  %248 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %249 = call i32 @InitEC(%struct.drxd_state* %248)
  store i32 %249, i32* %8, align 4
  %250 = load i32, i32* %8, align 4
  %251 = icmp slt i32 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %247
  br label %346

253:                                              ; preds = %247
  %254 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %255 = call i32 @InitSC(%struct.drxd_state* %254)
  store i32 %255, i32* %8, align 4
  %256 = load i32, i32* %8, align 4
  %257 = icmp slt i32 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %253
  br label %346

259:                                              ; preds = %253
  %260 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %261 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %262 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %261, i32 0, i32 6
  %263 = call i32 @SetCfgIfAgc(%struct.drxd_state* %260, i32* %262)
  store i32 %263, i32* %8, align 4
  %264 = load i32, i32* %8, align 4
  %265 = icmp slt i32 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %259
  br label %346

267:                                              ; preds = %259
  %268 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %269 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %270 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %269, i32 0, i32 5
  %271 = call i32 @SetCfgRfAgc(%struct.drxd_state* %268, i32* %270)
  store i32 %271, i32* %8, align 4
  %272 = load i32, i32* %8, align 4
  %273 = icmp slt i32 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %267
  br label %346

275:                                              ; preds = %267
  %276 = load i32, i32* @CSCD_INIT, align 4
  %277 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %278 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %277, i32 0, i32 4
  store i32 %276, i32* %278, align 8
  %279 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %280 = load i32, i32* @SC_COMM_EXEC__A, align 4
  %281 = load i32, i32* @SC_COMM_EXEC_CTL_STOP, align 4
  %282 = call i32 @Write16(%struct.drxd_state* %279, i32 %280, i32 %281, i32 0)
  store i32 %282, i32* %8, align 4
  %283 = load i32, i32* %8, align 4
  %284 = icmp slt i32 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %275
  br label %346

286:                                              ; preds = %275
  %287 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %288 = load i32, i32* @LC_COMM_EXEC__A, align 4
  %289 = load i32, i32* @SC_COMM_EXEC_CTL_STOP, align 4
  %290 = call i32 @Write16(%struct.drxd_state* %287, i32 %288, i32 %289, i32 0)
  store i32 %290, i32* %8, align 4
  %291 = load i32, i32* %8, align 4
  %292 = icmp slt i32 %291, 0
  br i1 %292, label %293, label %294

293:                                              ; preds = %286
  br label %346

294:                                              ; preds = %286
  %295 = load i32, i32* @VERSION_MAJOR, align 4
  %296 = sdiv i32 %295, 10
  %297 = shl i32 %296, 4
  %298 = load i32, i32* @VERSION_MAJOR, align 4
  %299 = srem i32 %298, 10
  %300 = add nsw i32 %297, %299
  %301 = shl i32 %300, 24
  store i32 %301, i32* %9, align 4
  %302 = load i32, i32* @VERSION_MINOR, align 4
  %303 = sdiv i32 %302, 10
  %304 = shl i32 %303, 4
  %305 = load i32, i32* @VERSION_MINOR, align 4
  %306 = srem i32 %305, 10
  %307 = add nsw i32 %304, %306
  %308 = shl i32 %307, 16
  %309 = load i32, i32* %9, align 4
  %310 = add nsw i32 %309, %308
  store i32 %310, i32* %9, align 4
  %311 = load i32, i32* @VERSION_PATCH, align 4
  %312 = sdiv i32 %311, 1000
  %313 = shl i32 %312, 12
  %314 = load i32, i32* @VERSION_PATCH, align 4
  %315 = sdiv i32 %314, 100
  %316 = shl i32 %315, 8
  %317 = add nsw i32 %313, %316
  %318 = load i32, i32* @VERSION_PATCH, align 4
  %319 = sdiv i32 %318, 10
  %320 = shl i32 %319, 4
  %321 = add nsw i32 %317, %320
  %322 = load i32, i32* @VERSION_PATCH, align 4
  %323 = srem i32 %322, 10
  %324 = add nsw i32 %321, %323
  %325 = load i32, i32* %9, align 4
  %326 = add nsw i32 %325, %324
  store i32 %326, i32* %9, align 4
  %327 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %328 = load i32, i32* @SC_RA_RAM_DRIVER_VERSION__AX, align 4
  %329 = load i32, i32* %9, align 4
  %330 = call i32 @Write32(%struct.drxd_state* %327, i32 %328, i32 %329, i32 0)
  store i32 %330, i32* %8, align 4
  %331 = load i32, i32* %8, align 4
  %332 = icmp slt i32 %331, 0
  br i1 %332, label %333, label %334

333:                                              ; preds = %294
  br label %346

334:                                              ; preds = %294
  %335 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %336 = call i32 @StopOC(%struct.drxd_state* %335)
  store i32 %336, i32* %8, align 4
  %337 = load i32, i32* %8, align 4
  %338 = icmp slt i32 %337, 0
  br i1 %338, label %339, label %340

339:                                              ; preds = %334
  br label %346

340:                                              ; preds = %334
  %341 = load i32, i32* @DRXD_STOPPED, align 4
  %342 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %343 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %342, i32 0, i32 3
  store i32 %341, i32* %343, align 4
  %344 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %345 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %344, i32 0, i32 0
  store i32 1, i32* %345, align 8
  store i32 0, i32* %8, align 4
  br label %346

346:                                              ; preds = %340, %339, %333, %293, %285, %274, %266, %258, %252, %246, %240, %234, %228, %222, %197, %184, %172, %161, %155, %149, %92, %86, %80, %73, %61, %42
  %347 = load i32, i32* %8, align 4
  store i32 %347, i32* %4, align 4
  br label %348

348:                                              ; preds = %346, %17
  %349 = load i32, i32* %4, align 4
  ret i32 %349
}

declare dso_local i32 @CDRXD(%struct.drxd_state*, i32) #1

declare dso_local i32 @SetDeviceTypeId(%struct.drxd_state*) #1

declare dso_local i32 @WriteTable(%struct.drxd_state*, i64) #1

declare dso_local i32 @Write16(%struct.drxd_state*, i32, i32, i32) #1

declare dso_local i32 @HI_ResetCommand(%struct.drxd_state*) #1

declare dso_local i32 @StopAllProcessors(%struct.drxd_state*) #1

declare dso_local i32 @InitCC(%struct.drxd_state*) #1

declare dso_local i32 @InitHI(%struct.drxd_state*) #1

declare dso_local i32 @InitAtomicRead(%struct.drxd_state*) #1

declare dso_local i32 @EnableAndResetMB(%struct.drxd_state*) #1

declare dso_local i32 @ResetCEFR(%struct.drxd_state*) #1

declare dso_local i32 @DownloadMicrocode(%struct.drxd_state*, i32*, i32) #1

declare dso_local i32 @SetCfgPga(%struct.drxd_state*, i32) #1

declare dso_local i32 @InitFE(%struct.drxd_state*) #1

declare dso_local i32 @InitFT(%struct.drxd_state*) #1

declare dso_local i32 @InitCP(%struct.drxd_state*) #1

declare dso_local i32 @InitCE(%struct.drxd_state*) #1

declare dso_local i32 @InitEQ(%struct.drxd_state*) #1

declare dso_local i32 @InitEC(%struct.drxd_state*) #1

declare dso_local i32 @InitSC(%struct.drxd_state*) #1

declare dso_local i32 @SetCfgIfAgc(%struct.drxd_state*, i32*) #1

declare dso_local i32 @SetCfgRfAgc(%struct.drxd_state*, i32*) #1

declare dso_local i32 @Write32(%struct.drxd_state*, i32, i32, i32) #1

declare dso_local i32 @StopOC(%struct.drxd_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
