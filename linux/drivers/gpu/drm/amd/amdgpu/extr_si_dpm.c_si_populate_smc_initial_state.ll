; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_populate_smc_initial_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_populate_smc_initial_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_25__, %struct.TYPE_24__ }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }
%struct.amdgpu_ps = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32, %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { i32, i8*, i8*, %struct.TYPE_27__, i32, i64, i8*, i8*, i32, %struct.TYPE_20__, %struct.TYPE_20__, i32, i64, i32, %struct.TYPE_21__, %struct.TYPE_17__ }
%struct.TYPE_27__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_17__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.si_ps = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, i32, i32, i32 }
%struct.rv7xx_power_info = type { i32, i64 }
%struct.evergreen_power_info = type { i32, i64, i32 }
%struct.si_power_info = type { i64, i64, %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SISLANDS_INITIAL_STATE_ARB_INDEX = common dso_local global i32 0, align 4
@AMDGPU_VRAM_TYPE_GDDR5 = common dso_local global i64 0, align 8
@SISLANDS_SMC_MC_EDC_RD_FLAG = common dso_local global i32 0, align 4
@SISLANDS_SMC_MC_EDC_WR_FLAG = common dso_local global i32 0, align 4
@PPSMC_SWSTATE_FLAG_DC = common dso_local global i32 0, align 4
@MIN_POWER_MASK = common dso_local global i32 0, align 4
@MAX_POWER_MASK = common dso_local global i32 0, align 4
@MAX_POWER_DELTA_MASK = common dso_local global i32 0, align 4
@STI_SIZE_MASK = common dso_local global i32 0, align 4
@LTI_RATIO_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_ps*, %struct.TYPE_19__*)* @si_populate_smc_initial_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_populate_smc_initial_state(%struct.amdgpu_device* %0, %struct.amdgpu_ps* %1, %struct.TYPE_19__* %2) #0 {
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.amdgpu_ps*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.si_ps*, align 8
  %8 = alloca %struct.rv7xx_power_info*, align 8
  %9 = alloca %struct.evergreen_power_info*, align 8
  %10 = alloca %struct.si_power_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store %struct.amdgpu_ps* %1, %struct.amdgpu_ps** %5, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %6, align 8
  %14 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %5, align 8
  %15 = call %struct.si_ps* @si_get_ps(%struct.amdgpu_ps* %14)
  store %struct.si_ps* %15, %struct.si_ps** %7, align 8
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %17 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.amdgpu_device* %16)
  store %struct.rv7xx_power_info* %17, %struct.rv7xx_power_info** %8, align 8
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %19 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.amdgpu_device* %18)
  store %struct.evergreen_power_info* %19, %struct.evergreen_power_info** %9, align 8
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %21 = call %struct.si_power_info* @si_get_pi(%struct.amdgpu_device* %20)
  store %struct.si_power_info* %21, %struct.si_power_info** %10, align 8
  %22 = load %struct.si_power_info*, %struct.si_power_info** %10, align 8
  %23 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i8* @cpu_to_be32(i32 %25)
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 15
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 9
  store i8* %26, i8** %33, align 8
  %34 = load %struct.si_power_info*, %struct.si_power_info** %10, align 8
  %35 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @cpu_to_be32(i32 %37)
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 15
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 8
  store i8* %38, i8** %45, align 8
  %46 = load %struct.si_power_info*, %struct.si_power_info** %10, align 8
  %47 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i8* @cpu_to_be32(i32 %49)
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 15
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 7
  store i8* %50, i8** %57, align 8
  %58 = load %struct.si_power_info*, %struct.si_power_info** %10, align 8
  %59 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @cpu_to_be32(i32 %61)
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 15
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 6
  store i8* %62, i8** %69, align 8
  %70 = load %struct.si_power_info*, %struct.si_power_info** %10, align 8
  %71 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = call i8* @cpu_to_be32(i32 %73)
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i64 0
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 15
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 5
  store i8* %74, i8** %81, align 8
  %82 = load %struct.si_power_info*, %struct.si_power_info** %10, align 8
  %83 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @cpu_to_be32(i32 %85)
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i64 0
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 15
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 4
  store i8* %86, i8** %93, align 8
  %94 = load %struct.si_power_info*, %struct.si_power_info** %10, align 8
  %95 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 8
  %98 = call i8* @cpu_to_be32(i32 %97)
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i64 0
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 15
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 3
  store i8* %98, i8** %105, align 8
  %106 = load %struct.si_power_info*, %struct.si_power_info** %10, align 8
  %107 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %107, i32 0, i32 7
  %109 = load i32, i32* %108, align 4
  %110 = call i8* @cpu_to_be32(i32 %109)
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i64 0
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 15
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 2
  store i8* %110, i8** %117, align 8
  %118 = load %struct.si_power_info*, %struct.si_power_info** %10, align 8
  %119 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %119, i32 0, i32 8
  %121 = load i32, i32* %120, align 8
  %122 = call i8* @cpu_to_be32(i32 %121)
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i64 0
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 15
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 1
  store i8* %122, i8** %129, align 8
  %130 = load %struct.si_ps*, %struct.si_ps** %7, align 8
  %131 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %130, i32 0, i32 0
  %132 = load %struct.TYPE_26__*, %struct.TYPE_26__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %132, i64 0
  %134 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i8* @cpu_to_be32(i32 %135)
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i64 0
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 15
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 0
  store i8* %136, i8** %143, align 8
  %144 = load %struct.si_power_info*, %struct.si_power_info** %10, align 8
  %145 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %145, i32 0, i32 9
  %147 = load i32, i32* %146, align 4
  %148 = call i8* @cpu_to_be32(i32 %147)
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i64 0
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 14
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 6
  store i8* %148, i8** %155, align 8
  %156 = load %struct.si_power_info*, %struct.si_power_info** %10, align 8
  %157 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %157, i32 0, i32 10
  %159 = load i32, i32* %158, align 8
  %160 = call i8* @cpu_to_be32(i32 %159)
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i64 0
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 14
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 5
  store i8* %160, i8** %167, align 8
  %168 = load %struct.si_power_info*, %struct.si_power_info** %10, align 8
  %169 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %169, i32 0, i32 11
  %171 = load i32, i32* %170, align 4
  %172 = call i8* @cpu_to_be32(i32 %171)
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i64 0
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 14
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 4
  store i8* %172, i8** %179, align 8
  %180 = load %struct.si_power_info*, %struct.si_power_info** %10, align 8
  %181 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %181, i32 0, i32 12
  %183 = load i32, i32* %182, align 8
  %184 = call i8* @cpu_to_be32(i32 %183)
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %186, i32 0, i32 1
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i64 0
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 14
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 3
  store i8* %184, i8** %191, align 8
  %192 = load %struct.si_power_info*, %struct.si_power_info** %10, align 8
  %193 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %193, i32 0, i32 13
  %195 = load i32, i32* %194, align 4
  %196 = call i8* @cpu_to_be32(i32 %195)
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %198, i32 0, i32 1
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i64 0
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 14
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 2
  store i8* %196, i8** %203, align 8
  %204 = load %struct.si_power_info*, %struct.si_power_info** %10, align 8
  %205 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %205, i32 0, i32 14
  %207 = load i32, i32* %206, align 8
  %208 = call i8* @cpu_to_be32(i32 %207)
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i64 0
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 14
  %215 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %214, i32 0, i32 1
  store i8* %208, i8** %215, align 8
  %216 = load %struct.si_ps*, %struct.si_ps** %7, align 8
  %217 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %216, i32 0, i32 0
  %218 = load %struct.TYPE_26__*, %struct.TYPE_26__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %218, i64 0
  %220 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = call i8* @cpu_to_be32(i32 %221)
  %223 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %224, i32 0, i32 1
  %226 = load %struct.TYPE_18__*, %struct.TYPE_18__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %226, i64 0
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i32 0, i32 14
  %229 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %228, i32 0, i32 0
  store i8* %222, i8** %229, align 8
  %230 = load i32, i32* @SISLANDS_INITIAL_STATE_ARB_INDEX, align 4
  %231 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %232, i32 0, i32 1
  %234 = load %struct.TYPE_18__*, %struct.TYPE_18__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %234, i64 0
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %235, i32 0, i32 13
  store i32 %230, i32* %236, align 8
  %237 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %238, i32 0, i32 1
  %240 = load %struct.TYPE_18__*, %struct.TYPE_18__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %240, i64 0
  %242 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %241, i32 0, i32 12
  store i64 0, i64* %242, align 8
  %243 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %244 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %9, align 8
  %245 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %244, i32 0, i32 2
  %246 = load %struct.si_ps*, %struct.si_ps** %7, align 8
  %247 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %246, i32 0, i32 0
  %248 = load %struct.TYPE_26__*, %struct.TYPE_26__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %248, i64 0
  %250 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %253, i32 0, i32 1
  %255 = load %struct.TYPE_18__*, %struct.TYPE_18__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %255, i64 0
  %257 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %256, i32 0, i32 9
  %258 = call i32 @si_populate_voltage_value(%struct.amdgpu_device* %243, i32* %245, i32 %251, %struct.TYPE_20__* %257)
  store i32 %258, i32* %12, align 4
  %259 = load i32, i32* %12, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %291, label %261

