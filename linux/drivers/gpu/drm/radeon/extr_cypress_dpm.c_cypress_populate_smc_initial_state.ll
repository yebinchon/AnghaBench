; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_populate_smc_initial_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_populate_smc_initial_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i64, i32, %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.rv7xx_ps = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32 }
%struct.rv7xx_power_info = type { i32, i64, i64, i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.evergreen_power_info = type { i32, i64, i32 }

@MC_CG_ARB_FREQ_F0 = common dso_local global i32 0, align 4
@ATOM_PPLIB_R600_FLAGS_PCIEGEN2 = common dso_local global i32 0, align 4
@SMC_MC_EDC_RD_FLAG = common dso_local global i32 0, align 4
@SMC_MC_EDC_WR_FLAG = common dso_local global i32 0, align 4
@PPSMC_SWSTATE_FLAG_DC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cypress_populate_smc_initial_state(%struct.radeon_device* %0, %struct.radeon_ps* %1, %struct.TYPE_19__* %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.rv7xx_ps*, align 8
  %8 = alloca %struct.rv7xx_power_info*, align 8
  %9 = alloca %struct.evergreen_power_info*, align 8
  %10 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %5, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %6, align 8
  %11 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %12 = call %struct.rv7xx_ps* @rv770_get_ps(%struct.radeon_ps* %11)
  store %struct.rv7xx_ps* %12, %struct.rv7xx_ps** %7, align 8
  %13 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %14 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %13)
  store %struct.rv7xx_power_info* %14, %struct.rv7xx_power_info** %8, align 8
  %15 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %16 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %15)
  store %struct.evergreen_power_info* %16, %struct.evergreen_power_info** %9, align 8
  %17 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %18 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i8* @cpu_to_be32(i32 %21)
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 12
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 8
  store i8* %22, i8** %30, align 8
  %31 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %32 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @cpu_to_be32(i32 %35)
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 12
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 7
  store i8* %36, i8** %44, align 8
  %45 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %46 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i8* @cpu_to_be32(i32 %49)
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 12
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 6
  store i8* %50, i8** %58, align 8
  %59 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %60 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @cpu_to_be32(i32 %63)
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i64 0
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 12
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 5
  store i8* %64, i8** %72, align 8
  %73 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %74 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = call i8* @cpu_to_be32(i32 %77)
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i64 0
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 12
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 4
  store i8* %78, i8** %86, align 8
  %87 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %88 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @cpu_to_be32(i32 %91)
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i64 0
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 12
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 3
  store i8* %92, i8** %100, align 8
  %101 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %102 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 8
  %106 = call i8* @cpu_to_be32(i32 %105)
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i64 0
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 12
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 2
  store i8* %106, i8** %114, align 8
  %115 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %116 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 4
  %120 = call i8* @cpu_to_be32(i32 %119)
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i64 0
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 12
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  store i8* %120, i8** %128, align 8
  %129 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %7, align 8
  %130 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i8* @cpu_to_be32(i32 %132)
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i64 0
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 12
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  store i8* %133, i8** %141, align 8
  %142 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %143 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %142, i32 0, i32 4
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 8
  %146 = load i32, i32* %145, align 8
  %147 = call i8* @cpu_to_be32(i32 %146)
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i64 0
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 11
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 5
  store i8* %147, i8** %154, align 8
  %155 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %156 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %155, i32 0, i32 4
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 9
  %159 = load i32, i32* %158, align 4
  %160 = call i8* @cpu_to_be32(i32 %159)
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i64 0
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 11
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 4
  store i8* %160, i8** %167, align 8
  %168 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %169 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %168, i32 0, i32 4
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 10
  %172 = load i32, i32* %171, align 8
  %173 = call i8* @cpu_to_be32(i32 %172)
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i64 0
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 11
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 3
  store i8* %173, i8** %180, align 8
  %181 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %182 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %181, i32 0, i32 4
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 11
  %185 = load i32, i32* %184, align 4
  %186 = call i8* @cpu_to_be32(i32 %185)
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i64 0
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 11
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 2
  store i8* %186, i8** %193, align 8
  %194 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %195 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %194, i32 0, i32 4
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 12
  %198 = load i32, i32* %197, align 8
  %199 = call i8* @cpu_to_be32(i32 %198)
  %200 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i64 0
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 11
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 1
  store i8* %199, i8** %206, align 8
  %207 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %7, align 8
  %208 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = call i8* @cpu_to_be32(i32 %210)
  %212 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i64 0
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 11
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 0
  store i8* %211, i8** %218, align 8
  %219 = load i32, i32* @MC_CG_ARB_FREQ_F0, align 4
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 1
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i64 0
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i32 0, i32 10
  store i32 %219, i32* %225, align 8
  %226 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 1
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i64 0
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 9
  store i64 0, i64* %231, align 8
  %232 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %233 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %9, align 8
  %234 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %233, i32 0, i32 2
  %235 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %7, align 8
  %236 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 4
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 1
  %242 = load %struct.TYPE_15__*, %struct.TYPE_15__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i64 0
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 8
  %245 = call i32 @cypress_populate_voltage_value(%struct.radeon_device* %232, i32* %234, i32 %238, i32* %244)
  %246 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %9, align 8
  %247 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %265

