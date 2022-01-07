; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i5400_edac.c_i5400_get_mc_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i5400_edac.c_i5400_get_mc_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.i5400_pvt* }
%struct.i5400_pvt = type { i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@AMBASE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"AMBASE= 0x%lx  MAXCH= %d  MAX-DIMM-Per-CH= %d\0A\00", align 1
@TOLM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"\0ATOLM (number of 256M regions) =%u (0x%x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Actual TOLM byte addr=%u.%03u GB (0x%x)\0A\00", align 1
@MIR0 = common dso_local global i32 0, align 4
@MIR1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"MIR0: limit= 0x%x  WAY1= %u  WAY0= %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"MIR1: limit= 0x%x  WAY1= %u  WAY0= %x\0A\00", align 1
@DIMMS_PER_CHANNEL = common dso_local global i32 0, align 4
@MTR0 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"MTR%d where=0x%x B0 value=0x%x\0A\00", align 1
@CHANNELS_PER_BRANCH = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"MTR%d where=0x%x B1 value=0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Memory Technology Registers:\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"   Branch 0:\0A\00", align 1
@AMBPRESENT_0 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [31 x i8] c"\09\09AMB-Branch 0-present0 0x%x:\0A\00", align 1
@AMBPRESENT_1 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"\09\09AMB-Branch 0-present1 0x%x:\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"   Branch 1:\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"\09\09AMB-Branch 1-present0 0x%x:\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"\09\09AMB-Branch 1-present1 0x%x:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*)* @i5400_get_mc_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i5400_get_mc_regs(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca %struct.i5400_pvt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %12 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %13 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %12, i32 0, i32 0
  %14 = load %struct.i5400_pvt*, %struct.i5400_pvt** %13, align 8
  store %struct.i5400_pvt* %14, %struct.i5400_pvt** %3, align 8
  %15 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %16 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %15, i32 0, i32 16
  %17 = load i32, i32* %16, align 8
  %18 = load i64, i64* @AMBASE, align 8
  %19 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %20 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %19, i32 0, i32 15
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = call i32 @pci_read_config_dword(i32 %17, i64 %18, i32* %21)
  %23 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %24 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %23, i32 0, i32 16
  %25 = load i32, i32* %24, align 8
  %26 = load i64, i64* @AMBASE, align 8
  %27 = add i64 %26, 4
  %28 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %29 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %28, i32 0, i32 15
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @pci_read_config_dword(i32 %25, i64 %27, i32* %30)
  %32 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %33 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %8, align 4
  %35 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %36 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %7, align 4
  %38 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %39 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %38, i32 0, i32 14
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %42 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %45 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i32, i8*, ...) @edac_dbg(i32 2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %40, i32 %43, i32 %46)
  %48 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %49 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %48, i32 0, i32 13
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @TOLM, align 4
  %52 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %53 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %52, i32 0, i32 2
  %54 = call i32 @pci_read_config_word(i32 %50, i32 %51, i32* %53)
  %55 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %56 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = ashr i32 %57, 12
  store i32 %58, i32* %56, align 8
  %59 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %60 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %63 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 (i32, i8*, ...) @edac_dbg(i32 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %64)
  %66 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %67 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = mul nsw i64 1000, %69
  %71 = ashr i64 %70, 2
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = sdiv i32 %73, 1000
  %75 = load i32, i32* %4, align 4
  %76 = srem i32 %75, 1000
  %77 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %78 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = shl i32 %79, 28
  %81 = call i32 (i32, i8*, ...) @edac_dbg(i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %74, i32 %76, i32 %80)
  %82 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %83 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %82, i32 0, i32 13
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @MIR0, align 4
  %86 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %87 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %86, i32 0, i32 3
  %88 = call i32 @pci_read_config_word(i32 %84, i32 %85, i32* %87)
  %89 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %90 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %89, i32 0, i32 13
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @MIR1, align 4
  %93 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %94 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %93, i32 0, i32 4
  %95 = call i32 @pci_read_config_word(i32 %91, i32 %92, i32* %94)
  %96 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %97 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = ashr i32 %98, 4
  %100 = and i32 %99, 4095
  store i32 %100, i32* %5, align 4
  %101 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %102 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, 1
  store i32 %104, i32* %9, align 4
  %105 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %106 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, 2
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %9, align 4
  %112 = call i32 (i32, i8*, ...) @edac_dbg(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %109, i32 %110, i32 %111)
  %113 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %114 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = ashr i32 %115, 4
  %117 = and i32 %116, 4095
  store i32 %117, i32* %5, align 4
  %118 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %119 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = and i32 %120, 1
  store i32 %121, i32* %9, align 4
  %122 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %123 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = and i32 %124, 2
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %9, align 4
  %129 = call i32 (i32, i8*, ...) @edac_dbg(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %126, i32 %127, i32 %128)
  store i32 0, i32* %6, align 4
  br label %130

130:                                              ; preds = %197, %1
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* @DIMMS_PER_CHANNEL, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %200

134:                                              ; preds = %130
  %135 = load i32, i32* @MTR0, align 4
  %136 = sext i32 %135 to i64
  %137 = load i32, i32* %6, align 4
  %138 = sext i32 %137 to i64
  %139 = mul i64 %138, 4
  %140 = add i64 %136, %139
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %11, align 4
  %142 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %143 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %142, i32 0, i32 12
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %11, align 4
  %146 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %147 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %146, i32 0, i32 5
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %6, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = call i32 @pci_read_config_word(i32 %144, i32 %145, i32* %151)
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* %11, align 4
  %155 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %156 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %155, i32 0, i32 5
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %6, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = call i32 (i32, i8*, ...) @edac_dbg(i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %153, i32 %154, i32 %161)
  %163 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %164 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @CHANNELS_PER_BRANCH, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %175

