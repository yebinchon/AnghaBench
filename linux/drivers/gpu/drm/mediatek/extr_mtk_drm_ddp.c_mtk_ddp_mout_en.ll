; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_ddp.c_mtk_ddp_mout_en.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_ddp.c_mtk_ddp_mout_en.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DDP_COMPONENT_OVL0 = common dso_local global i32 0, align 4
@DDP_COMPONENT_COLOR0 = common dso_local global i32 0, align 4
@DISP_REG_CONFIG_DISP_OVL0_MOUT_EN = common dso_local global i32 0, align 4
@OVL0_MOUT_EN_COLOR0 = common dso_local global i32 0, align 4
@DDP_COMPONENT_RDMA0 = common dso_local global i32 0, align 4
@DISP_REG_CONFIG_DISP_OVL_MOUT_EN = common dso_local global i32 0, align 4
@OVL_MOUT_EN_RDMA = common dso_local global i32 0, align 4
@DDP_COMPONENT_OD0 = common dso_local global i32 0, align 4
@DISP_REG_CONFIG_DISP_OD_MOUT_EN = common dso_local global i32 0, align 4
@OD_MOUT_EN_RDMA0 = common dso_local global i32 0, align 4
@DDP_COMPONENT_UFOE = common dso_local global i32 0, align 4
@DDP_COMPONENT_DSI0 = common dso_local global i32 0, align 4
@DISP_REG_CONFIG_DISP_UFOE_MOUT_EN = common dso_local global i32 0, align 4
@UFOE_MOUT_EN_DSI0 = common dso_local global i32 0, align 4
@DDP_COMPONENT_OVL1 = common dso_local global i32 0, align 4
@DDP_COMPONENT_COLOR1 = common dso_local global i32 0, align 4
@DISP_REG_CONFIG_DISP_OVL1_MOUT_EN = common dso_local global i32 0, align 4
@OVL1_MOUT_EN_COLOR1 = common dso_local global i32 0, align 4
@DDP_COMPONENT_GAMMA = common dso_local global i32 0, align 4
@DDP_COMPONENT_RDMA1 = common dso_local global i32 0, align 4
@DISP_REG_CONFIG_DISP_GAMMA_MOUT_EN = common dso_local global i32 0, align 4
@GAMMA_MOUT_EN_RDMA1 = common dso_local global i32 0, align 4
@DDP_COMPONENT_OD1 = common dso_local global i32 0, align 4
@OD1_MOUT_EN_RDMA1 = common dso_local global i32 0, align 4
@DDP_COMPONENT_DPI0 = common dso_local global i32 0, align 4
@DISP_REG_CONFIG_DISP_RDMA0_SOUT_EN = common dso_local global i32 0, align 4
@RDMA0_SOUT_DPI0 = common dso_local global i32 0, align 4
@DDP_COMPONENT_DPI1 = common dso_local global i32 0, align 4
@RDMA0_SOUT_DPI1 = common dso_local global i32 0, align 4
@DDP_COMPONENT_DSI1 = common dso_local global i32 0, align 4
@RDMA0_SOUT_DSI1 = common dso_local global i32 0, align 4
@DDP_COMPONENT_DSI2 = common dso_local global i32 0, align 4
@RDMA0_SOUT_DSI2 = common dso_local global i32 0, align 4
@DDP_COMPONENT_DSI3 = common dso_local global i32 0, align 4
@RDMA0_SOUT_DSI3 = common dso_local global i32 0, align 4
@DISP_REG_CONFIG_DISP_RDMA1_SOUT_EN = common dso_local global i32 0, align 4
@RDMA1_SOUT_DSI1 = common dso_local global i32 0, align 4
@RDMA1_SOUT_DSI2 = common dso_local global i32 0, align 4
@RDMA1_SOUT_DSI3 = common dso_local global i32 0, align 4
@RDMA1_SOUT_DPI0 = common dso_local global i32 0, align 4
@RDMA1_SOUT_DPI1 = common dso_local global i32 0, align 4
@DDP_COMPONENT_RDMA2 = common dso_local global i32 0, align 4
@DISP_REG_CONFIG_DISP_RDMA2_SOUT = common dso_local global i32 0, align 4
@RDMA2_SOUT_DPI0 = common dso_local global i32 0, align 4
@RDMA2_SOUT_DPI1 = common dso_local global i32 0, align 4
@RDMA2_SOUT_DSI1 = common dso_local global i32 0, align 4
@RDMA2_SOUT_DSI2 = common dso_local global i32 0, align 4
@RDMA2_SOUT_DSI3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @mtk_ddp_mout_en to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_ddp_mout_en(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @DDP_COMPONENT_OVL0, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @DDP_COMPONENT_COLOR0, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32, i32* @DISP_REG_CONFIG_DISP_OVL0_MOUT_EN, align 4
  %17 = load i32*, i32** %6, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @OVL0_MOUT_EN_COLOR0, align 4
  store i32 %18, i32* %7, align 4
  br label %293

19:                                               ; preds = %11, %3
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @DDP_COMPONENT_OVL0, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @DDP_COMPONENT_RDMA0, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* @DISP_REG_CONFIG_DISP_OVL_MOUT_EN, align 4
  %29 = load i32*, i32** %6, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @OVL_MOUT_EN_RDMA, align 4
  store i32 %30, i32* %7, align 4
  br label %292

31:                                               ; preds = %23, %19
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @DDP_COMPONENT_OD0, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @DDP_COMPONENT_RDMA0, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* @DISP_REG_CONFIG_DISP_OD_MOUT_EN, align 4
  %41 = load i32*, i32** %6, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @OD_MOUT_EN_RDMA0, align 4
  store i32 %42, i32* %7, align 4
  br label %291

43:                                               ; preds = %35, %31
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @DDP_COMPONENT_UFOE, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @DDP_COMPONENT_DSI0, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32, i32* @DISP_REG_CONFIG_DISP_UFOE_MOUT_EN, align 4
  %53 = load i32*, i32** %6, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* @UFOE_MOUT_EN_DSI0, align 4
  store i32 %54, i32* %7, align 4
  br label %290

55:                                               ; preds = %47, %43
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @DDP_COMPONENT_OVL1, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @DDP_COMPONENT_COLOR1, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i32, i32* @DISP_REG_CONFIG_DISP_OVL1_MOUT_EN, align 4
  %65 = load i32*, i32** %6, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* @OVL1_MOUT_EN_COLOR1, align 4
  store i32 %66, i32* %7, align 4
  br label %289

67:                                               ; preds = %59, %55
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @DDP_COMPONENT_GAMMA, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %67
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @DDP_COMPONENT_RDMA1, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i32, i32* @DISP_REG_CONFIG_DISP_GAMMA_MOUT_EN, align 4
  %77 = load i32*, i32** %6, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* @GAMMA_MOUT_EN_RDMA1, align 4
  store i32 %78, i32* %7, align 4
  br label %288

79:                                               ; preds = %71, %67
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @DDP_COMPONENT_OD1, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %79
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @DDP_COMPONENT_RDMA1, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load i32, i32* @DISP_REG_CONFIG_DISP_OD_MOUT_EN, align 4
  %89 = load i32*, i32** %6, align 8
  store i32 %88, i32* %89, align 4
  %90 = load i32, i32* @OD1_MOUT_EN_RDMA1, align 4
  store i32 %90, i32* %7, align 4
  br label %287

91:                                               ; preds = %83, %79
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @DDP_COMPONENT_RDMA0, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %91
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @DDP_COMPONENT_DPI0, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load i32, i32* @DISP_REG_CONFIG_DISP_RDMA0_SOUT_EN, align 4
  %101 = load i32*, i32** %6, align 8
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* @RDMA0_SOUT_DPI0, align 4
  store i32 %102, i32* %7, align 4
  br label %286

103:                                              ; preds = %95, %91
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* @DDP_COMPONENT_RDMA0, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %103
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @DDP_COMPONENT_DPI1, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load i32, i32* @DISP_REG_CONFIG_DISP_RDMA0_SOUT_EN, align 4
  %113 = load i32*, i32** %6, align 8
  store i32 %112, i32* %113, align 4
  %114 = load i32, i32* @RDMA0_SOUT_DPI1, align 4
  store i32 %114, i32* %7, align 4
  br label %285

115:                                              ; preds = %107, %103
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @DDP_COMPONENT_RDMA0, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %115
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* @DDP_COMPONENT_DSI1, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load i32, i32* @DISP_REG_CONFIG_DISP_RDMA0_SOUT_EN, align 4
  %125 = load i32*, i32** %6, align 8
  store i32 %124, i32* %125, align 4
  %126 = load i32, i32* @RDMA0_SOUT_DSI1, align 4
  store i32 %126, i32* %7, align 4
  br label %284

127:                                              ; preds = %119, %115
  %128 = load i32, i32* %4, align 4
  %129 = load i32, i32* @DDP_COMPONENT_RDMA0, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %139

131:                                              ; preds = %127
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* @DDP_COMPONENT_DSI2, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  %136 = load i32, i32* @DISP_REG_CONFIG_DISP_RDMA0_SOUT_EN, align 4
  %137 = load i32*, i32** %6, align 8
  store i32 %136, i32* %137, align 4
  %138 = load i32, i32* @RDMA0_SOUT_DSI2, align 4
  store i32 %138, i32* %7, align 4
  br label %283

139:                                              ; preds = %131, %127
  %140 = load i32, i32* %4, align 4
  %141 = load i32, i32* @DDP_COMPONENT_RDMA0, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %151

143:                                              ; preds = %139
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* @DDP_COMPONENT_DSI3, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %143
  %148 = load i32, i32* @DISP_REG_CONFIG_DISP_RDMA0_SOUT_EN, align 4
  %149 = load i32*, i32** %6, align 8
  store i32 %148, i32* %149, align 4
  %150 = load i32, i32* @RDMA0_SOUT_DSI3, align 4
  store i32 %150, i32* %7, align 4
  br label %282

151:                                              ; preds = %143, %139
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* @DDP_COMPONENT_RDMA1, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %163

155:                                              ; preds = %151
  %156 = load i32, i32* %5, align 4
  %157 = load i32, i32* @DDP_COMPONENT_DSI1, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %155
  %160 = load i32, i32* @DISP_REG_CONFIG_DISP_RDMA1_SOUT_EN, align 4
  %161 = load i32*, i32** %6, align 8
  store i32 %160, i32* %161, align 4
  %162 = load i32, i32* @RDMA1_SOUT_DSI1, align 4
  store i32 %162, i32* %7, align 4
  br label %281

163:                                              ; preds = %155, %151
  %164 = load i32, i32* %4, align 4
  %165 = load i32, i32* @DDP_COMPONENT_RDMA1, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %175

167:                                              ; preds = %163
  %168 = load i32, i32* %5, align 4
  %169 = load i32, i32* @DDP_COMPONENT_DSI2, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %175

171:                                              ; preds = %167
  %172 = load i32, i32* @DISP_REG_CONFIG_DISP_RDMA1_SOUT_EN, align 4
  %173 = load i32*, i32** %6, align 8
  store i32 %172, i32* %173, align 4
  %174 = load i32, i32* @RDMA1_SOUT_DSI2, align 4
  store i32 %174, i32* %7, align 4
  br label %280

175:                                              ; preds = %167, %163
  %176 = load i32, i32* %4, align 4
  %177 = load i32, i32* @DDP_COMPONENT_RDMA1, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %187

179:                                              ; preds = %175
  %180 = load i32, i32* %5, align 4
  %181 = load i32, i32* @DDP_COMPONENT_DSI3, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %187

183:                                              ; preds = %179
  %184 = load i32, i32* @DISP_REG_CONFIG_DISP_RDMA1_SOUT_EN, align 4
  %185 = load i32*, i32** %6, align 8
  store i32 %184, i32* %185, align 4
  %186 = load i32, i32* @RDMA1_SOUT_DSI3, align 4
  store i32 %186, i32* %7, align 4
  br label %279

187:                                              ; preds = %179, %175
  %188 = load i32, i32* %4, align 4
  %189 = load i32, i32* @DDP_COMPONENT_RDMA1, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %199

191:                                              ; preds = %187
  %192 = load i32, i32* %5, align 4
  %193 = load i32, i32* @DDP_COMPONENT_DPI0, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %199

195:                                              ; preds = %191
  %196 = load i32, i32* @DISP_REG_CONFIG_DISP_RDMA1_SOUT_EN, align 4
  %197 = load i32*, i32** %6, align 8
  store i32 %196, i32* %197, align 4
  %198 = load i32, i32* @RDMA1_SOUT_DPI0, align 4
  store i32 %198, i32* %7, align 4
  br label %278

199:                                              ; preds = %191, %187
  %200 = load i32, i32* %4, align 4
  %201 = load i32, i32* @DDP_COMPONENT_RDMA1, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %211

203:                                              ; preds = %199
  %204 = load i32, i32* %5, align 4
  %205 = load i32, i32* @DDP_COMPONENT_DPI1, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %211

207:                                              ; preds = %203
  %208 = load i32, i32* @DISP_REG_CONFIG_DISP_RDMA1_SOUT_EN, align 4
  %209 = load i32*, i32** %6, align 8
  store i32 %208, i32* %209, align 4
  %210 = load i32, i32* @RDMA1_SOUT_DPI1, align 4
  store i32 %210, i32* %7, align 4
  br label %277

211:                                              ; preds = %203, %199
  %212 = load i32, i32* %4, align 4
  %213 = load i32, i32* @DDP_COMPONENT_RDMA2, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %223

215:                                              ; preds = %211
  %216 = load i32, i32* %5, align 4
  %217 = load i32, i32* @DDP_COMPONENT_DPI0, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %223

219:                                              ; preds = %215
  %220 = load i32, i32* @DISP_REG_CONFIG_DISP_RDMA2_SOUT, align 4
  %221 = load i32*, i32** %6, align 8
  store i32 %220, i32* %221, align 4
  %222 = load i32, i32* @RDMA2_SOUT_DPI0, align 4
  store i32 %222, i32* %7, align 4
  br label %276

223:                                              ; preds = %215, %211
  %224 = load i32, i32* %4, align 4
  %225 = load i32, i32* @DDP_COMPONENT_RDMA2, align 4
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %227, label %235

227:                                              ; preds = %223
  %228 = load i32, i32* %5, align 4
  %229 = load i32, i32* @DDP_COMPONENT_DPI1, align 4
  %230 = icmp eq i32 %228, %229
  br i1 %230, label %231, label %235

231:                                              ; preds = %227
  %232 = load i32, i32* @DISP_REG_CONFIG_DISP_RDMA2_SOUT, align 4
  %233 = load i32*, i32** %6, align 8
  store i32 %232, i32* %233, align 4
  %234 = load i32, i32* @RDMA2_SOUT_DPI1, align 4
  store i32 %234, i32* %7, align 4
  br label %275

235:                                              ; preds = %227, %223
  %236 = load i32, i32* %4, align 4
  %237 = load i32, i32* @DDP_COMPONENT_RDMA2, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %247

239:                                              ; preds = %235
  %240 = load i32, i32* %5, align 4
  %241 = load i32, i32* @DDP_COMPONENT_DSI1, align 4
  %242 = icmp eq i32 %240, %241
  br i1 %242, label %243, label %247

243:                                              ; preds = %239
  %244 = load i32, i32* @DISP_REG_CONFIG_DISP_RDMA2_SOUT, align 4
  %245 = load i32*, i32** %6, align 8
  store i32 %244, i32* %245, align 4
  %246 = load i32, i32* @RDMA2_SOUT_DSI1, align 4
  store i32 %246, i32* %7, align 4
  br label %274

247:                                              ; preds = %239, %235
  %248 = load i32, i32* %4, align 4
  %249 = load i32, i32* @DDP_COMPONENT_RDMA2, align 4
  %250 = icmp eq i32 %248, %249
  br i1 %250, label %251, label %259

251:                                              ; preds = %247
  %252 = load i32, i32* %5, align 4
  %253 = load i32, i32* @DDP_COMPONENT_DSI2, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %259

255:                                              ; preds = %251
  %256 = load i32, i32* @DISP_REG_CONFIG_DISP_RDMA2_SOUT, align 4
  %257 = load i32*, i32** %6, align 8
  store i32 %256, i32* %257, align 4
  %258 = load i32, i32* @RDMA2_SOUT_DSI2, align 4
  store i32 %258, i32* %7, align 4
  br label %273

259:                                              ; preds = %251, %247
  %260 = load i32, i32* %4, align 4
  %261 = load i32, i32* @DDP_COMPONENT_RDMA2, align 4
  %262 = icmp eq i32 %260, %261
  br i1 %262, label %263, label %271

263:                                              ; preds = %259
  %264 = load i32, i32* %5, align 4
  %265 = load i32, i32* @DDP_COMPONENT_DSI3, align 4
  %266 = icmp eq i32 %264, %265
  br i1 %266, label %267, label %271

267:                                              ; preds = %263
  %268 = load i32, i32* @DISP_REG_CONFIG_DISP_RDMA2_SOUT, align 4
  %269 = load i32*, i32** %6, align 8
  store i32 %268, i32* %269, align 4
  %270 = load i32, i32* @RDMA2_SOUT_DSI3, align 4
  store i32 %270, i32* %7, align 4
  br label %272

271:                                              ; preds = %263, %259
  store i32 0, i32* %7, align 4
  br label %272

272:                                              ; preds = %271, %267
  br label %273

273:                                              ; preds = %272, %255
  br label %274

274:                                              ; preds = %273, %243
  br label %275

275:                                              ; preds = %274, %231
  br label %276

276:                                              ; preds = %275, %219
  br label %277

277:                                              ; preds = %276, %207
  br label %278

278:                                              ; preds = %277, %195
  br label %279

279:                                              ; preds = %278, %183
  br label %280

280:                                              ; preds = %279, %171
  br label %281

281:                                              ; preds = %280, %159
  br label %282

282:                                              ; preds = %281, %147
  br label %283

283:                                              ; preds = %282, %135
  br label %284

284:                                              ; preds = %283, %123
  br label %285

285:                                              ; preds = %284, %111
  br label %286

286:                                              ; preds = %285, %99
  br label %287

287:                                              ; preds = %286, %87
  br label %288

288:                                              ; preds = %287, %75
  br label %289

289:                                              ; preds = %288, %63
  br label %290

290:                                              ; preds = %289, %51
  br label %291

291:                                              ; preds = %290, %39
  br label %292

292:                                              ; preds = %291, %27
  br label %293

293:                                              ; preds = %292, %15
  %294 = load i32, i32* %7, align 4
  ret i32 %294
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
