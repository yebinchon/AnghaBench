; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_armada_xp_edac.c_axp_mc_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_armada_xp_edac.c_axp_mc_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, i32, %struct.axp_mc_drvdata* }
%struct.axp_mc_drvdata = type { i8*, i64 }

@SDRAM_ERR_DATA_H_REG = common dso_local global i64 0, align 8
@SDRAM_ERR_DATA_L_REG = common dso_local global i64 0, align 8
@SDRAM_ERR_RECV_ECC_REG = common dso_local global i64 0, align 8
@SDRAM_ERR_CALC_ECC_REG = common dso_local global i64 0, align 8
@SDRAM_ERR_ADDR_REG = common dso_local global i64 0, align 8
@SDRAM_ERR_SBE_COUNT_REG = common dso_local global i64 0, align 8
@SDRAM_ERR_DBE_COUNT_REG = common dso_local global i64 0, align 8
@SDRAM_ERR_CAUSE_ERR_REG = common dso_local global i64 0, align 8
@SDRAM_ERR_CAUSE_MSG_REG = common dso_local global i64 0, align 8
@SDRAM_ERR_CAUSE_DBE_MASK = common dso_local global i32 0, align 4
@SDRAM_ERR_CAUSE_SBE_MASK = common dso_local global i32 0, align 4
@SDRAM_ERR_ADDR_TYPE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"inconsistent SBE count detected\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"inconsistent DBE count detected\00", align 1
@HW_EVENT_ERR_CORRECTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"details unavailable (multiple errors)\00", align 1
@HW_EVENT_ERR_UNCORRECTED = common dso_local global i32 0, align 4
@SDRAM_ERR_ADDR_CS_MASK = common dso_local global i32 0, align 4
@SDRAM_ERR_ADDR_CS_OFFSET = common dso_local global i32 0, align 4
@SDRAM_ERR_ADDR_BANK_MASK = common dso_local global i32 0, align 4
@SDRAM_ERR_ADDR_BANK_OFFSET = common dso_local global i32 0, align 4
@SDRAM_ERR_CALC_ECC_ROW_MASK = common dso_local global i32 0, align 4
@SDRAM_ERR_CALC_ECC_ROW_OFFSET = common dso_local global i32 0, align 4
@SDRAM_ERR_ADDR_COL_MASK = common dso_local global i32 0, align 4
@SDRAM_ERR_ADDR_COL_OFFSET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"row=0x%04x \00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"bank=0x%x \00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"col=0x%04x \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"cs=%d\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*)* @axp_mc_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axp_mc_check(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca %struct.axp_mc_drvdata*, align 8
  %4 = alloca i32, align 4
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
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %20 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %21 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %20, i32 0, i32 2
  %22 = load %struct.axp_mc_drvdata*, %struct.axp_mc_drvdata** %21, align 8
  store %struct.axp_mc_drvdata* %22, %struct.axp_mc_drvdata** %3, align 8
  %23 = load %struct.axp_mc_drvdata*, %struct.axp_mc_drvdata** %3, align 8
  %24 = getelementptr inbounds %struct.axp_mc_drvdata, %struct.axp_mc_drvdata* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %19, align 8
  %26 = load %struct.axp_mc_drvdata*, %struct.axp_mc_drvdata** %3, align 8
  %27 = getelementptr inbounds %struct.axp_mc_drvdata, %struct.axp_mc_drvdata* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SDRAM_ERR_DATA_H_REG, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @readl(i64 %30)
  store i32 %31, i32* %4, align 4
  %32 = load %struct.axp_mc_drvdata*, %struct.axp_mc_drvdata** %3, align 8
  %33 = getelementptr inbounds %struct.axp_mc_drvdata, %struct.axp_mc_drvdata* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SDRAM_ERR_DATA_L_REG, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @readl(i64 %36)
  store i32 %37, i32* %5, align 4
  %38 = load %struct.axp_mc_drvdata*, %struct.axp_mc_drvdata** %3, align 8
  %39 = getelementptr inbounds %struct.axp_mc_drvdata, %struct.axp_mc_drvdata* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SDRAM_ERR_RECV_ECC_REG, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @readl(i64 %42)
  store i32 %43, i32* %6, align 4
  %44 = load %struct.axp_mc_drvdata*, %struct.axp_mc_drvdata** %3, align 8
  %45 = getelementptr inbounds %struct.axp_mc_drvdata, %struct.axp_mc_drvdata* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SDRAM_ERR_CALC_ECC_REG, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @readl(i64 %48)
  store i32 %49, i32* %7, align 4
  %50 = load %struct.axp_mc_drvdata*, %struct.axp_mc_drvdata** %3, align 8
  %51 = getelementptr inbounds %struct.axp_mc_drvdata, %struct.axp_mc_drvdata* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SDRAM_ERR_ADDR_REG, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @readl(i64 %54)
  store i32 %55, i32* %8, align 4
  %56 = load %struct.axp_mc_drvdata*, %struct.axp_mc_drvdata** %3, align 8
  %57 = getelementptr inbounds %struct.axp_mc_drvdata, %struct.axp_mc_drvdata* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @SDRAM_ERR_SBE_COUNT_REG, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @readl(i64 %60)
  store i32 %61, i32* %9, align 4
  %62 = load %struct.axp_mc_drvdata*, %struct.axp_mc_drvdata** %3, align 8
  %63 = getelementptr inbounds %struct.axp_mc_drvdata, %struct.axp_mc_drvdata* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @SDRAM_ERR_DBE_COUNT_REG, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @readl(i64 %66)
  store i32 %67, i32* %10, align 4
  %68 = load %struct.axp_mc_drvdata*, %struct.axp_mc_drvdata** %3, align 8
  %69 = getelementptr inbounds %struct.axp_mc_drvdata, %struct.axp_mc_drvdata* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @SDRAM_ERR_CAUSE_ERR_REG, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @readl(i64 %72)
  store i32 %73, i32* %11, align 4
  %74 = load %struct.axp_mc_drvdata*, %struct.axp_mc_drvdata** %3, align 8
  %75 = getelementptr inbounds %struct.axp_mc_drvdata, %struct.axp_mc_drvdata* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @SDRAM_ERR_CAUSE_MSG_REG, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @readl(i64 %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* @SDRAM_ERR_CAUSE_DBE_MASK, align 4
  %81 = load i32, i32* @SDRAM_ERR_CAUSE_SBE_MASK, align 4
  %82 = or i32 %80, %81
  %83 = xor i32 %82, -1
  %84 = load %struct.axp_mc_drvdata*, %struct.axp_mc_drvdata** %3, align 8
  %85 = getelementptr inbounds %struct.axp_mc_drvdata, %struct.axp_mc_drvdata* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @SDRAM_ERR_CAUSE_ERR_REG, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @writel(i32 %83, i64 %88)
  %90 = load i32, i32* @SDRAM_ERR_CAUSE_DBE_MASK, align 4
  %91 = load i32, i32* @SDRAM_ERR_CAUSE_SBE_MASK, align 4
  %92 = or i32 %90, %91
  %93 = xor i32 %92, -1
  %94 = load %struct.axp_mc_drvdata*, %struct.axp_mc_drvdata** %3, align 8
  %95 = getelementptr inbounds %struct.axp_mc_drvdata, %struct.axp_mc_drvdata* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @SDRAM_ERR_CAUSE_MSG_REG, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @writel(i32 %93, i64 %98)
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %1
  %103 = load %struct.axp_mc_drvdata*, %struct.axp_mc_drvdata** %3, align 8
  %104 = getelementptr inbounds %struct.axp_mc_drvdata, %struct.axp_mc_drvdata* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @SDRAM_ERR_SBE_COUNT_REG, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @writel(i32 0, i64 %107)
  br label %109

109:                                              ; preds = %102, %1
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = load %struct.axp_mc_drvdata*, %struct.axp_mc_drvdata** %3, align 8
  %114 = getelementptr inbounds %struct.axp_mc_drvdata, %struct.axp_mc_drvdata* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @SDRAM_ERR_DBE_COUNT_REG, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @writel(i32 0, i64 %117)
  br label %119

119:                                              ; preds = %112, %109
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %119
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %122
  br label %274

126:                                              ; preds = %122, %119
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* @SDRAM_ERR_ADDR_TYPE_MASK, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %143, label %131

131:                                              ; preds = %126
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load i32, i32* %9, align 4
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %9, align 4
  br label %142

137:                                              ; preds = %131
  %138 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %139 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @dev_warn(i32 %140, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %142

142:                                              ; preds = %137, %134
  br label %155

143:                                              ; preds = %126
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i32, i32* %10, align 4
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* %10, align 4
  br label %154

149:                                              ; preds = %143
  %150 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %151 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @dev_warn(i32 %152, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %154

154:                                              ; preds = %149, %146
  br label %155

155:                                              ; preds = %154, %142
  %156 = load i32, i32* %9, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %166

158:                                              ; preds = %155
  %159 = load i32, i32* @HW_EVENT_ERR_CORRECTED, align 4
  %160 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %161 = load i32, i32* %9, align 4
  %162 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %163 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @edac_mc_handle_error(i32 %159, %struct.mem_ctl_info* %160, i32 %161, i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 -1, i32 %164, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %166

166:                                              ; preds = %158, %155
  %167 = load i32, i32* %10, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %166
  %170 = load i32, i32* @HW_EVENT_ERR_UNCORRECTED, align 4
  %171 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %172 = load i32, i32* %9, align 4
  %173 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %174 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @edac_mc_handle_error(i32 %170, %struct.mem_ctl_info* %171, i32 %172, i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 -1, i32 %175, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %177

177:                                              ; preds = %169, %166
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* @SDRAM_ERR_ADDR_CS_MASK, align 4
  %180 = and i32 %178, %179
  %181 = load i32, i32* @SDRAM_ERR_ADDR_CS_OFFSET, align 4
  %182 = ashr i32 %180, %181
  store i32 %182, i32* %18, align 4
  %183 = load i32, i32* %8, align 4
  %184 = load i32, i32* @SDRAM_ERR_ADDR_BANK_MASK, align 4
  %185 = and i32 %183, %184
  %186 = load i32, i32* @SDRAM_ERR_ADDR_BANK_OFFSET, align 4
  %187 = ashr i32 %185, %186
  store i32 %187, i32* %15, align 4
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* @SDRAM_ERR_CALC_ECC_ROW_MASK, align 4
  %190 = and i32 %188, %189
  %191 = load i32, i32* @SDRAM_ERR_CALC_ECC_ROW_OFFSET, align 4
  %192 = ashr i32 %190, %191
  store i32 %192, i32* %13, align 4
  %193 = load i32, i32* %8, align 4
  %194 = load i32, i32* @SDRAM_ERR_ADDR_COL_MASK, align 4
  %195 = and i32 %193, %194
  %196 = load i32, i32* @SDRAM_ERR_ADDR_COL_OFFSET, align 4
  %197 = ashr i32 %195, %196
  store i32 %197, i32* %14, align 4
  %198 = load i32, i32* %6, align 4
  %199 = load i32, i32* %7, align 4
  %200 = xor i32 %198, %199
  %201 = and i32 %200, 255
  store i32 %201, i32* %17, align 4
  %202 = load %struct.axp_mc_drvdata*, %struct.axp_mc_drvdata** %3, align 8
  %203 = load i32, i32* %18, align 4
  %204 = load i32, i32* %15, align 4
  %205 = load i32, i32* %13, align 4
  %206 = load i32, i32* %14, align 4
  %207 = call i32 @axp_mc_calc_address(%struct.axp_mc_drvdata* %202, i32 %203, i32 %204, i32 %205, i32 %206)
  store i32 %207, i32* %16, align 4
  %208 = load i8*, i8** %19, align 8
  %209 = load i32, i32* %13, align 4
  %210 = call i32 @sprintf(i8* %208, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %209)
  %211 = load i8*, i8** %19, align 8
  %212 = sext i32 %210 to i64
  %213 = getelementptr inbounds i8, i8* %211, i64 %212
  store i8* %213, i8** %19, align 8
  %214 = load i8*, i8** %19, align 8
  %215 = load i32, i32* %15, align 4
  %216 = call i32 @sprintf(i8* %214, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %215)
  %217 = load i8*, i8** %19, align 8
  %218 = sext i32 %216 to i64
  %219 = getelementptr inbounds i8, i8* %217, i64 %218
  store i8* %219, i8** %19, align 8
  %220 = load i8*, i8** %19, align 8
  %221 = load i32, i32* %14, align 4
  %222 = call i32 @sprintf(i8* %220, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %221)
  %223 = load i8*, i8** %19, align 8
  %224 = sext i32 %222 to i64
  %225 = getelementptr inbounds i8, i8* %223, i64 %224
  store i8* %225, i8** %19, align 8
  %226 = load i8*, i8** %19, align 8
  %227 = load i32, i32* %18, align 4
  %228 = call i32 @sprintf(i8* %226, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %227)
  %229 = load i8*, i8** %19, align 8
  %230 = sext i32 %228 to i64
  %231 = getelementptr inbounds i8, i8* %229, i64 %230
  store i8* %231, i8** %19, align 8
  %232 = load i32, i32* %8, align 4
  %233 = load i32, i32* @SDRAM_ERR_ADDR_TYPE_MASK, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %255, label %236

236:                                              ; preds = %177
  %237 = load i32, i32* @HW_EVENT_ERR_CORRECTED, align 4
  %238 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %239 = load i32, i32* %16, align 4
  %240 = load i32, i32* @PAGE_SHIFT, align 4
  %241 = ashr i32 %239, %240
  %242 = load i32, i32* %16, align 4
  %243 = load i32, i32* @PAGE_MASK, align 4
  %244 = xor i32 %243, -1
  %245 = and i32 %242, %244
  %246 = load i32, i32* %17, align 4
  %247 = load i32, i32* %18, align 4
  %248 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %249 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.axp_mc_drvdata*, %struct.axp_mc_drvdata** %3, align 8
  %252 = getelementptr inbounds %struct.axp_mc_drvdata, %struct.axp_mc_drvdata* %251, i32 0, i32 0
  %253 = load i8*, i8** %252, align 8
  %254 = call i32 @edac_mc_handle_error(i32 %237, %struct.mem_ctl_info* %238, i32 1, i32 %241, i32 %245, i32 %246, i32 %247, i32 -1, i32 -1, i32 %250, i8* %253)
  br label %274

255:                                              ; preds = %177
  %256 = load i32, i32* @HW_EVENT_ERR_UNCORRECTED, align 4
  %257 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %258 = load i32, i32* %16, align 4
  %259 = load i32, i32* @PAGE_SHIFT, align 4
  %260 = ashr i32 %258, %259
  %261 = load i32, i32* %16, align 4
  %262 = load i32, i32* @PAGE_MASK, align 4
  %263 = xor i32 %262, -1
  %264 = and i32 %261, %263
  %265 = load i32, i32* %17, align 4
  %266 = load i32, i32* %18, align 4
  %267 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %268 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.axp_mc_drvdata*, %struct.axp_mc_drvdata** %3, align 8
  %271 = getelementptr inbounds %struct.axp_mc_drvdata, %struct.axp_mc_drvdata* %270, i32 0, i32 0
  %272 = load i8*, i8** %271, align 8
  %273 = call i32 @edac_mc_handle_error(i32 %256, %struct.mem_ctl_info* %257, i32 1, i32 %260, i32 %264, i32 %265, i32 %266, i32 -1, i32 -1, i32 %269, i8* %272)
  br label %274

274:                                              ; preds = %125, %255, %236
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @edac_mc_handle_error(i32, %struct.mem_ctl_info*, i32, i32, i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @axp_mc_calc_address(%struct.axp_mc_drvdata*, i32, i32, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
