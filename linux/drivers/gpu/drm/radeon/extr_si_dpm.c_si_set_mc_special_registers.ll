; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_set_mc_special_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_set_mc_special_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.si_mc_reg_table = type { i64, i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.rv7xx_power_info = type { i32 }

@SMC_SISLANDS_MC_REGISTER_ARRAY_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MC_PMG_CMD_EMRS = common dso_local global i32 0, align 4
@MC_SEQ_PMG_CMD_EMRS_LP = common dso_local global i32 0, align 4
@MC_PMG_CMD_MRS = common dso_local global i32 0, align 4
@MC_SEQ_PMG_CMD_MRS_LP = common dso_local global i32 0, align 4
@MC_PMG_AUTO_CMD = common dso_local global i32 0, align 4
@MC_PMG_CMD_MRS1 = common dso_local global i32 0, align 4
@MC_SEQ_PMG_CMD_MRS1_LP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.si_mc_reg_table*)* @si_set_mc_special_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_set_mc_special_registers(%struct.radeon_device* %0, %struct.si_mc_reg_table* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.si_mc_reg_table*, align 8
  %6 = alloca %struct.rv7xx_power_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.si_mc_reg_table* %1, %struct.si_mc_reg_table** %5, align 8
  %11 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %12 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %11)
  store %struct.rv7xx_power_info* %12, %struct.rv7xx_power_info** %6, align 8
  store i64 0, i64* %7, align 8
  %13 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %14 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %8, align 8
  br label %16

16:                                               ; preds = %306, %2
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %19 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %22, label %309

22:                                               ; preds = %16
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @SMC_SISLANDS_MC_REGISTER_ARRAY_SIZE, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %313

29:                                               ; preds = %22
  %30 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %31 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %30, i32 0, i32 3
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %36, 2
  switch i32 %37, label %304 [
    i32 129, label %38
    i32 128, label %242
  ]

