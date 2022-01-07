; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_nct6775_check_fan_inputs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_nct6775_check_fan_inputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nct6775_data = type { i32, i32, i32, i32, i32, i32 }

@NCT6775_LD_HWM = common dso_local global i32 0, align 4
@SIO_REG_ENABLE = common dso_local global i32 0, align 4
@nct6775 = common dso_local global i32 0, align 4
@nct6776 = common dso_local global i32 0, align 4
@DMI_BOARD_VENDOR = common dso_local global i32 0, align 4
@DMI_BOARD_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ASRock\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Z77 Pro4-M\00", align 1
@nct6106 = common dso_local global i32 0, align 4
@nct6116 = common dso_local global i32 0, align 4
@NCT6775_LD_12 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nct6775_data*)* @nct6775_check_fan_inputs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nct6775_check_fan_inputs(%struct.nct6775_data* %0) #0 {
  %2 = alloca %struct.nct6775_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  store %struct.nct6775_data* %0, %struct.nct6775_data** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %39 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %40 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* @NCT6775_LD_HWM, align 4
  %44 = call i32 @superio_select(i32 %42, i32 %43)
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* @SIO_REG_ENABLE, align 4
  %47 = call i32 @superio_inb(i32 %45, i32 %46)
  %48 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %49 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %51 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @nct6775, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %1
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @superio_inb(i32 %56, i32 44)
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = call i32 @BIT(i32 6)
  %60 = and i32 %58, %59
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* %15, align 4
  %62 = call i32 @BIT(i32 7)
  %63 = and i32 %61, %62
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @superio_inb(i32 %64, i32 42)
  %66 = and i32 %65, 128
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %4, align 4
  br label %756

70:                                               ; preds = %1
  %71 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %72 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @nct6776, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %158

76:                                               ; preds = %70
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @superio_inb(i32 %77, i32 39)
  %79 = and i32 %78, 128
  store i32 %79, i32* %16, align 4
  %80 = load i32, i32* @DMI_BOARD_VENDOR, align 4
  %81 = call i8* @dmi_get_system_info(i32 %80)
  store i8* %81, i8** %17, align 8
  %82 = load i32, i32* @DMI_BOARD_NAME, align 4
  %83 = call i8* @dmi_get_system_info(i32 %82)
  store i8* %83, i8** %18, align 8
  %84 = load i8*, i8** %18, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %116

86:                                               ; preds = %76
  %87 = load i8*, i8** %17, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %116

