; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_firmware.c_get_integrated_platform_config_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_firmware.c_get_integrated_platform_config_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { %struct.hfi1_pportdata* }
%struct.hfi1_pportdata = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@SYSTEM_TABLE_QSFP_POWER_CLASS_MAX = common dso_local global i32 0, align 4
@SYSTEM_TABLE_QSFP_ATTENUATION_DEFAULT_25G = common dso_local global i32 0, align 4
@PORT_TABLE_PORT_TYPE = common dso_local global i32 0, align 4
@PORT_TABLE_LOCAL_ATTEN_25G = common dso_local global i32 0, align 4
@PORT_TABLE_REMOTE_ATTEN_25G = common dso_local global i32 0, align 4
@RX_PRESET_TABLE_QSFP_RX_CDR_APPLY = common dso_local global i32 0, align 4
@QSFP_RX_CDR_APPLY_SMASK = common dso_local global i32 0, align 4
@QSFP_RX_CDR_APPLY_SHIFT = common dso_local global i32 0, align 4
@RX_PRESET_TABLE_QSFP_RX_EMP_APPLY = common dso_local global i32 0, align 4
@QSFP_RX_EMP_APPLY_SMASK = common dso_local global i32 0, align 4
@QSFP_RX_EMP_APPLY_SHIFT = common dso_local global i32 0, align 4
@RX_PRESET_TABLE_QSFP_RX_AMP_APPLY = common dso_local global i32 0, align 4
@QSFP_RX_AMP_APPLY_SMASK = common dso_local global i32 0, align 4
@QSFP_RX_AMP_APPLY_SHIFT = common dso_local global i32 0, align 4
@RX_PRESET_TABLE_QSFP_RX_CDR = common dso_local global i32 0, align 4
@QSFP_RX_CDR_SMASK = common dso_local global i32 0, align 4
@QSFP_RX_CDR_SHIFT = common dso_local global i32 0, align 4
@RX_PRESET_TABLE_QSFP_RX_EMP = common dso_local global i32 0, align 4
@QSFP_RX_EMP_SMASK = common dso_local global i32 0, align 4
@QSFP_RX_EMP_SHIFT = common dso_local global i32 0, align 4
@RX_PRESET_TABLE_QSFP_RX_AMP = common dso_local global i32 0, align 4
@QSFP_RX_AMP_SMASK = common dso_local global i32 0, align 4
@QSFP_RX_AMP_SHIFT = common dso_local global i32 0, align 4
@QSFP_EQ_INFO_OFFS = common dso_local global i64 0, align 8
@TX_PRESET_TABLE_PRECUR = common dso_local global i32 0, align 4
@TX_PRECUR_SMASK = common dso_local global i32 0, align 4
@TX_PRECUR_SHIFT = common dso_local global i32 0, align 4
@TX_PRESET_TABLE_ATTN = common dso_local global i32 0, align 4
@TX_ATTN_SMASK = common dso_local global i32 0, align 4
@TX_ATTN_SHIFT = common dso_local global i32 0, align 4
@TX_PRESET_TABLE_POSTCUR = common dso_local global i32 0, align 4
@TX_POSTCUR_SMASK = common dso_local global i32 0, align 4
@TX_POSTCUR_SHIFT = common dso_local global i32 0, align 4
@TX_PRESET_TABLE_QSFP_TX_CDR_APPLY = common dso_local global i32 0, align 4
@QSFP_TX_CDR_APPLY_SMASK = common dso_local global i32 0, align 4
@QSFP_TX_CDR_APPLY_SHIFT = common dso_local global i32 0, align 4
@TX_PRESET_TABLE_QSFP_TX_EQ_APPLY = common dso_local global i32 0, align 4
@QSFP_TX_EQ_APPLY_SMASK = common dso_local global i32 0, align 4
@QSFP_TX_EQ_APPLY_SHIFT = common dso_local global i32 0, align 4
@TX_PRESET_TABLE_QSFP_TX_CDR = common dso_local global i32 0, align 4
@QSFP_TX_CDR_SMASK = common dso_local global i32 0, align 4
@QSFP_TX_CDR_SHIFT = common dso_local global i32 0, align 4
@TX_PRESET_TABLE_QSFP_TX_EQ = common dso_local global i32 0, align 4
@QSFP_TX_EQ_SMASK = common dso_local global i32 0, align 4
@QSFP_TX_EQ_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*, i32, i32, i32*)* @get_integrated_platform_config_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_integrated_platform_config_field(%struct.hfi1_devdata* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.hfi1_devdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.hfi1_pportdata*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %13 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %12, i32 0, i32 0
  %14 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %13, align 8
  store %struct.hfi1_pportdata* %14, %struct.hfi1_pportdata** %9, align 8
  %15 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %9, align 8
  %16 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %15, i32 0, i32 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %254 [
    i32 130, label %20
    i32 133, label %40
    i32 131, label %70
    i32 129, label %154
    i32 132, label %253
    i32 128, label %253
  ]

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @SYSTEM_TABLE_QSFP_POWER_CLASS_MAX, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %9, align 8
  %26 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32*, i32** %8, align 8
  store i32 %27, i32* %28, align 4
  br label %39

29:                                               ; preds = %20
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @SYSTEM_TABLE_QSFP_ATTENUATION_DEFAULT_25G, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %9, align 8
  %35 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %8, align 8
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %33, %29
  br label %39

39:                                               ; preds = %38, %24
  br label %255

40:                                               ; preds = %4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @PORT_TABLE_PORT_TYPE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %9, align 8
  %46 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** %8, align 8
  store i32 %47, i32* %48, align 4
  br label %69

49:                                               ; preds = %40
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @PORT_TABLE_LOCAL_ATTEN_25G, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %9, align 8
  %55 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %8, align 8
  store i32 %56, i32* %57, align 4
  br label %68

58:                                               ; preds = %49
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @PORT_TABLE_REMOTE_ATTEN_25G, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %9, align 8
  %64 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load i32*, i32** %8, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %62, %58
  br label %68

68:                                               ; preds = %67, %53
  br label %69

69:                                               ; preds = %68, %44
  br label %255

70:                                               ; preds = %4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @RX_PRESET_TABLE_QSFP_RX_CDR_APPLY, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %70
  %75 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %9, align 8
  %76 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @QSFP_RX_CDR_APPLY_SMASK, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* @QSFP_RX_CDR_APPLY_SHIFT, align 4
  %81 = ashr i32 %79, %80
  %82 = load i32*, i32** %8, align 8
  store i32 %81, i32* %82, align 4
  br label %153

83:                                               ; preds = %70
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @RX_PRESET_TABLE_QSFP_RX_EMP_APPLY, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %83
  %88 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %9, align 8
  %89 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @QSFP_RX_EMP_APPLY_SMASK, align 4
  %92 = and i32 %90, %91
  %93 = load i32, i32* @QSFP_RX_EMP_APPLY_SHIFT, align 4
  %94 = ashr i32 %92, %93
  %95 = load i32*, i32** %8, align 8
  store i32 %94, i32* %95, align 4
  br label %152

96:                                               ; preds = %83
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @RX_PRESET_TABLE_QSFP_RX_AMP_APPLY, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %96
  %101 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %9, align 8
  %102 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @QSFP_RX_AMP_APPLY_SMASK, align 4
  %105 = and i32 %103, %104
  %106 = load i32, i32* @QSFP_RX_AMP_APPLY_SHIFT, align 4
  %107 = ashr i32 %105, %106
  %108 = load i32*, i32** %8, align 8
  store i32 %107, i32* %108, align 4
  br label %151

109:                                              ; preds = %96
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @RX_PRESET_TABLE_QSFP_RX_CDR, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %122

113:                                              ; preds = %109
  %114 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %9, align 8
  %115 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @QSFP_RX_CDR_SMASK, align 4
  %118 = and i32 %116, %117
  %119 = load i32, i32* @QSFP_RX_CDR_SHIFT, align 4
  %120 = ashr i32 %118, %119
  %121 = load i32*, i32** %8, align 8
  store i32 %120, i32* %121, align 4
  br label %150

122:                                              ; preds = %109
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* @RX_PRESET_TABLE_QSFP_RX_EMP, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %122
  %127 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %9, align 8
  %128 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @QSFP_RX_EMP_SMASK, align 4
  %131 = and i32 %129, %130
  %132 = load i32, i32* @QSFP_RX_EMP_SHIFT, align 4
  %133 = ashr i32 %131, %132
  %134 = load i32*, i32** %8, align 8
  store i32 %133, i32* %134, align 4
  br label %149

135:                                              ; preds = %122
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @RX_PRESET_TABLE_QSFP_RX_AMP, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %148

139:                                              ; preds = %135
  %140 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %9, align 8
  %141 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @QSFP_RX_AMP_SMASK, align 4
  %144 = and i32 %142, %143
  %145 = load i32, i32* @QSFP_RX_AMP_SHIFT, align 4
  %146 = ashr i32 %144, %145
  %147 = load i32*, i32** %8, align 8
  store i32 %146, i32* %147, align 4
  br label %148

148:                                              ; preds = %139, %135
  br label %149

149:                                              ; preds = %148, %126
  br label %150

150:                                              ; preds = %149, %113
  br label %151

151:                                              ; preds = %150, %100
  br label %152

152:                                              ; preds = %151, %87
  br label %153

153:                                              ; preds = %152, %74
  br label %255

154:                                              ; preds = %4
  %155 = load i32*, i32** %10, align 8
  %156 = load i64, i64* @QSFP_EQ_INFO_OFFS, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %158, 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %154
  %162 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %9, align 8
  %163 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 8
  store i32 %164, i32* %11, align 4
  br label %169

165:                                              ; preds = %154
  %166 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %9, align 8
  %167 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %166, i32 0, i32 7
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %11, align 4
  br label %169

169:                                              ; preds = %165, %161
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* @TX_PRESET_TABLE_PRECUR, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %180

173:                                              ; preds = %169
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* @TX_PRECUR_SMASK, align 4
  %176 = and i32 %174, %175
  %177 = load i32, i32* @TX_PRECUR_SHIFT, align 4
  %178 = ashr i32 %176, %177
  %179 = load i32*, i32** %8, align 8
  store i32 %178, i32* %179, align 4
  br label %252

180:                                              ; preds = %169
  %181 = load i32, i32* %7, align 4
  %182 = load i32, i32* @TX_PRESET_TABLE_ATTN, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %191

184:                                              ; preds = %180
  %185 = load i32, i32* %11, align 4
  %186 = load i32, i32* @TX_ATTN_SMASK, align 4
  %187 = and i32 %185, %186
  %188 = load i32, i32* @TX_ATTN_SHIFT, align 4
  %189 = ashr i32 %187, %188
  %190 = load i32*, i32** %8, align 8
  store i32 %189, i32* %190, align 4
  br label %251

191:                                              ; preds = %180
  %192 = load i32, i32* %7, align 4
  %193 = load i32, i32* @TX_PRESET_TABLE_POSTCUR, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %202

195:                                              ; preds = %191
  %196 = load i32, i32* %11, align 4
  %197 = load i32, i32* @TX_POSTCUR_SMASK, align 4
  %198 = and i32 %196, %197
  %199 = load i32, i32* @TX_POSTCUR_SHIFT, align 4
  %200 = ashr i32 %198, %199
  %201 = load i32*, i32** %8, align 8
  store i32 %200, i32* %201, align 4
  br label %250

202:                                              ; preds = %191
  %203 = load i32, i32* %7, align 4
  %204 = load i32, i32* @TX_PRESET_TABLE_QSFP_TX_CDR_APPLY, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %213

206:                                              ; preds = %202
  %207 = load i32, i32* %11, align 4
  %208 = load i32, i32* @QSFP_TX_CDR_APPLY_SMASK, align 4
  %209 = and i32 %207, %208
  %210 = load i32, i32* @QSFP_TX_CDR_APPLY_SHIFT, align 4
  %211 = ashr i32 %209, %210
  %212 = load i32*, i32** %8, align 8
  store i32 %211, i32* %212, align 4
  br label %249

213:                                              ; preds = %202
  %214 = load i32, i32* %7, align 4
  %215 = load i32, i32* @TX_PRESET_TABLE_QSFP_TX_EQ_APPLY, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %224

217:                                              ; preds = %213
  %218 = load i32, i32* %11, align 4
  %219 = load i32, i32* @QSFP_TX_EQ_APPLY_SMASK, align 4
  %220 = and i32 %218, %219
  %221 = load i32, i32* @QSFP_TX_EQ_APPLY_SHIFT, align 4
  %222 = ashr i32 %220, %221
  %223 = load i32*, i32** %8, align 8
  store i32 %222, i32* %223, align 4
  br label %248

224:                                              ; preds = %213
  %225 = load i32, i32* %7, align 4
  %226 = load i32, i32* @TX_PRESET_TABLE_QSFP_TX_CDR, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %228, label %235

228:                                              ; preds = %224
  %229 = load i32, i32* %11, align 4
  %230 = load i32, i32* @QSFP_TX_CDR_SMASK, align 4
  %231 = and i32 %229, %230
  %232 = load i32, i32* @QSFP_TX_CDR_SHIFT, align 4
  %233 = ashr i32 %231, %232
  %234 = load i32*, i32** %8, align 8
  store i32 %233, i32* %234, align 4
  br label %247

235:                                              ; preds = %224
  %236 = load i32, i32* %7, align 4
  %237 = load i32, i32* @TX_PRESET_TABLE_QSFP_TX_EQ, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %246

239:                                              ; preds = %235
  %240 = load i32, i32* %11, align 4
  %241 = load i32, i32* @QSFP_TX_EQ_SMASK, align 4
  %242 = and i32 %240, %241
  %243 = load i32, i32* @QSFP_TX_EQ_SHIFT, align 4
  %244 = ashr i32 %242, %243
  %245 = load i32*, i32** %8, align 8
  store i32 %244, i32* %245, align 4
  br label %246

246:                                              ; preds = %239, %235
  br label %247

247:                                              ; preds = %246, %228
  br label %248

248:                                              ; preds = %247, %217
  br label %249

249:                                              ; preds = %248, %206
  br label %250

250:                                              ; preds = %249, %195
  br label %251

251:                                              ; preds = %250, %184
  br label %252

252:                                              ; preds = %251, %173
  br label %255

253:                                              ; preds = %4, %4
  br label %254

254:                                              ; preds = %4, %253
  br label %255

255:                                              ; preds = %254, %252, %153, %69, %39
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
