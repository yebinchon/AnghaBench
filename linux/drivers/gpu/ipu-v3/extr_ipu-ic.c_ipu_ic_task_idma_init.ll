; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-ic.c_ipu_ic_task_idma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-ic.c_ipu_ic_task_idma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_ic = type { i32, %struct.ipu_ic_priv* }
%struct.ipu_ic_priv = type { i32, %struct.ipu_soc* }
%struct.ipu_soc = type { i32 }
%struct.ipuv3_channel = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Illegal burst length for IC\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IC_IDMAC_1 = common dso_local global i32 0, align 4
@IC_IDMAC_2 = common dso_local global i32 0, align 4
@IC_IDMAC_3 = common dso_local global i32 0, align 4
@IC_IDMAC_1_CB2_BURST_16 = common dso_local global i32 0, align 4
@IC_IDMAC_1_PP_FLIP_RS = common dso_local global i32 0, align 4
@IC_IDMAC_2_PP_HEIGHT_MASK = common dso_local global i32 0, align 4
@IC_IDMAC_2_PP_HEIGHT_OFFSET = common dso_local global i32 0, align 4
@IC_IDMAC_3_PP_WIDTH_MASK = common dso_local global i32 0, align 4
@IC_IDMAC_3_PP_WIDTH_OFFSET = common dso_local global i32 0, align 4
@IC_IDMAC_1_CB5_BURST_16 = common dso_local global i32 0, align 4
@IC_IDMAC_1_PP_ROT_MASK = common dso_local global i32 0, align 4
@IC_IDMAC_1_PP_ROT_OFFSET = common dso_local global i32 0, align 4
@IC_IDMAC_1_CB6_BURST_16 = common dso_local global i32 0, align 4
@IC_IDMAC_1_CB0_BURST_16 = common dso_local global i32 0, align 4
@IC_IDMAC_1_PRPENC_FLIP_RS = common dso_local global i32 0, align 4
@IC_IDMAC_2_PRPENC_HEIGHT_MASK = common dso_local global i32 0, align 4
@IC_IDMAC_2_PRPENC_HEIGHT_OFFSET = common dso_local global i32 0, align 4
@IC_IDMAC_3_PRPENC_WIDTH_MASK = common dso_local global i32 0, align 4
@IC_IDMAC_3_PRPENC_WIDTH_OFFSET = common dso_local global i32 0, align 4
@IC_IDMAC_1_PRPENC_ROT_MASK = common dso_local global i32 0, align 4
@IC_IDMAC_1_PRPENC_ROT_OFFSET = common dso_local global i32 0, align 4
@IC_IDMAC_1_CB1_BURST_16 = common dso_local global i32 0, align 4
@IC_IDMAC_1_PRPVF_FLIP_RS = common dso_local global i32 0, align 4
@IC_IDMAC_2_PRPVF_HEIGHT_MASK = common dso_local global i32 0, align 4
@IC_IDMAC_2_PRPVF_HEIGHT_OFFSET = common dso_local global i32 0, align 4
@IC_IDMAC_3_PRPVF_WIDTH_MASK = common dso_local global i32 0, align 4
@IC_IDMAC_3_PRPVF_WIDTH_OFFSET = common dso_local global i32 0, align 4
@IC_IDMAC_1_PRPVF_ROT_MASK = common dso_local global i32 0, align 4
@IC_IDMAC_1_PRPVF_ROT_OFFSET = common dso_local global i32 0, align 4
@IC_IDMAC_1_CB3_BURST_16 = common dso_local global i32 0, align 4
@IC_IDMAC_1_CB4_BURST_16 = common dso_local global i32 0, align 4
@IC_IDMAC_1_CB7_BURST_16 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_ic_task_idma_init(%struct.ipu_ic* %0, %struct.ipuv3_channel* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ipu_ic*, align 8
  %9 = alloca %struct.ipuv3_channel*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ipu_ic_priv*, align 8
  %15 = alloca %struct.ipu_soc*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.ipu_ic* %0, %struct.ipu_ic** %8, align 8
  store %struct.ipuv3_channel* %1, %struct.ipuv3_channel** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %23 = load %struct.ipu_ic*, %struct.ipu_ic** %8, align 8
  %24 = getelementptr inbounds %struct.ipu_ic, %struct.ipu_ic* %23, i32 0, i32 1
  %25 = load %struct.ipu_ic_priv*, %struct.ipu_ic_priv** %24, align 8
  store %struct.ipu_ic_priv* %25, %struct.ipu_ic_priv** %14, align 8
  %26 = load %struct.ipu_ic_priv*, %struct.ipu_ic_priv** %14, align 8
  %27 = getelementptr inbounds %struct.ipu_ic_priv, %struct.ipu_ic_priv* %26, i32 0, i32 1
  %28 = load %struct.ipu_soc*, %struct.ipu_soc** %27, align 8
  store %struct.ipu_soc* %28, %struct.ipu_soc** %15, align 8
  %29 = load i32, i32* %13, align 4
  %30 = call i32 @bitrev8(i32 %29)
  %31 = ashr i32 %30, 5
  store i32 %31, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %22, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 8
  br i1 %33, label %34, label %44

34:                                               ; preds = %6
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 16
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load %struct.ipu_soc*, %struct.ipu_soc** %15, align 8
  %39 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  br label %321

44:                                               ; preds = %34, %6
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %19, align 4
  %50 = and i32 %49, 2
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  store i32 1, i32* %20, align 4
  br label %53

53:                                               ; preds = %52, %44
  %54 = load %struct.ipu_ic_priv*, %struct.ipu_ic_priv** %14, align 8
  %55 = getelementptr inbounds %struct.ipu_ic_priv, %struct.ipu_ic_priv* %54, i32 0, i32 0
  %56 = load i64, i64* %21, align 8
  %57 = call i32 @spin_lock_irqsave(i32* %55, i64 %56)
  %58 = load %struct.ipu_ic*, %struct.ipu_ic** %8, align 8
  %59 = load i32, i32* @IC_IDMAC_1, align 4
  %60 = call i32 @ipu_ic_read(%struct.ipu_ic* %58, i32 %59)
  store i32 %60, i32* %16, align 4
  %61 = load %struct.ipu_ic*, %struct.ipu_ic** %8, align 8
  %62 = load i32, i32* @IC_IDMAC_2, align 4
  %63 = call i32 @ipu_ic_read(%struct.ipu_ic* %61, i32 %62)
  store i32 %63, i32* %17, align 4
  %64 = load %struct.ipu_ic*, %struct.ipu_ic** %8, align 8
  %65 = load i32, i32* @IC_IDMAC_3, align 4
  %66 = call i32 @ipu_ic_read(%struct.ipu_ic* %64, i32 %65)
  store i32 %66, i32* %18, align 4
  %67 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %9, align 8
  %68 = getelementptr inbounds %struct.ipuv3_channel, %struct.ipuv3_channel* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  switch i32 %69, label %294 [
    i32 136, label %70
    i32 133, label %113
    i32 130, label %126
    i32 132, label %136
    i32 135, label %149
    i32 131, label %192
    i32 134, label %202
    i32 129, label %245
    i32 137, label %255
    i32 138, label %268
    i32 128, label %281
  ]

70:                                               ; preds = %53
  %71 = load i32, i32* %12, align 4
  %72 = icmp eq i32 %71, 16
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32, i32* @IC_IDMAC_1_CB2_BURST_16, align 4
  %75 = load i32, i32* %16, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %16, align 4
  br label %82

77:                                               ; preds = %70
  %78 = load i32, i32* @IC_IDMAC_1_CB2_BURST_16, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %16, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %16, align 4
  br label %82

82:                                               ; preds = %77, %73
  %83 = load i32, i32* %20, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i32, i32* @IC_IDMAC_1_PP_FLIP_RS, align 4
  %87 = load i32, i32* %16, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %16, align 4
  br label %94

89:                                               ; preds = %82
  %90 = load i32, i32* @IC_IDMAC_1_PP_FLIP_RS, align 4
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %16, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %16, align 4
  br label %94

94:                                               ; preds = %89, %85
  %95 = load i32, i32* @IC_IDMAC_2_PP_HEIGHT_MASK, align 4
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %17, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %17, align 4
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* @IC_IDMAC_2_PP_HEIGHT_OFFSET, align 4
  %101 = shl i32 %99, %100
  %102 = load i32, i32* %17, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %17, align 4
  %104 = load i32, i32* @IC_IDMAC_3_PP_WIDTH_MASK, align 4
  %105 = xor i32 %104, -1
  %106 = load i32, i32* %18, align 4
  %107 = and i32 %106, %105
  store i32 %107, i32* %18, align 4
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* @IC_IDMAC_3_PP_WIDTH_OFFSET, align 4
  %110 = shl i32 %108, %109
  %111 = load i32, i32* %18, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %18, align 4
  br label %295

113:                                              ; preds = %53
  %114 = load i32, i32* %12, align 4
  %115 = icmp eq i32 %114, 16
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load i32, i32* @IC_IDMAC_1_CB5_BURST_16, align 4
  %118 = load i32, i32* %16, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %16, align 4
  br label %125

120:                                              ; preds = %113
  %121 = load i32, i32* @IC_IDMAC_1_CB5_BURST_16, align 4
  %122 = xor i32 %121, -1
  %123 = load i32, i32* %16, align 4
  %124 = and i32 %123, %122
  store i32 %124, i32* %16, align 4
  br label %125

125:                                              ; preds = %120, %116
  br label %295

126:                                              ; preds = %53
  %127 = load i32, i32* @IC_IDMAC_1_PP_ROT_MASK, align 4
  %128 = xor i32 %127, -1
  %129 = load i32, i32* %16, align 4
  %130 = and i32 %129, %128
  store i32 %130, i32* %16, align 4
  %131 = load i32, i32* %19, align 4
  %132 = load i32, i32* @IC_IDMAC_1_PP_ROT_OFFSET, align 4
  %133 = shl i32 %131, %132
  %134 = load i32, i32* %16, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %16, align 4
  br label %295

136:                                              ; preds = %53
  %137 = load i32, i32* %12, align 4
  %138 = icmp eq i32 %137, 16
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = load i32, i32* @IC_IDMAC_1_CB6_BURST_16, align 4
  %141 = load i32, i32* %16, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %16, align 4
  br label %148

143:                                              ; preds = %136
  %144 = load i32, i32* @IC_IDMAC_1_CB6_BURST_16, align 4
  %145 = xor i32 %144, -1
  %146 = load i32, i32* %16, align 4
  %147 = and i32 %146, %145
  store i32 %147, i32* %16, align 4
  br label %148

148:                                              ; preds = %143, %139
  br label %295

149:                                              ; preds = %53
  %150 = load i32, i32* %12, align 4
  %151 = icmp eq i32 %150, 16
  br i1 %151, label %152, label %156

152:                                              ; preds = %149
  %153 = load i32, i32* @IC_IDMAC_1_CB0_BURST_16, align 4
  %154 = load i32, i32* %16, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %16, align 4
  br label %161

156:                                              ; preds = %149
  %157 = load i32, i32* @IC_IDMAC_1_CB0_BURST_16, align 4
  %158 = xor i32 %157, -1
  %159 = load i32, i32* %16, align 4
  %160 = and i32 %159, %158
  store i32 %160, i32* %16, align 4
  br label %161

161:                                              ; preds = %156, %152
  %162 = load i32, i32* %20, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %161
  %165 = load i32, i32* @IC_IDMAC_1_PRPENC_FLIP_RS, align 4
  %166 = load i32, i32* %16, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %16, align 4
  br label %173

168:                                              ; preds = %161
  %169 = load i32, i32* @IC_IDMAC_1_PRPENC_FLIP_RS, align 4
  %170 = xor i32 %169, -1
  %171 = load i32, i32* %16, align 4
  %172 = and i32 %171, %170
  store i32 %172, i32* %16, align 4
  br label %173

173:                                              ; preds = %168, %164
  %174 = load i32, i32* @IC_IDMAC_2_PRPENC_HEIGHT_MASK, align 4
  %175 = xor i32 %174, -1
  %176 = load i32, i32* %17, align 4
  %177 = and i32 %176, %175
  store i32 %177, i32* %17, align 4
  %178 = load i32, i32* %11, align 4
  %179 = load i32, i32* @IC_IDMAC_2_PRPENC_HEIGHT_OFFSET, align 4
  %180 = shl i32 %178, %179
  %181 = load i32, i32* %17, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %17, align 4
  %183 = load i32, i32* @IC_IDMAC_3_PRPENC_WIDTH_MASK, align 4
  %184 = xor i32 %183, -1
  %185 = load i32, i32* %18, align 4
  %186 = and i32 %185, %184
  store i32 %186, i32* %18, align 4
  %187 = load i32, i32* %10, align 4
  %188 = load i32, i32* @IC_IDMAC_3_PRPENC_WIDTH_OFFSET, align 4
  %189 = shl i32 %187, %188
  %190 = load i32, i32* %18, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %18, align 4
  br label %295

192:                                              ; preds = %53
  %193 = load i32, i32* @IC_IDMAC_1_PRPENC_ROT_MASK, align 4
  %194 = xor i32 %193, -1
  %195 = load i32, i32* %16, align 4
  %196 = and i32 %195, %194
  store i32 %196, i32* %16, align 4
  %197 = load i32, i32* %19, align 4
  %198 = load i32, i32* @IC_IDMAC_1_PRPENC_ROT_OFFSET, align 4
  %199 = shl i32 %197, %198
  %200 = load i32, i32* %16, align 4
  %201 = or i32 %200, %199
  store i32 %201, i32* %16, align 4
  br label %295

202:                                              ; preds = %53
  %203 = load i32, i32* %12, align 4
  %204 = icmp eq i32 %203, 16
  br i1 %204, label %205, label %209

205:                                              ; preds = %202
  %206 = load i32, i32* @IC_IDMAC_1_CB1_BURST_16, align 4
  %207 = load i32, i32* %16, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %16, align 4
  br label %214

209:                                              ; preds = %202
  %210 = load i32, i32* @IC_IDMAC_1_CB1_BURST_16, align 4
  %211 = xor i32 %210, -1
  %212 = load i32, i32* %16, align 4
  %213 = and i32 %212, %211
  store i32 %213, i32* %16, align 4
  br label %214

214:                                              ; preds = %209, %205
  %215 = load i32, i32* %20, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %214
  %218 = load i32, i32* @IC_IDMAC_1_PRPVF_FLIP_RS, align 4
  %219 = load i32, i32* %16, align 4
  %220 = or i32 %219, %218
  store i32 %220, i32* %16, align 4
  br label %226

221:                                              ; preds = %214
  %222 = load i32, i32* @IC_IDMAC_1_PRPVF_FLIP_RS, align 4
  %223 = xor i32 %222, -1
  %224 = load i32, i32* %16, align 4
  %225 = and i32 %224, %223
  store i32 %225, i32* %16, align 4
  br label %226

226:                                              ; preds = %221, %217
  %227 = load i32, i32* @IC_IDMAC_2_PRPVF_HEIGHT_MASK, align 4
  %228 = xor i32 %227, -1
  %229 = load i32, i32* %17, align 4
  %230 = and i32 %229, %228
  store i32 %230, i32* %17, align 4
  %231 = load i32, i32* %11, align 4
  %232 = load i32, i32* @IC_IDMAC_2_PRPVF_HEIGHT_OFFSET, align 4
  %233 = shl i32 %231, %232
  %234 = load i32, i32* %17, align 4
  %235 = or i32 %234, %233
  store i32 %235, i32* %17, align 4
  %236 = load i32, i32* @IC_IDMAC_3_PRPVF_WIDTH_MASK, align 4
  %237 = xor i32 %236, -1
  %238 = load i32, i32* %18, align 4
  %239 = and i32 %238, %237
  store i32 %239, i32* %18, align 4
  %240 = load i32, i32* %10, align 4
  %241 = load i32, i32* @IC_IDMAC_3_PRPVF_WIDTH_OFFSET, align 4
  %242 = shl i32 %240, %241
  %243 = load i32, i32* %18, align 4
  %244 = or i32 %243, %242
  store i32 %244, i32* %18, align 4
  br label %295

245:                                              ; preds = %53
  %246 = load i32, i32* @IC_IDMAC_1_PRPVF_ROT_MASK, align 4
  %247 = xor i32 %246, -1
  %248 = load i32, i32* %16, align 4
  %249 = and i32 %248, %247
  store i32 %249, i32* %16, align 4
  %250 = load i32, i32* %19, align 4
  %251 = load i32, i32* @IC_IDMAC_1_PRPVF_ROT_OFFSET, align 4
  %252 = shl i32 %250, %251
  %253 = load i32, i32* %16, align 4
  %254 = or i32 %253, %252
  store i32 %254, i32* %16, align 4
  br label %295

255:                                              ; preds = %53
  %256 = load i32, i32* %12, align 4
  %257 = icmp eq i32 %256, 16
  br i1 %257, label %258, label %262

258:                                              ; preds = %255
  %259 = load i32, i32* @IC_IDMAC_1_CB3_BURST_16, align 4
  %260 = load i32, i32* %16, align 4
  %261 = or i32 %260, %259
  store i32 %261, i32* %16, align 4
  br label %267

262:                                              ; preds = %255
  %263 = load i32, i32* @IC_IDMAC_1_CB3_BURST_16, align 4
  %264 = xor i32 %263, -1
  %265 = load i32, i32* %16, align 4
  %266 = and i32 %265, %264
  store i32 %266, i32* %16, align 4
  br label %267

267:                                              ; preds = %262, %258
  br label %295

268:                                              ; preds = %53
  %269 = load i32, i32* %12, align 4
  %270 = icmp eq i32 %269, 16
  br i1 %270, label %271, label %275

271:                                              ; preds = %268
  %272 = load i32, i32* @IC_IDMAC_1_CB4_BURST_16, align 4
  %273 = load i32, i32* %16, align 4
  %274 = or i32 %273, %272
  store i32 %274, i32* %16, align 4
  br label %280

275:                                              ; preds = %268
  %276 = load i32, i32* @IC_IDMAC_1_CB4_BURST_16, align 4
  %277 = xor i32 %276, -1
  %278 = load i32, i32* %16, align 4
  %279 = and i32 %278, %277
  store i32 %279, i32* %16, align 4
  br label %280

280:                                              ; preds = %275, %271
  br label %295

281:                                              ; preds = %53
  %282 = load i32, i32* %12, align 4
  %283 = icmp eq i32 %282, 16
  br i1 %283, label %284, label %288

284:                                              ; preds = %281
  %285 = load i32, i32* @IC_IDMAC_1_CB7_BURST_16, align 4
  %286 = load i32, i32* %16, align 4
  %287 = or i32 %286, %285
  store i32 %287, i32* %16, align 4
  br label %293

288:                                              ; preds = %281
  %289 = load i32, i32* @IC_IDMAC_1_CB7_BURST_16, align 4
  %290 = xor i32 %289, -1
  %291 = load i32, i32* %16, align 4
  %292 = and i32 %291, %290
  store i32 %292, i32* %16, align 4
  br label %293

293:                                              ; preds = %288, %284
  br label %295

294:                                              ; preds = %53
  br label %315

295:                                              ; preds = %293, %280, %267, %245, %226, %192, %173, %148, %126, %125, %94
  %296 = load %struct.ipu_ic*, %struct.ipu_ic** %8, align 8
  %297 = load i32, i32* %16, align 4
  %298 = load i32, i32* @IC_IDMAC_1, align 4
  %299 = call i32 @ipu_ic_write(%struct.ipu_ic* %296, i32 %297, i32 %298)
  %300 = load %struct.ipu_ic*, %struct.ipu_ic** %8, align 8
  %301 = load i32, i32* %17, align 4
  %302 = load i32, i32* @IC_IDMAC_2, align 4
  %303 = call i32 @ipu_ic_write(%struct.ipu_ic* %300, i32 %301, i32 %302)
  %304 = load %struct.ipu_ic*, %struct.ipu_ic** %8, align 8
  %305 = load i32, i32* %18, align 4
  %306 = load i32, i32* @IC_IDMAC_3, align 4
  %307 = call i32 @ipu_ic_write(%struct.ipu_ic* %304, i32 %305, i32 %306)
  %308 = load i32, i32* %13, align 4
  %309 = call i64 @ipu_rot_mode_is_irt(i32 %308)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %314

311:                                              ; preds = %295
  %312 = load %struct.ipu_ic*, %struct.ipu_ic** %8, align 8
  %313 = getelementptr inbounds %struct.ipu_ic, %struct.ipu_ic* %312, i32 0, i32 0
  store i32 1, i32* %313, align 8
  br label %314

314:                                              ; preds = %311, %295
  br label %315

315:                                              ; preds = %314, %294
  %316 = load %struct.ipu_ic_priv*, %struct.ipu_ic_priv** %14, align 8
  %317 = getelementptr inbounds %struct.ipu_ic_priv, %struct.ipu_ic_priv* %316, i32 0, i32 0
  %318 = load i64, i64* %21, align 8
  %319 = call i32 @spin_unlock_irqrestore(i32* %317, i64 %318)
  %320 = load i32, i32* %22, align 4
  store i32 %320, i32* %7, align 4
  br label %321

321:                                              ; preds = %315, %37
  %322 = load i32, i32* %7, align 4
  ret i32 %322
}

declare dso_local i32 @bitrev8(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ipu_ic_read(%struct.ipu_ic*, i32) #1

declare dso_local i32 @ipu_ic_write(%struct.ipu_ic*, i32, i32) #1

declare dso_local i64 @ipu_rot_mode_is_irt(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