261:                                              ; preds = %3
  %262 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %263 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %264, i32 0, i32 1
  %266 = load %struct.TYPE_18__*, %struct.TYPE_18__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %266, i64 0
  %268 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %267, i32 0, i32 9
  %269 = call i32 @si_get_std_voltage_value(%struct.amdgpu_device* %262, %struct.TYPE_20__* %268, i32* %13)
  store i32 %269, i32* %12, align 4
  %270 = load i32, i32* %12, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %290, label %272

272:                                              ; preds = %261
  %273 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %274 = load i32, i32* %13, align 4
  %275 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %276, i32 0, i32 1
  %278 = load %struct.TYPE_18__*, %struct.TYPE_18__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %278, i64 0
  %280 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %279, i32 0, i32 9
  %281 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %284, i32 0, i32 1
  %286 = load %struct.TYPE_18__*, %struct.TYPE_18__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %286, i64 0
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i32 0, i32 11
  %289 = call i32 @si_populate_std_voltage_value(%struct.amdgpu_device* %273, i32 %274, i32 %282, i32* %288)
  br label %290

290:                                              ; preds = %272, %261
  br label %291

291:                                              ; preds = %290, %3
  %292 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %9, align 8
  %293 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %292, i32 0, i32 1
  %294 = load i64, i64* %293, align 8
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %313