89:                                               ; preds = %86
  %90 = load i8*, i8** %17, align 8
  %91 = call i32 @strcmp(i8* %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %116, label %93

93:                                               ; preds = %89
  %94 = load i8*, i8** %18, align 8
  %95 = call i32 @strcmp(i8* %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %115, label %97

97:                                               ; preds = %93
  %98 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %99 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, 224
  %102 = icmp ne i32 %101, 224
  br i1 %102, label %103, label %114

103:                                              ; preds = %97
  %104 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %105 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, 224
  store i32 %107, i32* %105, align 4
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* @SIO_REG_ENABLE, align 4
  %110 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %111 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @superio_outb(i32 %108, i32 %109, i32 %112)
  br label %114

114:                                              ; preds = %103, %97
  br label %115

115:                                              ; preds = %114, %93
  br label %116

116:                                              ; preds = %115, %89, %86, %76
  %117 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %118 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, 128
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %116
  %123 = load i32, i32* %16, align 4
  store i32 %123, i32* %3, align 4
  br label %131

124:                                              ; preds = %116
  %125 = load i32, i32* %14, align 4
  %126 = call i32 @superio_inb(i32 %125, i32 36)
  %127 = and i32 %126, 64
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  %130 = zext i1 %129 to i32
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %124, %122
  %132 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %133 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, 64
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %131
  %138 = load i32, i32* %16, align 4
  store i32 %138, i32* %4, align 4
  br label %143

139:                                              ; preds = %131
  %140 = load i32, i32* %14, align 4
  %141 = call i32 @superio_inb(i32 %140, i32 28)
  %142 = and i32 %141, 1
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %139, %137
  %144 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %145 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, 32
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %143
  %150 = load i32, i32* %16, align 4
  store i32 %150, i32* %6, align 4
  br label %155

151:                                              ; preds = %143
  %152 = load i32, i32* %14, align 4
  %153 = call i32 @superio_inb(i32 %152, i32 28)
  %154 = and i32 %153, 2
  store i32 %154, i32* %6, align 4
  br label %155

155:                                              ; preds = %151, %149
  %156 = load i32, i32* %4, align 4
  store i32 %156, i32* %5, align 4
  %157 = load i32, i32* %3, align 4
  store i32 %157, i32* %9, align 4
  br label %755

158:                                              ; preds = %70
  %159 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %160 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @nct6106, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %174

164:                                              ; preds = %158
  %165 = load i32, i32* %14, align 4
  %166 = call i32 @superio_inb(i32 %165, i32 36)
  store i32 %166, i32* %19, align 4
  %167 = load i32, i32* %19, align 4
  %168 = and i32 %167, 128
  %169 = icmp ne i32 %168, 0
  %170 = xor i1 %169, true
  %171 = zext i1 %170 to i32
  store i32 %171, i32* %3, align 4
  %172 = load i32, i32* %19, align 4
  %173 = and i32 %172, 8
  store i32 %173, i32* %9, align 4
  br label %754

174:                                              ; preds = %158
  %175 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %176 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @nct6116, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %241

180:                                              ; preds = %174
  %181 = load i32, i32* %14, align 4
  %182 = call i32 @superio_inb(i32 %181, i32 26)
  store i32 %182, i32* %20, align 4
  %183 = load i32, i32* %14, align 4
  %184 = call i32 @superio_inb(i32 %183, i32 27)
  store i32 %184, i32* %21, align 4
  %185 = load i32, i32* %14, align 4
  %186 = call i32 @superio_inb(i32 %185, i32 36)
  store i32 %186, i32* %22, align 4
  %187 = load i32, i32* %14, align 4
  %188 = call i32 @superio_inb(i32 %187, i32 42)
  store i32 %188, i32* %23, align 4
  %189 = load i32, i32* %14, align 4
  %190 = call i32 @superio_inb(i32 %189, i32 43)
  store i32 %190, i32* %24, align 4
  %191 = load i32, i32* %14, align 4
  %192 = call i32 @superio_inb(i32 %191, i32 47)
  store i32 %192, i32* %25, align 4
  %193 = load i32, i32* %24, align 4
  %194 = and i32 %193, 16
  %195 = icmp ne i32 %194, 0
  %196 = xor i1 %195, true
  %197 = zext i1 %196 to i32
  store i32 %197, i32* %3, align 4
  %198 = load i32, i32* %24, align 4
  %199 = and i32 %198, 128
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %211, label %201

201:                                              ; preds = %180
  %202 = load i32, i32* %25, align 4
  %203 = and i32 %202, 16
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %209, label %205

205:                                              ; preds = %201
  %206 = load i32, i32* %20, align 4
  %207 = and i32 %206, 4
  %208 = icmp ne i32 %207, 0
  br label %209

209:                                              ; preds = %205, %201
  %210 = phi i1 [ false, %201 ], [ %208, %205 ]
  br label %211

211:                                              ; preds = %209, %180
  %212 = phi i1 [ true, %180 ], [ %210, %209 ]
  %213 = zext i1 %212 to i32
  store i32 %213, i32* %4, align 4
  %214 = load i32, i32* %24, align 4
  %215 = and i32 %214, 128
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %227, label %217

217:                                              ; preds = %211
  %218 = load i32, i32* %21, align 4
  %219 = and i32 %218, 3
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %225, label %221

221:                                              ; preds = %217
  %222 = load i32, i32* %23, align 4
  %223 = and i32 %222, 2
  %224 = icmp ne i32 %223, 0
  br label %225

225:                                              ; preds = %221, %217
  %226 = phi i1 [ false, %217 ], [ %224, %221 ]
  br label %227

227:                                              ; preds = %225, %211
  %228 = phi i1 [ true, %211 ], [ %226, %225 ]
  %229 = zext i1 %228 to i32
  store i32 %229, i32* %6, align 4
  %230 = load i32, i32* %3, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %227
  %233 = load i32, i32* %22, align 4
  %234 = and i32 %233, 8
  %235 = icmp ne i32 %234, 0
  br label %236

236:                                              ; preds = %232, %227
  %237 = phi i1 [ false, %227 ], [ %235, %232 ]
  %238 = zext i1 %237 to i32
  store i32 %238, i32* %9, align 4
  %239 = load i32, i32* %4, align 4
  store i32 %239, i32* %10, align 4
  %240 = load i32, i32* %6, align 4
  store i32 %240, i32* %11, align 4
  br label %753

241:                                              ; preds = %174
  %242 = load i32, i32* %14, align 4
  %243 = call i32 @superio_inb(i32 %242, i32 26)
  store i32 %243, i32* %26, align 4
  %244 = load i32, i32* %14, align 4
  %245 = call i32 @superio_inb(i32 %244, i32 27)
  store i32 %245, i32* %27, align 4
  %246 = load i32, i32* %14, align 4
  %247 = call i32 @superio_inb(i32 %246, i32 28)
  store i32 %247, i32* %28, align 4
  %248 = load i32, i32* %14, align 4
  %249 = call i32 @superio_inb(i32 %248, i32 29)
  store i32 %249, i32* %29, align 4
  %250 = load i32, i32* %14, align 4
  %251 = call i32 @superio_inb(i32 %250, i32 42)
  store i32 %251, i32* %30, align 4
  %252 = load i32, i32* %14, align 4
  %253 = call i32 @superio_inb(i32 %252, i32 43)
  store i32 %253, i32* %31, align 4
  %254 = load i32, i32* %14, align 4
  %255 = call i32 @superio_inb(i32 %254, i32 45)
  store i32 %255, i32* %32, align 4
  %256 = load i32, i32* %14, align 4
  %257 = call i32 @superio_inb(i32 %256, i32 47)
  store i32 %257, i32* %33, align 4
  %258 = load i32, i32* %33, align 4
  %259 = call i32 @BIT(i32 3)
  %260 = and i32 %258, %259
  store i32 %260, i32* %34, align 4
  %261 = load i32, i32* %33, align 4
  %262 = call i32 @BIT(i32 4)
  %263 = and i32 %261, %262
  store i32 %263, i32* %35, align 4
  %264 = load i32, i32* %14, align 4
  %265 = load i32, i32* @NCT6775_LD_12, align 4
  %266 = call i32 @superio_select(i32 %264, i32 %265)
  %267 = load i32, i32* %14, align 4
  %268 = call i32 @superio_inb(i32 %267, i32 224)
  store i32 %268, i32* %36, align 4
  %269 = load i32, i32* %14, align 4
  %270 = call i32 @superio_inb(i32 %269, i32 235)
  store i32 %270, i32* %37, align 4
  %271 = load i32, i32* %14, align 4
  %272 = call i32 @superio_inb(i32 %271, i32 237)
  store i32 %272, i32* %38, align 4
  %273 = load i32, i32* %28, align 4
  %274 = call i32 @BIT(i32 5)
  %275 = and i32 %273, %274
  %276 = icmp ne i32 %275, 0
  %277 = xor i1 %276, true
  %278 = zext i1 %277 to i32
  store i32 %278, i32* %3, align 4
  %279 = load i32, i32* %28, align 4
  %280 = call i32 @BIT(i32 6)
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  %283 = xor i1 %282, true
  %284 = zext i1 %283 to i32
  store i32 %284, i32* %4, align 4
  %285 = load i32, i32* %28, align 4
  %286 = call i32 @BIT(i32 7)
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  %289 = xor i1 %288, true
  %290 = zext i1 %289 to i32
  store i32 %290, i32* %6, align 4
  %291 = load i32, i32* %28, align 4
  %292 = call i32 @BIT(i32 0)
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  %295 = xor i1 %294, true
  %296 = zext i1 %295 to i32
  store i32 %296, i32* %9, align 4
  %297 = load i32, i32* %28, align 4
  %298 = call i32 @BIT(i32 1)
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  %301 = xor i1 %300, true
  %302 = zext i1 %301 to i32
  store i32 %302, i32* %10, align 4
  %303 = load i32, i32* %28, align 4
  %304 = call i32 @BIT(i32 2)
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  %307 = xor i1 %306, true
  %308 = zext i1 %307 to i32
  store i32 %308, i32* %11, align 4
  %309 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %310 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 4
  switch i32 %311, label %750 [
    i32 134, label %312
    i32 133, label %319
    i32 132, label %340
    i32 131, label %401
    i32 130, label %471
    i32 129, label %585
    i32 128, label %652
  ]

312:                                              ; preds = %241
  %313 = load i32, i32* %32, align 4
  %314 = call i32 @BIT(i32 1)
  %315 = and i32 %313, %314
  store i32 %315, i32* %7, align 4
  %316 = load i32, i32* %32, align 4
  %317 = call i32 @BIT(i32 0)
  %318 = and i32 %316, %317
  store i32 %318, i32* %12, align 4
  br label %751

319:                                              ; preds = %241
  %320 = load i32, i32* %34, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %327, label %322

322:                                              ; preds = %319
  %323 = load i32, i32* %32, align 4
  %324 = call i32 @BIT(i32 1)
  %325 = and i32 %323, %324
  %326 = icmp ne i32 %325, 0
  br label %327

327:                                              ; preds = %322, %319
  %328 = phi i1 [ false, %319 ], [ %326, %322 ]
  %329 = zext i1 %328 to i32
  store i32 %329, i32* %7, align 4
  %330 = load i32, i32* %34, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %337, label %332

332:                                              ; preds = %327
  %333 = load i32, i32* %32, align 4
  %334 = call i32 @BIT(i32 0)
  %335 = and i32 %333, %334
  %336 = icmp ne i32 %335, 0
  br label %337

337:                                              ; preds = %332, %327
  %338 = phi i1 [ false, %327 ], [ %336, %332 ]
  %339 = zext i1 %338 to i32
  store i32 %339, i32* %12, align 4
  br label %751

340:                                              ; preds = %241
  %341 = load i32, i32* %27, align 4
  %342 = call i32 @BIT(i32 5)
  %343 = and i32 %341, %342
  %344 = load i32, i32* %6, align 4
  %345 = or i32 %344, %343
  store i32 %345, i32* %6, align 4
  %346 = load i32, i32* %37, align 4
  %347 = call i32 @BIT(i32 5)
  %348 = and i32 %346, %347
  %349 = load i32, i32* %6, align 4
  %350 = or i32 %349, %348
  store i32 %350, i32* %6, align 4
  %351 = load i32, i32* %34, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %358, label %353

353:                                              ; preds = %340
  %354 = load i32, i32* %32, align 4
  %355 = call i32 @BIT(i32 1)
  %356 = and i32 %354, %355
  %357 = icmp ne i32 %356, 0
  br label %358

358:                                              ; preds = %353, %340
  %359 = phi i1 [ false, %340 ], [ %357, %353 ]
  %360 = zext i1 %359 to i32
  store i32 %360, i32* %7, align 4
  %361 = load i32, i32* %37, align 4
  %362 = call i32 @BIT(i32 3)
  %363 = and i32 %361, %362
  %364 = load i32, i32* %7, align 4
  %365 = or i32 %364, %363
  store i32 %365, i32* %7, align 4
  %366 = load i32, i32* %32, align 4
  %367 = call i32 @BIT(i32 7)
  %368 = and i32 %366, %367
  %369 = load i32, i32* %11, align 4
  %370 = or i32 %369, %368
  store i32 %370, i32* %11, align 4
  %371 = load i32, i32* %37, align 4
  %372 = call i32 @BIT(i32 4)
  %373 = and i32 %371, %372
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %381

375:                                              ; preds = %358
  %376 = load i32, i32* %30, align 4
  %377 = call i32 @BIT(i32 0)
  %378 = and i32 %376, %377
  %379 = icmp ne i32 %378, 0
  %380 = xor i1 %379, true
  br label %381

381:                                              ; preds = %375, %358
  %382 = phi i1 [ false, %358 ], [ %380, %375 ]
  %383 = zext i1 %382 to i32
  %384 = load i32, i32* %11, align 4
  %385 = or i32 %384, %383
  store i32 %385, i32* %11, align 4
  %386 = load i32, i32* %34, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %393, label %388

388:                                              ; preds = %381
  %389 = load i32, i32* %32, align 4
  %390 = call i32 @BIT(i32 0)
  %391 = and i32 %389, %390
  %392 = icmp ne i32 %391, 0
  br label %393

393:                                              ; preds = %388, %381
  %394 = phi i1 [ false, %381 ], [ %392, %388 ]
  %395 = zext i1 %394 to i32
  store i32 %395, i32* %12, align 4
  %396 = load i32, i32* %37, align 4
  %397 = call i32 @BIT(i32 2)
  %398 = and i32 %396, %397
  %399 = load i32, i32* %12, align 4
  %400 = or i32 %399, %398
  store i32 %400, i32* %12, align 4
  br label %751

401:                                              ; preds = %241
  %402 = load i32, i32* %27, align 4
  %403 = call i32 @BIT(i32 5)
  %404 = and i32 %402, %403
  %405 = load i32, i32* %6, align 4
  %406 = or i32 %405, %404
  store i32 %406, i32* %6, align 4
  %407 = load i32, i32* %37, align 4
  %408 = call i32 @BIT(i32 5)
  %409 = and i32 %407, %408
  %410 = load i32, i32* %6, align 4
  %411 = or i32 %410, %409
  store i32 %411, i32* %6, align 4
  %412 = load i32, i32* %30, align 4
  %413 = call i32 @BIT(i32 4)
  %414 = and i32 %412, %413
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %426

416:                                              ; preds = %401
  %417 = load i32, i32* %34, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %424

419:                                              ; preds = %416
  %420 = load i32, i32* %38, align 4
  %421 = call i32 @BIT(i32 4)
  %422 = and i32 %420, %421
  %423 = icmp ne i32 %422, 0
  br label %424

424:                                              ; preds = %419, %416
  %425 = phi i1 [ true, %416 ], [ %423, %419 ]
  br label %426

426:                                              ; preds = %424, %401
  %427 = phi i1 [ false, %401 ], [ %425, %424 ]
  %428 = zext i1 %427 to i32
  store i32 %428, i32* %7, align 4
  %429 = load i32, i32* %37, align 4
  %430 = call i32 @BIT(i32 3)
  %431 = and i32 %429, %430
  %432 = load i32, i32* %7, align 4
  %433 = or i32 %432, %431
  store i32 %433, i32* %7, align 4
  %434 = load i32, i32* %32, align 4
  %435 = call i32 @BIT(i32 7)
  %436 = and i32 %434, %435
  %437 = load i32, i32* %11, align 4
  %438 = or i32 %437, %436
  store i32 %438, i32* %11, align 4
  %439 = load i32, i32* %37, align 4
  %440 = call i32 @BIT(i32 4)
  %441 = and i32 %439, %440
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %449

443:                                              ; preds = %426
  %444 = load i32, i32* %30, align 4
  %445 = call i32 @BIT(i32 0)
  %446 = and i32 %444, %445
  %447 = icmp ne i32 %446, 0
  %448 = xor i1 %447, true
  br label %449

449:                                              ; preds = %443, %426
  %450 = phi i1 [ false, %426 ], [ %448, %443 ]
  %451 = zext i1 %450 to i32
  %452 = load i32, i32* %11, align 4
  %453 = or i32 %452, %451
  store i32 %453, i32* %11, align 4
  %454 = load i32, i32* %30, align 4
  %455 = call i32 @BIT(i32 3)
  %456 = and i32 %454, %455
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %463

458:                                              ; preds = %449
  %459 = load i32, i32* %38, align 4
  %460 = call i32 @BIT(i32 2)
  %461 = and i32 %459, %460
  %462 = icmp ne i32 %461, 0
  br label %463

463:                                              ; preds = %458, %449
  %464 = phi i1 [ false, %449 ], [ %462, %458 ]
  %465 = zext i1 %464 to i32
  store i32 %465, i32* %12, align 4
  %466 = load i32, i32* %37, align 4
  %467 = call i32 @BIT(i32 2)
  %468 = and i32 %466, %467
  %469 = load i32, i32* %12, align 4
  %470 = or i32 %469, %468
  store i32 %470, i32* %12, align 4
  br label %751

471:                                              ; preds = %241
  %472 = load i32, i32* %27, align 4
  %473 = call i32 @BIT(i32 5)
  %474 = and i32 %472, %473
  %475 = load i32, i32* %6, align 4
  %476 = or i32 %475, %474
  store i32 %476, i32* %6, align 4
  %477 = load i32, i32* %36, align 4
  %478 = call i32 @BIT(i32 3)
  %479 = and i32 %477, %478
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %481, label %487

481:                                              ; preds = %471
  %482 = load i32, i32* %27, align 4
  %483 = call i32 @BIT(i32 0)
  %484 = and i32 %482, %483
  %485 = icmp ne i32 %484, 0
  %486 = xor i1 %485, true
  br label %487

487:                                              ; preds = %481, %471
  %488 = phi i1 [ false, %471 ], [ %486, %481 ]
  %489 = zext i1 %488 to i32
  %490 = load i32, i32* %6, align 4
  %491 = or i32 %490, %489
  store i32 %491, i32* %6, align 4
  %492 = load i32, i32* %37, align 4
  %493 = call i32 @BIT(i32 5)
  %494 = and i32 %492, %493
  %495 = load i32, i32* %6, align 4
  %496 = or i32 %495, %494
  store i32 %496, i32* %6, align 4
  %497 = load i32, i32* %30, align 4
  %498 = call i32 @BIT(i32 4)
  %499 = and i32 %497, %498
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %501, label %511

501:                                              ; preds = %487
  %502 = load i32, i32* %34, align 4
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %504, label %509

504:                                              ; preds = %501
  %505 = load i32, i32* %38, align 4
  %506 = call i32 @BIT(i32 4)
  %507 = and i32 %505, %506
  %508 = icmp ne i32 %507, 0
  br label %509

509:                                              ; preds = %504, %501
  %510 = phi i1 [ true, %501 ], [ %508, %504 ]
  br label %511

511:                                              ; preds = %509, %487
  %512 = phi i1 [ false, %487 ], [ %510, %509 ]
  %513 = zext i1 %512 to i32
  store i32 %513, i32* %7, align 4
  %514 = load i32, i32* %37, align 4
  %515 = call i32 @BIT(i32 3)
  %516 = and i32 %514, %515
  %517 = load i32, i32* %7, align 4
  %518 = or i32 %517, %516
  store i32 %518, i32* %7, align 4
  %519 = load i32, i32* %31, align 4
  %520 = call i32 @BIT(i32 2)
  %521 = and i32 %519, %520
  %522 = icmp ne i32 %521, 0
  %523 = xor i1 %522, true
  %524 = zext i1 %523 to i32
  store i32 %524, i32* %8, align 4
  %525 = load i32, i32* %32, align 4
  %526 = call i32 @BIT(i32 7)
  %527 = and i32 %525, %526
  %528 = load i32, i32* %11, align 4
  %529 = or i32 %528, %527
  store i32 %529, i32* %11, align 4
  %530 = load i32, i32* %36, align 4
  %531 = call i32 @BIT(i32 4)
  %532 = and i32 %530, %531
  %533 = icmp ne i32 %532, 0
  br i1 %533, label %534, label %540

534:                                              ; preds = %511
  %535 = load i32, i32* %27, align 4
  %536 = call i32 @BIT(i32 0)
  %537 = and i32 %535, %536
  %538 = icmp ne i32 %537, 0
  %539 = xor i1 %538, true
  br label %540

540:                                              ; preds = %534, %511
  %541 = phi i1 [ false, %511 ], [ %539, %534 ]
  %542 = zext i1 %541 to i32
  %543 = load i32, i32* %11, align 4
  %544 = or i32 %543, %542
  store i32 %544, i32* %11, align 4
  %545 = load i32, i32* %37, align 4
  %546 = call i32 @BIT(i32 4)
  %547 = and i32 %545, %546
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %549, label %555

549:                                              ; preds = %540
  %550 = load i32, i32* %30, align 4
  %551 = call i32 @BIT(i32 0)
  %552 = and i32 %550, %551
  %553 = icmp ne i32 %552, 0
  %554 = xor i1 %553, true
  br label %555

555:                                              ; preds = %549, %540
  %556 = phi i1 [ false, %540 ], [ %554, %549 ]
  %557 = zext i1 %556 to i32
  %558 = load i32, i32* %11, align 4
  %559 = or i32 %558, %557
  store i32 %559, i32* %11, align 4
  %560 = load i32, i32* %30, align 4
  %561 = call i32 @BIT(i32 3)
  %562 = and i32 %560, %561
  %563 = icmp ne i32 %562, 0
  br i1 %563, label %564, label %569

564:                                              ; preds = %555
  %565 = load i32, i32* %38, align 4
  %566 = call i32 @BIT(i32 2)
  %567 = and i32 %565, %566
  %568 = icmp ne i32 %567, 0
  br label %569

569:                                              ; preds = %564, %555
  %570 = phi i1 [ false, %555 ], [ %568, %564 ]
  %571 = zext i1 %570 to i32
  store i32 %571, i32* %12, align 4
  %572 = load i32, i32* %37, align 4
  %573 = call i32 @BIT(i32 2)
  %574 = and i32 %572, %573
  %575 = load i32, i32* %12, align 4
  %576 = or i32 %575, %574
  store i32 %576, i32* %12, align 4
  %577 = load i32, i32* %29, align 4
  %578 = call i32 @BIT(i32 2)
  %579 = call i32 @BIT(i32 3)
  %580 = or i32 %578, %579
  %581 = and i32 %577, %580
  %582 = icmp ne i32 %581, 0
  %583 = xor i1 %582, true
  %584 = zext i1 %583 to i32
  store i32 %584, i32* %13, align 4
  br label %751

585:                                              ; preds = %241
  %586 = load i32, i32* %35, align 4
  %587 = icmp ne i32 %586, 0
  br i1 %587, label %593, label %588

588:                                              ; preds = %585
  %589 = load i32, i32* %27, align 4
  %590 = call i32 @BIT(i32 5)
  %591 = and i32 %589, %590
  %592 = icmp ne i32 %591, 0
  br label %593

593:                                              ; preds = %588, %585
  %594 = phi i1 [ false, %585 ], [ %592, %588 ]
  %595 = zext i1 %594 to i32
  %596 = load i32, i32* %6, align 4
  %597 = or i32 %596, %595
  store i32 %597, i32* %6, align 4
  %598 = load i32, i32* %37, align 4
  %599 = call i32 @BIT(i32 5)
  %600 = and i32 %598, %599
  %601 = load i32, i32* %6, align 4
  %602 = or i32 %601, %600
  store i32 %602, i32* %6, align 4
  %603 = load i32, i32* %30, align 4
  %604 = call i32 @BIT(i32 4)
  %605 = and i32 %603, %604
  store i32 %605, i32* %7, align 4
  %606 = load i32, i32* %37, align 4
  %607 = call i32 @BIT(i32 3)
  %608 = and i32 %606, %607
  %609 = load i32, i32* %7, align 4
  %610 = or i32 %609, %608
  store i32 %610, i32* %7, align 4
  %611 = load i32, i32* %26, align 4
  %612 = call i32 @BIT(i32 1)
  %613 = and i32 %611, %612
  store i32 %613, i32* %8, align 4
  %614 = load i32, i32* %37, align 4
  %615 = call i32 @BIT(i32 4)
  %616 = and i32 %614, %615
  %617 = icmp ne i32 %616, 0
  br i1 %617, label %618, label %624

618:                                              ; preds = %593
  %619 = load i32, i32* %30, align 4
  %620 = call i32 @BIT(i32 0)
  %621 = and i32 %619, %620
  %622 = icmp ne i32 %621, 0
  %623 = xor i1 %622, true
  br label %624

624:                                              ; preds = %618, %593
  %625 = phi i1 [ false, %593 ], [ %623, %618 ]
  %626 = zext i1 %625 to i32
  %627 = load i32, i32* %11, align 4
  %628 = or i32 %627, %626
  store i32 %628, i32* %11, align 4
  %629 = load i32, i32* %35, align 4
  %630 = icmp ne i32 %629, 0
  br i1 %630, label %636, label %631

631:                                              ; preds = %624
  %632 = load i32, i32* %32, align 4
  %633 = call i32 @BIT(i32 7)
  %634 = and i32 %632, %633
  %635 = icmp ne i32 %634, 0
  br label %636

636:                                              ; preds = %631, %624
  %637 = phi i1 [ false, %624 ], [ %635, %631 ]
  %638 = zext i1 %637 to i32
  %639 = load i32, i32* %11, align 4
  %640 = or i32 %639, %638
  store i32 %640, i32* %11, align 4
  %641 = load i32, i32* %37, align 4
  %642 = call i32 @BIT(i32 2)
  %643 = and i32 %641, %642
  store i32 %643, i32* %12, align 4
  %644 = load i32, i32* %38, align 4
  %645 = call i32 @BIT(i32 2)
  %646 = and i32 %644, %645
  %647 = load i32, i32* %12, align 4
  %648 = or i32 %647, %646
  store i32 %648, i32* %12, align 4
  %649 = load i32, i32* %29, align 4
  %650 = call i32 @BIT(i32 4)
  %651 = and i32 %649, %650
  store i32 %651, i32* %13, align 4
  br label %751

652:                                              ; preds = %241
  %653 = load i32, i32* %27, align 4
  %654 = call i32 @BIT(i32 0)
  %655 = and i32 %653, %654
  %656 = icmp ne i32 %655, 0
  br i1 %656, label %662, label %657

657:                                              ; preds = %652
  %658 = load i32, i32* %36, align 4
  %659 = call i32 @BIT(i32 3)
  %660 = and i32 %658, %659
  %661 = icmp ne i32 %660, 0
  br label %662

662:                                              ; preds = %657, %652
  %663 = phi i1 [ false, %652 ], [ %661, %657 ]
  %664 = zext i1 %663 to i32
  store i32 %664, i32* %7, align 4
  %665 = load i32, i32* %30, align 4
  %666 = call i32 @BIT(i32 4)
  %667 = and i32 %665, %666
  %668 = load i32, i32* %7, align 4
  %669 = or i32 %668, %667
  store i32 %669, i32* %7, align 4
  %670 = load i32, i32* %37, align 4
  %671 = call i32 @BIT(i32 5)
  %672 = and i32 %670, %671
  %673 = load i32, i32* %7, align 4
  %674 = or i32 %673, %672
  store i32 %674, i32* %7, align 4
  %675 = load i32, i32* %27, align 4
  %676 = call i32 @BIT(i32 5)
  %677 = and i32 %675, %676
  store i32 %677, i32* %8, align 4
  %678 = load i32, i32* %31, align 4
  %679 = call i32 @BIT(i32 2)
  %680 = and i32 %678, %679
  %681 = icmp ne i32 %680, 0
  %682 = xor i1 %681, true
  %683 = zext i1 %682 to i32
  %684 = load i32, i32* %8, align 4
  %685 = or i32 %684, %683
  store i32 %685, i32* %8, align 4
  %686 = load i32, i32* %37, align 4
  %687 = call i32 @BIT(i32 3)
  %688 = and i32 %686, %687
  %689 = load i32, i32* %8, align 4
  %690 = or i32 %689, %688
  store i32 %690, i32* %8, align 4
  %691 = load i32, i32* %27, align 4
  %692 = call i32 @BIT(i32 0)
  %693 = and i32 %691, %692
  %694 = icmp ne i32 %693, 0
  br i1 %694, label %700, label %695

695:                                              ; preds = %662
  %696 = load i32, i32* %36, align 4
  %697 = call i32 @BIT(i32 4)
  %698 = and i32 %696, %697
  %699 = icmp ne i32 %698, 0
  br label %700

700:                                              ; preds = %695, %662
  %701 = phi i1 [ false, %662 ], [ %699, %695 ]
  %702 = zext i1 %701 to i32
  store i32 %702, i32* %12, align 4
  %703 = load i32, i32* %38, align 4
  %704 = call i32 @BIT(i32 2)
  %705 = and i32 %703, %704
  %706 = icmp ne i32 %705, 0
  br i1 %706, label %712, label %707

707:                                              ; preds = %700
  %708 = load i32, i32* %30, align 4
  %709 = call i32 @BIT(i32 3)
  %710 = and i32 %708, %709
  %711 = icmp ne i32 %710, 0
  br label %712

712:                                              ; preds = %707, %700
  %713 = phi i1 [ false, %700 ], [ %711, %707 ]
  %714 = zext i1 %713 to i32
  %715 = load i32, i32* %12, align 4
  %716 = or i32 %715, %714
  store i32 %716, i32* %12, align 4
  %717 = load i32, i32* %37, align 4
  %718 = call i32 @BIT(i32 4)
  %719 = and i32 %717, %718
  %720 = icmp ne i32 %719, 0
  br i1 %720, label %721, label %727

721:                                              ; preds = %712
  %722 = load i32, i32* %30, align 4
  %723 = call i32 @BIT(i32 0)
  %724 = and i32 %722, %723
  %725 = icmp ne i32 %724, 0
  %726 = xor i1 %725, true
  br label %727

727:                                              ; preds = %721, %712
  %728 = phi i1 [ false, %712 ], [ %726, %721 ]
  %729 = zext i1 %728 to i32
  %730 = load i32, i32* %12, align 4
  %731 = or i32 %730, %729
  store i32 %731, i32* %12, align 4
  %732 = load i32, i32* %29, align 4
  %733 = call i32 @BIT(i32 2)
  %734 = call i32 @BIT(i32 3)
  %735 = or i32 %733, %734
  %736 = and i32 %732, %735
  %737 = icmp ne i32 %736, 0
  %738 = xor i1 %737, true
  %739 = zext i1 %738 to i32
  store i32 %739, i32* %13, align 4
  %740 = load i32, i32* %32, align 4
  %741 = call i32 @BIT(i32 7)
  %742 = and i32 %740, %741
  %743 = load i32, i32* %13, align 4
  %744 = or i32 %743, %742
  store i32 %744, i32* %13, align 4
  %745 = load i32, i32* %37, align 4
  %746 = call i32 @BIT(i32 2)
  %747 = and i32 %745, %746
  %748 = load i32, i32* %13, align 4
  %749 = or i32 %748, %747
  store i32 %749, i32* %13, align 4
  br label %751

750:                                              ; preds = %241
  br label %751

751:                                              ; preds = %750, %727, %636, %569, %463, %393, %337, %312
  %752 = load i32, i32* %4, align 4
  store i32 %752, i32* %5, align 4
  br label %753

753:                                              ; preds = %751, %236
  br label %754

754:                                              ; preds = %753, %164
  br label %755

755:                                              ; preds = %754, %155
  br label %756

756:                                              ; preds = %755, %55
  %757 = load i32, i32* %3, align 4
  %758 = shl i32 %757, 2
  %759 = or i32 3, %758
  %760 = load i32, i32* %4, align 4
  %761 = shl i32 %760, 3
  %762 = or i32 %759, %761
  %763 = load i32, i32* %6, align 4
  %764 = shl i32 %763, 4
  %765 = or i32 %762, %764
  %766 = load i32, i32* %7, align 4
  %767 = shl i32 %766, 5
  %768 = or i32 %765, %767
  %769 = load i32, i32* %8, align 4
  %770 = shl i32 %769, 6
  %771 = or i32 %768, %770
  %772 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %773 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %772, i32 0, i32 3
  store i32 %771, i32* %773, align 4
  %774 = load i32, i32* %3, align 4
  %775 = shl i32 %774, 2
  %776 = or i32 3, %775
  %777 = load i32, i32* %5, align 4
  %778 = shl i32 %777, 3
  %779 = or i32 %776, %778
  %780 = load i32, i32* %6, align 4
  %781 = shl i32 %780, 4
  %782 = or i32 %779, %781
  %783 = load i32, i32* %7, align 4
  %784 = shl i32 %783, 5
  %785 = or i32 %782, %784
  %786 = load i32, i32* %8, align 4
  %787 = shl i32 %786, 6
  %788 = or i32 %785, %787
  %789 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %790 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %789, i32 0, i32 4
  store i32 %788, i32* %790, align 4
  %791 = load i32, i32* %9, align 4
  %792 = shl i32 %791, 2
  %793 = or i32 3, %792
  %794 = load i32, i32* %10, align 4
  %795 = shl i32 %794, 3
  %796 = or i32 %793, %795
  %797 = load i32, i32* %11, align 4
  %798 = shl i32 %797, 4
  %799 = or i32 %796, %798
  %800 = load i32, i32* %12, align 4
  %801 = shl i32 %800, 5
  %802 = or i32 %799, %801
  %803 = load i32, i32* %13, align 4
  %804 = shl i32 %803, 6
  %805 = or i32 %802, %804
  %806 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %807 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %806, i32 0, i32 5
  store i32 %805, i32* %807, align 4
  ret void
}

declare dso_local i32 @superio_select(i32, i32) #1

declare dso_local i32 @superio_inb(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i8* @dmi_get_system_info(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @superio_outb(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
