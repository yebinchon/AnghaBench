; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_populate_smc_initial_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_populate_smc_initial_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64 }
%struct.radeon_ps = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, %struct.TYPE_17__, %struct.TYPE_13__ }
%struct.TYPE_17__ = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.rv7xx_ps = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.rv7xx_power_info = type { i32, i64, i64, i64, i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MC_CG_ARB_FREQ_F0 = common dso_local global i32 0, align 4
@ATOM_PPLIB_R600_FLAGS_PCIEGEN2 = common dso_local global i32 0, align 4
@CHIP_RV740 = common dso_local global i64 0, align 8
@SMC_MC_EDC_RD_FLAG = common dso_local global i32 0, align 4
@SMC_MC_EDC_WR_FLAG = common dso_local global i32 0, align 4
@PPSMC_SWSTATE_FLAG_DC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.radeon_ps*, %struct.TYPE_19__*)* @rv770_populate_smc_initial_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv770_populate_smc_initial_state(%struct.radeon_device* %0, %struct.radeon_ps* %1, %struct.TYPE_19__* %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.rv7xx_ps*, align 8
  %8 = alloca %struct.rv7xx_power_info*, align 8
  %9 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %5, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %6, align 8
  %10 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %11 = call %struct.rv7xx_ps* @rv770_get_ps(%struct.radeon_ps* %10)
  store %struct.rv7xx_ps* %11, %struct.rv7xx_ps** %7, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %13 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %12)
  store %struct.rv7xx_power_info* %13, %struct.rv7xx_power_info** %8, align 8
  %14 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %15 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %14, i32 0, i32 5
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i8* @cpu_to_be32(i32 %18)
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 11
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 8
  store i8* %19, i8** %27, align 8
  %28 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %29 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @cpu_to_be32(i32 %32)
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 11
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 7
  store i8* %33, i8** %41, align 8
  %42 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %43 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i8* @cpu_to_be32(i32 %46)
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 11
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 6
  store i8* %47, i8** %55, align 8
  %56 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %57 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @cpu_to_be32(i32 %60)
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 11
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 5
  store i8* %61, i8** %69, align 8
  %70 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %71 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %70, i32 0, i32 5
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = call i8* @cpu_to_be32(i32 %74)
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 11
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 4
  store i8* %75, i8** %83, align 8
  %84 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %85 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @cpu_to_be32(i32 %88)
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i64 0
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 11
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 3
  store i8* %89, i8** %97, align 8
  %98 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %99 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %98, i32 0, i32 5
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 8
  %103 = call i8* @cpu_to_be32(i32 %102)
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i64 0
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 11
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 2
  store i8* %103, i8** %111, align 8
  %112 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %113 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 7
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @cpu_to_be32(i32 %116)
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i64 0
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 11
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 1
  store i8* %117, i8** %125, align 8
  %126 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %7, align 8
  %127 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i8* @cpu_to_be32(i32 %129)
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i64 0
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 11
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  store i8* %130, i8** %138, align 8
  %139 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %140 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %139, i32 0, i32 5
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 8
  %143 = load i32, i32* %142, align 8
  %144 = call i8* @cpu_to_be32(i32 %143)
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i64 0
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 10
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 5
  store i8* %144, i8** %151, align 8
  %152 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %153 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %152, i32 0, i32 5
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 9
  %156 = load i32, i32* %155, align 4
  %157 = call i8* @cpu_to_be32(i32 %156)
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i64 0
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 10
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 4
  store i8* %157, i8** %164, align 8
  %165 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %166 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %165, i32 0, i32 5
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 10
  %169 = load i32, i32* %168, align 8
  %170 = call i8* @cpu_to_be32(i32 %169)
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i64 0
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 10
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 3
  store i8* %170, i8** %177, align 8
  %178 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %179 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %178, i32 0, i32 5
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 11
  %182 = load i32, i32* %181, align 4
  %183 = call i8* @cpu_to_be32(i32 %182)
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i64 0
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 10
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 2
  store i8* %183, i8** %190, align 8
  %191 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %192 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %191, i32 0, i32 5
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 12
  %195 = load i32, i32* %194, align 8
  %196 = call i8* @cpu_to_be32(i32 %195)
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 1
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i64 0
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 10
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 1
  store i8* %196, i8** %203, align 8
  %204 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %7, align 8
  %205 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = call i8* @cpu_to_be32(i32 %207)
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i64 0
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 10
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 0
  store i8* %208, i8** %215, align 8
  %216 = load i32, i32* @MC_CG_ARB_FREQ_F0, align 4
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 1
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i64 0
  %222 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %221, i32 0, i32 9
  store i32 %216, i32* %222, align 4
  %223 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %224 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %7, align 8
  %225 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %224, i32 0, i32 0
  %226 = call i32 @rv770_get_seq_value(%struct.radeon_device* %223, %struct.TYPE_11__* %225)
  %227 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 1
  %230 = load %struct.TYPE_18__*, %struct.TYPE_18__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %230, i64 0
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %231, i32 0, i32 8
  store i32 %226, i32* %232, align 8
  %233 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %234 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %7, align 8
  %235 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 1
  %241 = load %struct.TYPE_18__*, %struct.TYPE_18__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %241, i64 0
  %243 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %242, i32 0, i32 7
  %244 = call i32 @rv770_populate_vddc_value(%struct.radeon_device* %233, i32 %237, i32* %243)
  %245 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %246 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 1
  %249 = load %struct.TYPE_18__*, %struct.TYPE_18__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %249, i64 0
  %251 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %250, i32 0, i32 6
  %252 = call i32 @rv770_populate_initial_mvdd_value(%struct.radeon_device* %245, i32* %251)
  %253 = call i32 @CG_R(i32 65535)
  %254 = call i32 @CG_L(i32 0)
  %255 = or i32 %253, %254
  store i32 %255, i32* %9, align 4
  %256 = load i32, i32* %9, align 4
  %257 = call i8* @cpu_to_be32(i32 %256)
  %258 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i32 0, i32 1
  %261 = load %struct.TYPE_18__*, %struct.TYPE_18__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %261, i64 0
  %263 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %262, i32 0, i32 5
  store i8* %257, i8** %263, align 8
  %264 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %265 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = call i8* @cpu_to_be32(i32 %266)
  %268 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 1
  %271 = load %struct.TYPE_18__*, %struct.TYPE_18__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %271, i64 0
  %273 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %272, i32 0, i32 4
  store i8* %267, i8** %273, align 8
  %274 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %275 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %274, i32 0, i32 4
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %285