38:                                               ; preds = %29
  %39 = load i32, i32* @MC_PMG_CMD_EMRS, align 4
  %40 = call i32 @RREG32(i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* @MC_PMG_CMD_EMRS, align 4
  %42 = ashr i32 %41, 2
  %43 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %44 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %43, i32 0, i32 3
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 %42, i32* %48, align 4
  %49 = load i32, i32* @MC_SEQ_PMG_CMD_EMRS_LP, align 4
  %50 = ashr i32 %49, 2
  %51 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %52 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %51, i32 0, i32 3
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i64, i64* %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i32 %50, i32* %56, align 4
  store i64 0, i64* %9, align 8
  br label %57

57:                                               ; preds = %88, %38
  %58 = load i64, i64* %9, align 8
  %59 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %60 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %58, %61
  br i1 %62, label %63, label %91

63:                                               ; preds = %57
  %64 = load i32, i32* %10, align 4
  %65 = and i32 %64, -65536
  %66 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %67 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %66, i32 0, i32 2
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i64, i64* %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* %7, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, -65536
  %77 = lshr i32 %76, 16
  %78 = or i32 %65, %77
  %79 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %80 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %79, i32 0, i32 2
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load i64, i64* %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* %8, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32 %78, i32* %87, align 4
  br label %88

88:                                               ; preds = %63
  %89 = load i64, i64* %9, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %9, align 8
  br label %57

91:                                               ; preds = %57
  %92 = load i64, i64* %8, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %8, align 8
  %94 = load i64, i64* %8, align 8
  %95 = load i64, i64* @SMC_SISLANDS_MC_REGISTER_ARRAY_SIZE, align 8
  %96 = icmp sge i64 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %313

100:                                              ; preds = %91
  %101 = load i32, i32* @MC_PMG_CMD_MRS, align 4
  %102 = call i32 @RREG32(i32 %101)
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* @MC_PMG_CMD_MRS, align 4
  %104 = ashr i32 %103, 2
  %105 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %106 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %105, i32 0, i32 3
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = load i64, i64* %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  store i32 %104, i32* %110, align 4
  %111 = load i32, i32* @MC_SEQ_PMG_CMD_MRS_LP, align 4
  %112 = ashr i32 %111, 2
  %113 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %114 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %113, i32 0, i32 3
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = load i64, i64* %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  store i32 %112, i32* %118, align 4
  store i64 0, i64* %9, align 8
  br label %119

119:                                              ; preds = %166, %100
  %120 = load i64, i64* %9, align 8
  %121 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %122 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp slt i64 %120, %123
  br i1 %124, label %125, label %169

125:                                              ; preds = %119
  %126 = load i32, i32* %10, align 4
  %127 = and i32 %126, -65536
  %128 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %129 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %128, i32 0, i32 2
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = load i64, i64* %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i64, i64* %7, align 8
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = and i32 %137, 65535
  %139 = or i32 %127, %138
  %140 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %141 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %140, i32 0, i32 2
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = load i64, i64* %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load i64, i64* %8, align 8
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  store i32 %139, i32* %148, align 4
  %149 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %6, align 8
  %150 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %165, label %153

153:                                              ; preds = %125
  %154 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %155 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %154, i32 0, i32 2
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = load i64, i64* %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = load i64, i64* %8, align 8
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, 256
  store i32 %164, i32* %162, align 4
  br label %165

165:                                              ; preds = %153, %125
  br label %166

166:                                              ; preds = %165
  %167 = load i64, i64* %9, align 8
  %168 = add nsw i64 %167, 1
  store i64 %168, i64* %9, align 8
  br label %119

169:                                              ; preds = %119
  %170 = load i64, i64* %8, align 8
  %171 = add nsw i64 %170, 1
  store i64 %171, i64* %8, align 8
  %172 = load i64, i64* %8, align 8
  %173 = load i64, i64* @SMC_SISLANDS_MC_REGISTER_ARRAY_SIZE, align 8
  %174 = icmp sge i64 %172, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %169
  %176 = load i32, i32* @EINVAL, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %3, align 4
  br label %313

178:                                              ; preds = %169
  %179 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %6, align 8
  %180 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %241, label %183

183:                                              ; preds = %178
  %184 = load i32, i32* @MC_PMG_AUTO_CMD, align 4
  %185 = ashr i32 %184, 2
  %186 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %187 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %186, i32 0, i32 3
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %187, align 8
  %189 = load i64, i64* %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 0
  store i32 %185, i32* %191, align 4
  %192 = load i32, i32* @MC_PMG_AUTO_CMD, align 4
  %193 = ashr i32 %192, 2
  %194 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %195 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %194, i32 0, i32 3
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %195, align 8
  %197 = load i64, i64* %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 1
  store i32 %193, i32* %199, align 4
  store i64 0, i64* %9, align 8
  br label %200

200:                                              ; preds = %228, %183
  %201 = load i64, i64* %9, align 8
  %202 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %203 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = icmp slt i64 %201, %204
  br i1 %205, label %206, label %231

206:                                              ; preds = %200
  %207 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %208 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %207, i32 0, i32 2
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %208, align 8
  %210 = load i64, i64* %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = load i64, i64* %7, align 8
  %215 = getelementptr inbounds i32, i32* %213, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = and i32 %216, -65536
  %218 = lshr i32 %217, 16
  %219 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %220 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %219, i32 0, i32 2
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %220, align 8
  %222 = load i64, i64* %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 0
  %225 = load i32*, i32** %224, align 8
  %226 = load i64, i64* %8, align 8
  %227 = getelementptr inbounds i32, i32* %225, i64 %226
  store i32 %218, i32* %227, align 4
  br label %228

228:                                              ; preds = %206
  %229 = load i64, i64* %9, align 8
  %230 = add nsw i64 %229, 1
  store i64 %230, i64* %9, align 8
  br label %200

231:                                              ; preds = %200
  %232 = load i64, i64* %8, align 8
  %233 = add nsw i64 %232, 1
  store i64 %233, i64* %8, align 8
  %234 = load i64, i64* %8, align 8
  %235 = load i64, i64* @SMC_SISLANDS_MC_REGISTER_ARRAY_SIZE, align 8
  %236 = icmp sge i64 %234, %235
  br i1 %236, label %237, label %240

237:                                              ; preds = %231
  %238 = load i32, i32* @EINVAL, align 4
  %239 = sub nsw i32 0, %238
  store i32 %239, i32* %3, align 4
  br label %313

240:                                              ; preds = %231
  br label %241

241:                                              ; preds = %240, %178
  br label %305

242:                                              ; preds = %29
  %243 = load i32, i32* @MC_PMG_CMD_MRS1, align 4
  %244 = call i32 @RREG32(i32 %243)
  store i32 %244, i32* %10, align 4
  %245 = load i32, i32* @MC_PMG_CMD_MRS1, align 4
  %246 = ashr i32 %245, 2
  %247 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %248 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %247, i32 0, i32 3
  %249 = load %struct.TYPE_3__*, %struct.TYPE_3__** %248, align 8
  %250 = load i64, i64* %8, align 8
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 0
  store i32 %246, i32* %252, align 4
  %253 = load i32, i32* @MC_SEQ_PMG_CMD_MRS1_LP, align 4
  %254 = ashr i32 %253, 2
  %255 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %256 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %255, i32 0, i32 3
  %257 = load %struct.TYPE_3__*, %struct.TYPE_3__** %256, align 8
  %258 = load i64, i64* %8, align 8
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %257, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i32 0, i32 1
  store i32 %254, i32* %260, align 4
  store i64 0, i64* %9, align 8
  br label %261

261:                                              ; preds = %291, %242
  %262 = load i64, i64* %9, align 8
  %263 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %264 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = icmp slt i64 %262, %265
  br i1 %266, label %267, label %294

267:                                              ; preds = %261
  %268 = load i32, i32* %10, align 4
  %269 = and i32 %268, -65536
  %270 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %271 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %270, i32 0, i32 2
  %272 = load %struct.TYPE_4__*, %struct.TYPE_4__** %271, align 8
  %273 = load i64, i64* %9, align 8
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 0
  %276 = load i32*, i32** %275, align 8
  %277 = load i64, i64* %7, align 8
  %278 = getelementptr inbounds i32, i32* %276, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = and i32 %279, 65535
  %281 = or i32 %269, %280
  %282 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %283 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %282, i32 0, i32 2
  %284 = load %struct.TYPE_4__*, %struct.TYPE_4__** %283, align 8
  %285 = load i64, i64* %9, align 8
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 0
  %288 = load i32*, i32** %287, align 8
  %289 = load i64, i64* %8, align 8
  %290 = getelementptr inbounds i32, i32* %288, i64 %289
  store i32 %281, i32* %290, align 4
  br label %291

291:                                              ; preds = %267
  %292 = load i64, i64* %9, align 8
  %293 = add nsw i64 %292, 1
  store i64 %293, i64* %9, align 8
  br label %261

294:                                              ; preds = %261
  %295 = load i64, i64* %8, align 8
  %296 = add nsw i64 %295, 1
  store i64 %296, i64* %8, align 8
  %297 = load i64, i64* %8, align 8
  %298 = load i64, i64* @SMC_SISLANDS_MC_REGISTER_ARRAY_SIZE, align 8
  %299 = icmp sge i64 %297, %298
  br i1 %299, label %300, label %303

300:                                              ; preds = %294
  %301 = load i32, i32* @EINVAL, align 4
  %302 = sub nsw i32 0, %301
  store i32 %302, i32* %3, align 4
  br label %313

303:                                              ; preds = %294
  br label %305

304:                                              ; preds = %29
  br label %305

305:                                              ; preds = %304, %303, %241
  br label %306

306:                                              ; preds = %305
  %307 = load i64, i64* %7, align 8
  %308 = add nsw i64 %307, 1
  store i64 %308, i64* %7, align 8
  br label %16

309:                                              ; preds = %16
  %310 = load i64, i64* %8, align 8
  %311 = load %struct.si_mc_reg_table*, %struct.si_mc_reg_table** %5, align 8
  %312 = getelementptr inbounds %struct.si_mc_reg_table, %struct.si_mc_reg_table* %311, i32 0, i32 0
  store i64 %310, i64* %312, align 8
  store i32 0, i32* %3, align 4
  br label %313

313:                                              ; preds = %309, %300, %237, %175, %97, %26
  %314 = load i32, i32* %3, align 4
  ret i32 %314
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
