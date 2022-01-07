; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atom_get_clock_dividers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atom_get_clock_dividers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.atom_clock_dividers = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_24__, i32, i32, i32, i8*, i8*, %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_17__, %struct.TYPE_15__, %struct.TYPE_26__, %struct.TYPE_25__ }
%struct.TYPE_24__ = type { i32, %struct.TYPE_23__, i32, i32, %struct.TYPE_22__ }
%struct.TYPE_23__ = type { i32, i8* }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i8* }
%struct.TYPE_19__ = type { i8*, i32 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_18__, i32, i32, i8* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_14__, i32, i8* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_26__ = type { i32, i8*, i32, i32 }
%struct.TYPE_25__ = type { i32, i32, i32, i8* }
%union.get_clock_dividers = type { %struct.TYPE_24__ }

@COMMAND = common dso_local global i32 0, align 4
@ComputeMemoryEnginePLL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CHIP_RV770 = common dso_local global i32 0, align 4
@COMPUTE_ENGINE_PLL_PARAM = common dso_local global i32 0, align 4
@ATOM_PLL_CNTL_FLAG_PLL_POST_DIV_EN = common dso_local global i32 0, align 4
@ATOM_PLL_CNTL_FLAG_FRACTION_DISABLE = common dso_local global i32 0, align 4
@ATOM_PLL_CNTL_FLAG_MPLL_VCO_MODE = common dso_local global i32 0, align 4
@CHIP_TAHITI = common dso_local global i32 0, align 4
@ATOM_PLL_INPUT_FLAG_PLL_STROBE_MODE_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_atom_get_clock_dividers(%struct.radeon_device* %0, i32 %1, i32 %2, i32 %3, %struct.atom_clock_dividers* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.atom_clock_dividers*, align 8
  %12 = alloca %union.get_clock_dividers, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.atom_clock_dividers* %4, %struct.atom_clock_dividers** %11, align 8
  %16 = load i32, i32* @COMMAND, align 4
  %17 = load i32, i32* @ComputeMemoryEnginePLL, align 4
  %18 = call i32 @GetIndexIntoMasterTable(i32 %16, i32 %17)
  store i32 %18, i32* %13, align 4
  %19 = call i32 @memset(%union.get_clock_dividers* %12, i32 0, i32 40)
  %20 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %21 = bitcast %struct.atom_clock_dividers* %20 to %union.get_clock_dividers*
  %22 = call i32 @memset(%union.get_clock_dividers* %21, i32 0, i32 240)
  %23 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %13, align 4
  %28 = call i32 @atom_parse_cmd_header(i32 %26, i32 %27, i32* %14, i32* %15)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %5
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %385

33:                                               ; preds = %5
  %34 = load i32, i32* %15, align 4
  switch i32 %34, label %381 [
    i32 1, label %35
    i32 2, label %62
    i32 3, label %62
    i32 5, label %62
    i32 4, label %297
    i32 6, label %322
  ]

35:                                               ; preds = %33
  %36 = load i32, i32* %8, align 4
  %37 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_25__*
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i8* @cpu_to_le32(i32 %39)
  %41 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_25__*
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i32 0, i32 3
  store i8* %40, i8** %42, align 8
  %43 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %44 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %13, align 4
  %48 = bitcast %union.get_clock_dividers* %12 to i32*
  %49 = call i32 @atom_execute_table(i32 %46, i32 %47, i32* %48)
  %50 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_25__*
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %54 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %53, i32 0, i32 9
  store i32 %52, i32* %54, align 8
  %55 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_25__*
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %59 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %61 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %60, i32 0, i32 1
  store i32 1, i32* %61, align 4
  br label %384

62:                                               ; preds = %33, %33, %33
  %63 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %64 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @CHIP_RV770, align 4
  %67 = icmp sle i32 %65, %66
  br i1 %67, label %68, label %137

68:                                               ; preds = %62
  %69 = load i32, i32* %8, align 4
  %70 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_26__*
  %71 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i8* @cpu_to_le32(i32 %72)
  %74 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_26__*
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %74, i32 0, i32 1
  store i8* %73, i8** %75, align 8
  %76 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %77 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %13, align 4
  %81 = bitcast %union.get_clock_dividers* %12 to i32*
  %82 = call i32 @atom_execute_table(i32 %79, i32 %80, i32* %81)
  %83 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_26__*
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %87 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %86, i32 0, i32 9
  store i32 %85, i32* %87, align 8
  %88 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_26__*
  %89 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i8* @le16_to_cpu(i32 %90)
  %92 = ptrtoint i8* %91 to i32
  %93 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %94 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_26__*
  %96 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %99 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %101 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @CHIP_RV770, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %126

105:                                              ; preds = %68
  %106 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_26__*
  %107 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @le32_to_cpu(i8* %108)
  %110 = and i32 %109, 16777216
  %111 = icmp ne i32 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i32 1, i32 0
  %114 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %115 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_26__*
  %117 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @le32_to_cpu(i8* %118)
  %120 = and i32 %119, 33554432
  %121 = icmp ne i32 %120, 0
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i32 1, i32 0
  %124 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %125 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 4
  br label %136

126:                                              ; preds = %68
  %127 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %128 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = and i32 %129, 1
  %131 = icmp ne i32 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i32 1, i32 0
  %134 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %135 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  br label %136

136:                                              ; preds = %126, %105
  br label %296

137:                                              ; preds = %62
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* @COMPUTE_ENGINE_PLL_PARAM, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %210

141:                                              ; preds = %137
  %142 = load i32, i32* %8, align 4
  %143 = shl i32 %142, 24
  %144 = load i32, i32* %9, align 4
  %145 = or i32 %143, %144
  %146 = call i8* @cpu_to_le32(i32 %145)
  %147 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_15__*
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 4
  store i8* %146, i8** %148, align 8
  %149 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %150 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %13, align 4
  %154 = bitcast %union.get_clock_dividers* %12 to i32*
  %155 = call i32 @atom_execute_table(i32 %152, i32 %153, i32* %154)
  %156 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_15__*
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %160 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %159, i32 0, i32 9
  store i32 %158, i32* %160, align 8
  %161 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_15__*
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @ATOM_PLL_CNTL_FLAG_PLL_POST_DIV_EN, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  %167 = zext i1 %166 to i64
  %168 = select i1 %166, i32 1, i32 0
  %169 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %170 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  %171 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_15__*
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @ATOM_PLL_CNTL_FLAG_FRACTION_DISABLE, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  %177 = zext i1 %176 to i64
  %178 = select i1 %176, i32 0, i32 1
  %179 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %180 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %179, i32 0, i32 4
  store i32 %178, i32* %180, align 8
  %181 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_15__*
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i8* @le16_to_cpu(i32 %184)
  %186 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %187 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %186, i32 0, i32 11
  store i8* %185, i8** %187, align 8
  %188 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_15__*
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i8* @le16_to_cpu(i32 %191)
  %193 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %194 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %193, i32 0, i32 10
  store i8* %192, i8** %194, align 8
  %195 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_15__*
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %199 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %198, i32 0, i32 2
  store i32 %197, i32* %199, align 8
  %200 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_15__*
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @ATOM_PLL_CNTL_FLAG_MPLL_VCO_MODE, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  %206 = zext i1 %205 to i64
  %207 = select i1 %205, i32 1, i32 0
  %208 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %209 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %208, i32 0, i32 3
  store i32 %207, i32* %209, align 4
  br label %295

210:                                              ; preds = %137
  %211 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %212 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @CHIP_TAHITI, align 4
  %215 = icmp sge i32 %213, %214
  br i1 %215, label %216, label %219

216:                                              ; preds = %210
  %217 = load i32, i32* @EINVAL, align 4
  %218 = sub nsw i32 0, %217
  store i32 %218, i32* %6, align 4
  br label %385

219:                                              ; preds = %210
  %220 = load i32, i32* %8, align 4
  %221 = shl i32 %220, 24
  %222 = load i32, i32* %9, align 4
  %223 = or i32 %221, %222
  %224 = call i8* @cpu_to_le32(i32 %223)
  %225 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_17__*
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 5
  store i8* %224, i8** %226, align 8
  %227 = load i32, i32* %10, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %219
  %230 = load i32, i32* @ATOM_PLL_INPUT_FLAG_PLL_STROBE_MODE_EN, align 4
  %231 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_17__*
  %232 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %231, i32 0, i32 4
  store i32 %230, i32* %232, align 4
  br label %233

233:                                              ; preds = %229, %219
  %234 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %235 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %13, align 4
  %239 = bitcast %union.get_clock_dividers* %12 to i32*
  %240 = call i32 @atom_execute_table(i32 %237, i32 %238, i32* %239)
  %241 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_17__*
  %242 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %245 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %244, i32 0, i32 9
  store i32 %243, i32* %245, align 8
  %246 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_17__*
  %247 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @ATOM_PLL_CNTL_FLAG_PLL_POST_DIV_EN, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  %252 = zext i1 %251 to i64
  %253 = select i1 %251, i32 1, i32 0
  %254 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %255 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %254, i32 0, i32 1
  store i32 %253, i32* %255, align 4
  %256 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_17__*
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* @ATOM_PLL_CNTL_FLAG_FRACTION_DISABLE, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  %262 = zext i1 %261 to i64
  %263 = select i1 %261, i32 0, i32 1
  %264 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %265 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %264, i32 0, i32 4
  store i32 %263, i32* %265, align 8
  %266 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_17__*
  %267 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = call i8* @le16_to_cpu(i32 %269)
  %271 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %272 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %271, i32 0, i32 11
  store i8* %270, i8** %272, align 8
  %273 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_17__*
  %274 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %273, i32 0, i32 2
  %275 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = call i8* @le16_to_cpu(i32 %276)
  %278 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %279 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %278, i32 0, i32 10
  store i8* %277, i8** %279, align 8
  %280 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_17__*
  %281 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %284 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %283, i32 0, i32 2
  store i32 %282, i32* %284, align 8
  %285 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_17__*
  %286 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* @ATOM_PLL_CNTL_FLAG_MPLL_VCO_MODE, align 4
  %289 = and i32 %287, %288
  %290 = icmp ne i32 %289, 0
  %291 = zext i1 %290 to i64
  %292 = select i1 %290, i32 1, i32 0
  %293 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %294 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %293, i32 0, i32 3
  store i32 %292, i32* %294, align 4
  br label %295

295:                                              ; preds = %233, %141
  br label %296

296:                                              ; preds = %295, %136
  br label %384

297:                                              ; preds = %33
  %298 = load i32, i32* %9, align 4
  %299 = call i8* @cpu_to_le32(i32 %298)
  %300 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_19__*
  %301 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %300, i32 0, i32 0
  store i8* %299, i8** %301, align 8
  %302 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %303 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* %13, align 4
  %307 = bitcast %union.get_clock_dividers* %12 to i32*
  %308 = call i32 @atom_execute_table(i32 %305, i32 %306, i32* %307)
  %309 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_19__*
  %310 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 8
  %312 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %313 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %312, i32 0, i32 9
  store i32 %311, i32* %313, align 8
  %314 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %315 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %314, i32 0, i32 7
  store i32 %311, i32* %315, align 8
  %316 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_19__*
  %317 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %316, i32 0, i32 0
  %318 = load i8*, i8** %317, align 8
  %319 = call i32 @le32_to_cpu(i8* %318)
  %320 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %321 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %320, i32 0, i32 5
  store i32 %319, i32* %321, align 4
  br label %384

322:                                              ; preds = %33
  %323 = load i32, i32* %8, align 4
  %324 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_21__*
  %325 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %325, i32 0, i32 0
  store i32 %323, i32* %326, align 8
  %327 = load i32, i32* %9, align 4
  %328 = call i8* @cpu_to_le32(i32 %327)
  %329 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_21__*
  %330 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %330, i32 0, i32 1
  store i8* %328, i8** %331, align 8
  %332 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %333 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 4
  %336 = load i32, i32* %13, align 4
  %337 = bitcast %union.get_clock_dividers* %12 to i32*
  %338 = call i32 @atom_execute_table(i32 %335, i32 %336, i32* %337)
  %339 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_24__*
  %340 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %339, i32 0, i32 4
  %341 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 4
  %343 = call i8* @le16_to_cpu(i32 %342)
  %344 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %345 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %344, i32 0, i32 11
  store i8* %343, i8** %345, align 8
  %346 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_24__*
  %347 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %346, i32 0, i32 4
  %348 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = call i8* @le16_to_cpu(i32 %349)
  %351 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %352 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %351, i32 0, i32 10
  store i8* %350, i8** %352, align 8
  %353 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_24__*
  %354 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %357 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %356, i32 0, i32 2
  store i32 %355, i32* %357, align 8
  %358 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_24__*
  %359 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %358, i32 0, i32 3
  %360 = load i32, i32* %359, align 4
  %361 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %362 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %361, i32 0, i32 9
  store i32 %360, i32* %362, align 8
  %363 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_24__*
  %364 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %363, i32 0, i32 2
  %365 = load i32, i32* %364, align 8
  %366 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %367 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %366, i32 0, i32 8
  store i32 %365, i32* %367, align 4
  %368 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_24__*
  %369 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %368, i32 0, i32 1
  %370 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %369, i32 0, i32 1
  %371 = load i8*, i8** %370, align 8
  %372 = call i32 @le32_to_cpu(i8* %371)
  %373 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %374 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %373, i32 0, i32 5
  store i32 %372, i32* %374, align 4
  %375 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_24__*
  %376 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %375, i32 0, i32 1
  %377 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %380 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %379, i32 0, i32 7
  store i32 %378, i32* %380, align 8
  br label %384

381:                                              ; preds = %33
  %382 = load i32, i32* @EINVAL, align 4
  %383 = sub nsw i32 0, %382
  store i32 %383, i32* %6, align 4
  br label %385

384:                                              ; preds = %322, %297, %296, %35
  store i32 0, i32* %6, align 4
  br label %385

385:                                              ; preds = %384, %381, %216, %30
  %386 = load i32, i32* %6, align 4
  ret i32 %386
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @memset(%union.get_clock_dividers*, i32, i32) #1

declare dso_local i32 @atom_parse_cmd_header(i32, i32, i32*, i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @atom_execute_table(i32, i32, i32*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
