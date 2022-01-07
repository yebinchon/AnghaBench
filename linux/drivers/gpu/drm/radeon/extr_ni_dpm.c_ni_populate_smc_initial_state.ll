; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_populate_smc_initial_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_populate_smc_initial_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i32, i32, i8*, i8*, %struct.TYPE_14__, i32, i8*, i8*, i32, %struct.TYPE_20__, i32, %struct.TYPE_20__, i64, i32, %struct.TYPE_12__, %struct.TYPE_16__ }
%struct.TYPE_14__ = type { i64, i64, i64, i64 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_12__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_16__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.ni_ps = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.rv7xx_power_info = type { i32, i64, i64, i64 }
%struct.evergreen_power_info = type { i32, i64, i32 }
%struct.ni_power_info = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@NISLANDS_INITIAL_STATE_ARB_INDEX = common dso_local global i32 0, align 4
@NISLANDS_SMC_MC_EDC_RD_FLAG = common dso_local global i32 0, align 4
@NISLANDS_SMC_MC_EDC_WR_FLAG = common dso_local global i32 0, align 4
@PPSMC_SWSTATE_FLAG_DC = common dso_local global i32 0, align 4
@MIN_POWER_MASK = common dso_local global i32 0, align 4
@MAX_POWER_MASK = common dso_local global i32 0, align 4
@MAX_POWER_DELTA_MASK = common dso_local global i32 0, align 4
@STI_SIZE_MASK = common dso_local global i32 0, align 4
@LTI_RATIO_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.radeon_ps*, %struct.TYPE_19__*)* @ni_populate_smc_initial_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_populate_smc_initial_state(%struct.radeon_device* %0, %struct.radeon_ps* %1, %struct.TYPE_19__* %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.ni_ps*, align 8
  %8 = alloca %struct.rv7xx_power_info*, align 8
  %9 = alloca %struct.evergreen_power_info*, align 8
  %10 = alloca %struct.ni_power_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %5, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %6, align 8
  %14 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %15 = call %struct.ni_ps* @ni_get_ps(%struct.radeon_ps* %14)
  store %struct.ni_ps* %15, %struct.ni_ps** %7, align 8
  %16 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %17 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %16)
  store %struct.rv7xx_power_info* %17, %struct.rv7xx_power_info** %8, align 8
  %18 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %19 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %18)
  store %struct.evergreen_power_info* %19, %struct.evergreen_power_info** %9, align 8
  %20 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %21 = call %struct.ni_power_info* @ni_get_pi(%struct.radeon_device* %20)
  store %struct.ni_power_info* %21, %struct.ni_power_info** %10, align 8
  %22 = load %struct.ni_power_info*, %struct.ni_power_info** %10, align 8
  %23 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @cpu_to_be32(i32 %25)
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 15
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 8
  store i8* %26, i8** %33, align 8
  %34 = load %struct.ni_power_info*, %struct.ni_power_info** %10, align 8
  %35 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @cpu_to_be32(i32 %37)
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 15
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 7
  store i8* %38, i8** %45, align 8
  %46 = load %struct.ni_power_info*, %struct.ni_power_info** %10, align 8
  %47 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @cpu_to_be32(i32 %49)
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 15
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 6
  store i8* %50, i8** %57, align 8
  %58 = load %struct.ni_power_info*, %struct.ni_power_info** %10, align 8
  %59 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @cpu_to_be32(i32 %61)
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 15
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 5
  store i8* %62, i8** %69, align 8
  %70 = load %struct.ni_power_info*, %struct.ni_power_info** %10, align 8
  %71 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @cpu_to_be32(i32 %73)
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i64 0
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 15
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 4
  store i8* %74, i8** %81, align 8
  %82 = load %struct.ni_power_info*, %struct.ni_power_info** %10, align 8
  %83 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @cpu_to_be32(i32 %85)
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i64 0
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 15
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 3
  store i8* %86, i8** %93, align 8
  %94 = load %struct.ni_power_info*, %struct.ni_power_info** %10, align 8
  %95 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @cpu_to_be32(i32 %97)
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i64 0
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 15
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 2
  store i8* %98, i8** %105, align 8
  %106 = load %struct.ni_power_info*, %struct.ni_power_info** %10, align 8
  %107 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 7
  %109 = load i32, i32* %108, align 4
  %110 = call i8* @cpu_to_be32(i32 %109)
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i64 0
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 15
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 1
  store i8* %110, i8** %117, align 8
  %118 = load %struct.ni_ps*, %struct.ni_ps** %7, align 8
  %119 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %118, i32 0, i32 0
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i64 0
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i8* @cpu_to_be32(i32 %123)
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i64 0
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 15
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  store i8* %124, i8** %131, align 8
  %132 = load %struct.ni_power_info*, %struct.ni_power_info** %10, align 8
  %133 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 8
  %135 = load i32, i32* %134, align 4
  %136 = call i8* @cpu_to_be32(i32 %135)
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i64 0
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 14
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 6
  store i8* %136, i8** %143, align 8
  %144 = load %struct.ni_power_info*, %struct.ni_power_info** %10, align 8
  %145 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 9
  %147 = load i32, i32* %146, align 4
  %148 = call i8* @cpu_to_be32(i32 %147)
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i64 0
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 14
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 5
  store i8* %148, i8** %155, align 8
  %156 = load %struct.ni_power_info*, %struct.ni_power_info** %10, align 8
  %157 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 10
  %159 = load i32, i32* %158, align 4
  %160 = call i8* @cpu_to_be32(i32 %159)
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i64 0
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 14
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 4
  store i8* %160, i8** %167, align 8
  %168 = load %struct.ni_power_info*, %struct.ni_power_info** %10, align 8
  %169 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 11
  %171 = load i32, i32* %170, align 4
  %172 = call i8* @cpu_to_be32(i32 %171)
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i64 0
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 14
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 3
  store i8* %172, i8** %179, align 8
  %180 = load %struct.ni_power_info*, %struct.ni_power_info** %10, align 8
  %181 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 12
  %183 = load i32, i32* %182, align 4
  %184 = call i8* @cpu_to_be32(i32 %183)
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 1
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i64 0
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 14
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 2
  store i8* %184, i8** %191, align 8
  %192 = load %struct.ni_power_info*, %struct.ni_power_info** %10, align 8
  %193 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 13
  %195 = load i32, i32* %194, align 4
  %196 = call i8* @cpu_to_be32(i32 %195)
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 1
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i64 0
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 14
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 1
  store i8* %196, i8** %203, align 8
  %204 = load %struct.ni_ps*, %struct.ni_ps** %7, align 8
  %205 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %204, i32 0, i32 0
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i64 0
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = call i8* @cpu_to_be32(i32 %209)
  %211 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i64 0
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 14
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 0
  store i8* %210, i8** %217, align 8
  %218 = load i32, i32* @NISLANDS_INITIAL_STATE_ARB_INDEX, align 4
  %219 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i64 0
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %223, i32 0, i32 13
  store i32 %218, i32* %224, align 8
  %225 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %226, i32 0, i32 1
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i64 0
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 12
  store i64 0, i64* %230, align 8
  %231 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %232 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %9, align 8
  %233 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %232, i32 0, i32 2
  %234 = load %struct.ni_ps*, %struct.ni_ps** %7, align 8
  %235 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %234, i32 0, i32 0
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i64 0
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %241, i32 0, i32 1
  %243 = load %struct.TYPE_17__*, %struct.TYPE_17__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %243, i64 0
  %245 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %244, i32 0, i32 11
  %246 = call i32 @ni_populate_voltage_value(%struct.radeon_device* %231, i32* %233, i32 %239, %struct.TYPE_20__* %245)
  store i32 %246, i32* %12, align 4
  %247 = load i32, i32* %12, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %279, label %249