250:                                              ; preds = %3
  %251 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %252 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %9, align 8
  %253 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %252, i32 0, i32 0
  %254 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %7, align 8
  %255 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %259, i32 0, i32 1
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i64 0
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i32 0, i32 7
  %264 = call i32 @cypress_populate_voltage_value(%struct.radeon_device* %251, i32* %253, i32 %257, i32* %263)
  br label %265

265:                                              ; preds = %250, %3
  %266 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %267 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %268, i32 0, i32 1
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i64 0
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %271, i32 0, i32 6
  %273 = call i32 @cypress_populate_initial_mvdd_value(%struct.radeon_device* %266, i32* %272)
  %274 = call i32 @CG_R(i32 65535)
  %275 = call i32 @CG_L(i32 0)
  %276 = or i32 %274, %275
  store i32 %276, i32* %10, align 4
  %277 = load i32, i32* %10, align 4
  %278 = call i8* @cpu_to_be32(i32 %277)
  %279 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %280, i32 0, i32 1
  %282 = load %struct.TYPE_15__*, %struct.TYPE_15__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %282, i64 0
  %284 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %283, i32 0, i32 5
  store i8* %278, i8** %284, align 8
  %285 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %286 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = call i8* @cpu_to_be32(i32 %287)
  %289 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %290, i32 0, i32 1
  %292 = load %struct.TYPE_15__*, %struct.TYPE_15__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %292, i64 0
  %294 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %293, i32 0, i32 4
  store i8* %288, i8** %294, align 8
  %295 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %296 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %295, i32 0, i32 3
  %297 = load i64, i64* %296, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %306

299:                                              ; preds = %265
  %300 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %301 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %301, i32 0, i32 1
  %303 = load %struct.TYPE_15__*, %struct.TYPE_15__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %303, i64 0
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %304, i32 0, i32 0
  store i32 1, i32* %305, align 8
  br label %313

306:                                              ; preds = %265
  %307 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %308 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %308, i32 0, i32 1
  %310 = load %struct.TYPE_15__*, %struct.TYPE_15__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %310, i64 0
  %312 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %311, i32 0, i32 0
  store i32 0, i32* %312, align 8
  br label %313

313:                                              ; preds = %306, %299
  %314 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %7, align 8
  %315 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* @ATOM_PPLIB_R600_FLAGS_PCIEGEN2, align 4
  %319 = and i32 %317, %318
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %328

321:                                              ; preds = %313
  %322 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %323 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %323, i32 0, i32 1
  %325 = load %struct.TYPE_15__*, %struct.TYPE_15__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %325, i64 0
  %327 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %326, i32 0, i32 1
  store i32 1, i32* %327, align 4
  br label %335

