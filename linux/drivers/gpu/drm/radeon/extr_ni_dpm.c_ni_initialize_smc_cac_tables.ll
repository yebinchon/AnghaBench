; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_initialize_smc_cac_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_initialize_smc_cac_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.rv7xx_power_info = type { i32 }
%struct.ni_power_info = type { i32, i32, i32, %struct.TYPE_13__, i64, i32, i32, %struct.TYPE_12__*, i64* }
%struct.TYPE_13__ = type { i32, i32, i64, i32, i32, i64, i64, i64, i64, i32 }
%struct.TYPE_12__ = type { i32, i32, i32*, i64*, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i64, i32, i32, i64, i8*, i8*, i8*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CG_CAC_CTRL = common dso_local global i32 0, align 4
@TID_CNT_MASK = common dso_local global i32 0, align 4
@TID_UNIT_MASK = common dso_local global i32 0, align 4
@NISLANDS_DCCAC_MAX_LEVELS = common dso_local global i32 0, align 4
@SMC_NISLANDS_BIF_LUT_NUM_OF_ENTRIES = common dso_local global i32 0, align 4
@NISLANDS_DCCAC_LEVEL_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @ni_initialize_smc_cac_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_initialize_smc_cac_tables(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.rv7xx_power_info*, align 8
  %5 = alloca %struct.ni_power_info*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %10 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %11 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %10)
  store %struct.rv7xx_power_info* %11, %struct.rv7xx_power_info** %4, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %13 = call %struct.ni_power_info* @ni_get_pi(%struct.radeon_device* %12)
  store %struct.ni_power_info* %13, %struct.ni_power_info** %5, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %6, align 8
  %14 = load %struct.ni_power_info*, %struct.ni_power_info** %5, align 8
  %15 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %253

19:                                               ; preds = %1
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.TYPE_14__* @kzalloc(i32 64, i32 %20)
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %6, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %23 = icmp ne %struct.TYPE_14__* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %253

27:                                               ; preds = %19
  %28 = load i32, i32* @CG_CAC_CTRL, align 4
  %29 = call i32 @RREG32(i32 %28)
  %30 = load i32, i32* @TID_CNT_MASK, align 4
  %31 = load i32, i32* @TID_UNIT_MASK, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = and i32 %29, %33
  store i32 %34, i32* %9, align 4
  %35 = load %struct.ni_power_info*, %struct.ni_power_info** %5, align 8
  %36 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %35, i32 0, i32 7
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @TID_CNT(i32 %39)
  %41 = load %struct.ni_power_info*, %struct.ni_power_info** %5, align 8
  %42 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %41, i32 0, i32 7
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @TID_UNIT(i32 %45)
  %47 = or i32 %40, %46
  %48 = load i32, i32* %9, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* @CG_CAC_CTRL, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @WREG32(i32 %50, i32 %51)
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %73, %27
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @NISLANDS_DCCAC_MAX_LEVELS, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %76

57:                                               ; preds = %53
  %58 = load %struct.ni_power_info*, %struct.ni_power_info** %5, align 8
  %59 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %58, i32 0, i32 7
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 3
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.ni_power_info*, %struct.ni_power_info** %5, align 8
  %68 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %67, i32 0, i32 8
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  store i64 %66, i64* %72, align 8
  br label %73

73:                                               ; preds = %57
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %53

76:                                               ; preds = %53
  store i32 0, i32* %7, align 4
  br label %77

77:                                               ; preds = %97, %76
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @SMC_NISLANDS_BIF_LUT_NUM_OF_ENTRIES, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %100

81:                                               ; preds = %77
  %82 = load %struct.ni_power_info*, %struct.ni_power_info** %5, align 8
  %83 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %82, i32 0, i32 7
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 9
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %90, i32* %96, align 4
  br label %97

97:                                               ; preds = %81
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %77

100:                                              ; preds = %77
  %101 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %102 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ni_power_info*, %struct.ni_power_info** %5, align 8
  %107 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 9
  store i32 %105, i32* %108, align 8
  %109 = load %struct.ni_power_info*, %struct.ni_power_info** %5, align 8
  %110 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 8
  store i64 0, i64* %111, align 8
  %112 = load %struct.ni_power_info*, %struct.ni_power_info** %5, align 8
  %113 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %112, i32 0, i32 8
  %114 = load i64*, i64** %113, align 8
  %115 = load i64, i64* @NISLANDS_DCCAC_LEVEL_0, align 8
  %116 = getelementptr inbounds i64, i64* %114, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.ni_power_info*, %struct.ni_power_info** %5, align 8
  %119 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 7
  store i64 %117, i64* %120, align 8
  %121 = load %struct.ni_power_info*, %struct.ni_power_info** %5, align 8
  %122 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 6
  store i64 0, i64* %123, align 8
  %124 = load %struct.ni_power_info*, %struct.ni_power_info** %5, align 8
  %125 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %124, i32 0, i32 7
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.ni_power_info*, %struct.ni_power_info** %5, align 8
  %130 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 4
  store i32 %128, i32* %131, align 4
  %132 = load %struct.ni_power_info*, %struct.ni_power_info** %5, align 8
  %133 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %132, i32 0, i32 7
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.ni_power_info*, %struct.ni_power_info** %5, align 8
  %138 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 3
  store i32 %136, i32* %139, align 8
  %140 = load %struct.ni_power_info*, %struct.ni_power_info** %5, align 8
  %141 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 5
  store i64 0, i64* %142, align 8
  %143 = load %struct.ni_power_info*, %struct.ni_power_info** %5, align 8
  %144 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.ni_power_info*, %struct.ni_power_info** %5, align 8
  %147 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 1
  store i32 %145, i32* %148, align 4
  %149 = load %struct.ni_power_info*, %struct.ni_power_info** %5, align 8
  %150 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 2
  store i64 0, i64* %151, align 8
  %152 = load %struct.ni_power_info*, %struct.ni_power_info** %5, align 8
  %153 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.ni_power_info*, %struct.ni_power_info** %5, align 8
  %156 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 0
  store i32 %154, i32* %157, align 8
  %158 = load %struct.ni_power_info*, %struct.ni_power_info** %5, align 8
  %159 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %158, i32 0, i32 4
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %100
  %163 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %165 = call i32 @ni_init_driver_calculated_leakage_table(%struct.radeon_device* %163, %struct.TYPE_14__* %164)
  store i32 %165, i32* %8, align 4
  br label %170

166:                                              ; preds = %100
  %167 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %169 = call i32 @ni_init_simplified_leakage_table(%struct.radeon_device* %167, %struct.TYPE_14__* %168)
  store i32 %169, i32* %8, align 4
  br label %170

170:                                              ; preds = %166, %162
  %171 = load i32, i32* %8, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %170
  br label %242

174:                                              ; preds = %170
  %175 = load %struct.ni_power_info*, %struct.ni_power_info** %5, align 8
  %176 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 8
  %178 = load i64, i64* %177, align 8
  %179 = call i8* @cpu_to_be32(i64 %178)
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 8
  store i8* %179, i8** %181, align 8
  %182 = load %struct.ni_power_info*, %struct.ni_power_info** %5, align 8
  %183 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 7
  %185 = load i64, i64* %184, align 8
  %186 = call i8* @cpu_to_be32(i64 %185)
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 7
  store i8* %186, i8** %188, align 8
  %189 = load %struct.ni_power_info*, %struct.ni_power_info** %5, align 8
  %190 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %189, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 6
  %192 = load i64, i64* %191, align 8
  %193 = call i8* @cpu_to_be32(i64 %192)
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 6
  store i8* %193, i8** %195, align 8
  %196 = load %struct.ni_power_info*, %struct.ni_power_info** %5, align 8
  %197 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %196, i32 0, i32 3
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 5
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 5
  store i64 %199, i64* %201, align 8
  %202 = load %struct.ni_power_info*, %struct.ni_power_info** %5, align 8
  %203 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %202, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 4
  store i32 %205, i32* %207, align 4
  %208 = load %struct.ni_power_info*, %struct.ni_power_info** %5, align 8
  %209 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %208, i32 0, i32 3
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 3
  store i32 %211, i32* %213, align 8
  %214 = load %struct.ni_power_info*, %struct.ni_power_info** %5, align 8
  %215 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %214, i32 0, i32 3
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 2
  store i64 %217, i64* %219, align 8
  %220 = load %struct.ni_power_info*, %struct.ni_power_info** %5, align 8
  %221 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %220, i32 0, i32 3
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 1
  store i32 %223, i32* %225, align 4
  %226 = load %struct.ni_power_info*, %struct.ni_power_info** %5, align 8
  %227 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %226, i32 0, i32 3
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 0
  store i32 %229, i32* %231, align 8
  %232 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %233 = load %struct.ni_power_info*, %struct.ni_power_info** %5, align 8
  %234 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %237 = bitcast %struct.TYPE_14__* %236 to i32*
  %238 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %239 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @rv770_copy_bytes_to_smc(%struct.radeon_device* %232, i32 %235, i32* %237, i32 64, i32 %240)
  store i32 %241, i32* %8, align 4
  br label %242

242:                                              ; preds = %174, %173
  %243 = load i32, i32* %8, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %250

245:                                              ; preds = %242
  %246 = load %struct.ni_power_info*, %struct.ni_power_info** %5, align 8
  %247 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %246, i32 0, i32 0
  store i32 0, i32* %247, align 8
  %248 = load %struct.ni_power_info*, %struct.ni_power_info** %5, align 8
  %249 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %248, i32 0, i32 1
  store i32 0, i32* %249, align 4
  br label %250

250:                                              ; preds = %245, %242
  %251 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %252 = call i32 @kfree(%struct.TYPE_14__* %251)
  store i32 0, i32* %2, align 4
  br label %253

253:                                              ; preds = %250, %24, %18
  %254 = load i32, i32* %2, align 4
  ret i32 %254
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.ni_power_info* @ni_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.TYPE_14__* @kzalloc(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @TID_CNT(i32) #1

declare dso_local i32 @TID_UNIT(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @ni_init_driver_calculated_leakage_table(%struct.radeon_device*, %struct.TYPE_14__*) #1

declare dso_local i32 @ni_init_simplified_leakage_table(%struct.radeon_device*, %struct.TYPE_14__*) #1

declare dso_local i8* @cpu_to_be32(i64) #1

declare dso_local i32 @rv770_copy_bytes_to_smc(%struct.radeon_device*, i32, i32*, i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