249:                                              ; preds = %3
  %250 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %251 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %252, i32 0, i32 1
  %254 = load %struct.TYPE_17__*, %struct.TYPE_17__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %254, i64 0
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %255, i32 0, i32 11
  %257 = call i32 @ni_get_std_voltage_value(%struct.radeon_device* %250, %struct.TYPE_20__* %256, i32* %13)
  store i32 %257, i32* %12, align 4
  %258 = load i32, i32* %12, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %278, label %260

260:                                              ; preds = %249
  %261 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %262 = load i32, i32* %13, align 4
  %263 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %264, i32 0, i32 1
  %266 = load %struct.TYPE_17__*, %struct.TYPE_17__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %266, i64 0
  %268 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %267, i32 0, i32 11
  %269 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %272, i32 0, i32 1
  %274 = load %struct.TYPE_17__*, %struct.TYPE_17__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %274, i64 0
  %276 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %275, i32 0, i32 10
  %277 = call i32 @ni_populate_std_voltage_value(%struct.radeon_device* %261, i32 %262, i32 %270, i32* %276)
  br label %278

278:                                              ; preds = %260, %249
  br label %279

279:                                              ; preds = %278, %3
  %280 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %9, align 8
  %281 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %301

284:                                              ; preds = %279
  %285 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %286 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %9, align 8
  %287 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %286, i32 0, i32 0
  %288 = load %struct.ni_ps*, %struct.ni_ps** %7, align 8
  %289 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %288, i32 0, i32 0
  %290 = load %struct.TYPE_13__*, %struct.TYPE_13__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %290, i64 0
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %295, i32 0, i32 1
  %297 = load %struct.TYPE_17__*, %struct.TYPE_17__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %297, i64 0
  %299 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %298, i32 0, i32 9
  %300 = call i32 @ni_populate_voltage_value(%struct.radeon_device* %285, i32* %287, i32 %293, %struct.TYPE_20__* %299)
  br label %301

