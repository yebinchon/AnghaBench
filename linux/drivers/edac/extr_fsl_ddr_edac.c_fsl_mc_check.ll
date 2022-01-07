; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_fsl_ddr_edac.c_fsl_mc_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_fsl_ddr_edac.c_fsl_mc_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, i32, %struct.csrow_info**, %struct.fsl_mc_pdata* }
%struct.csrow_info = type { i32, i32 }
%struct.fsl_mc_pdata = type { i64 }

@FSL_MC_ERR_DETECT = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Err Detect Register: %#8.8x\0A\00", align 1
@DDR_EDE_SBE = common dso_local global i32 0, align 4
@DDR_EDE_MBE = common dso_local global i32 0, align 4
@FSL_MC_CAPTURE_ECC = common dso_local global i64 0, align 8
@FSL_MC_DDR_SDRAM_CFG = common dso_local global i64 0, align 8
@DSC_DBW_MASK = common dso_local global i32 0, align 4
@FSL_MC_CAPTURE_EXT_ADDRESS = common dso_local global i64 0, align 8
@FSL_MC_CAPTURE_ADDRESS = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@FSL_MC_CAPTURE_DATA_HI = common dso_local global i64 0, align 8
@FSL_MC_CAPTURE_DATA_LO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Faulty Data bit: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Faulty ECC bit: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Expected Data / ECC:\09%#8.8x_%08x / %#2.2x\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Captured Data / ECC:\09%#8.8x_%08x / %#2.2x\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Err addr: %#8.8llx\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"PFN: %#8.8x\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"PFN out of range!\0A\00", align 1
@HW_EVENT_ERR_CORRECTED = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HW_EVENT_ERR_UNCORRECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*)* @fsl_mc_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_mc_check(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca %struct.fsl_mc_pdata*, align 8
  %4 = alloca %struct.csrow_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %15 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %16 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %15, i32 0, i32 3
  %17 = load %struct.fsl_mc_pdata*, %struct.fsl_mc_pdata** %16, align 8
  store %struct.fsl_mc_pdata* %17, %struct.fsl_mc_pdata** %3, align 8
  %18 = load %struct.fsl_mc_pdata*, %struct.fsl_mc_pdata** %3, align 8
  %19 = getelementptr inbounds %struct.fsl_mc_pdata, %struct.fsl_mc_pdata* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @FSL_MC_ERR_DETECT, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @ddr_in32(i64 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  br label %246

27:                                               ; preds = %1
  %28 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %29 = load i32, i32* @KERN_ERR, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 (%struct.mem_ctl_info*, i32, i8*, ...) @fsl_mc_printk(%struct.mem_ctl_info* %28, i32 %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @DDR_EDE_SBE, align 4
  %34 = load i32, i32* @DDR_EDE_MBE, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %27
  %39 = load %struct.fsl_mc_pdata*, %struct.fsl_mc_pdata** %3, align 8
  %40 = getelementptr inbounds %struct.fsl_mc_pdata, %struct.fsl_mc_pdata* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @FSL_MC_ERR_DETECT, align 8
  %43 = add nsw i64 %41, %42
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @ddr_out32(i64 %43, i32 %44)
  br label %246

46:                                               ; preds = %27
  %47 = load %struct.fsl_mc_pdata*, %struct.fsl_mc_pdata** %3, align 8
  %48 = getelementptr inbounds %struct.fsl_mc_pdata, %struct.fsl_mc_pdata* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @FSL_MC_CAPTURE_ECC, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @ddr_in32(i64 %51)
  store i32 %52, i32* %7, align 4
  %53 = load %struct.fsl_mc_pdata*, %struct.fsl_mc_pdata** %3, align 8
  %54 = getelementptr inbounds %struct.fsl_mc_pdata, %struct.fsl_mc_pdata* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @FSL_MC_DDR_SDRAM_CFG, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @ddr_in32(i64 %57)
  %59 = load i32, i32* @DSC_DBW_MASK, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 32, i32 64
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp eq i32 %64, 64
  br i1 %65, label %66, label %69

66:                                               ; preds = %46
  %67 = load i32, i32* %7, align 4
  %68 = and i32 %67, 255
  store i32 %68, i32* %7, align 4
  br label %72

69:                                               ; preds = %46
  %70 = load i32, i32* %7, align 4
  %71 = and i32 %70, 65535
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %69, %66
  %73 = load %struct.fsl_mc_pdata*, %struct.fsl_mc_pdata** %3, align 8
  %74 = getelementptr inbounds %struct.fsl_mc_pdata, %struct.fsl_mc_pdata* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @FSL_MC_CAPTURE_EXT_ADDRESS, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @ddr_in32(i64 %77)
  %79 = load %struct.fsl_mc_pdata*, %struct.fsl_mc_pdata** %3, align 8
  %80 = getelementptr inbounds %struct.fsl_mc_pdata, %struct.fsl_mc_pdata* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @FSL_MC_CAPTURE_ADDRESS, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @ddr_in32(i64 %83)
  %85 = call i32 @make64(i32 %78, i32 %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @PAGE_SHIFT, align 4
  %88 = ashr i32 %86, %87
  store i32 %88, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %89

89:                                               ; preds = %116, %72
  %90 = load i32, i32* %10, align 4
  %91 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %92 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %119

95:                                               ; preds = %89
  %96 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %97 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %96, i32 0, i32 2
  %98 = load %struct.csrow_info**, %struct.csrow_info*** %97, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.csrow_info*, %struct.csrow_info** %98, i64 %100
  %102 = load %struct.csrow_info*, %struct.csrow_info** %101, align 8
  store %struct.csrow_info* %102, %struct.csrow_info** %4, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %105 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp sge i32 %103, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %95
  %109 = load i32, i32* %9, align 4
  %110 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %111 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp sle i32 %109, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %119

115:                                              ; preds = %108, %95
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %10, align 4
  br label %89

119:                                              ; preds = %114, %89
  %120 = load %struct.fsl_mc_pdata*, %struct.fsl_mc_pdata** %3, align 8
  %121 = getelementptr inbounds %struct.fsl_mc_pdata, %struct.fsl_mc_pdata* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @FSL_MC_CAPTURE_DATA_HI, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i32 @ddr_in32(i64 %124)
  store i32 %125, i32* %11, align 4
  %126 = load %struct.fsl_mc_pdata*, %struct.fsl_mc_pdata** %3, align 8
  %127 = getelementptr inbounds %struct.fsl_mc_pdata, %struct.fsl_mc_pdata* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @FSL_MC_CAPTURE_DATA_LO, align 8
  %130 = add nsw i64 %128, %129
  %131 = call i32 @ddr_in32(i64 %130)
  store i32 %131, i32* %12, align 4
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* @DDR_EDE_SBE, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %176

136:                                              ; preds = %119
  %137 = load i32, i32* %5, align 4
  %138 = icmp eq i32 %137, 64
  br i1 %138, label %139, label %176

139:                                              ; preds = %136
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* %7, align 4
  %143 = call i32 @sbe_ecc_decode(i32 %140, i32 %141, i32 %142, i32* %13, i32* %14)
  %144 = load i32, i32* %13, align 4
  %145 = icmp ne i32 %144, -1
  br i1 %145, label %146, label %151

146:                                              ; preds = %139
  %147 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %148 = load i32, i32* @KERN_ERR, align 4
  %149 = load i32, i32* %13, align 4
  %150 = call i32 (%struct.mem_ctl_info*, i32, i8*, ...) @fsl_mc_printk(%struct.mem_ctl_info* %147, i32 %148, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %149)
  br label %151

151:                                              ; preds = %146, %139
  %152 = load i32, i32* %14, align 4
  %153 = icmp ne i32 %152, -1
  br i1 %153, label %154, label %159

154:                                              ; preds = %151
  %155 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %156 = load i32, i32* @KERN_ERR, align 4
  %157 = load i32, i32* %14, align 4
  %158 = call i32 (%struct.mem_ctl_info*, i32, i8*, ...) @fsl_mc_printk(%struct.mem_ctl_info* %155, i32 %156, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %157)
  br label %159

159:                                              ; preds = %154, %151
  %160 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %161 = load i32, i32* @KERN_ERR, align 4
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* %13, align 4
  %164 = sub nsw i32 %163, 32
  %165 = shl i32 1, %164
  %166 = xor i32 %162, %165
  %167 = load i32, i32* %12, align 4
  %168 = load i32, i32* %13, align 4
  %169 = shl i32 1, %168
  %170 = xor i32 %167, %169
  %171 = load i32, i32* %7, align 4
  %172 = load i32, i32* %14, align 4
  %173 = shl i32 1, %172
  %174 = xor i32 %171, %173
  %175 = call i32 (%struct.mem_ctl_info*, i32, i8*, ...) @fsl_mc_printk(%struct.mem_ctl_info* %160, i32 %161, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %166, i32 %170, i32 %174)
  br label %176

176:                                              ; preds = %159, %136, %119
  %177 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %178 = load i32, i32* @KERN_ERR, align 4
  %179 = load i32, i32* %11, align 4
  %180 = load i32, i32* %12, align 4
  %181 = load i32, i32* %7, align 4
  %182 = call i32 (%struct.mem_ctl_info*, i32, i8*, ...) @fsl_mc_printk(%struct.mem_ctl_info* %177, i32 %178, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %179, i32 %180, i32 %181)
  %183 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %184 = load i32, i32* @KERN_ERR, align 4
  %185 = load i32, i32* %8, align 4
  %186 = call i32 (%struct.mem_ctl_info*, i32, i8*, ...) @fsl_mc_printk(%struct.mem_ctl_info* %183, i32 %184, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %185)
  %187 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %188 = load i32, i32* @KERN_ERR, align 4
  %189 = load i32, i32* %9, align 4
  %190 = call i32 (%struct.mem_ctl_info*, i32, i8*, ...) @fsl_mc_printk(%struct.mem_ctl_info* %187, i32 %188, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %189)
  %191 = load i32, i32* %10, align 4
  %192 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %193 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp eq i32 %191, %194
  br i1 %195, label %196, label %200

196:                                              ; preds = %176
  %197 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %198 = load i32, i32* @KERN_ERR, align 4
  %199 = call i32 (%struct.mem_ctl_info*, i32, i8*, ...) @fsl_mc_printk(%struct.mem_ctl_info* %197, i32 %198, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  br label %200

200:                                              ; preds = %196, %176
  %201 = load i32, i32* %6, align 4
  %202 = load i32, i32* @DDR_EDE_SBE, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %219

205:                                              ; preds = %200
  %206 = load i32, i32* @HW_EVENT_ERR_CORRECTED, align 4
  %207 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %208 = load i32, i32* %9, align 4
  %209 = load i32, i32* %8, align 4
  %210 = load i32, i32* @PAGE_MASK, align 4
  %211 = xor i32 %210, -1
  %212 = and i32 %209, %211
  %213 = load i32, i32* %7, align 4
  %214 = load i32, i32* %10, align 4
  %215 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %216 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @edac_mc_handle_error(i32 %206, %struct.mem_ctl_info* %207, i32 1, i32 %208, i32 %212, i32 %213, i32 %214, i32 0, i32 -1, i32 %217, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0))
  br label %219

219:                                              ; preds = %205, %200
  %220 = load i32, i32* %6, align 4
  %221 = load i32, i32* @DDR_EDE_MBE, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %238

224:                                              ; preds = %219
  %225 = load i32, i32* @HW_EVENT_ERR_UNCORRECTED, align 4
  %226 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %227 = load i32, i32* %9, align 4
  %228 = load i32, i32* %8, align 4
  %229 = load i32, i32* @PAGE_MASK, align 4
  %230 = xor i32 %229, -1
  %231 = and i32 %228, %230
  %232 = load i32, i32* %7, align 4
  %233 = load i32, i32* %10, align 4
  %234 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %235 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @edac_mc_handle_error(i32 %225, %struct.mem_ctl_info* %226, i32 1, i32 %227, i32 %231, i32 %232, i32 %233, i32 0, i32 -1, i32 %236, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0))
  br label %238

238:                                              ; preds = %224, %219
  %239 = load %struct.fsl_mc_pdata*, %struct.fsl_mc_pdata** %3, align 8
  %240 = getelementptr inbounds %struct.fsl_mc_pdata, %struct.fsl_mc_pdata* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @FSL_MC_ERR_DETECT, align 8
  %243 = add nsw i64 %241, %242
  %244 = load i32, i32* %6, align 4
  %245 = call i32 @ddr_out32(i64 %243, i32 %244)
  br label %246

246:                                              ; preds = %238, %38, %26
  ret void
}

declare dso_local i32 @ddr_in32(i64) #1

declare dso_local i32 @fsl_mc_printk(%struct.mem_ctl_info*, i32, i8*, ...) #1

declare dso_local i32 @ddr_out32(i64, i32) #1

declare dso_local i32 @make64(i32, i32) #1

declare dso_local i32 @sbe_ecc_decode(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @edac_mc_handle_error(i32, %struct.mem_ctl_info*, i32, i32, i32, i32, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