296:                                              ; preds = %291
  %297 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %298 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %9, align 8
  %299 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %298, i32 0, i32 0
  %300 = load %struct.si_ps*, %struct.si_ps** %7, align 8
  %301 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %300, i32 0, i32 0
  %302 = load %struct.TYPE_26__*, %struct.TYPE_26__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %302, i64 0
  %304 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %303, i32 0, i32 3
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %307, i32 0, i32 1
  %309 = load %struct.TYPE_18__*, %struct.TYPE_18__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %309, i64 0
  %311 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %310, i32 0, i32 10
  %312 = call i32 @si_populate_voltage_value(%struct.amdgpu_device* %297, i32* %299, i32 %305, %struct.TYPE_20__* %311)
  br label %313

313:                                              ; preds = %296, %291
  %314 = load %struct.si_power_info*, %struct.si_power_info** %10, align 8
  %315 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %314, i32 0, i32 1
  %316 = load i64, i64* %315, align 8
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %350

318:                                              ; preds = %313
  %319 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %320 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %321 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %323, i32 0, i32 0
  %325 = load %struct.si_ps*, %struct.si_ps** %7, align 8
  %326 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %325, i32 0, i32 0
  %327 = load %struct.TYPE_26__*, %struct.TYPE_26__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %327, i64 0
  %329 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.si_ps*, %struct.si_ps** %7, align 8
  %332 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %331, i32 0, i32 0
  %333 = load %struct.TYPE_26__*, %struct.TYPE_26__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %333, i64 0
  %335 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 4
  %337 = load %struct.si_ps*, %struct.si_ps** %7, align 8
  %338 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %337, i32 0, i32 0
  %339 = load %struct.TYPE_26__*, %struct.TYPE_26__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %339, i64 0
  %341 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %344, i32 0, i32 1
  %346 = load %struct.TYPE_18__*, %struct.TYPE_18__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %346, i64 0
  %348 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %347, i32 0, i32 9
  %349 = call i32 @si_populate_phase_shedding_value(%struct.amdgpu_device* %319, i32* %324, i32 %330, i32 %336, i32 %342, %struct.TYPE_20__* %348)
  br label %350