278:                                              ; preds = %3
  %279 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i32 0, i32 1
  %282 = load %struct.TYPE_18__*, %struct.TYPE_18__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %282, i64 0
  %284 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %283, i32 0, i32 0
  store i32 1, i32* %284, align 8
  br label %292

285:                                              ; preds = %3
  %286 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %287, i32 0, i32 1
  %289 = load %struct.TYPE_18__*, %struct.TYPE_18__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %289, i64 0
  %291 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %290, i32 0, i32 0
  store i32 0, i32* %291, align 8
  br label %292

292:                                              ; preds = %285, %278
  %293 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %7, align 8
  %294 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* @ATOM_PPLIB_R600_FLAGS_PCIEGEN2, align 4
  %298 = and i32 %296, %297
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %307

300:                                              ; preds = %292
  %301 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %302, i32 0, i32 1
  %304 = load %struct.TYPE_18__*, %struct.TYPE_18__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %304, i64 0
  %306 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %305, i32 0, i32 1
  store i32 1, i32* %306, align 4
  br label %314

307:                                              ; preds = %292
  %308 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %309, i32 0, i32 1
  %311 = load %struct.TYPE_18__*, %struct.TYPE_18__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %311, i64 0
  %313 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %312, i32 0, i32 1
  store i32 0, i32* %313, align 4
  br label %314

314:                                              ; preds = %307, %300
  %315 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %316 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = load i64, i64* @CHIP_RV740, align 8
  %319 = icmp eq i64 %317, %318
  br i1 %319, label %320, label %385

320:                                              ; preds = %314
  %321 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %322 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %321, i32 0, i32 3
  %323 = load i64, i64* %322, align 8
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %384

325:                                              ; preds = %320
  %326 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %7, align 8
  %327 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = sext i32 %329 to i64
  %331 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %332 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %331, i32 0, i32 1
  %333 = load i64, i64* %332, align 8
  %334 = icmp sle i64 %330, %333
  br i1 %334, label %335, label %349

