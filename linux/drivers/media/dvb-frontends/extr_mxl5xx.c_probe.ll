; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mxl5xx.c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mxl5xx.c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i8* }
%struct.mxl5xx_cfg = type { i32, i32, i32 }
%struct.MXL_HYDRA_MPEGOUT_PARAM_T = type { i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32 }

@ts_map1_to_1 = common dso_local global i8* null, align 8
@MXL_HYDRA_SKU_TYPE_581 = common dso_local global i32 0, align 4
@MXL_HYDRA_SKU_TYPE_582 = common dso_local global i32 0, align 4
@MXL_HYDRA_SKU_TYPE_585 = common dso_local global i32 0, align 4
@MXL_HYDRA_SKU_TYPE_544 = common dso_local global i32 0, align 4
@ts_map54x = common dso_local global i8* null, align 8
@MXL_HYDRA_SKU_TYPE_541 = common dso_local global i32 0, align 4
@MXL_HYDRA_SKU_TYPE_561 = common dso_local global i32 0, align 4
@MXL_HYDRA_SKU_TYPE_568 = common dso_local global i32 0, align 4
@MXL_HYDRA_SKU_TYPE_542 = common dso_local global i32 0, align 4
@MXL_HYDRA_SKU_TYPE_584 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Hydra chip version %u\0A\00", align 1
@MXL_ENABLE = common dso_local global i32 0, align 4
@MXL_HYDRA_MPEG_SERIAL_MSB_1ST = common dso_local global i32 0, align 4
@MXL_HYDRA_MPEG_CLK_PHASE_SHIFT_0_DEG = common dso_local global i32 0, align 4
@MXL_HYDRA_MPEG_CLK_IN_PHASE = common dso_local global i32 0, align 4
@MXL_HYDRA_MPEG_CLK_CONTINUOUS = common dso_local global i32 0, align 4
@MXL_HYDRA_MPEG_ERR_INDICATION_DISABLED = common dso_local global i32 0, align 4
@MXL_HYDRA_MPEG_MODE_SERIAL_3_WIRE = common dso_local global i32 0, align 4
@MXL_HYDRA_MPEG_ACTIVE_HIGH = common dso_local global i8* null, align 8
@MXL_HYDRA_MPEG_SYNC_WIDTH_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxl*, %struct.mxl5xx_cfg*)* @probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe(%struct.mxl* %0, %struct.mxl5xx_cfg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mxl*, align 8
  %5 = alloca %struct.mxl5xx_cfg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.MXL_HYDRA_MPEGOUT_PARAM_T, align 8
  store %struct.mxl* %0, %struct.mxl** %4, align 8
  store %struct.mxl5xx_cfg* %1, %struct.mxl5xx_cfg** %5, align 8
  %11 = load i8*, i8** @ts_map1_to_1, align 8
  %12 = load %struct.mxl*, %struct.mxl** %4, align 8
  %13 = getelementptr inbounds %struct.mxl, %struct.mxl* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 7
  store i8* %11, i8** %15, align 8
  %16 = load %struct.mxl*, %struct.mxl** %4, align 8
  %17 = getelementptr inbounds %struct.mxl, %struct.mxl* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %185 [
    i32 133, label %21
    i32 132, label %21
    i32 131, label %39
    i32 129, label %57
    i32 137, label %75
    i32 140, label %98
    i32 139, label %98
    i32 136, label %121
    i32 135, label %121
    i32 134, label %139
    i32 138, label %161
    i32 128, label %184
    i32 130, label %184
  ]

21:                                               ; preds = %2, %2
  %22 = load %struct.mxl*, %struct.mxl** %4, align 8
  %23 = getelementptr inbounds %struct.mxl, %struct.mxl* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  %26 = load %struct.mxl*, %struct.mxl** %4, align 8
  %27 = getelementptr inbounds %struct.mxl, %struct.mxl* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store i32 8, i32* %29, align 8
  %30 = load %struct.mxl*, %struct.mxl** %4, align 8
  %31 = getelementptr inbounds %struct.mxl, %struct.mxl* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  store i32 1, i32* %33, align 4
  %34 = load i32, i32* @MXL_HYDRA_SKU_TYPE_581, align 4
  %35 = load %struct.mxl*, %struct.mxl** %4, align 8
  %36 = getelementptr inbounds %struct.mxl, %struct.mxl* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 6
  store i32 %34, i32* %38, align 8
  br label %203

39:                                               ; preds = %2
  %40 = load %struct.mxl*, %struct.mxl** %4, align 8
  %41 = getelementptr inbounds %struct.mxl, %struct.mxl* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  %44 = load %struct.mxl*, %struct.mxl** %4, align 8
  %45 = getelementptr inbounds %struct.mxl, %struct.mxl* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  store i32 8, i32* %47, align 8
  %48 = load %struct.mxl*, %struct.mxl** %4, align 8
  %49 = getelementptr inbounds %struct.mxl, %struct.mxl* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 3
  store i32 3, i32* %51, align 4
  %52 = load i32, i32* @MXL_HYDRA_SKU_TYPE_582, align 4
  %53 = load %struct.mxl*, %struct.mxl** %4, align 8
  %54 = getelementptr inbounds %struct.mxl, %struct.mxl* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 6
  store i32 %52, i32* %56, align 8
  br label %203

57:                                               ; preds = %2
  %58 = load %struct.mxl*, %struct.mxl** %4, align 8
  %59 = getelementptr inbounds %struct.mxl, %struct.mxl* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i32 0, i32* %61, align 4
  %62 = load %struct.mxl*, %struct.mxl** %4, align 8
  %63 = getelementptr inbounds %struct.mxl, %struct.mxl* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  store i32 8, i32* %65, align 8
  %66 = load %struct.mxl*, %struct.mxl** %4, align 8
  %67 = getelementptr inbounds %struct.mxl, %struct.mxl* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 3
  store i32 4, i32* %69, align 4
  %70 = load i32, i32* @MXL_HYDRA_SKU_TYPE_585, align 4
  %71 = load %struct.mxl*, %struct.mxl** %4, align 8
  %72 = getelementptr inbounds %struct.mxl, %struct.mxl* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 6
  store i32 %70, i32* %74, align 8
  br label %203

75:                                               ; preds = %2
  %76 = load %struct.mxl*, %struct.mxl** %4, align 8
  %77 = getelementptr inbounds %struct.mxl, %struct.mxl* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  store i32 0, i32* %79, align 4
  %80 = load %struct.mxl*, %struct.mxl** %4, align 8
  %81 = getelementptr inbounds %struct.mxl, %struct.mxl* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 2
  store i32 4, i32* %83, align 8
  %84 = load %struct.mxl*, %struct.mxl** %4, align 8
  %85 = getelementptr inbounds %struct.mxl, %struct.mxl* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 3
  store i32 4, i32* %87, align 4
  %88 = load i32, i32* @MXL_HYDRA_SKU_TYPE_544, align 4
  %89 = load %struct.mxl*, %struct.mxl** %4, align 8
  %90 = getelementptr inbounds %struct.mxl, %struct.mxl* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 6
  store i32 %88, i32* %92, align 8
  %93 = load i8*, i8** @ts_map54x, align 8
  %94 = load %struct.mxl*, %struct.mxl** %4, align 8
  %95 = getelementptr inbounds %struct.mxl, %struct.mxl* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 7
  store i8* %93, i8** %97, align 8
  br label %203

98:                                               ; preds = %2, %2
  %99 = load %struct.mxl*, %struct.mxl** %4, align 8
  %100 = getelementptr inbounds %struct.mxl, %struct.mxl* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  store i32 0, i32* %102, align 4
  %103 = load %struct.mxl*, %struct.mxl** %4, align 8
  %104 = getelementptr inbounds %struct.mxl, %struct.mxl* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 2
  store i32 4, i32* %106, align 8
  %107 = load %struct.mxl*, %struct.mxl** %4, align 8
  %108 = getelementptr inbounds %struct.mxl, %struct.mxl* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 3
  store i32 1, i32* %110, align 4
  %111 = load i32, i32* @MXL_HYDRA_SKU_TYPE_541, align 4
  %112 = load %struct.mxl*, %struct.mxl** %4, align 8
  %113 = getelementptr inbounds %struct.mxl, %struct.mxl* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 6
  store i32 %111, i32* %115, align 8
  %116 = load i8*, i8** @ts_map54x, align 8
  %117 = load %struct.mxl*, %struct.mxl** %4, align 8
  %118 = getelementptr inbounds %struct.mxl, %struct.mxl* %117, i32 0, i32 0
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 7
  store i8* %116, i8** %120, align 8
  br label %203

121:                                              ; preds = %2, %2
  %122 = load %struct.mxl*, %struct.mxl** %4, align 8
  %123 = getelementptr inbounds %struct.mxl, %struct.mxl* %122, i32 0, i32 0
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  store i32 0, i32* %125, align 4
  %126 = load %struct.mxl*, %struct.mxl** %4, align 8
  %127 = getelementptr inbounds %struct.mxl, %struct.mxl* %126, i32 0, i32 0
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 2
  store i32 6, i32* %129, align 8
  %130 = load %struct.mxl*, %struct.mxl** %4, align 8
  %131 = getelementptr inbounds %struct.mxl, %struct.mxl* %130, i32 0, i32 0
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 3
  store i32 1, i32* %133, align 4
  %134 = load i32, i32* @MXL_HYDRA_SKU_TYPE_561, align 4
  %135 = load %struct.mxl*, %struct.mxl** %4, align 8
  %136 = getelementptr inbounds %struct.mxl, %struct.mxl* %135, i32 0, i32 0
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 6
  store i32 %134, i32* %138, align 8
  br label %203

139:                                              ; preds = %2
  %140 = load %struct.mxl*, %struct.mxl** %4, align 8
  %141 = getelementptr inbounds %struct.mxl, %struct.mxl* %140, i32 0, i32 0
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 1
  store i32 0, i32* %143, align 4
  %144 = load %struct.mxl*, %struct.mxl** %4, align 8
  %145 = getelementptr inbounds %struct.mxl, %struct.mxl* %144, i32 0, i32 0
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 2
  store i32 8, i32* %147, align 8
  %148 = load %struct.mxl*, %struct.mxl** %4, align 8
  %149 = getelementptr inbounds %struct.mxl, %struct.mxl* %148, i32 0, i32 0
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 3
  store i32 1, i32* %151, align 4
  %152 = load %struct.mxl*, %struct.mxl** %4, align 8
  %153 = getelementptr inbounds %struct.mxl, %struct.mxl* %152, i32 0, i32 0
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 4
  store i32 1, i32* %155, align 8
  %156 = load i32, i32* @MXL_HYDRA_SKU_TYPE_568, align 4
  %157 = load %struct.mxl*, %struct.mxl** %4, align 8
  %158 = getelementptr inbounds %struct.mxl, %struct.mxl* %157, i32 0, i32 0
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 6
  store i32 %156, i32* %160, align 8
  br label %203

161:                                              ; preds = %2
  %162 = load %struct.mxl*, %struct.mxl** %4, align 8
  %163 = getelementptr inbounds %struct.mxl, %struct.mxl* %162, i32 0, i32 0
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 1
  store i32 1, i32* %165, align 4
  %166 = load %struct.mxl*, %struct.mxl** %4, align 8
  %167 = getelementptr inbounds %struct.mxl, %struct.mxl* %166, i32 0, i32 0
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 2
  store i32 4, i32* %169, align 8
  %170 = load %struct.mxl*, %struct.mxl** %4, align 8
  %171 = getelementptr inbounds %struct.mxl, %struct.mxl* %170, i32 0, i32 0
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 3
  store i32 3, i32* %173, align 4
  %174 = load i32, i32* @MXL_HYDRA_SKU_TYPE_542, align 4
  %175 = load %struct.mxl*, %struct.mxl** %4, align 8
  %176 = getelementptr inbounds %struct.mxl, %struct.mxl* %175, i32 0, i32 0
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 6
  store i32 %174, i32* %178, align 8
  %179 = load i8*, i8** @ts_map54x, align 8
  %180 = load %struct.mxl*, %struct.mxl** %4, align 8
  %181 = getelementptr inbounds %struct.mxl, %struct.mxl* %180, i32 0, i32 0
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 7
  store i8* %179, i8** %183, align 8
  br label %203

184:                                              ; preds = %2, %2
  br label %185

185:                                              ; preds = %2, %184
  %186 = load %struct.mxl*, %struct.mxl** %4, align 8
  %187 = getelementptr inbounds %struct.mxl, %struct.mxl* %186, i32 0, i32 0
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 1
  store i32 0, i32* %189, align 4
  %190 = load %struct.mxl*, %struct.mxl** %4, align 8
  %191 = getelementptr inbounds %struct.mxl, %struct.mxl* %190, i32 0, i32 0
  %192 = load %struct.TYPE_2__*, %struct.TYPE_2__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 2
  store i32 8, i32* %193, align 8
  %194 = load %struct.mxl*, %struct.mxl** %4, align 8
  %195 = getelementptr inbounds %struct.mxl, %struct.mxl* %194, i32 0, i32 0
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 3
  store i32 4, i32* %197, align 4
  %198 = load i32, i32* @MXL_HYDRA_SKU_TYPE_584, align 4
  %199 = load %struct.mxl*, %struct.mxl** %4, align 8
  %200 = getelementptr inbounds %struct.mxl, %struct.mxl* %199, i32 0, i32 0
  %201 = load %struct.TYPE_2__*, %struct.TYPE_2__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 6
  store i32 %198, i32* %202, align 8
  br label %203

203:                                              ; preds = %185, %161, %139, %121, %98, %75, %57, %39, %21
  %204 = load %struct.mxl*, %struct.mxl** %4, align 8
  %205 = call i32 @validate_sku(%struct.mxl* %204)
  store i32 %205, i32* %8, align 4
  %206 = load i32, i32* %8, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %203
  %209 = load i32, i32* %8, align 4
  store i32 %209, i32* %3, align 4
  br label %324

210:                                              ; preds = %203
  %211 = load %struct.mxl*, %struct.mxl** %4, align 8
  %212 = call i32 @update_by_mnemonic(%struct.mxl* %211, i32 -2147287020, i32 9, i32 1, i32 1)
  %213 = load %struct.mxl*, %struct.mxl** %4, align 8
  %214 = call i32 @update_by_mnemonic(%struct.mxl* %213, i32 -2147286980, i32 12, i32 1, i32 1)
  %215 = load %struct.mxl*, %struct.mxl** %4, align 8
  %216 = call i32 @read_by_mnemonic(%struct.mxl* %215, i32 -2147287040, i32 12, i32 4, i32* %6)
  store i32 %216, i32* %8, align 4
  %217 = load i32, i32* %8, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %224

219:                                              ; preds = %210
  %220 = load %struct.mxl*, %struct.mxl** %4, align 8
  %221 = getelementptr inbounds %struct.mxl, %struct.mxl* %220, i32 0, i32 0
  %222 = load %struct.TYPE_2__*, %struct.TYPE_2__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 5
  store i32 0, i32* %223, align 4
  br label %233

224:                                              ; preds = %210
  %225 = load i32, i32* %6, align 4
  %226 = icmp eq i32 %225, 2
  %227 = zext i1 %226 to i64
  %228 = select i1 %226, i32 2, i32 1
  %229 = load %struct.mxl*, %struct.mxl** %4, align 8
  %230 = getelementptr inbounds %struct.mxl, %struct.mxl* %229, i32 0, i32 0
  %231 = load %struct.TYPE_2__*, %struct.TYPE_2__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 5
  store i32 %228, i32* %232, align 4
  br label %233

233:                                              ; preds = %224, %219
  %234 = load %struct.mxl*, %struct.mxl** %4, align 8
  %235 = getelementptr inbounds %struct.mxl, %struct.mxl* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.mxl*, %struct.mxl** %4, align 8
  %238 = getelementptr inbounds %struct.mxl, %struct.mxl* %237, i32 0, i32 0
  %239 = load %struct.TYPE_2__*, %struct.TYPE_2__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 5
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @dev_info(i32 %236, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %241)
  %243 = load %struct.mxl*, %struct.mxl** %4, align 8
  %244 = load %struct.mxl5xx_cfg*, %struct.mxl5xx_cfg** %5, align 8
  %245 = getelementptr inbounds %struct.mxl5xx_cfg, %struct.mxl5xx_cfg* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.mxl5xx_cfg*, %struct.mxl5xx_cfg** %5, align 8
  %248 = getelementptr inbounds %struct.mxl5xx_cfg, %struct.mxl5xx_cfg* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @cfg_dev_xtal(%struct.mxl* %243, i32 %246, i32 %249, i32 0)
  %251 = load %struct.mxl*, %struct.mxl** %4, align 8
  %252 = call i32 @firmware_is_alive(%struct.mxl* %251)
  store i32 %252, i32* %7, align 4
  %253 = load i32, i32* %7, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %264, label %255

255:                                              ; preds = %233
  %256 = load %struct.mxl*, %struct.mxl** %4, align 8
  %257 = load %struct.mxl5xx_cfg*, %struct.mxl5xx_cfg** %5, align 8
  %258 = call i32 @load_fw(%struct.mxl* %256, %struct.mxl5xx_cfg* %257)
  store i32 %258, i32* %8, align 4
  %259 = load i32, i32* %8, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %255
  %262 = load i32, i32* %8, align 4
  store i32 %262, i32* %3, align 4
  br label %324

263:                                              ; preds = %255
  br label %264

264:                                              ; preds = %263, %233
  %265 = load %struct.mxl*, %struct.mxl** %4, align 8
  %266 = call i32 @get_fwinfo(%struct.mxl* %265)
  %267 = load %struct.mxl*, %struct.mxl** %4, align 8
  %268 = call i32 @config_mux(%struct.mxl* %267)
  %269 = load i32, i32* @MXL_ENABLE, align 4
  %270 = getelementptr inbounds %struct.MXL_HYDRA_MPEGOUT_PARAM_T, %struct.MXL_HYDRA_MPEGOUT_PARAM_T* %10, i32 0, i32 10
  store i32 %269, i32* %270, align 8
  %271 = load i32, i32* @MXL_HYDRA_MPEG_SERIAL_MSB_1ST, align 4
  %272 = getelementptr inbounds %struct.MXL_HYDRA_MPEGOUT_PARAM_T, %struct.MXL_HYDRA_MPEGOUT_PARAM_T* %10, i32 0, i32 9
  store i32 %271, i32* %272, align 4
  %273 = load %struct.mxl5xx_cfg*, %struct.mxl5xx_cfg** %5, align 8
  %274 = getelementptr inbounds %struct.mxl5xx_cfg, %struct.mxl5xx_cfg* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %282

277:                                              ; preds = %264
  %278 = load %struct.mxl5xx_cfg*, %struct.mxl5xx_cfg** %5, align 8
  %279 = getelementptr inbounds %struct.mxl5xx_cfg, %struct.mxl5xx_cfg* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = getelementptr inbounds %struct.MXL_HYDRA_MPEGOUT_PARAM_T, %struct.MXL_HYDRA_MPEGOUT_PARAM_T* %10, i32 0, i32 0
  store i32 %280, i32* %281, align 8
  br label %284

282:                                              ; preds = %264
  %283 = getelementptr inbounds %struct.MXL_HYDRA_MPEGOUT_PARAM_T, %struct.MXL_HYDRA_MPEGOUT_PARAM_T* %10, i32 0, i32 0
  store i32 69, i32* %283, align 8
  br label %284

284:                                              ; preds = %282, %277
  %285 = load i32, i32* @MXL_HYDRA_MPEG_CLK_PHASE_SHIFT_0_DEG, align 4
  %286 = getelementptr inbounds %struct.MXL_HYDRA_MPEGOUT_PARAM_T, %struct.MXL_HYDRA_MPEGOUT_PARAM_T* %10, i32 0, i32 8
  store i32 %285, i32* %286, align 8
  %287 = load i32, i32* @MXL_HYDRA_MPEG_CLK_IN_PHASE, align 4
  %288 = getelementptr inbounds %struct.MXL_HYDRA_MPEGOUT_PARAM_T, %struct.MXL_HYDRA_MPEGOUT_PARAM_T* %10, i32 0, i32 7
  store i32 %287, i32* %288, align 4
  %289 = load i32, i32* @MXL_HYDRA_MPEG_CLK_CONTINUOUS, align 4
  %290 = getelementptr inbounds %struct.MXL_HYDRA_MPEGOUT_PARAM_T, %struct.MXL_HYDRA_MPEGOUT_PARAM_T* %10, i32 0, i32 6
  store i32 %289, i32* %290, align 8
  %291 = load i32, i32* @MXL_HYDRA_MPEG_ERR_INDICATION_DISABLED, align 4
  %292 = getelementptr inbounds %struct.MXL_HYDRA_MPEGOUT_PARAM_T, %struct.MXL_HYDRA_MPEGOUT_PARAM_T* %10, i32 0, i32 5
  store i32 %291, i32* %292, align 4
  %293 = load i32, i32* @MXL_HYDRA_MPEG_MODE_SERIAL_3_WIRE, align 4
  %294 = getelementptr inbounds %struct.MXL_HYDRA_MPEGOUT_PARAM_T, %struct.MXL_HYDRA_MPEGOUT_PARAM_T* %10, i32 0, i32 4
  store i32 %293, i32* %294, align 8
  %295 = load i8*, i8** @MXL_HYDRA_MPEG_ACTIVE_HIGH, align 8
  %296 = getelementptr inbounds %struct.MXL_HYDRA_MPEGOUT_PARAM_T, %struct.MXL_HYDRA_MPEGOUT_PARAM_T* %10, i32 0, i32 3
  store i8* %295, i8** %296, align 8
  %297 = load i32, i32* @MXL_HYDRA_MPEG_SYNC_WIDTH_BIT, align 4
  %298 = getelementptr inbounds %struct.MXL_HYDRA_MPEGOUT_PARAM_T, %struct.MXL_HYDRA_MPEGOUT_PARAM_T* %10, i32 0, i32 2
  store i32 %297, i32* %298, align 8
  %299 = load i8*, i8** @MXL_HYDRA_MPEG_ACTIVE_HIGH, align 8
  %300 = getelementptr inbounds %struct.MXL_HYDRA_MPEGOUT_PARAM_T, %struct.MXL_HYDRA_MPEGOUT_PARAM_T* %10, i32 0, i32 1
  store i8* %299, i8** %300, align 8
  store i32 0, i32* %9, align 4
  br label %301

301:                                              ; preds = %318, %284
  %302 = load i32, i32* %9, align 4
  %303 = load %struct.mxl*, %struct.mxl** %4, align 8
  %304 = getelementptr inbounds %struct.mxl, %struct.mxl* %303, i32 0, i32 0
  %305 = load %struct.TYPE_2__*, %struct.TYPE_2__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 8
  %308 = icmp slt i32 %302, %307
  br i1 %308, label %309, label %321

309:                                              ; preds = %301
  %310 = load %struct.mxl*, %struct.mxl** %4, align 8
  %311 = load i32, i32* %9, align 4
  %312 = call i32 @config_ts(%struct.mxl* %310, i32 %311, %struct.MXL_HYDRA_MPEGOUT_PARAM_T* %10)
  store i32 %312, i32* %8, align 4
  %313 = load i32, i32* %8, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %317

315:                                              ; preds = %309
  %316 = load i32, i32* %8, align 4
  store i32 %316, i32* %3, align 4
  br label %324

317:                                              ; preds = %309
  br label %318

318:                                              ; preds = %317
  %319 = load i32, i32* %9, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %9, align 4
  br label %301

321:                                              ; preds = %301
  %322 = load %struct.mxl*, %struct.mxl** %4, align 8
  %323 = call i32 @set_drive_strength(%struct.mxl* %322, i32 1)
  store i32 0, i32* %3, align 4
  br label %324

324:                                              ; preds = %321, %315, %261, %208
  %325 = load i32, i32* %3, align 4
  ret i32 %325
}

declare dso_local i32 @validate_sku(%struct.mxl*) #1

declare dso_local i32 @update_by_mnemonic(%struct.mxl*, i32, i32, i32, i32) #1

declare dso_local i32 @read_by_mnemonic(%struct.mxl*, i32, i32, i32, i32*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @cfg_dev_xtal(%struct.mxl*, i32, i32, i32) #1

declare dso_local i32 @firmware_is_alive(%struct.mxl*) #1

declare dso_local i32 @load_fw(%struct.mxl*, %struct.mxl5xx_cfg*) #1

declare dso_local i32 @get_fwinfo(%struct.mxl*) #1

declare dso_local i32 @config_mux(%struct.mxl*) #1

declare dso_local i32 @config_ts(%struct.mxl*, i32, %struct.MXL_HYDRA_MPEGOUT_PARAM_T*) #1

declare dso_local i32 @set_drive_strength(%struct.mxl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