168:                                              ; preds = %134
  %169 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %170 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %169, i32 0, i32 6
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %6, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  store i32 0, i32* %174, align 4
  br label %197

175:                                              ; preds = %134
  %176 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %177 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %176, i32 0, i32 11
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* %11, align 4
  %180 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %181 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %180, i32 0, i32 6
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %6, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = call i32 @pci_read_config_word(i32 %178, i32 %179, i32* %185)
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* %11, align 4
  %189 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %190 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %189, i32 0, i32 6
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %6, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = call i32 (i32, i8*, ...) @edac_dbg(i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %187, i32 %188, i32 %195)
  br label %197

197:                                              ; preds = %175, %168
  %198 = load i32, i32* %6, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %6, align 4
  br label %130

200:                                              ; preds = %130
  %201 = call i32 (i32, i8*, ...) @edac_dbg(i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %202 = call i32 (i32, i8*, ...) @edac_dbg(i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %203

203:                                              ; preds = %217, %200
  %204 = load i32, i32* %6, align 4
  %205 = load i32, i32* @DIMMS_PER_CHANNEL, align 4
  %206 = icmp slt i32 %204, %205
  br i1 %206, label %207, label %220

207:                                              ; preds = %203
  %208 = load i32, i32* %6, align 4
  %209 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %210 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %209, i32 0, i32 5
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %6, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @decode_mtr(i32 %208, i32 %215)
  br label %217

217:                                              ; preds = %207
  %218 = load i32, i32* %6, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %6, align 4
  br label %203

220:                                              ; preds = %203
  %221 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %222 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %221, i32 0, i32 12
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @AMBPRESENT_0, align 4
  %225 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %226 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %225, i32 0, i32 7
  %227 = call i32 @pci_read_config_word(i32 %223, i32 %224, i32* %226)
  %228 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %229 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %228, i32 0, i32 7
  %230 = load i32, i32* %229, align 8
  %231 = call i32 (i32, i8*, ...) @edac_dbg(i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %230)
  %232 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %233 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %232, i32 0, i32 12
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @AMBPRESENT_1, align 4
  %236 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %237 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %236, i32 0, i32 8
  %238 = call i32 @pci_read_config_word(i32 %234, i32 %235, i32* %237)
  %239 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %240 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %239, i32 0, i32 8
  %241 = load i32, i32* %240, align 4
  %242 = call i32 (i32, i8*, ...) @edac_dbg(i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %241)
  %243 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %244 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* @CHANNELS_PER_BRANCH, align 4
  %247 = icmp slt i32 %245, %246
  br i1 %247, label %248, label %253

248:                                              ; preds = %220
  %249 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %250 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %249, i32 0, i32 9
  store i32 0, i32* %250, align 8
  %251 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %252 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %251, i32 0, i32 10
  store i32 0, i32* %252, align 4
  br label %295

253:                                              ; preds = %220
  %254 = call i32 (i32, i8*, ...) @edac_dbg(i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %255

255:                                              ; preds = %269, %253
  %256 = load i32, i32* %6, align 4
  %257 = load i32, i32* @DIMMS_PER_CHANNEL, align 4
  %258 = icmp slt i32 %256, %257
  br i1 %258, label %259, label %272

259:                                              ; preds = %255
  %260 = load i32, i32* %6, align 4
  %261 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %262 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %261, i32 0, i32 6
  %263 = load i32*, i32** %262, align 8
  %264 = load i32, i32* %6, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @decode_mtr(i32 %260, i32 %267)
  br label %269

269:                                              ; preds = %259
  %270 = load i32, i32* %6, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %6, align 4
  br label %255

272:                                              ; preds = %255
  %273 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %274 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %273, i32 0, i32 11
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* @AMBPRESENT_0, align 4
  %277 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %278 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %277, i32 0, i32 9
  %279 = call i32 @pci_read_config_word(i32 %275, i32 %276, i32* %278)
  %280 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %281 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %280, i32 0, i32 9
  %282 = load i32, i32* %281, align 8
  %283 = call i32 (i32, i8*, ...) @edac_dbg(i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i32 %282)
  %284 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %285 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %284, i32 0, i32 11
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @AMBPRESENT_1, align 4
  %288 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %289 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %288, i32 0, i32 10
  %290 = call i32 @pci_read_config_word(i32 %286, i32 %287, i32* %289)
  %291 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %292 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %291, i32 0, i32 10
  %293 = load i32, i32* %292, align 4
  %294 = call i32 (i32, i8*, ...) @edac_dbg(i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i32 %293)
  br label %295

295:                                              ; preds = %272, %248
  %296 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %297 = call i32 @calculate_dimm_size(%struct.i5400_pvt* %296)
  ret void
}

declare dso_local i32 @pci_read_config_dword(i32, i64, i32*) #1

declare dso_local i32 @edac_dbg(i32, i8*, ...) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @decode_mtr(i32, i32) #1

declare dso_local i32 @calculate_dimm_size(%struct.i5400_pvt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
