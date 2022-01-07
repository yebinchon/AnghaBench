; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_set_isdbt_common_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_set_isdbt_common_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib8000_state = type { i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { %struct.dtv_frontend_properties }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }

@DQPSK = common dso_local global i64 0, align 8
@permu_seg = common dso_local global i32* null, align 8
@ana_fe_coeff_3seg = common dso_local global i32 0, align 4
@ana_fe_coeff_1seg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib8000_state*, i32, i32)* @dib8000_set_isdbt_common_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib8000_set_isdbt_common_channel(%struct.dib8000_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dib8000_state*, align 8
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
  %16 = alloca %struct.dtv_frontend_properties*, align 8
  store %struct.dib8000_state* %0, %struct.dib8000_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = load i64, i64* @DQPSK, align 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %14, align 4
  %19 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %20 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %19, i32 0, i32 7
  %21 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %21, i64 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store %struct.dtv_frontend_properties* %24, %struct.dtv_frontend_properties** %16, align 8
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %16, align 8
  %29 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  br label %30

30:                                               ; preds = %27, %3
  %31 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = shl i32 %32, 4
  %34 = call i32 @dib8000_write_word(%struct.dib8000_state* %31, i32 10, i32 %33)
  %35 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %36 = call i32 @fft_to_mode(%struct.dib8000_state* %35)
  %37 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %38 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %40 = call i32 @dib8000_read_word(%struct.dib8000_state* %39, i32 1)
  store i32 %40, i32* %11, align 4
  %41 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %42 = load i32, i32* %11, align 4
  %43 = and i32 %42, 65532
  %44 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %16, align 8
  %45 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 3
  %48 = or i32 %43, %47
  %49 = call i32 @dib8000_write_word(%struct.dib8000_state* %41, i32 1, i32 %48)
  %50 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %51 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %52 = call i32 @dib8000_read_word(%struct.dib8000_state* %51, i32 274)
  %53 = and i32 %52, 65487
  %54 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %16, align 8
  %55 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, 1
  %58 = shl i32 %57, 5
  %59 = or i32 %53, %58
  %60 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %16, align 8
  %61 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, 1
  %64 = shl i32 %63, 4
  %65 = or i32 %59, %64
  %66 = call i32 @dib8000_write_word(%struct.dib8000_state* %50, i32 274, i32 %65)
  %67 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %16, align 8
  %68 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %137

71:                                               ; preds = %30
  %72 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %16, align 8
  %73 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %72, i32 0, i32 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @DQPSK, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = load i32*, i32** @permu_seg, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 %80, %83
  %85 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %86 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  store i32 1, i32* %12, align 4
  br label %87

87:                                               ; preds = %113, %71
  %88 = load i32, i32* %12, align 4
  %89 = icmp slt i32 %88, 3
  br i1 %89, label %90, label %116

90:                                               ; preds = %87
  %91 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %16, align 8
  %92 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %91, i32 0, i32 4
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @DQPSK, align 8
  %100 = icmp eq i64 %98, %99
  %101 = zext i1 %100 to i32
  %102 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %16, align 8
  %103 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %102, i32 0, i32 4
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = mul nsw i32 %101, %109
  %111 = load i32, i32* %13, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %13, align 4
  br label %113

113:                                              ; preds = %90
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %12, align 4
  br label %87

116:                                              ; preds = %87
  store i32 0, i32* %12, align 4
  br label %117

117:                                              ; preds = %133, %116
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %13, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %136

121:                                              ; preds = %117
  %122 = load i32*, i32** @permu_seg, align 8
  %123 = load i32, i32* %12, align 4
  %124 = add nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = shl i32 1, %127
  %129 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %130 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %121
  %134 = load i32, i32* %12, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %12, align 4
  br label %117

136:                                              ; preds = %117
  br label %187

137:                                              ; preds = %30
  store i32 0, i32* %12, align 4
  br label %138

138:                                              ; preds = %164, %137
  %139 = load i32, i32* %12, align 4
  %140 = icmp slt i32 %139, 3
  br i1 %140, label %141, label %167

141:                                              ; preds = %138
  %142 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %16, align 8
  %143 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %142, i32 0, i32 4
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = load i32, i32* %12, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @DQPSK, align 8
  %151 = icmp eq i64 %149, %150
  %152 = zext i1 %151 to i32
  %153 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %16, align 8
  %154 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %153, i32 0, i32 4
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = load i32, i32* %12, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = mul nsw i32 %152, %160
  %162 = load i32, i32* %13, align 4
  %163 = add nsw i32 %162, %161
  store i32 %163, i32* %13, align 4
  br label %164

164:                                              ; preds = %141
  %165 = load i32, i32* %12, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %12, align 4
  br label %138

167:                                              ; preds = %138
  store i32 0, i32* %12, align 4
  br label %168

168:                                              ; preds = %183, %167
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* %13, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %186

172:                                              ; preds = %168
  %173 = load i32*, i32** @permu_seg, align 8
  %174 = load i32, i32* %12, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = shl i32 1, %177
  %179 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %180 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = or i32 %181, %178
  store i32 %182, i32* %180, align 4
  br label %183

183:                                              ; preds = %172
  %184 = load i32, i32* %12, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %12, align 4
  br label %168

186:                                              ; preds = %168
  br label %187

187:                                              ; preds = %186, %136
  %188 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %189 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %187
  %193 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %194 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %195 = call i32 @dib8000_read_word(%struct.dib8000_state* %194, i32 268)
  %196 = and i32 %195, 63999
  %197 = or i32 %196, 512
  %198 = call i32 @dib8000_write_word(%struct.dib8000_state* %193, i32 268, i32 %197)
  br label %202

199:                                              ; preds = %187
  %200 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %201 = call i32 @dib8000_write_word(%struct.dib8000_state* %200, i32 268, i32 1063)
  br label %202

202:                                              ; preds = %199, %192
  store i32 0, i32* %12, align 4
  br label %203

203:                                              ; preds = %211, %202
  %204 = load i32, i32* %12, align 4
  %205 = icmp slt i32 %204, 3
  br i1 %205, label %206, label %214

206:                                              ; preds = %203
  %207 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %208 = load i32, i32* %12, align 4
  %209 = load i32, i32* %14, align 4
  %210 = call i32 @dib8000_set_layer(%struct.dib8000_state* %207, i32 %208, i32 %209)
  store i32 %210, i32* %14, align 4
  br label %211

211:                                              ; preds = %206
  %212 = load i32, i32* %12, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %12, align 4
  br label %203

214:                                              ; preds = %203
  %215 = load i32, i32* %6, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %234

217:                                              ; preds = %214
  %218 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %16, align 8
  %219 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %218, i32 0, i32 4
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i64 1
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %225 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %224, i32 0, i32 2
  store i32 %223, i32* %225, align 8
  %226 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %16, align 8
  %227 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %226, i32 0, i32 4
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i64 2
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %233 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %232, i32 0, i32 3
  store i32 %231, i32* %233, align 4
  br label %234

234:                                              ; preds = %217, %214
  %235 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %236 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %237 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = shl i32 %238, 13
  %240 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %241 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = or i32 %239, %242
  %244 = call i32 @dib8000_write_word(%struct.dib8000_state* %235, i32 0, i32 %243)
  %245 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %246 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = icmp ne i32 %247, 0
  %249 = zext i1 %248 to i32
  %250 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %251 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %250, i32 0, i32 4
  store i32 %249, i32* %251, align 8
  %252 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %253 = load i32, i32* %14, align 4
  %254 = call i32 @dib8000_adp_fine_tune(%struct.dib8000_state* %252, i32 %253)
  store i32 %254, i32* %10, align 4
  %255 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %256 = load i32, i32* %10, align 4
  %257 = call i32 @dib8000_update_ana_gain(%struct.dib8000_state* %255, i32 %256)
  %258 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %16, align 8
  %259 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %234
  %263 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %264 = load i32, i32* @ana_fe_coeff_3seg, align 4
  %265 = call i32 @dib8000_load_ana_fe_coefs(%struct.dib8000_state* %263, i32 %264)
  br label %270

266:                                              ; preds = %234
  %267 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %268 = load i32, i32* @ana_fe_coeff_1seg, align 4
  %269 = call i32 @dib8000_load_ana_fe_coefs(%struct.dib8000_state* %267, i32 %268)
  br label %270

270:                                              ; preds = %266, %262
  %271 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %16, align 8
  %272 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %290

275:                                              ; preds = %270
  %276 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %277 = call i32 @dib8000_set_sb_channel(%struct.dib8000_state* %276)
  %278 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %16, align 8
  %279 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %278, i32 0, i32 3
  %280 = load i32, i32* %279, align 4
  %281 = icmp slt i32 %280, 14
  br i1 %281, label %282, label %288

282:                                              ; preds = %275
  %283 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %284 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %16, align 8
  %285 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @dib8000_get_init_prbs(%struct.dib8000_state* %283, i32 %286)
  store i32 %287, i32* %15, align 4
  br label %289

288:                                              ; preds = %275
  store i32 0, i32* %15, align 4
  br label %289

289:                                              ; preds = %288, %282
  br label %293

290:                                              ; preds = %270
  %291 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %292 = call i32 @dib8000_set_13seg_channel(%struct.dib8000_state* %291)
  store i32 4095, i32* %15, align 4
  br label %293

293:                                              ; preds = %290, %289
  %294 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %295 = call i32 @dib8000_small_fine_tune(%struct.dib8000_state* %294)
  %296 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %297 = load i32, i32* %15, align 4
  %298 = call i32 @dib8000_set_subchannel_prbs(%struct.dib8000_state* %296, i32 %297)
  store i32 0, i32* %12, align 4
  br label %299

299:                                              ; preds = %361, %293
  %300 = load i32, i32* %12, align 4
  %301 = icmp slt i32 %300, 13
  br i1 %301, label %302, label %364

302:                                              ; preds = %299
  %303 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %304 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = xor i32 %305, -1
  %307 = load i32, i32* %12, align 4
  %308 = ashr i32 %306, %307
  %309 = and i32 %308, 1
  %310 = icmp eq i32 %309, 1
  br i1 %310, label %311, label %360

311:                                              ; preds = %302
  %312 = load i32, i32* %12, align 4
  %313 = shl i32 1, %312
  %314 = load i32, i32* %12, align 4
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %330, label %316

316:                                              ; preds = %311
  %317 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %318 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %317, i32 0, i32 5
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %321 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = xor i32 %322, -1
  %324 = and i32 %319, %323
  %325 = load i32, i32* %12, align 4
  %326 = sub nsw i32 %325, 1
  %327 = ashr i32 %324, %326
  %328 = and i32 %327, 1
  %329 = icmp eq i32 %328, 0
  br label %330

330:                                              ; preds = %316, %311
  %331 = phi i1 [ true, %311 ], [ %329, %316 ]
  %332 = zext i1 %331 to i32
  %333 = mul nsw i32 %313, %332
  %334 = load i32, i32* %7, align 4
  %335 = add nsw i32 %334, %333
  store i32 %335, i32* %7, align 4
  %336 = load i32, i32* %12, align 4
  %337 = shl i32 1, %336
  %338 = load i32, i32* %12, align 4
  %339 = icmp eq i32 %338, 12
  br i1 %339, label %354, label %340

340:                                              ; preds = %330
  %341 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %342 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %341, i32 0, i32 5
  %343 = load i32, i32* %342, align 4
  %344 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %345 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = xor i32 %346, -1
  %348 = and i32 %343, %347
  %349 = load i32, i32* %12, align 4
  %350 = add nsw i32 %349, 1
  %351 = ashr i32 %348, %350
  %352 = and i32 %351, 1
  %353 = icmp eq i32 %352, 0
  br label %354

354:                                              ; preds = %340, %330
  %355 = phi i1 [ true, %330 ], [ %353, %340 ]
  %356 = zext i1 %355 to i32
  %357 = mul nsw i32 %337, %356
  %358 = load i32, i32* %8, align 4
  %359 = add nsw i32 %358, %357
  store i32 %359, i32* %8, align 4
  br label %360

360:                                              ; preds = %354, %302
  br label %361

361:                                              ; preds = %360
  %362 = load i32, i32* %12, align 4
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %12, align 4
  br label %299

364:                                              ; preds = %299
  %365 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %366 = load i32, i32* %7, align 4
  %367 = call i32 @dib8000_write_word(%struct.dib8000_state* %365, i32 222, i32 %366)
  %368 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %369 = load i32, i32* %8, align 4
  %370 = call i32 @dib8000_write_word(%struct.dib8000_state* %368, i32 223, i32 %369)
  %371 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %372 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %373 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %372, i32 0, i32 5
  %374 = load i32, i32* %373, align 4
  %375 = xor i32 %374, -1
  %376 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %377 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 4
  %379 = or i32 %375, %378
  %380 = call i32 @dib8000_write_word(%struct.dib8000_state* %371, i32 189, i32 %379)
  %381 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %382 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %383 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %382, i32 0, i32 5
  %384 = load i32, i32* %383, align 4
  %385 = xor i32 %384, -1
  %386 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %387 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %386, i32 0, i32 1
  %388 = load i32, i32* %387, align 4
  %389 = or i32 %385, %388
  %390 = call i32 @dib8000_write_word(%struct.dib8000_state* %381, i32 192, i32 %389)
  %391 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %392 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %393 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %392, i32 0, i32 5
  %394 = load i32, i32* %393, align 4
  %395 = xor i32 %394, -1
  %396 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %397 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %396, i32 0, i32 1
  %398 = load i32, i32* %397, align 4
  %399 = or i32 %395, %398
  %400 = call i32 @dib8000_write_word(%struct.dib8000_state* %391, i32 225, i32 %399)
  %401 = load i32, i32* %6, align 4
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %415, label %403

403:                                              ; preds = %364
  %404 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %405 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %406 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %405, i32 0, i32 5
  %407 = load i32, i32* %406, align 4
  %408 = xor i32 %407, -1
  %409 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %410 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %409, i32 0, i32 1
  %411 = load i32, i32* %410, align 4
  %412 = or i32 %408, %411
  %413 = and i32 %412, 8191
  %414 = call i32 @dib8000_write_word(%struct.dib8000_state* %404, i32 288, i32 %413)
  br label %418

415:                                              ; preds = %364
  %416 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %417 = call i32 @dib8000_write_word(%struct.dib8000_state* %416, i32 288, i32 8191)
  br label %418

418:                                              ; preds = %415, %403
  %419 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %420 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %421 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %420, i32 0, i32 5
  %422 = load i32, i32* %421, align 4
  %423 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %424 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %423, i32 0, i32 1
  %425 = load i32, i32* %424, align 4
  %426 = xor i32 %425, -1
  %427 = and i32 %422, %426
  %428 = call i32 @dib8000_write_word(%struct.dib8000_state* %419, i32 211, i32 %427)
  %429 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %430 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %431 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %430, i32 0, i32 5
  %432 = load i32, i32* %431, align 4
  %433 = xor i32 %432, -1
  %434 = or i32 %433, 4096
  %435 = call i32 @dib8000_write_word(%struct.dib8000_state* %429, i32 287, i32 %434)
  %436 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %437 = call i32 @dib8000_write_word(%struct.dib8000_state* %436, i32 178, i32 32)
  store i32 0, i32* %12, align 4
  br label %438

438:                                              ; preds = %466, %418
  %439 = load i32, i32* %12, align 4
  %440 = icmp slt i32 %439, 3
  br i1 %440, label %441, label %469

441:                                              ; preds = %438
  %442 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %16, align 8
  %443 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %442, i32 0, i32 4
  %444 = load %struct.TYPE_4__*, %struct.TYPE_4__** %443, align 8
  %445 = load i32, i32* %12, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %444, i64 %446
  %448 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %447, i32 0, i32 0
  %449 = load i64, i64* %448, align 8
  %450 = load i64, i64* @DQPSK, align 8
  %451 = icmp eq i64 %449, %450
  %452 = zext i1 %451 to i32
  %453 = mul nsw i32 %452, 4
  %454 = add nsw i32 %453, 1
  %455 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %16, align 8
  %456 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %455, i32 0, i32 4
  %457 = load %struct.TYPE_4__*, %struct.TYPE_4__** %456, align 8
  %458 = load i32, i32* %12, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %457, i64 %459
  %461 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %460, i32 0, i32 1
  %462 = load i32, i32* %461, align 8
  %463 = mul nsw i32 %454, %462
  %464 = load i32, i32* %9, align 4
  %465 = add nsw i32 %464, %463
  store i32 %465, i32* %9, align 4
  br label %466

466:                                              ; preds = %441
  %467 = load i32, i32* %12, align 4
  %468 = add nsw i32 %467, 1
  store i32 %468, i32* %12, align 4
  br label %438

469:                                              ; preds = %438
  %470 = load i32, i32* %9, align 4
  %471 = mul nsw i32 %470, 128
  store i32 %471, i32* %9, align 4
  %472 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %473 = load i32, i32* %9, align 4
  %474 = call i32 @dib8000_write_word(%struct.dib8000_state* %472, i32 290, i32 %473)
  %475 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %476 = load i32, i32* %9, align 4
  %477 = call i32 @dib8000_write_word(%struct.dib8000_state* %475, i32 291, i32 %476)
  %478 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %479 = load i32, i32* %9, align 4
  %480 = call i32 @dib8000_write_word(%struct.dib8000_state* %478, i32 292, i32 %479)
  %481 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %482 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %481, i32 0, i32 6
  %483 = load i64, i64* %482, align 8
  %484 = icmp eq i64 %483, 0
  br i1 %484, label %485, label %488

485:                                              ; preds = %469
  %486 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %487 = call i32 @dib8000_write_word(%struct.dib8000_state* %486, i32 250, i32 3285)
  br label %488

488:                                              ; preds = %485, %469
  %489 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %490 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %489, i32 0, i32 6
  store i64 0, i64* %490, align 8
  ret void
}

declare dso_local i32 @dib8000_write_word(%struct.dib8000_state*, i32, i32) #1

declare dso_local i32 @fft_to_mode(%struct.dib8000_state*) #1

declare dso_local i32 @dib8000_read_word(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dib8000_set_layer(%struct.dib8000_state*, i32, i32) #1

declare dso_local i32 @dib8000_adp_fine_tune(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dib8000_update_ana_gain(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dib8000_load_ana_fe_coefs(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dib8000_set_sb_channel(%struct.dib8000_state*) #1

declare dso_local i32 @dib8000_get_init_prbs(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dib8000_set_13seg_channel(%struct.dib8000_state*) #1

declare dso_local i32 @dib8000_small_fine_tune(%struct.dib8000_state*) #1

declare dso_local i32 @dib8000_set_subchannel_prbs(%struct.dib8000_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
