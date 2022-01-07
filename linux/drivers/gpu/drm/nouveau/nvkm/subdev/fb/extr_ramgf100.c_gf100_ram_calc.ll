; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgf100.c_gf100_ram_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgf100.c_gf100_ram_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ram = type { i32 }
%struct.gf100_ram = type { %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_4__, %struct.gf100_ramfuc }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.nvkm_bios*, %struct.nvkm_clk* }
%struct.nvkm_bios = type { i32 }
%struct.nvkm_clk = type { i32 }
%struct.gf100_ramfuc = type { i32 }
%struct.nvbios_ramcfg = type { i32 }
%struct.anon = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"invalid/missing rammap entry\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid ramcfg strap\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"invalid/missing ramcfg entry\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"invalid/missing timing entry\0A\00", align 1
@nv_clk_src_sppll0 = common dso_local global i32 0, align 4
@nv_clk_src_sppll1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"unable to calc refpll\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gf100_ram_calc(%struct.nvkm_ram* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_ram*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gf100_ram*, align 8
  %7 = alloca %struct.gf100_ramfuc*, align 8
  %8 = alloca %struct.nvkm_subdev*, align 8
  %9 = alloca %struct.nvkm_device*, align 8
  %10 = alloca %struct.nvkm_clk*, align 8
  %11 = alloca %struct.nvkm_bios*, align 8
  %12 = alloca %struct.nvbios_ramcfg, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.anon, align 4
  %18 = alloca %struct.anon, align 4
  %19 = alloca %struct.anon, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.nvkm_ram* %0, %struct.nvkm_ram** %4, align 8
  store i32 %1, i32* %5, align 4
  %29 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %30 = call %struct.gf100_ram* @gf100_ram(%struct.nvkm_ram* %29)
  store %struct.gf100_ram* %30, %struct.gf100_ram** %6, align 8
  %31 = load %struct.gf100_ram*, %struct.gf100_ram** %6, align 8
  %32 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %31, i32 0, i32 3
  store %struct.gf100_ramfuc* %32, %struct.gf100_ramfuc** %7, align 8
  %33 = load %struct.gf100_ram*, %struct.gf100_ram** %6, align 8
  %34 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store %struct.nvkm_subdev* %37, %struct.nvkm_subdev** %8, align 8
  %38 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %39 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %38, i32 0, i32 0
  %40 = load %struct.nvkm_device*, %struct.nvkm_device** %39, align 8
  store %struct.nvkm_device* %40, %struct.nvkm_device** %9, align 8
  %41 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %42 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %41, i32 0, i32 1
  %43 = load %struct.nvkm_clk*, %struct.nvkm_clk** %42, align 8
  store %struct.nvkm_clk* %43, %struct.nvkm_clk** %10, align 8
  %44 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %45 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %44, i32 0, i32 0
  %46 = load %struct.nvkm_bios*, %struct.nvkm_bios** %45, align 8
  store %struct.nvkm_bios* %46, %struct.nvkm_bios** %11, align 8
  %47 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sdiv i32 %48, 1000
  %50 = getelementptr inbounds %struct.anon, %struct.anon* %17, i32 0, i32 1
  %51 = getelementptr inbounds %struct.anon, %struct.anon* %18, i32 0, i32 1
  %52 = call i32 @nvbios_rammapEm(%struct.nvkm_bios* %47, i32 %49, i32* %13, i32* %50, i32* %14, i32* %51, %struct.nvbios_ramcfg* %12)
  %53 = getelementptr inbounds %struct.anon, %struct.anon* %17, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.anon, %struct.anon* %17, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %2
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 16
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.anon, %struct.anon* %17, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %62, 14
  br i1 %63, label %64, label %69