301:                                              ; preds = %284, %279
  %302 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %303 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %304 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %304, i32 0, i32 1
  %306 = load %struct.TYPE_17__*, %struct.TYPE_17__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %306, i64 0
  %308 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %307, i32 0, i32 8
  %309 = call i32 @ni_populate_initial_mvdd_value(%struct.radeon_device* %302, i32* %308)
  %310 = call i32 @CG_R(i32 65535)
  %311 = call i32 @CG_L(i32 0)
  %312 = or i32 %310, %311
  store i32 %312, i32* %11, align 4
  %313 = load i32, i32* %11, align 4
  %314 = call i8* @cpu_to_be32(i32 %313)
  %315 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %316 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %316, i32 0, i32 1
  %318 = load %struct.TYPE_17__*, %struct.TYPE_17__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %318, i64 0
  %320 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %319, i32 0, i32 7
  store i8* %314, i8** %320, align 8
  %321 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %322 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = call i8* @cpu_to_be32(i32 %323)
  %325 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %326, i32 0, i32 1
  %328 = load %struct.TYPE_17__*, %struct.TYPE_17__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %328, i64 0
  %330 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %329, i32 0, i32 6
  store i8* %324, i8** %330, align 8
  %331 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %332 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %331, i32 0, i32 3
  %333 = load i64, i64* %332, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %342

335:                                              ; preds = %301
  %336 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %337 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %337, i32 0, i32 1
  %339 = load %struct.TYPE_17__*, %struct.TYPE_17__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %339, i64 0
  %341 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %340, i32 0, i32 0
  store i32 1, i32* %341, align 8
  br label %349

342:                                              ; preds = %301
  %343 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %344, i32 0, i32 1
  %346 = load %struct.TYPE_17__*, %struct.TYPE_17__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %346, i64 0
  %348 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %347, i32 0, i32 0
  store i32 0, i32* %348, align 8
  br label %349

349:                                              ; preds = %342, %335
  %350 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %351 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %350, i32 0, i32 2
  %352 = load i64, i64* %351, align 8
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %398

354:                                              ; preds = %349
  %355 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %356 = load %struct.ni_ps*, %struct.ni_ps** %7, align 8
  %357 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %356, i32 0, i32 0
  %358 = load %struct.TYPE_13__*, %struct.TYPE_13__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %358, i64 0
  %360 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 4
  %362 = call i32 @cypress_get_strobe_mode_settings(%struct.radeon_device* %355, i32 %361)
  %363 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %364 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %364, i32 0, i32 1
  %366 = load %struct.TYPE_17__*, %struct.TYPE_17__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %366, i64 0
  %368 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %367, i32 0, i32 5
  store i32 %362, i32* %368, align 8
  %369 = load %struct.ni_ps*, %struct.ni_ps** %7, align 8
  %370 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %369, i32 0, i32 0
  %371 = load %struct.TYPE_13__*, %struct.TYPE_13__** %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %371, i64 0
  %373 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 4
  %375 = sext i32 %374 to i64
  %376 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %377 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %376, i32 0, i32 1
  %378 = load i64, i64* %377, align 8
  %379 = icmp sgt i64 %375, %378
  br i1 %379, label %380, label %390

380:                                              ; preds = %354
  %381 = load i32, i32* @NISLANDS_SMC_MC_EDC_RD_FLAG, align 4
  %382 = load i32, i32* @NISLANDS_SMC_MC_EDC_WR_FLAG, align 4
  %383 = or i32 %381, %382
  %384 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %385 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %385, i32 0, i32 1
  %387 = load %struct.TYPE_17__*, %struct.TYPE_17__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %387, i64 0
  %389 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %388, i32 0, i32 1
  store i32 %383, i32* %389, align 4
  br label %397