350:                                              ; preds = %318, %313
  %351 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %352 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %353 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %353, i32 0, i32 1
  %355 = load %struct.TYPE_18__*, %struct.TYPE_18__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %355, i64 0
  %357 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %356, i32 0, i32 8
  %358 = call i32 @si_populate_initial_mvdd_value(%struct.amdgpu_device* %351, i32* %357)
  %359 = call i32 @CG_R(i32 65535)
  %360 = call i32 @CG_L(i32 0)
  %361 = or i32 %359, %360
  store i32 %361, i32* %11, align 4
  %362 = load i32, i32* %11, align 4
  %363 = call i8* @cpu_to_be32(i32 %362)
  %364 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %365 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %365, i32 0, i32 1
  %367 = load %struct.TYPE_18__*, %struct.TYPE_18__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %367, i64 0
  %369 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %368, i32 0, i32 7
  store i8* %363, i8** %369, align 8
  %370 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %371 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  %373 = call i8* @cpu_to_be32(i32 %372)
  %374 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %375 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %375, i32 0, i32 1
  %377 = load %struct.TYPE_18__*, %struct.TYPE_18__** %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %377, i64 0
  %379 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %378, i32 0, i32 6
  store i8* %373, i8** %379, align 8
  %380 = load %struct.si_power_info*, %struct.si_power_info** %10, align 8
  %381 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %380, i32 0, i32 0
  %382 = load i64, i64* %381, align 8
  %383 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %384 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %383, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %384, i32 0, i32 1
  %386 = load %struct.TYPE_18__*, %struct.TYPE_18__** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %386, i64 0
  %388 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %387, i32 0, i32 5
  store i64 %382, i64* %388, align 8
  %389 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %390 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %390, i32 0, i32 0
  %392 = load i64, i64* %391, align 8
  %393 = load i64, i64* @AMDGPU_VRAM_TYPE_GDDR5, align 8
  %394 = icmp eq i64 %392, %393
  br i1 %394, label %395, label %439

395:                                              ; preds = %350
  %396 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %397 = load %struct.si_ps*, %struct.si_ps** %7, align 8
  %398 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %397, i32 0, i32 0
  %399 = load %struct.TYPE_26__*, %struct.TYPE_26__** %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %399, i64 0
  %401 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 4
  %403 = call i32 @si_get_strobe_mode_settings(%struct.amdgpu_device* %396, i32 %402)
  %404 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %405 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %404, i32 0, i32 0
  %406 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %405, i32 0, i32 1
  %407 = load %struct.TYPE_18__*, %struct.TYPE_18__** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %407, i64 0
  %409 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %408, i32 0, i32 4
  store i32 %403, i32* %409, align 8
  %410 = load %struct.si_ps*, %struct.si_ps** %7, align 8
  %411 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %410, i32 0, i32 0
  %412 = load %struct.TYPE_26__*, %struct.TYPE_26__** %411, align 8
  %413 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %412, i64 0
  %414 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 4
  %416 = sext i32 %415 to i64
  %417 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %418 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %417, i32 0, i32 1
  %419 = load i64, i64* %418, align 8
  %420 = icmp sgt i64 %416, %419
  br i1 %420, label %421, label %431

421:                                              ; preds = %395
  %422 = load i32, i32* @SISLANDS_SMC_MC_EDC_RD_FLAG, align 4
  %423 = load i32, i32* @SISLANDS_SMC_MC_EDC_WR_FLAG, align 4
  %424 = or i32 %422, %423
  %425 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %426 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %425, i32 0, i32 0
  %427 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %426, i32 0, i32 1
  %428 = load %struct.TYPE_18__*, %struct.TYPE_18__** %427, align 8
  %429 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %428, i64 0
  %430 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %429, i32 0, i32 0
  store i32 %424, i32* %430, align 8
  br label %438

431:                                              ; preds = %395
  %432 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %433 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %432, i32 0, i32 0
  %434 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %433, i32 0, i32 1
  %435 = load %struct.TYPE_18__*, %struct.TYPE_18__** %434, align 8
  %436 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %435, i64 0
  %437 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %436, i32 0, i32 0
  store i32 0, i32* %437, align 8
  br label %438

438:                                              ; preds = %431, %421
  br label %439