335:                                              ; preds = %325
  %336 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %7, align 8
  %337 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = sext i32 %339 to i64
  %341 = call i32 @rv740_get_mclk_frequency_ratio(i64 %340)
  %342 = or i32 %341, 16
  %343 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %344, i32 0, i32 1
  %346 = load %struct.TYPE_18__*, %struct.TYPE_18__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %346, i64 0
  %348 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %347, i32 0, i32 2
  store i32 %342, i32* %348, align 8
  br label %356

349:                                              ; preds = %325
  %350 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %351 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %351, i32 0, i32 1
  %353 = load %struct.TYPE_18__*, %struct.TYPE_18__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %353, i64 0
  %355 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %354, i32 0, i32 2
  store i32 0, i32* %355, align 8
  br label %356

356:                                              ; preds = %349, %335
  %357 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %7, align 8
  %358 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 4
  %361 = sext i32 %360 to i64
  %362 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %363 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %362, i32 0, i32 2
  %364 = load i64, i64* %363, align 8
  %365 = icmp sge i64 %361, %364
  br i1 %365, label %366, label %376

366:                                              ; preds = %356
  %367 = load i32, i32* @SMC_MC_EDC_RD_FLAG, align 4
  %368 = load i32, i32* @SMC_MC_EDC_WR_FLAG, align 4
  %369 = or i32 %367, %368
  %370 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %371 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %371, i32 0, i32 1
  %373 = load %struct.TYPE_18__*, %struct.TYPE_18__** %372, align 8
  %374 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %373, i64 0
  %375 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %374, i32 0, i32 3
  store i32 %369, i32* %375, align 4
  br label %383

376:                                              ; preds = %356
  %377 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %378 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %378, i32 0, i32 1
  %380 = load %struct.TYPE_18__*, %struct.TYPE_18__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %380, i64 0
  %382 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %381, i32 0, i32 3
  store i32 0, i32* %382, align 4
  br label %383

383:                                              ; preds = %376, %366
  br label %384

384:                                              ; preds = %383, %320
  br label %385

385:                                              ; preds = %384, %314
  %386 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %387 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %386, i32 0, i32 0
  %388 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %387, i32 0, i32 1
  %389 = load %struct.TYPE_18__*, %struct.TYPE_18__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %389, i64 1
  %391 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %392 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %391, i32 0, i32 0
  %393 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %392, i32 0, i32 1
  %394 = load %struct.TYPE_18__*, %struct.TYPE_18__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %394, i64 0
  %396 = bitcast %struct.TYPE_18__* %390 to i8*
  %397 = bitcast %struct.TYPE_18__* %395 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %396, i8* align 8 %397, i64 168, i1 false)
  %398 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %399 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %399, i32 0, i32 1
  %401 = load %struct.TYPE_18__*, %struct.TYPE_18__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %401, i64 2
  %403 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %404 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %403, i32 0, i32 0
  %405 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %404, i32 0, i32 1
  %406 = load %struct.TYPE_18__*, %struct.TYPE_18__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %406, i64 0
  %408 = bitcast %struct.TYPE_18__* %402 to i8*
  %409 = bitcast %struct.TYPE_18__* %407 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %408, i8* align 8 %409, i64 168, i1 false)
  %410 = load i32, i32* @PPSMC_SWSTATE_FLAG_DC, align 4
  %411 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %412 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %411, i32 0, i32 0
  %413 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 8
  %415 = or i32 %414, %410
  store i32 %415, i32* %413, align 8
  ret i32 0
}

declare dso_local %struct.rv7xx_ps* @rv770_get_ps(%struct.radeon_ps*) #1

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @rv770_get_seq_value(%struct.radeon_device*, %struct.TYPE_11__*) #1

declare dso_local i32 @rv770_populate_vddc_value(%struct.radeon_device*, i32, i32*) #1

declare dso_local i32 @rv770_populate_initial_mvdd_value(%struct.radeon_device*, i32*) #1

declare dso_local i32 @CG_R(i32) #1

declare dso_local i32 @CG_L(i32) #1

declare dso_local i32 @rv740_get_mclk_frequency_ratio(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