64:                                               ; preds = %60, %57, %2
  %65 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %66 = call i32 @nvkm_error(%struct.nvkm_subdev* %65, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %571

69:                                               ; preds = %60
  %70 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %71 = call i32 @nvbios_ramcfg_index(%struct.nvkm_subdev* %70)
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp sge i32 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %77 = call i32 @nvkm_error(%struct.nvkm_subdev* %76, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %571

80:                                               ; preds = %69
  %81 = getelementptr inbounds %struct.anon, %struct.anon* %17, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.anon, %struct.anon* %17, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %82, %84
  %86 = load i32, i32* %16, align 4
  %87 = getelementptr inbounds %struct.anon, %struct.anon* %18, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = mul nsw i32 %86, %88
  %90 = add nsw i32 %85, %89
  %91 = getelementptr inbounds %struct.anon, %struct.anon* %18, i32 0, i32 0
  store i32 %90, i32* %91, align 4
  %92 = getelementptr inbounds %struct.anon, %struct.anon* %18, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %80
  %96 = load i32, i32* %13, align 4
  %97 = icmp ne i32 %96, 16
  br i1 %97, label %102, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.anon, %struct.anon* %18, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp slt i32 %100, 14
  br i1 %101, label %102, label %107

102:                                              ; preds = %98, %95, %80
  %103 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %104 = call i32 @nvkm_error(%struct.nvkm_subdev* %103, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %571

107:                                              ; preds = %98
  %108 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %109 = getelementptr inbounds %struct.anon, %struct.anon* %18, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  %112 = call i32 @nvbios_rd08(%struct.nvkm_bios* %108, i32 %111)
  store i32 %112, i32* %16, align 4
  %113 = load i32, i32* %16, align 4
  %114 = icmp ne i32 %113, 255
  br i1 %114, label %115, label %137

115:                                              ; preds = %107
  %116 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %117 = load i32, i32* %16, align 4
  %118 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 1
  %119 = call i32 @nvbios_timingEe(%struct.nvkm_bios* %116, i32 %117, i32* %13, i32* %118, i32* %14, i32* %15)
  %120 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 0
  store i32 %119, i32* %120, align 4
  %121 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %115
  %125 = load i32, i32* %13, align 4
  %126 = icmp ne i32 %125, 16
  br i1 %126, label %131, label %127

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp slt i32 %129, 25
  br i1 %130, label %131, label %136

131:                                              ; preds = %127, %124, %115
  %132 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %133 = call i32 @nvkm_error(%struct.nvkm_subdev* %132, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %3, align 4
  br label %571

136:                                              ; preds = %127
  br label %139

137:                                              ; preds = %107
  %138 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 0
  store i32 0, i32* %138, align 4
  br label %139

139:                                              ; preds = %137, %136
  %140 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %141 = load %struct.gf100_ram*, %struct.gf100_ram** %6, align 8
  %142 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %143, align 8
  %145 = call i32 @ram_init(%struct.gf100_ramfuc* %140, %struct.TYPE_5__* %144)
  store i32 %145, i32* %28, align 4
  %146 = load i32, i32* %28, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %139
  %149 = load i32, i32* %28, align 4
  store i32 %149, i32* %3, align 4
  br label %571

150:                                              ; preds = %139
  %151 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %152 = call i32 @ram_rd32(%struct.gf100_ramfuc* %151, i32 1274864)
  %153 = and i32 %152, 2
  %154 = icmp ne i32 %153, 0
  %155 = xor i1 %154, true
  %156 = xor i1 %155, true
  %157 = zext i1 %156 to i32
  store i32 %157, i32* %23, align 4
  %158 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %159 = call i32 @ram_rd32(%struct.gf100_ramfuc* %158, i32 1274624)
  %160 = and i32 %159, 256
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %150
  %163 = load %struct.nvkm_clk*, %struct.nvkm_clk** %10, align 8
  %164 = load i32, i32* @nv_clk_src_sppll0, align 4
  %165 = call i32 @nvkm_clk_read(%struct.nvkm_clk* %163, i32 %164)
  store i32 %165, i32* %20, align 4
  br label %170

166:                                              ; preds = %150
  %167 = load %struct.nvkm_clk*, %struct.nvkm_clk** %10, align 8
  %168 = load i32, i32* @nv_clk_src_sppll1, align 4
  %169 = call i32 @nvkm_clk_read(%struct.nvkm_clk* %167, i32 %168)
  store i32 %169, i32* %20, align 4
  br label %170

170:                                              ; preds = %166, %162
  %171 = load i32, i32* %20, align 4
  %172 = mul nsw i32 %171, 2
  %173 = load i32, i32* %5, align 4
  %174 = sdiv i32 %172, %173
  %175 = call i32 @min(i32 %174, i32 65)
  %176 = call i32 @max(i32 %175, i32 2)
  %177 = sub nsw i32 %176, 2
  store i32 %177, i32* %21, align 4
  %178 = load i32, i32* %20, align 4
  %179 = mul nsw i32 %178, 2
  %180 = load i32, i32* %21, align 4
  %181 = add nsw i32 %180, 2
  %182 = sdiv i32 %179, %181
  store i32 %182, i32* %22, align 4
  %183 = load i32, i32* %5, align 4
  %184 = load i32, i32* %22, align 4
  %185 = icmp ne i32 %183, %184
  %186 = zext i1 %185 to i32
  store i32 %186, i32* %24, align 4
  %187 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %188 = call i32 @ram_mask(%struct.gf100_ramfuc* %187, i32 1274720, i32 2, i32 0)
  %189 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %190 = call i32 @ram_rd32(%struct.gf100_ramfuc* %189, i32 1253376)
  %191 = and i32 %190, 2
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %200

193:                                              ; preds = %170
  %194 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %195 = call i32 @ram_nuke(%struct.gf100_ramfuc* %194, i32 1253376)
  %196 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %197 = call i32 @ram_mask(%struct.gf100_ramfuc* %196, i32 1253376, i32 2, i32 2)
  %198 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %199 = call i32 @ram_mask(%struct.gf100_ramfuc* %198, i32 1253376, i32 2, i32 0)
  br label %200

200:                                              ; preds = %193, %170
  %201 = load i32, i32* %24, align 4
  %202 = icmp eq i32 %201, 1
  br i1 %202, label %203, label %210

203:                                              ; preds = %200
  %204 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %205 = call i32 @ram_nuke(%struct.gf100_ramfuc* %204, i32 1113632)
  %206 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %207 = call i32 @ram_mask(%struct.gf100_ramfuc* %206, i32 1113632, i32 2, i32 2)
  %208 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %209 = call i32 @ram_mask(%struct.gf100_ramfuc* %208, i32 1113632, i32 2, i32 0)
  br label %210

210:                                              ; preds = %203, %200
  %211 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %212 = call i32 @ram_wr32(%struct.gf100_ramfuc* %211, i32 1253632, i32 1)
  %213 = load i32, i32* %24, align 4
  %214 = icmp eq i32 %213, 1
  br i1 %214, label %215, label %296

215:                                              ; preds = %210
  %216 = load i32, i32* %23, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %296

218:                                              ; preds = %215
  %219 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %220 = load %struct.gf100_ram*, %struct.gf100_ram** %6, align 8
  %221 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %220, i32 0, i32 1
  %222 = load %struct.gf100_ram*, %struct.gf100_ram** %6, align 8
  %223 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @gt215_pll_calc(%struct.nvkm_subdev* %219, %struct.TYPE_6__* %221, i32 %225, i32* %25, i32* null, i32* %26, i32* %27)
  store i32 %226, i32* %28, align 4
  %227 = load i32, i32* %28, align 4
  %228 = icmp sle i32 %227, 0
  br i1 %228, label %229, label %241

229:                                              ; preds = %218
  %230 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %231 = call i32 @nvkm_error(%struct.nvkm_subdev* %230, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %232 = load i32, i32* %28, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %229
  %235 = load i32, i32* %28, align 4
  br label %239

236:                                              ; preds = %229
  %237 = load i32, i32* @ERANGE, align 4
  %238 = sub nsw i32 0, %237
  br label %239

239:                                              ; preds = %236, %234
  %240 = phi i32 [ %235, %234 ], [ %238, %236 ]
  store i32 %240, i32* %3, align 4
  br label %571

241:                                              ; preds = %218
  %242 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %243 = call i32 @ram_wr32(%struct.gf100_ramfuc* %242, i32 1113632, i32 536936448)
  %244 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %245 = call i32 @ram_wr32(%struct.gf100_ramfuc* %244, i32 1274656, i32 3)
  %246 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %247 = call i32 @ram_wr32(%struct.gf100_ramfuc* %246, i32 1274672, i32 -2128609274)
  %248 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %249 = load i32, i32* %27, align 4
  %250 = shl i32 %249, 16
  %251 = load i32, i32* %25, align 4
  %252 = shl i32 %251, 8
  %253 = or i32 %250, %252
  %254 = load i32, i32* %26, align 4
  %255 = or i32 %253, %254
  %256 = call i32 @ram_wr32(%struct.gf100_ramfuc* %248, i32 1113636, i32 %255)
  %257 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %258 = call i32 @ram_wr32(%struct.gf100_ramfuc* %257, i32 1113632, i32 536936449)
  %259 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %260 = call i32 @ram_wait(%struct.gf100_ramfuc* %259, i32 1274768, i32 131072, i32 131072, i32 64000)
  %261 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %262 = load %struct.gf100_ram*, %struct.gf100_ram** %6, align 8
  %263 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %262, i32 0, i32 0
  %264 = load i32, i32* %5, align 4
  %265 = call i32 @gt215_pll_calc(%struct.nvkm_subdev* %261, %struct.TYPE_6__* %263, i32 %264, i32* %25, i32* null, i32* %26, i32* %27)
  store i32 %265, i32* %28, align 4
  %266 = load i32, i32* %28, align 4
  %267 = icmp sle i32 %266, 0
  br i1 %267, label %268, label %280

268:                                              ; preds = %241
  %269 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %270 = call i32 @nvkm_error(%struct.nvkm_subdev* %269, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %271 = load i32, i32* %28, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %268
  %274 = load i32, i32* %28, align 4
  br label %278

275:                                              ; preds = %268
  %276 = load i32, i32* @ERANGE, align 4
  %277 = sub nsw i32 0, %276
  br label %278

278:                                              ; preds = %275, %273
  %279 = phi i32 [ %274, %273 ], [ %277, %275 ]
  store i32 %279, i32* %3, align 4
  br label %571

280:                                              ; preds = %241
  %281 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %282 = call i32 @ram_wr32(%struct.gf100_ramfuc* %281, i32 1113632, i32 536936453)
  %283 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %284 = load i32, i32* %27, align 4
  %285 = shl i32 %284, 16
  %286 = load i32, i32* %25, align 4
  %287 = shl i32 %286, 8
  %288 = or i32 %285, %287
  %289 = load i32, i32* %26, align 4
  %290 = or i32 %288, %289
  %291 = call i32 @ram_wr32(%struct.gf100_ramfuc* %283, i32 1253380, i32 %290)
  %292 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %293 = call i32 @ram_wr32(%struct.gf100_ramfuc* %292, i32 1253376, i32 402718977)
  %294 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %295 = call i32 @ram_wait(%struct.gf100_ramfuc* %294, i32 1274768, i32 2, i32 2, i32 64000)
  br label %303

296:                                              ; preds = %215, %210
  %297 = load i32, i32* %24, align 4
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %302

299:                                              ; preds = %296
  %300 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %301 = call i32 @ram_wr32(%struct.gf100_ramfuc* %300, i32 1274624, i32 3)
  br label %302

302:                                              ; preds = %299, %296
  br label %303

303:                                              ; preds = %302, %280
  %304 = load i32, i32* %23, align 4
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %325

306:                                              ; preds = %303
  %307 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %308 = call i32 @ram_nuke(%struct.gf100_ramfuc* %307, i32 1112836)
  %309 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %310 = call i32 @ram_mask(%struct.gf100_ramfuc* %309, i32 1112836, i32 65535, i32 0)
  %311 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %312 = call i32 @ram_nuke(%struct.gf100_ramfuc* %311, i32 1112840)
  %313 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %314 = call i32 @ram_mask(%struct.gf100_ramfuc* %313, i32 1112840, i32 65535, i32 0)
  %315 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %316 = call i32 @ram_wr32(%struct.gf100_ramfuc* %315, i32 1112456, i32 537198336)
  %317 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %318 = call i32 @ram_wr32(%struct.gf100_ramfuc* %317, i32 1112460, i32 4177984)
  %319 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %320 = call i32 @ram_wr32(%struct.gf100_ramfuc* %319, i32 1112464, i32 536944641)
  %321 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %322 = call i32 @ram_wr32(%struct.gf100_ramfuc* %321, i32 1112472, i32 72192)
  %323 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %324 = call i32 @ram_wr32(%struct.gf100_ramfuc* %323, i32 1300724, i32 0)
  br label %334

325:                                              ; preds = %303
  %326 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %327 = call i32 @ram_wr32(%struct.gf100_ramfuc* %326, i32 1112456, i32 536936448)
  %328 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %329 = call i32 @ram_wr32(%struct.gf100_ramfuc* %328, i32 1112460, i32 0)
  %330 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %331 = call i32 @ram_wr32(%struct.gf100_ramfuc* %330, i32 1112464, i32 536944641)
  %332 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %333 = call i32 @ram_wr32(%struct.gf100_ramfuc* %332, i32 1112472, i32 68096)
  br label %334

334:                                              ; preds = %325, %306
  %335 = load i32, i32* %23, align 4
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %338

337:                                              ; preds = %334
  br label %338

338:                                              ; preds = %337, %334
  %339 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %340 = call i32 @ram_wr32(%struct.gf100_ramfuc* %339, i32 1051404, i32 524306)
  %341 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %342 = call i32 @ram_wr32(%struct.gf100_ramfuc* %341, i32 6361600, i32 13056)
  %343 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %344 = call i32 @ram_mask(%struct.gf100_ramfuc* %343, i32 1110528, i32 2048, i32 0)
  %345 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %346 = call i32 @ram_wr32(%struct.gf100_ramfuc* %345, i32 1110544, i32 0)
  %347 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %348 = call i32 @ram_nsec(%struct.gf100_ramfuc* %347, i32 1000)
  %349 = load i32, i32* %24, align 4
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %354

351:                                              ; preds = %338
  %352 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %353 = call i32 @gf100_ram_train(%struct.gf100_ramfuc* %352, i32 790529)
  br label %354

354:                                              ; preds = %351, %338
  %355 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %356 = call i32 @ram_wr32(%struct.gf100_ramfuc* %355, i32 1110800, i32 1)
  %357 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %358 = call i32 @ram_nsec(%struct.gf100_ramfuc* %357, i32 1000)
  %359 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %360 = call i32 @ram_wr32(%struct.gf100_ramfuc* %359, i32 1110160, i32 97)
  %361 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %362 = call i32 @ram_wr32(%struct.gf100_ramfuc* %361, i32 1110160, i32 -1073741697)
  %363 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %364 = call i32 @ram_nsec(%struct.gf100_ramfuc* %363, i32 1000)
  %365 = load i32, i32* %23, align 4
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %367, label %370

367:                                              ; preds = %354
  %368 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %369 = call i32 @ram_wr32(%struct.gf100_ramfuc* %368, i32 1112100, i32 32724)
  br label %373

370:                                              ; preds = %354
  %371 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %372 = call i32 @ram_wr32(%struct.gf100_ramfuc* %371, i32 1274860, i32 132100)
  br label %373

373:                                              ; preds = %370, %367
  %374 = load i32, i32* %24, align 4
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %376, label %459

376:                                              ; preds = %373
  %377 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %378 = call i32 @ram_mask(%struct.gf100_ramfuc* %377, i32 1112072, i32 524288, i32 0)
  %379 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %380 = call i32 @ram_mask(%struct.gf100_ramfuc* %379, i32 1110528, i32 32768, i32 32768)
  %381 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %382 = call i32 @ram_wr32(%struct.gf100_ramfuc* %381, i32 1112112, i32 1095761936)
  %383 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %384 = call i32 @ram_mask(%struct.gf100_ramfuc* %383, i32 1112112, i32 16777216, i32 0)
  %385 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %386 = call i32 @ram_mask(%struct.gf100_ramfuc* %385, i32 1253632, i32 256, i32 256)
  %387 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %388 = call i32 @ram_wr32(%struct.gf100_ramfuc* %387, i32 1110096, i32 -16777072)
  %389 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %390 = call i32 @ram_wr32(%struct.gf100_ramfuc* %389, i32 1274860, i32 134927)
  %391 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %392 = call i32 @ram_wr32(%struct.gf100_ramfuc* %391, i32 1274864, i32 3)
  %393 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %394 = call i32 @ram_wr32(%struct.gf100_ramfuc* %393, i32 1274640, i32 -2128603626)
  %395 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %396 = call i32 @ram_wr32(%struct.gf100_ramfuc* %395, i32 1253632, i32 1)
  %397 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %398 = call i32 @ram_wr32(%struct.gf100_ramfuc* %397, i32 1112112, i32 3145751)
  %399 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %400 = call i32 @ram_wr32(%struct.gf100_ramfuc* %399, i32 1274864, i32 1)
  %401 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %402 = call i32 @ram_wr32(%struct.gf100_ramfuc* %401, i32 1112100, i32 32375)
  %403 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %404 = call i32 @ram_wr32(%struct.gf100_ramfuc* %403, i32 1253376, i32 402849793)
  %405 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %406 = call i32 @ram_wr32(%struct.gf100_ramfuc* %405, i32 1110160, i32 1073741950)
  %407 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %408 = call i32 @ram_nsec(%struct.gf100_ramfuc* %407, i32 2000)
  %409 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %410 = call i32 @ram_wr32(%struct.gf100_ramfuc* %409, i32 1110804, i32 1)
  %411 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %412 = call i32 @ram_wr32(%struct.gf100_ramfuc* %411, i32 1110544, i32 -2147483648)
  %413 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %414 = call i32 @ram_wr32(%struct.gf100_ramfuc* %413, i32 1110840, i32 3146272)
  %415 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %416 = call i32 @ram_wr32(%struct.gf100_ramfuc* %415, i32 1110784, i32 285)
  %417 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %418 = call i32 @ram_nsec(%struct.gf100_ramfuc* %417, i32 1000)
  %419 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %420 = call i32 @ram_wr32(%struct.gf100_ramfuc* %419, i32 1110672, i32 33948933)
  %421 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %422 = call i32 @ram_wr32(%struct.gf100_ramfuc* %421, i32 1110676, i32 874545800)
  %423 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %424 = call i32 @ram_wr32(%struct.gf100_ramfuc* %423, i32 1110680, i32 1141179409)
  %425 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %426 = call i32 @ram_wr32(%struct.gf100_ramfuc* %425, i32 1110684, i32 4428)
  %427 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %428 = call i32 @ram_wr32(%struct.gf100_ramfuc* %427, i32 1110688, i32 1122041961)
  %429 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %430 = call i32 @ram_wr32(%struct.gf100_ramfuc* %429, i32 1111572, i32 1074024311)
  %431 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %432 = call i32 @ram_wr32(%struct.gf100_ramfuc* %431, i32 1111568, i32 1074024311)
  %433 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %434 = call i32 @ram_wr32(%struct.gf100_ramfuc* %433, i32 1110852, i32 6291465)
  %435 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %436 = call i32 @ram_nsec(%struct.gf100_ramfuc* %435, i32 1000)
  %437 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %438 = call i32 @ram_wr32(%struct.gf100_ramfuc* %437, i32 1110856, i32 7340040)
  %439 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %440 = call i32 @ram_wr32(%struct.gf100_ramfuc* %439, i32 6406464, i32 421789696)
  %441 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %442 = call i32 @ram_wr32(%struct.gf100_ramfuc* %441, i32 1112112, i32 3145751)
  %443 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %444 = call i32 @gf100_ram_train(%struct.gf100_ramfuc* %443, i32 -2147348479)
  %445 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %446 = call i32 @gf100_ram_train(%struct.gf100_ramfuc* %445, i32 -2146955263)
  %447 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %448 = call i32 @ram_wr32(%struct.gf100_ramfuc* %447, i32 1110848, i32 5242884)
  %449 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %450 = call i32 @ram_nsec(%struct.gf100_ramfuc* %449, i32 1000)
  %451 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %452 = call i32 @ram_wr32(%struct.gf100_ramfuc* %451, i32 1112112, i32 19922967)
  %453 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %454 = call i32 @ram_wr32(%struct.gf100_ramfuc* %453, i32 1112112, i32 3145751)
  %455 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %456 = call i32 @ram_wr32(%struct.gf100_ramfuc* %455, i32 1051404, i32 524328)
  %457 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %458 = call i32 @ram_wr32(%struct.gf100_ramfuc* %457, i32 6361600, i32 13104)
  br label %562

459:                                              ; preds = %373
  %460 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %461 = call i32 @ram_wr32(%struct.gf100_ramfuc* %460, i32 1112064, i32 6144)
  %462 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %463 = call i32 @ram_wr32(%struct.gf100_ramfuc* %462, i32 1300724, i32 0)
  %464 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %465 = call i32 @ram_wr32(%struct.gf100_ramfuc* %464, i32 1274860, i32 132100)
  %466 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %467 = call i32 @ram_wr32(%struct.gf100_ramfuc* %466, i32 1274864, i32 3)
  %468 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %469 = call i32 @ram_wr32(%struct.gf100_ramfuc* %468, i32 1112112, i32 1081081872)
  %470 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %471 = call i32 @ram_wr32(%struct.gf100_ramfuc* %470, i32 1112112, i32 1078984720)
  %472 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %473 = call i32 @ram_wr32(%struct.gf100_ramfuc* %472, i32 1300724, i32 0)
  %474 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %475 = call i32 @ram_wr32(%struct.gf100_ramfuc* %474, i32 1274872, i32 0)
  %476 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %477 = call i32 @ram_wr32(%struct.gf100_ramfuc* %476, i32 1253632, i32 257)
  %478 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %479 = call i32 @ram_wr32(%struct.gf100_ramfuc* %478, i32 1274640, i32 -1994385898)
  %480 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %481 = call i32 @ram_wr32(%struct.gf100_ramfuc* %480, i32 1110096, i32 -16777072)
  %482 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %483 = call i32 @ram_wr32(%struct.gf100_ramfuc* %482, i32 1274860, i32 197636)
  %484 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %485 = call i32 @ram_wr32(%struct.gf100_ramfuc* %484, i32 1274864, i32 2)
  %486 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %487 = call i32 @ram_wr32(%struct.gf100_ramfuc* %486, i32 1253632, i32 1)
  %488 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %489 = call i32 @ram_wr32(%struct.gf100_ramfuc* %488, i32 1274872, i32 8192)
  %490 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %491 = call i32 @ram_nsec(%struct.gf100_ramfuc* %490, i32 2000)
  %492 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %493 = call i32 @ram_wr32(%struct.gf100_ramfuc* %492, i32 1112072, i32 2057961552)
  %494 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %495 = call i32 @ram_wr32(%struct.gf100_ramfuc* %494, i32 1112112, i32 5242896)
  %496 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %497 = call i32 @ram_wr32(%struct.gf100_ramfuc* %496, i32 1110528, i32 13504512)
  %498 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %499 = call i32 @ram_wr32(%struct.gf100_ramfuc* %498, i32 1110160, i32 1073741950)
  %500 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %501 = call i32 @ram_nsec(%struct.gf100_ramfuc* %500, i32 2000)
  %502 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %503 = call i32 @ram_wr32(%struct.gf100_ramfuc* %502, i32 1110804, i32 1)
  %504 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %505 = call i32 @ram_wr32(%struct.gf100_ramfuc* %504, i32 1110544, i32 -2147483648)
  %506 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %507 = call i32 @ram_wr32(%struct.gf100_ramfuc* %506, i32 1110840, i32 3146240)
  %508 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %509 = call i32 @ram_wr32(%struct.gf100_ramfuc* %508, i32 1110784, i32 2125)
  %510 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %511 = call i32 @ram_nsec(%struct.gf100_ramfuc* %510, i32 1000)
  %512 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %513 = call i32 @ram_wr32(%struct.gf100_ramfuc* %512, i32 1110672, i32 187971621)
  %514 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %515 = call i32 @ram_wr32(%struct.gf100_ramfuc* %514, i32 1110676, i32 881001102)
  %516 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %517 = call i32 @ram_wr32(%struct.gf100_ramfuc* %516, i32 1110680, i32 1141638656)
  %518 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %519 = call i32 @ram_wr32(%struct.gf100_ramfuc* %518, i32 1110684, i32 8524)
  %520 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %521 = call i32 @ram_wr32(%struct.gf100_ramfuc* %520, i32 1110688, i32 1122107497)
  %522 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %523 = call i32 @ram_wr32(%struct.gf100_ramfuc* %522, i32 1110528, i32 13500416)
  %524 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %525 = call i32 @ram_wr32(%struct.gf100_ramfuc* %524, i32 1111572, i32 1610894967)
  %526 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %527 = call i32 @ram_wr32(%struct.gf100_ramfuc* %526, i32 1111568, i32 1610894967)
  %528 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %529 = call i32 @ram_wr32(%struct.gf100_ramfuc* %528, i32 1110848, i32 5242880)
  %530 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %531 = call i32 @ram_nsec(%struct.gf100_ramfuc* %530, i32 1000)
  %532 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %533 = call i32 @ram_wr32(%struct.gf100_ramfuc* %532, i32 1110852, i32 6292008)
  %534 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %535 = call i32 @ram_nsec(%struct.gf100_ramfuc* %534, i32 1000)
  %536 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %537 = call i32 @ram_wr32(%struct.gf100_ramfuc* %536, i32 1110856, i32 7340032)
  %538 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %539 = call i32 @ram_wr32(%struct.gf100_ramfuc* %538, i32 1300724, i32 0)
  %540 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %541 = call i32 @ram_wr32(%struct.gf100_ramfuc* %540, i32 6406464, i32 161742848)
  %542 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %543 = call i32 @gf100_ram_train(%struct.gf100_ramfuc* %542, i32 -2146562040)
  %544 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %545 = call i32 @ram_nsec(%struct.gf100_ramfuc* %544, i32 1000)
  %546 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %547 = call i32 @ram_wr32(%struct.gf100_ramfuc* %546, i32 1112064, i32 6148)
  %548 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %549 = call i32 @ram_wr32(%struct.gf100_ramfuc* %548, i32 1300724, i32 0)
  %550 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %551 = call i32 @ram_wr32(%struct.gf100_ramfuc* %550, i32 1051404, i32 524328)
  %552 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %553 = call i32 @ram_wr32(%struct.gf100_ramfuc* %552, i32 6361600, i32 13104)
  %554 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %555 = call i32 @ram_nsec(%struct.gf100_ramfuc* %554, i32 100000)
  %556 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %557 = call i32 @ram_wr32(%struct.gf100_ramfuc* %556, i32 1112496, i32 87113537)
  %558 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %559 = call i32 @ram_wr32(%struct.gf100_ramfuc* %558, i32 1112500, i32 12112)
  %560 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %561 = call i32 @gf100_ram_train(%struct.gf100_ramfuc* %560, i32 17567745)
  br label %562

562:                                              ; preds = %459, %376
  %563 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %564 = call i32 @ram_mask(%struct.gf100_ramfuc* %563, i32 1110528, i32 2048, i32 2048)
  %565 = load i32, i32* %24, align 4
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %567, label %570

567:                                              ; preds = %562
  %568 = load %struct.gf100_ramfuc*, %struct.gf100_ramfuc** %7, align 8
  %569 = call i32 @ram_mask(%struct.gf100_ramfuc* %568, i32 1253376, i32 1, i32 0)
  br label %570

570:                                              ; preds = %567, %562
  store i32 0, i32* %3, align 4
  br label %571

571:                                              ; preds = %570, %278, %239, %148, %131, %102, %75, %64
  %572 = load i32, i32* %3, align 4
  ret i32 %572
}

declare dso_local %struct.gf100_ram* @gf100_ram(%struct.nvkm_ram*) #1

declare dso_local i32 @nvbios_rammapEm(%struct.nvkm_bios*, i32, i32*, i32*, i32*, i32*, %struct.nvbios_ramcfg*) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*) #1

declare dso_local i32 @nvbios_ramcfg_index(%struct.nvkm_subdev*) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i32) #1

declare dso_local i32 @nvbios_timingEe(%struct.nvkm_bios*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ram_init(%struct.gf100_ramfuc*, %struct.TYPE_5__*) #1

declare dso_local i32 @ram_rd32(%struct.gf100_ramfuc*, i32) #1

declare dso_local i32 @nvkm_clk_read(%struct.nvkm_clk*, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ram_mask(%struct.gf100_ramfuc*, i32, i32, i32) #1

declare dso_local i32 @ram_nuke(%struct.gf100_ramfuc*, i32) #1

declare dso_local i32 @ram_wr32(%struct.gf100_ramfuc*, i32, i32) #1

declare dso_local i32 @gt215_pll_calc(%struct.nvkm_subdev*, %struct.TYPE_6__*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ram_wait(%struct.gf100_ramfuc*, i32, i32, i32, i32) #1

declare dso_local i32 @ram_nsec(%struct.gf100_ramfuc*, i32) #1

declare dso_local i32 @gf100_ram_train(%struct.gf100_ramfuc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
