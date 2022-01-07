; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_set_mc_reg_address_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_set_mc_reg_address_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.evergreen_power_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@MC_SEQ_RAS_TIMING_LP = common dso_local global i32 0, align 4
@MC_SEQ_RAS_TIMING = common dso_local global i32 0, align 4
@MC_SEQ_CAS_TIMING_LP = common dso_local global i32 0, align 4
@MC_SEQ_CAS_TIMING = common dso_local global i32 0, align 4
@MC_SEQ_MISC_TIMING_LP = common dso_local global i32 0, align 4
@MC_SEQ_MISC_TIMING = common dso_local global i32 0, align 4
@MC_SEQ_MISC_TIMING2_LP = common dso_local global i32 0, align 4
@MC_SEQ_MISC_TIMING2 = common dso_local global i32 0, align 4
@MC_SEQ_RD_CTL_D0_LP = common dso_local global i32 0, align 4
@MC_SEQ_RD_CTL_D0 = common dso_local global i32 0, align 4
@MC_SEQ_RD_CTL_D1_LP = common dso_local global i32 0, align 4
@MC_SEQ_RD_CTL_D1 = common dso_local global i32 0, align 4
@MC_SEQ_WR_CTL_D0_LP = common dso_local global i32 0, align 4
@MC_SEQ_WR_CTL_D0 = common dso_local global i32 0, align 4
@MC_SEQ_WR_CTL_D1_LP = common dso_local global i32 0, align 4
@MC_SEQ_WR_CTL_D1 = common dso_local global i32 0, align 4
@MC_SEQ_PMG_CMD_EMRS_LP = common dso_local global i32 0, align 4
@MC_PMG_CMD_EMRS = common dso_local global i32 0, align 4
@MC_SEQ_PMG_CMD_MRS_LP = common dso_local global i32 0, align 4
@MC_PMG_CMD_MRS = common dso_local global i32 0, align 4
@MC_SEQ_PMG_CMD_MRS1_LP = common dso_local global i32 0, align 4
@MC_PMG_CMD_MRS1 = common dso_local global i32 0, align 4
@MC_SEQ_MISC1 = common dso_local global i32 0, align 4
@MC_SEQ_RESERVE_M = common dso_local global i32 0, align 4
@MC_SEQ_MISC3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @cypress_set_mc_reg_address_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cypress_set_mc_reg_address_table(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.evergreen_power_info*, align 8
  %4 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %6 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %5)
  store %struct.evergreen_power_info* %6, %struct.evergreen_power_info** %3, align 8
  store i64 0, i64* %4, align 8
  %7 = load i32, i32* @MC_SEQ_RAS_TIMING_LP, align 4
  %8 = ashr i32 %7, 2
  %9 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %3, align 8
  %10 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = load i64, i64* %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 %8, i32* %15, align 4
  %16 = load i32, i32* @MC_SEQ_RAS_TIMING, align 4
  %17 = ashr i32 %16, 2
  %18 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %3, align 8
  %19 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store i32 %17, i32* %24, align 4
  %25 = load i64, i64* %4, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %4, align 8
  %27 = load i32, i32* @MC_SEQ_CAS_TIMING_LP, align 4
  %28 = ashr i32 %27, 2
  %29 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %3, align 8
  %30 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i64, i64* %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %28, i32* %35, align 4
  %36 = load i32, i32* @MC_SEQ_CAS_TIMING, align 4
  %37 = ashr i32 %36, 2
  %38 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %3, align 8
  %39 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i64, i64* %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i32 %37, i32* %44, align 4
  %45 = load i64, i64* %4, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %4, align 8
  %47 = load i32, i32* @MC_SEQ_MISC_TIMING_LP, align 4
  %48 = ashr i32 %47, 2
  %49 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %3, align 8
  %50 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i64, i64* %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 %48, i32* %55, align 4
  %56 = load i32, i32* @MC_SEQ_MISC_TIMING, align 4
  %57 = ashr i32 %56, 2
  %58 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %3, align 8
  %59 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = load i64, i64* %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  store i32 %57, i32* %64, align 4
  %65 = load i64, i64* %4, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %4, align 8
  %67 = load i32, i32* @MC_SEQ_MISC_TIMING2_LP, align 4
  %68 = ashr i32 %67, 2
  %69 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %3, align 8
  %70 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load i64, i64* %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i32 %68, i32* %75, align 4
  %76 = load i32, i32* @MC_SEQ_MISC_TIMING2, align 4
  %77 = ashr i32 %76, 2
  %78 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %3, align 8
  %79 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = load i64, i64* %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  store i32 %77, i32* %84, align 4
  %85 = load i64, i64* %4, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %4, align 8
  %87 = load i32, i32* @MC_SEQ_RD_CTL_D0_LP, align 4
  %88 = ashr i32 %87, 2
  %89 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %3, align 8
  %90 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = load i64, i64* %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  store i32 %88, i32* %95, align 4
  %96 = load i32, i32* @MC_SEQ_RD_CTL_D0, align 4
  %97 = ashr i32 %96, 2
  %98 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %3, align 8
  %99 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = load i64, i64* %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  store i32 %97, i32* %104, align 4
  %105 = load i64, i64* %4, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %4, align 8
  %107 = load i32, i32* @MC_SEQ_RD_CTL_D1_LP, align 4
  %108 = ashr i32 %107, 2
  %109 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %3, align 8
  %110 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = load i64, i64* %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  store i32 %108, i32* %115, align 4
  %116 = load i32, i32* @MC_SEQ_RD_CTL_D1, align 4
  %117 = ashr i32 %116, 2
  %118 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %3, align 8
  %119 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = load i64, i64* %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  store i32 %117, i32* %124, align 4
  %125 = load i64, i64* %4, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %4, align 8
  %127 = load i32, i32* @MC_SEQ_WR_CTL_D0_LP, align 4
  %128 = ashr i32 %127, 2
  %129 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %3, align 8
  %130 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %131, align 8
  %133 = load i64, i64* %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  store i32 %128, i32* %135, align 4
  %136 = load i32, i32* @MC_SEQ_WR_CTL_D0, align 4
  %137 = ashr i32 %136, 2
  %138 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %3, align 8
  %139 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = load i64, i64* %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 1
  store i32 %137, i32* %144, align 4
  %145 = load i64, i64* %4, align 8
  %146 = add i64 %145, 1
  store i64 %146, i64* %4, align 8
  %147 = load i32, i32* @MC_SEQ_WR_CTL_D1_LP, align 4
  %148 = ashr i32 %147, 2
  %149 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %3, align 8
  %150 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %151, align 8
  %153 = load i64, i64* %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  store i32 %148, i32* %155, align 4
  %156 = load i32, i32* @MC_SEQ_WR_CTL_D1, align 4
  %157 = ashr i32 %156, 2
  %158 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %3, align 8
  %159 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %160, align 8
  %162 = load i64, i64* %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 1
  store i32 %157, i32* %164, align 4
  %165 = load i64, i64* %4, align 8
  %166 = add i64 %165, 1
  store i64 %166, i64* %4, align 8
  %167 = load i32, i32* @MC_SEQ_PMG_CMD_EMRS_LP, align 4
  %168 = ashr i32 %167, 2
  %169 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %3, align 8
  %170 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %171, align 8
  %173 = load i64, i64* %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 0
  store i32 %168, i32* %175, align 4
  %176 = load i32, i32* @MC_PMG_CMD_EMRS, align 4
  %177 = ashr i32 %176, 2
  %178 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %3, align 8
  %179 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %180, align 8
  %182 = load i64, i64* %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 1
  store i32 %177, i32* %184, align 4
  %185 = load i64, i64* %4, align 8
  %186 = add i64 %185, 1
  store i64 %186, i64* %4, align 8
  %187 = load i32, i32* @MC_SEQ_PMG_CMD_MRS_LP, align 4
  %188 = ashr i32 %187, 2
  %189 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %3, align 8
  %190 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %191, align 8
  %193 = load i64, i64* %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 0
  store i32 %188, i32* %195, align 4
  %196 = load i32, i32* @MC_PMG_CMD_MRS, align 4
  %197 = ashr i32 %196, 2
  %198 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %3, align 8
  %199 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 1
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %200, align 8
  %202 = load i64, i64* %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 1
  store i32 %197, i32* %204, align 4
  %205 = load i64, i64* %4, align 8
  %206 = add i64 %205, 1
  store i64 %206, i64* %4, align 8
  %207 = load i32, i32* @MC_SEQ_PMG_CMD_MRS1_LP, align 4
  %208 = ashr i32 %207, 2
  %209 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %3, align 8
  %210 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %211, align 8
  %213 = load i64, i64* %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 0
  store i32 %208, i32* %215, align 4
  %216 = load i32, i32* @MC_PMG_CMD_MRS1, align 4
  %217 = ashr i32 %216, 2
  %218 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %3, align 8
  %219 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 1
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %220, align 8
  %222 = load i64, i64* %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 1
  store i32 %217, i32* %224, align 4
  %225 = load i64, i64* %4, align 8
  %226 = add i64 %225, 1
  store i64 %226, i64* %4, align 8
  %227 = load i32, i32* @MC_SEQ_MISC1, align 4
  %228 = ashr i32 %227, 2
  %229 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %3, align 8
  %230 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 1
  %232 = load %struct.TYPE_3__*, %struct.TYPE_3__** %231, align 8
  %233 = load i64, i64* %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 0
  store i32 %228, i32* %235, align 4
  %236 = load i32, i32* @MC_SEQ_MISC1, align 4
  %237 = ashr i32 %236, 2
  %238 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %3, align 8
  %239 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 1
  %241 = load %struct.TYPE_3__*, %struct.TYPE_3__** %240, align 8
  %242 = load i64, i64* %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i32 0, i32 1
  store i32 %237, i32* %244, align 4
  %245 = load i64, i64* %4, align 8
  %246 = add i64 %245, 1
  store i64 %246, i64* %4, align 8
  %247 = load i32, i32* @MC_SEQ_RESERVE_M, align 4
  %248 = ashr i32 %247, 2
  %249 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %3, align 8
  %250 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 1
  %252 = load %struct.TYPE_3__*, %struct.TYPE_3__** %251, align 8
  %253 = load i64, i64* %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %252, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 0
  store i32 %248, i32* %255, align 4
  %256 = load i32, i32* @MC_SEQ_RESERVE_M, align 4
  %257 = ashr i32 %256, 2
  %258 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %3, align 8
  %259 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 1
  %261 = load %struct.TYPE_3__*, %struct.TYPE_3__** %260, align 8
  %262 = load i64, i64* %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 1
  store i32 %257, i32* %264, align 4
  %265 = load i64, i64* %4, align 8
  %266 = add i64 %265, 1
  store i64 %266, i64* %4, align 8
  %267 = load i32, i32* @MC_SEQ_MISC3, align 4
  %268 = ashr i32 %267, 2
  %269 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %3, align 8
  %270 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 1
  %272 = load %struct.TYPE_3__*, %struct.TYPE_3__** %271, align 8
  %273 = load i64, i64* %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %272, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %274, i32 0, i32 0
  store i32 %268, i32* %275, align 4
  %276 = load i32, i32* @MC_SEQ_MISC3, align 4
  %277 = ashr i32 %276, 2
  %278 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %3, align 8
  %279 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i32 0, i32 1
  %281 = load %struct.TYPE_3__*, %struct.TYPE_3__** %280, align 8
  %282 = load i64, i64* %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %281, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %283, i32 0, i32 1
  store i32 %277, i32* %284, align 4
  %285 = load i64, i64* %4, align 8
  %286 = add i64 %285, 1
  store i64 %286, i64* %4, align 8
  %287 = load i64, i64* %4, align 8
  %288 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %3, align 8
  %289 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i32 0, i32 0
  store i64 %287, i64* %290, align 8
  ret void
}

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
