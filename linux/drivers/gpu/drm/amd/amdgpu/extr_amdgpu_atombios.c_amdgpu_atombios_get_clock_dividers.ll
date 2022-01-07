; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atombios.c_amdgpu_atombios_get_clock_dividers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atombios.c_amdgpu_atombios_get_clock_dividers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.atom_clock_dividers = type { i32, i32, i32, %struct.TYPE_13__, i32, i8*, i32, i32, i32, i8*, i8*, %struct.TYPE_20__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_15__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, i32, i32, i32, %struct.TYPE_22__ }
%struct.TYPE_12__ = type { i32, i8* }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i8* }
%struct.TYPE_18__ = type { i8*, i32 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_16__, i32, i32, i8* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_14__, i32, i8* }
%struct.TYPE_14__ = type { i32, i32 }
%union.get_clock_dividers = type { %struct.TYPE_13__ }

@COMMAND = common dso_local global i32 0, align 4
@ComputeMemoryEnginePLL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@COMPUTE_ENGINE_PLL_PARAM = common dso_local global i32 0, align 4
@ATOM_PLL_CNTL_FLAG_PLL_POST_DIV_EN = common dso_local global i32 0, align 4
@ATOM_PLL_CNTL_FLAG_FRACTION_DISABLE = common dso_local global i32 0, align 4
@ATOM_PLL_CNTL_FLAG_MPLL_VCO_MODE = common dso_local global i32 0, align 4
@CHIP_TAHITI = common dso_local global i32 0, align 4
@ATOM_PLL_INPUT_FLAG_PLL_STROBE_MODE_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_atombios_get_clock_dividers(%struct.amdgpu_device* %0, i32 %1, i32 %2, i32 %3, %struct.atom_clock_dividers* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.atom_clock_dividers*, align 8
  %12 = alloca %union.get_clock_dividers, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %7, align 8
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
  %22 = call i32 @memset(%union.get_clock_dividers* %21, i32 0, i32 200)
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %13, align 4
  %28 = call i32 @amdgpu_atom_parse_cmd_header(i32 %26, i32 %27, i32* %14, i32* %15)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %5
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %282

33:                                               ; preds = %5
  %34 = load i32, i32* %15, align 4
  switch i32 %34, label %278 [
    i32 2, label %35
    i32 3, label %35
    i32 5, label %35
    i32 4, label %194
    i32 6, label %219
  ]

35:                                               ; preds = %33, %33, %33
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @COMPUTE_ENGINE_PLL_PARAM, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %108

39:                                               ; preds = %35
  %40 = load i32, i32* %8, align 4
  %41 = shl i32 %40, 24
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %41, %42
  %44 = call i8* @cpu_to_le32(i32 %43)
  %45 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_15__*
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  %47 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %48 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %13, align 4
  %52 = bitcast %union.get_clock_dividers* %12 to i32*
  %53 = call i32 @amdgpu_atom_execute_table(i32 %50, i32 %51, i32* %52)
  %54 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_15__*
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %58 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %57, i32 0, i32 7
  store i32 %56, i32* %58, align 4
  %59 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_15__*
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @ATOM_PLL_CNTL_FLAG_PLL_POST_DIV_EN, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 1, i32 0
  %67 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %68 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_15__*
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @ATOM_PLL_CNTL_FLAG_FRACTION_DISABLE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 0, i32 1
  %77 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %78 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_15__*
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @le16_to_cpu(i32 %82)
  %84 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %85 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %84, i32 0, i32 10
  store i8* %83, i8** %85, align 8
  %86 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_15__*
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i8* @le16_to_cpu(i32 %89)
  %91 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %92 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %91, i32 0, i32 9
  store i8* %90, i8** %92, align 8
  %93 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_15__*
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %97 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %96, i32 0, i32 8
  store i32 %95, i32* %97, align 8
  %98 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_15__*
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @ATOM_PLL_CNTL_FLAG_MPLL_VCO_MODE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i32 1, i32 0
  %106 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %107 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  br label %193

108:                                              ; preds = %35
  %109 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %110 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @CHIP_TAHITI, align 4
  %113 = icmp sge i32 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %6, align 4
  br label %282

117:                                              ; preds = %108
  %118 = load i32, i32* %8, align 4
  %119 = shl i32 %118, 24
  %120 = load i32, i32* %9, align 4
  %121 = or i32 %119, %120
  %122 = call i8* @cpu_to_le32(i32 %121)
  %123 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_17__*
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 5
  store i8* %122, i8** %124, align 8
  %125 = load i32, i32* %10, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %117
  %128 = load i32, i32* @ATOM_PLL_INPUT_FLAG_PLL_STROBE_MODE_EN, align 4
  %129 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_17__*
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 4
  store i32 %128, i32* %130, align 4
  br label %131

131:                                              ; preds = %127, %117
  %132 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %133 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %13, align 4
  %137 = bitcast %union.get_clock_dividers* %12 to i32*
  %138 = call i32 @amdgpu_atom_execute_table(i32 %135, i32 %136, i32* %137)
  %139 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_17__*
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %143 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %142, i32 0, i32 7
  store i32 %141, i32* %143, align 4
  %144 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_17__*
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @ATOM_PLL_CNTL_FLAG_PLL_POST_DIV_EN, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i32 1, i32 0
  %152 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %153 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 8
  %154 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_17__*
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @ATOM_PLL_CNTL_FLAG_FRACTION_DISABLE, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  %160 = zext i1 %159 to i64
  %161 = select i1 %159, i32 0, i32 1
  %162 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %163 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 4
  %164 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_17__*
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i8* @le16_to_cpu(i32 %167)
  %169 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %170 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %169, i32 0, i32 10
  store i8* %168, i8** %170, align 8
  %171 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_17__*
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i8* @le16_to_cpu(i32 %174)
  %176 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %177 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %176, i32 0, i32 9
  store i8* %175, i8** %177, align 8
  %178 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_17__*
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %182 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %181, i32 0, i32 8
  store i32 %180, i32* %182, align 8
  %183 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_17__*
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @ATOM_PLL_CNTL_FLAG_MPLL_VCO_MODE, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  %189 = zext i1 %188 to i64
  %190 = select i1 %188, i32 1, i32 0
  %191 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %192 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %191, i32 0, i32 2
  store i32 %190, i32* %192, align 8
  br label %193

193:                                              ; preds = %131, %39
  br label %281

194:                                              ; preds = %33
  %195 = load i32, i32* %9, align 4
  %196 = call i8* @cpu_to_le32(i32 %195)
  %197 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_18__*
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 0
  store i8* %196, i8** %198, align 8
  %199 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %200 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %13, align 4
  %204 = bitcast %union.get_clock_dividers* %12 to i32*
  %205 = call i32 @amdgpu_atom_execute_table(i32 %202, i32 %203, i32* %204)
  %206 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_18__*
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %210 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %209, i32 0, i32 7
  store i32 %208, i32* %210, align 4
  %211 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %212 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %211, i32 0, i32 4
  store i32 %208, i32* %212, align 8
  %213 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_18__*
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 0
  %215 = load i8*, i8** %214, align 8
  %216 = call i8* @le32_to_cpu(i8* %215)
  %217 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %218 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %217, i32 0, i32 5
  store i8* %216, i8** %218, align 8
  br label %281

219:                                              ; preds = %33
  %220 = load i32, i32* %8, align 4
  %221 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_20__*
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %222, i32 0, i32 0
  store i32 %220, i32* %223, align 8
  %224 = load i32, i32* %9, align 4
  %225 = call i8* @cpu_to_le32(i32 %224)
  %226 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_20__*
  %227 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %227, i32 0, i32 1
  store i8* %225, i8** %228, align 8
  %229 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %230 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* %13, align 4
  %234 = bitcast %union.get_clock_dividers* %12 to i32*
  %235 = call i32 @amdgpu_atom_execute_table(i32 %232, i32 %233, i32* %234)
  %236 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_13__*
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 4
  %238 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = call i8* @le16_to_cpu(i32 %239)
  %241 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %242 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %241, i32 0, i32 10
  store i8* %240, i8** %242, align 8
  %243 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_13__*
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 4
  %245 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = call i8* @le16_to_cpu(i32 %246)
  %248 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %249 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %248, i32 0, i32 9
  store i8* %247, i8** %249, align 8
  %250 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_13__*
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %254 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %253, i32 0, i32 8
  store i32 %252, i32* %254, align 8
  %255 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_13__*
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %259 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %258, i32 0, i32 7
  store i32 %257, i32* %259, align 4
  %260 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_13__*
  %261 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %264 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %263, i32 0, i32 6
  store i32 %262, i32* %264, align 8
  %265 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_13__*
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 1
  %268 = load i8*, i8** %267, align 8
  %269 = call i8* @le32_to_cpu(i8* %268)
  %270 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %271 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %270, i32 0, i32 5
  store i8* %269, i8** %271, align 8
  %272 = bitcast %union.get_clock_dividers* %12 to %struct.TYPE_13__*
  %273 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %11, align 8
  %277 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %276, i32 0, i32 4
  store i32 %275, i32* %277, align 8
  br label %281

278:                                              ; preds = %33
  %279 = load i32, i32* @EINVAL, align 4
  %280 = sub nsw i32 0, %279
  store i32 %280, i32* %6, align 4
  br label %282

281:                                              ; preds = %219, %194, %193
  store i32 0, i32* %6, align 4
  br label %282

282:                                              ; preds = %281, %278, %114, %30
  %283 = load i32, i32* %6, align 4
  ret i32 %283
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @memset(%union.get_clock_dividers*, i32, i32) #1

declare dso_local i32 @amdgpu_atom_parse_cmd_header(i32, i32, i32*, i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @amdgpu_atom_execute_table(i32, i32, i32*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i8* @le32_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