390:                                              ; preds = %354
  %391 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %392 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %391, i32 0, i32 0
  %393 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %392, i32 0, i32 1
  %394 = load %struct.TYPE_17__*, %struct.TYPE_17__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %394, i64 0
  %396 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %395, i32 0, i32 1
  store i32 0, i32* %396, align 4
  br label %397

397:                                              ; preds = %390, %380
  br label %398

398:                                              ; preds = %397, %349
  %399 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %400 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %400, i32 0, i32 0
  store i32 1, i32* %401, align 8
  %402 = load i32, i32* @PPSMC_SWSTATE_FLAG_DC, align 4
  %403 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %404 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %403, i32 0, i32 0
  %405 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %404, i32 0, i32 2
  %406 = load i32, i32* %405, align 8
  %407 = or i32 %406, %402
  store i32 %407, i32* %405, align 8
  %408 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %409 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %408, i32 0, i32 0
  %410 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %409, i32 0, i32 1
  %411 = load %struct.TYPE_17__*, %struct.TYPE_17__** %410, align 8
  %412 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %411, i64 0
  %413 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %412, i32 0, i32 4
  %414 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %413, i32 0, i32 3
  store i64 0, i64* %414, align 8
  %415 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %416 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %415, i32 0, i32 0
  %417 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %416, i32 0, i32 1
  %418 = load %struct.TYPE_17__*, %struct.TYPE_17__** %417, align 8
  %419 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %418, i64 0
  %420 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %419, i32 0, i32 4
  %421 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %420, i32 0, i32 2
  store i64 0, i64* %421, align 8
  %422 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %423 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %422, i32 0, i32 0
  %424 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %423, i32 0, i32 1
  %425 = load %struct.TYPE_17__*, %struct.TYPE_17__** %424, align 8
  %426 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %425, i64 0
  %427 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %426, i32 0, i32 4
  %428 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %427, i32 0, i32 1
  store i64 0, i64* %428, align 8
  %429 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %430 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %429, i32 0, i32 0
  %431 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %430, i32 0, i32 1
  %432 = load %struct.TYPE_17__*, %struct.TYPE_17__** %431, align 8
  %433 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %432, i64 0
  %434 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %433, i32 0, i32 4
  %435 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %434, i32 0, i32 0
  store i64 0, i64* %435, align 8
  %436 = load i32, i32* @MIN_POWER_MASK, align 4
  %437 = load i32, i32* @MAX_POWER_MASK, align 4
  %438 = or i32 %436, %437
  store i32 %438, i32* %11, align 4
  %439 = load i32, i32* %11, align 4
  %440 = call i8* @cpu_to_be32(i32 %439)
  %441 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %442 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %441, i32 0, i32 0
  %443 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %442, i32 0, i32 1
  %444 = load %struct.TYPE_17__*, %struct.TYPE_17__** %443, align 8
  %445 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %444, i64 0
  %446 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %445, i32 0, i32 3
  store i8* %440, i8** %446, align 8
  %447 = load i32, i32* @MAX_POWER_DELTA_MASK, align 4
  %448 = load i32, i32* @STI_SIZE_MASK, align 4
  %449 = or i32 %447, %448
  %450 = load i32, i32* @LTI_RATIO_MASK, align 4
  %451 = or i32 %449, %450
  store i32 %451, i32* %11, align 4
  %452 = load i32, i32* %11, align 4
  %453 = call i8* @cpu_to_be32(i32 %452)
  %454 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %455 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %454, i32 0, i32 0
  %456 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %455, i32 0, i32 1
  %457 = load %struct.TYPE_17__*, %struct.TYPE_17__** %456, align 8
  %458 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %457, i64 0
  %459 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %458, i32 0, i32 2
  store i8* %453, i8** %459, align 8
  ret i32 0
}

declare dso_local %struct.ni_ps* @ni_get_ps(%struct.radeon_ps*) #1

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.ni_power_info* @ni_get_pi(%struct.radeon_device*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @ni_populate_voltage_value(%struct.radeon_device*, i32*, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @ni_get_std_voltage_value(%struct.radeon_device*, %struct.TYPE_20__*, i32*) #1

declare dso_local i32 @ni_populate_std_voltage_value(%struct.radeon_device*, i32, i32, i32*) #1

declare dso_local i32 @ni_populate_initial_mvdd_value(%struct.radeon_device*, i32*) #1

declare dso_local i32 @CG_R(i32) #1

declare dso_local i32 @CG_L(i32) #1

declare dso_local i32 @cypress_get_strobe_mode_settings(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