328:                                              ; preds = %313
  %329 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %330 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %330, i32 0, i32 1
  %332 = load %struct.TYPE_15__*, %struct.TYPE_15__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %332, i64 0
  %334 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %333, i32 0, i32 1
  store i32 0, i32* %334, align 4
  br label %335

335:                                              ; preds = %328, %321
  %336 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %337 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %336, i32 0, i32 2
  %338 = load i64, i64* %337, align 8
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %381

340:                                              ; preds = %335
  %341 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %342 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %7, align 8
  %343 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 4
  %346 = sext i32 %345 to i64
  %347 = call i32 @cypress_get_strobe_mode_settings(%struct.radeon_device* %341, i64 %346)
  %348 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %349 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %349, i32 0, i32 1
  %351 = load %struct.TYPE_15__*, %struct.TYPE_15__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %351, i64 0
  %353 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %352, i32 0, i32 3
  store i32 %347, i32* %353, align 4
  %354 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %7, align 8
  %355 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 4
  %358 = sext i32 %357 to i64
  %359 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %360 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %359, i32 0, i32 1
  %361 = load i64, i64* %360, align 8
  %362 = icmp sgt i64 %358, %361
  br i1 %362, label %363, label %373

363:                                              ; preds = %340
  %364 = load i32, i32* @SMC_MC_EDC_RD_FLAG, align 4
  %365 = load i32, i32* @SMC_MC_EDC_WR_FLAG, align 4
  %366 = or i32 %364, %365
  %367 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %368 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %368, i32 0, i32 1
  %370 = load %struct.TYPE_15__*, %struct.TYPE_15__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %370, i64 0
  %372 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %371, i32 0, i32 2
  store i32 %366, i32* %372, align 8
  br label %380

373:                                              ; preds = %340
  %374 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %375 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %375, i32 0, i32 1
  %377 = load %struct.TYPE_15__*, %struct.TYPE_15__** %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %377, i64 0
  %379 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %378, i32 0, i32 2
  store i32 0, i32* %379, align 8
  br label %380

380:                                              ; preds = %373, %363
  br label %381

381:                                              ; preds = %380, %335
  %382 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %383 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %383, i32 0, i32 1
  %385 = load %struct.TYPE_15__*, %struct.TYPE_15__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %385, i64 1
  %387 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %388 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %387, i32 0, i32 0
  %389 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %388, i32 0, i32 1
  %390 = load %struct.TYPE_15__*, %struct.TYPE_15__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %390, i64 0
  %392 = bitcast %struct.TYPE_15__* %386 to i8*
  %393 = bitcast %struct.TYPE_15__* %391 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %392, i8* align 8 %393, i64 184, i1 false)
  %394 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %395 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %395, i32 0, i32 1
  %397 = load %struct.TYPE_15__*, %struct.TYPE_15__** %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %397, i64 2
  %399 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %400 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %400, i32 0, i32 1
  %402 = load %struct.TYPE_15__*, %struct.TYPE_15__** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %402, i64 0
  %404 = bitcast %struct.TYPE_15__* %398 to i8*
  %405 = bitcast %struct.TYPE_15__* %403 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %404, i8* align 8 %405, i64 184, i1 false)
  %406 = load i32, i32* @PPSMC_SWSTATE_FLAG_DC, align 4
  %407 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %408 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %407, i32 0, i32 0
  %409 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 8
  %411 = or i32 %410, %406
  store i32 %411, i32* %409, align 8
  ret i32 0
}

declare dso_local %struct.rv7xx_ps* @rv770_get_ps(%struct.radeon_ps*) #1

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @cypress_populate_voltage_value(%struct.radeon_device*, i32*, i32, i32*) #1

declare dso_local i32 @cypress_populate_initial_mvdd_value(%struct.radeon_device*, i32*) #1

declare dso_local i32 @CG_R(i32) #1

declare dso_local i32 @CG_L(i32) #1

declare dso_local i32 @cypress_get_strobe_mode_settings(%struct.radeon_device*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