439:                                              ; preds = %438, %350
  %440 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %441 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %440, i32 0, i32 0
  %442 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %441, i32 0, i32 0
  store i32 1, i32* %442, align 8
  %443 = load i32, i32* @PPSMC_SWSTATE_FLAG_DC, align 4
  %444 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %445 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %444, i32 0, i32 0
  %446 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %445, i32 0, i32 2
  %447 = load i32, i32* %446, align 8
  %448 = or i32 %447, %443
  store i32 %448, i32* %446, align 8
  %449 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %450 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %449, i32 0, i32 0
  %451 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %450, i32 0, i32 1
  %452 = load %struct.TYPE_18__*, %struct.TYPE_18__** %451, align 8
  %453 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %452, i64 0
  %454 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %453, i32 0, i32 3
  %455 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %454, i32 0, i32 4
  store i64 0, i64* %455, align 8
  %456 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %457 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %456, i32 0, i32 0
  %458 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %457, i32 0, i32 1
  %459 = load %struct.TYPE_18__*, %struct.TYPE_18__** %458, align 8
  %460 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %459, i64 0
  %461 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %460, i32 0, i32 3
  %462 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %461, i32 0, i32 3
  store i64 0, i64* %462, align 8
  %463 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %464 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %463, i32 0, i32 0
  %465 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %464, i32 0, i32 1
  %466 = load %struct.TYPE_18__*, %struct.TYPE_18__** %465, align 8
  %467 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %466, i64 0
  %468 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %467, i32 0, i32 3
  %469 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %468, i32 0, i32 2
  store i64 0, i64* %469, align 8
  %470 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %471 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %470, i32 0, i32 0
  %472 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %471, i32 0, i32 1
  %473 = load %struct.TYPE_18__*, %struct.TYPE_18__** %472, align 8
  %474 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %473, i64 0
  %475 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %474, i32 0, i32 3
  %476 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %475, i32 0, i32 1
  store i64 0, i64* %476, align 8
  %477 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %478 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %477, i32 0, i32 0
  %479 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %478, i32 0, i32 1
  %480 = load %struct.TYPE_18__*, %struct.TYPE_18__** %479, align 8
  %481 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %480, i64 0
  %482 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %481, i32 0, i32 3
  %483 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %482, i32 0, i32 0
  store i64 0, i64* %483, align 8
  %484 = load i32, i32* @MIN_POWER_MASK, align 4
  %485 = load i32, i32* @MAX_POWER_MASK, align 4
  %486 = or i32 %484, %485
  store i32 %486, i32* %11, align 4
  %487 = load i32, i32* %11, align 4
  %488 = call i8* @cpu_to_be32(i32 %487)
  %489 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %490 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %489, i32 0, i32 0
  %491 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %490, i32 0, i32 1
  %492 = load %struct.TYPE_18__*, %struct.TYPE_18__** %491, align 8
  %493 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %492, i64 0
  %494 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %493, i32 0, i32 2
  store i8* %488, i8** %494, align 8
  %495 = load i32, i32* @MAX_POWER_DELTA_MASK, align 4
  %496 = load i32, i32* @STI_SIZE_MASK, align 4
  %497 = or i32 %495, %496
  %498 = load i32, i32* @LTI_RATIO_MASK, align 4
  %499 = or i32 %497, %498
  store i32 %499, i32* %11, align 4
  %500 = load i32, i32* %11, align 4
  %501 = call i8* @cpu_to_be32(i32 %500)
  %502 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %503 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %502, i32 0, i32 0
  %504 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %503, i32 0, i32 1
  %505 = load %struct.TYPE_18__*, %struct.TYPE_18__** %504, align 8
  %506 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %505, i64 0
  %507 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %506, i32 0, i32 1
  store i8* %501, i8** %507, align 8
  ret i32 0
}

declare dso_local %struct.si_ps* @si_get_ps(%struct.amdgpu_ps*) #1

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.amdgpu_device*) #1

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.amdgpu_device*) #1

declare dso_local %struct.si_power_info* @si_get_pi(%struct.amdgpu_device*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @si_populate_voltage_value(%struct.amdgpu_device*, i32*, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @si_get_std_voltage_value(%struct.amdgpu_device*, %struct.TYPE_20__*, i32*) #1

declare dso_local i32 @si_populate_std_voltage_value(%struct.amdgpu_device*, i32, i32, i32*) #1

declare dso_local i32 @si_populate_phase_shedding_value(%struct.amdgpu_device*, i32*, i32, i32, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @si_populate_initial_mvdd_value(%struct.amdgpu_device*, i32*) #1

declare dso_local i32 @CG_R(i32) #1

declare dso_local i32 @CG_L(i32) #1

declare dso_local i32 @si_get_strobe_mode_settings(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
