; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_iceland_smumgr.c_iceland_initialize_mc_reg_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_iceland_smumgr.c_iceland_initialize_mc_reg_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, i64 }
%struct.iceland_smumgr = type { %struct.iceland_mc_reg_table }
%struct.iceland_mc_reg_table = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mmMC_SEQ_RAS_TIMING_LP = common dso_local global i32 0, align 4
@mmMC_SEQ_RAS_TIMING = common dso_local global i32 0, align 4
@mmMC_SEQ_CAS_TIMING_LP = common dso_local global i32 0, align 4
@mmMC_SEQ_CAS_TIMING = common dso_local global i32 0, align 4
@mmMC_SEQ_DLL_STBY_LP = common dso_local global i32 0, align 4
@mmMC_SEQ_DLL_STBY = common dso_local global i32 0, align 4
@mmMC_SEQ_G5PDX_CMD0_LP = common dso_local global i32 0, align 4
@mmMC_SEQ_G5PDX_CMD0 = common dso_local global i32 0, align 4
@mmMC_SEQ_G5PDX_CMD1_LP = common dso_local global i32 0, align 4
@mmMC_SEQ_G5PDX_CMD1 = common dso_local global i32 0, align 4
@mmMC_SEQ_G5PDX_CTRL_LP = common dso_local global i32 0, align 4
@mmMC_SEQ_G5PDX_CTRL = common dso_local global i32 0, align 4
@mmMC_SEQ_PMG_DVS_CMD_LP = common dso_local global i32 0, align 4
@mmMC_SEQ_PMG_DVS_CMD = common dso_local global i32 0, align 4
@mmMC_SEQ_PMG_DVS_CTL_LP = common dso_local global i32 0, align 4
@mmMC_SEQ_PMG_DVS_CTL = common dso_local global i32 0, align 4
@mmMC_SEQ_MISC_TIMING_LP = common dso_local global i32 0, align 4
@mmMC_SEQ_MISC_TIMING = common dso_local global i32 0, align 4
@mmMC_SEQ_MISC_TIMING2_LP = common dso_local global i32 0, align 4
@mmMC_SEQ_MISC_TIMING2 = common dso_local global i32 0, align 4
@mmMC_SEQ_PMG_CMD_EMRS_LP = common dso_local global i32 0, align 4
@mmMC_PMG_CMD_EMRS = common dso_local global i32 0, align 4
@mmMC_SEQ_PMG_CMD_MRS_LP = common dso_local global i32 0, align 4
@mmMC_PMG_CMD_MRS = common dso_local global i32 0, align 4
@mmMC_SEQ_PMG_CMD_MRS1_LP = common dso_local global i32 0, align 4
@mmMC_PMG_CMD_MRS1 = common dso_local global i32 0, align 4
@mmMC_SEQ_WR_CTL_D0_LP = common dso_local global i32 0, align 4
@mmMC_SEQ_WR_CTL_D0 = common dso_local global i32 0, align 4
@mmMC_SEQ_WR_CTL_D1_LP = common dso_local global i32 0, align 4
@mmMC_SEQ_WR_CTL_D1 = common dso_local global i32 0, align 4
@mmMC_SEQ_RD_CTL_D0_LP = common dso_local global i32 0, align 4
@mmMC_SEQ_RD_CTL_D0 = common dso_local global i32 0, align 4
@mmMC_SEQ_RD_CTL_D1_LP = common dso_local global i32 0, align 4
@mmMC_SEQ_RD_CTL_D1 = common dso_local global i32 0, align 4
@mmMC_SEQ_PMG_TIMING_LP = common dso_local global i32 0, align 4
@mmMC_SEQ_PMG_TIMING = common dso_local global i32 0, align 4
@mmMC_SEQ_PMG_CMD_MRS2_LP = common dso_local global i32 0, align 4
@mmMC_PMG_CMD_MRS2 = common dso_local global i32 0, align 4
@mmMC_SEQ_WR_CTL_2_LP = common dso_local global i32 0, align 4
@mmMC_SEQ_WR_CTL_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @iceland_initialize_mc_reg_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iceland_initialize_mc_reg_table(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iceland_smumgr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.iceland_mc_reg_table*, align 8
  %8 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %10 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.iceland_smumgr*
  store %struct.iceland_smumgr* %12, %struct.iceland_smumgr** %5, align 8
  %13 = load %struct.iceland_smumgr*, %struct.iceland_smumgr** %5, align 8
  %14 = getelementptr inbounds %struct.iceland_smumgr, %struct.iceland_smumgr* %13, i32 0, i32 0
  store %struct.iceland_mc_reg_table* %14, %struct.iceland_mc_reg_table** %7, align 8
  %15 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %16 = call i32 @iceland_get_memory_modile_index(%struct.pp_hwmgr* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32* @kzalloc(i32 4, i32 %17)
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = icmp eq i32* null, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %254

24:                                               ; preds = %1
  %25 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %26 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @mmMC_SEQ_RAS_TIMING_LP, align 4
  %29 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %30 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @mmMC_SEQ_RAS_TIMING, align 4
  %33 = call i32 @cgs_read_register(i32 %31, i32 %32)
  %34 = call i32 @cgs_write_register(i32 %27, i32 %28, i32 %33)
  %35 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %36 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @mmMC_SEQ_CAS_TIMING_LP, align 4
  %39 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %40 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @mmMC_SEQ_CAS_TIMING, align 4
  %43 = call i32 @cgs_read_register(i32 %41, i32 %42)
  %44 = call i32 @cgs_write_register(i32 %37, i32 %38, i32 %43)
  %45 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %46 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @mmMC_SEQ_DLL_STBY_LP, align 4
  %49 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %50 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @mmMC_SEQ_DLL_STBY, align 4
  %53 = call i32 @cgs_read_register(i32 %51, i32 %52)
  %54 = call i32 @cgs_write_register(i32 %47, i32 %48, i32 %53)
  %55 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %56 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @mmMC_SEQ_G5PDX_CMD0_LP, align 4
  %59 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %60 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @mmMC_SEQ_G5PDX_CMD0, align 4
  %63 = call i32 @cgs_read_register(i32 %61, i32 %62)
  %64 = call i32 @cgs_write_register(i32 %57, i32 %58, i32 %63)
  %65 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %66 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @mmMC_SEQ_G5PDX_CMD1_LP, align 4
  %69 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %70 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @mmMC_SEQ_G5PDX_CMD1, align 4
  %73 = call i32 @cgs_read_register(i32 %71, i32 %72)
  %74 = call i32 @cgs_write_register(i32 %67, i32 %68, i32 %73)
  %75 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %76 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @mmMC_SEQ_G5PDX_CTRL_LP, align 4
  %79 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %80 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @mmMC_SEQ_G5PDX_CTRL, align 4
  %83 = call i32 @cgs_read_register(i32 %81, i32 %82)
  %84 = call i32 @cgs_write_register(i32 %77, i32 %78, i32 %83)
  %85 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %86 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @mmMC_SEQ_PMG_DVS_CMD_LP, align 4
  %89 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %90 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @mmMC_SEQ_PMG_DVS_CMD, align 4
  %93 = call i32 @cgs_read_register(i32 %91, i32 %92)
  %94 = call i32 @cgs_write_register(i32 %87, i32 %88, i32 %93)
  %95 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %96 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @mmMC_SEQ_PMG_DVS_CTL_LP, align 4
  %99 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %100 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @mmMC_SEQ_PMG_DVS_CTL, align 4
  %103 = call i32 @cgs_read_register(i32 %101, i32 %102)
  %104 = call i32 @cgs_write_register(i32 %97, i32 %98, i32 %103)
  %105 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %106 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @mmMC_SEQ_MISC_TIMING_LP, align 4
  %109 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %110 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @mmMC_SEQ_MISC_TIMING, align 4
  %113 = call i32 @cgs_read_register(i32 %111, i32 %112)
  %114 = call i32 @cgs_write_register(i32 %107, i32 %108, i32 %113)
  %115 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %116 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @mmMC_SEQ_MISC_TIMING2_LP, align 4
  %119 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %120 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @mmMC_SEQ_MISC_TIMING2, align 4
  %123 = call i32 @cgs_read_register(i32 %121, i32 %122)
  %124 = call i32 @cgs_write_register(i32 %117, i32 %118, i32 %123)
  %125 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %126 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @mmMC_SEQ_PMG_CMD_EMRS_LP, align 4
  %129 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %130 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @mmMC_PMG_CMD_EMRS, align 4
  %133 = call i32 @cgs_read_register(i32 %131, i32 %132)
  %134 = call i32 @cgs_write_register(i32 %127, i32 %128, i32 %133)
  %135 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %136 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @mmMC_SEQ_PMG_CMD_MRS_LP, align 4
  %139 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %140 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @mmMC_PMG_CMD_MRS, align 4
  %143 = call i32 @cgs_read_register(i32 %141, i32 %142)
  %144 = call i32 @cgs_write_register(i32 %137, i32 %138, i32 %143)
  %145 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %146 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @mmMC_SEQ_PMG_CMD_MRS1_LP, align 4
  %149 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %150 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @mmMC_PMG_CMD_MRS1, align 4
  %153 = call i32 @cgs_read_register(i32 %151, i32 %152)
  %154 = call i32 @cgs_write_register(i32 %147, i32 %148, i32 %153)
  %155 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %156 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @mmMC_SEQ_WR_CTL_D0_LP, align 4
  %159 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %160 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @mmMC_SEQ_WR_CTL_D0, align 4
  %163 = call i32 @cgs_read_register(i32 %161, i32 %162)
  %164 = call i32 @cgs_write_register(i32 %157, i32 %158, i32 %163)
  %165 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %166 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @mmMC_SEQ_WR_CTL_D1_LP, align 4
  %169 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %170 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @mmMC_SEQ_WR_CTL_D1, align 4
  %173 = call i32 @cgs_read_register(i32 %171, i32 %172)
  %174 = call i32 @cgs_write_register(i32 %167, i32 %168, i32 %173)
  %175 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %176 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @mmMC_SEQ_RD_CTL_D0_LP, align 4
  %179 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %180 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @mmMC_SEQ_RD_CTL_D0, align 4
  %183 = call i32 @cgs_read_register(i32 %181, i32 %182)
  %184 = call i32 @cgs_write_register(i32 %177, i32 %178, i32 %183)
  %185 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %186 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @mmMC_SEQ_RD_CTL_D1_LP, align 4
  %189 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %190 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @mmMC_SEQ_RD_CTL_D1, align 4
  %193 = call i32 @cgs_read_register(i32 %191, i32 %192)
  %194 = call i32 @cgs_write_register(i32 %187, i32 %188, i32 %193)
  %195 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %196 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @mmMC_SEQ_PMG_TIMING_LP, align 4
  %199 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %200 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @mmMC_SEQ_PMG_TIMING, align 4
  %203 = call i32 @cgs_read_register(i32 %201, i32 %202)
  %204 = call i32 @cgs_write_register(i32 %197, i32 %198, i32 %203)
  %205 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %206 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @mmMC_SEQ_PMG_CMD_MRS2_LP, align 4
  %209 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %210 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @mmMC_PMG_CMD_MRS2, align 4
  %213 = call i32 @cgs_read_register(i32 %211, i32 %212)
  %214 = call i32 @cgs_write_register(i32 %207, i32 %208, i32 %213)
  %215 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %216 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @mmMC_SEQ_WR_CTL_2_LP, align 4
  %219 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %220 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @mmMC_SEQ_WR_CTL_2, align 4
  %223 = call i32 @cgs_read_register(i32 %221, i32 %222)
  %224 = call i32 @cgs_write_register(i32 %217, i32 %218, i32 %223)
  %225 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %226 = load i32, i32* %8, align 4
  %227 = load i32*, i32** %6, align 8
  %228 = call i32 @atomctrl_initialize_mc_reg_table(%struct.pp_hwmgr* %225, i32 %226, i32* %227)
  store i32 %228, i32* %4, align 4
  %229 = load i32, i32* %4, align 4
  %230 = icmp eq i32 0, %229
  br i1 %230, label %231, label %235

231:                                              ; preds = %24
  %232 = load i32*, i32** %6, align 8
  %233 = load %struct.iceland_mc_reg_table*, %struct.iceland_mc_reg_table** %7, align 8
  %234 = call i32 @iceland_copy_vbios_smc_reg_table(i32* %232, %struct.iceland_mc_reg_table* %233)
  store i32 %234, i32* %4, align 4
  br label %235

235:                                              ; preds = %231, %24
  %236 = load i32, i32* %4, align 4
  %237 = icmp eq i32 0, %236
  br i1 %237, label %238, label %244

238:                                              ; preds = %235
  %239 = load %struct.iceland_mc_reg_table*, %struct.iceland_mc_reg_table** %7, align 8
  %240 = call i32 @iceland_set_s0_mc_reg_index(%struct.iceland_mc_reg_table* %239)
  %241 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %242 = load %struct.iceland_mc_reg_table*, %struct.iceland_mc_reg_table** %7, align 8
  %243 = call i32 @iceland_set_mc_special_registers(%struct.pp_hwmgr* %241, %struct.iceland_mc_reg_table* %242)
  store i32 %243, i32* %4, align 4
  br label %244

244:                                              ; preds = %238, %235
  %245 = load i32, i32* %4, align 4
  %246 = icmp eq i32 0, %245
  br i1 %246, label %247, label %250

247:                                              ; preds = %244
  %248 = load %struct.iceland_mc_reg_table*, %struct.iceland_mc_reg_table** %7, align 8
  %249 = call i32 @iceland_set_valid_flag(%struct.iceland_mc_reg_table* %248)
  br label %250

250:                                              ; preds = %247, %244
  %251 = load i32*, i32** %6, align 8
  %252 = call i32 @kfree(i32* %251)
  %253 = load i32, i32* %4, align 4
  store i32 %253, i32* %2, align 4
  br label %254

254:                                              ; preds = %250, %21
  %255 = load i32, i32* %2, align 4
  ret i32 %255
}

declare dso_local i32 @iceland_get_memory_modile_index(%struct.pp_hwmgr*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @cgs_write_register(i32, i32, i32) #1

declare dso_local i32 @cgs_read_register(i32, i32) #1

declare dso_local i32 @atomctrl_initialize_mc_reg_table(%struct.pp_hwmgr*, i32, i32*) #1

declare dso_local i32 @iceland_copy_vbios_smc_reg_table(i32*, %struct.iceland_mc_reg_table*) #1

declare dso_local i32 @iceland_set_s0_mc_reg_index(%struct.iceland_mc_reg_table*) #1

declare dso_local i32 @iceland_set_mc_special_registers(%struct.pp_hwmgr*, %struct.iceland_mc_reg_table*) #1

declare dso_local i32 @iceland_set_valid_flag(%struct.iceland_mc_reg_table*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
