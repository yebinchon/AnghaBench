; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i5000_edac.c_i5000_get_mc_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i5000_edac.c_i5000_get_mc_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.i5000_pvt* }
%struct.i5000_pvt = type { i64, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@AMBASE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"AMBASE= 0x%lx  MAXCH= %d  MAX-DIMM-Per-CH= %d\0A\00", align 1
@TOLM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"TOLM (number of 256M regions) =%u (0x%x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Actual TOLM byte addr=%u (0x%x)\0A\00", align 1
@MIR0 = common dso_local global i32 0, align 4
@MIR1 = common dso_local global i32 0, align 4
@MIR2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"MIR0: limit= 0x%x  WAY1= %u  WAY0= %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"MIR1: limit= 0x%x  WAY1= %u  WAY0= %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"MIR2: limit= 0x%x  WAY1= %u  WAY0= %x\0A\00", align 1
@NUM_MTRS = common dso_local global i32 0, align 4
@MTR0 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"MTR%d where=0x%x B0 value=0x%x\0A\00", align 1
@CHANNELS_PER_BRANCH = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [32 x i8] c"MTR%d where=0x%x B1 value=0x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Memory Technology Registers:\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"   Branch 0:\0A\00", align 1
@AMB_PRESENT_0 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"\09\09AMB-Branch 0-present0 0x%x:\0A\00", align 1
@AMB_PRESENT_1 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [31 x i8] c"\09\09AMB-Branch 0-present1 0x%x:\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"   Branch 1:\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"\09\09AMB-Branch 1-present0 0x%x:\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"\09\09AMB-Branch 1-present1 0x%x:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*)* @i5000_get_mc_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i5000_get_mc_regs(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca %struct.i5000_pvt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %10 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %11 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %10, i32 0, i32 0
  %12 = load %struct.i5000_pvt*, %struct.i5000_pvt** %11, align 8
  store %struct.i5000_pvt* %12, %struct.i5000_pvt** %3, align 8
  %13 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %14 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %13, i32 0, i32 17
  %15 = load i32, i32* %14, align 8
  %16 = load i64, i64* @AMBASE, align 8
  %17 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %18 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %17, i32 0, i32 16
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = call i32 @pci_read_config_dword(i32 %15, i64 %16, i32* %19)
  %21 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %22 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %21, i32 0, i32 17
  %23 = load i32, i32* %22, align 8
  %24 = load i64, i64* @AMBASE, align 8
  %25 = add i64 %24, 4
  %26 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %27 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %26, i32 0, i32 16
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @pci_read_config_dword(i32 %23, i64 %25, i32* %28)
  %30 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %31 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %30, i32 0, i32 15
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %34 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %37 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %36, i32 0, i32 14
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, ...) @edac_dbg(i32 2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %32, i64 %35, i32 %38)
  %40 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %41 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %40, i32 0, i32 13
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @TOLM, align 4
  %44 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %45 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %44, i32 0, i32 1
  %46 = call i32 @pci_read_config_word(i32 %42, i32 %43, i32* %45)
  %47 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %48 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = ashr i32 %49, 12
  store i32 %50, i32* %48, align 8
  %51 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %52 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %55 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (i32, i8*, ...) @edac_dbg(i32 2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %56)
  %58 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %59 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = shl i32 %60, 28
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 (i32, i8*, ...) @edac_dbg(i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %66 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %65, i32 0, i32 13
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @MIR0, align 4
  %69 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %70 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %69, i32 0, i32 2
  %71 = call i32 @pci_read_config_word(i32 %67, i32 %68, i32* %70)
  %72 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %73 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %72, i32 0, i32 13
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @MIR1, align 4
  %76 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %77 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %76, i32 0, i32 3
  %78 = call i32 @pci_read_config_word(i32 %74, i32 %75, i32* %77)
  %79 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %80 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %79, i32 0, i32 13
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @MIR2, align 4
  %83 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %84 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %83, i32 0, i32 4
  %85 = call i32 @pci_read_config_word(i32 %81, i32 %82, i32* %84)
  %86 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %87 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = ashr i32 %88, 4
  %90 = and i32 %89, 4095
  store i32 %90, i32* %5, align 4
  %91 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %92 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, 1
  store i32 %94, i32* %7, align 4
  %95 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %96 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, 2
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %7, align 4
  %102 = call i32 (i32, i8*, ...) @edac_dbg(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %99, i32 %100, i32 %101)
  %103 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %104 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = ashr i32 %105, 4
  %107 = and i32 %106, 4095
  store i32 %107, i32* %5, align 4
  %108 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %109 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = and i32 %110, 1
  store i32 %111, i32* %7, align 4
  %112 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %113 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = and i32 %114, 2
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %7, align 4
  %119 = call i32 (i32, i8*, ...) @edac_dbg(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %116, i32 %117, i32 %118)
  %120 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %121 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = ashr i32 %122, 4
  %124 = and i32 %123, 4095
  store i32 %124, i32* %5, align 4
  %125 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %126 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, 1
  store i32 %128, i32* %7, align 4
  %129 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %130 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, 2
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* %7, align 4
  %136 = call i32 (i32, i8*, ...) @edac_dbg(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %133, i32 %134, i32 %135)
  store i32 0, i32* %6, align 4
  br label %137

137:                                              ; preds = %205, %1
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* @NUM_MTRS, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %208

141:                                              ; preds = %137
  %142 = load i32, i32* @MTR0, align 4
  %143 = sext i32 %142 to i64
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = mul i64 %145, 4
  %147 = add i64 %143, %146
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %9, align 4
  %149 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %150 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %149, i32 0, i32 12
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %9, align 4
  %153 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %154 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %153, i32 0, i32 5
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = call i32 @pci_read_config_word(i32 %151, i32 %152, i32* %158)
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* %9, align 4
  %162 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %163 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %162, i32 0, i32 5
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %6, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = call i32 (i32, i8*, ...) @edac_dbg(i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %160, i32 %161, i32 %168)
  %170 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %171 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @CHANNELS_PER_BRANCH, align 8
  %174 = icmp sge i64 %172, %173
  br i1 %174, label %175, label %197

175:                                              ; preds = %141
  %176 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %177 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %176, i32 0, i32 11
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* %9, align 4
  %180 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %181 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %180, i32 0, i32 6
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %6, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = call i32 @pci_read_config_word(i32 %178, i32 %179, i32* %185)
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* %9, align 4
  %189 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %190 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %189, i32 0, i32 6
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %6, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = call i32 (i32, i8*, ...) @edac_dbg(i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %187, i32 %188, i32 %195)
  br label %204

197:                                              ; preds = %141
  %198 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %199 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %198, i32 0, i32 6
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %6, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  store i32 0, i32* %203, align 4
  br label %204

204:                                              ; preds = %197, %175
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %6, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %6, align 4
  br label %137

208:                                              ; preds = %137
  %209 = call i32 (i32, i8*, ...) @edac_dbg(i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %210 = call i32 (i32, i8*, ...) @edac_dbg(i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %211

211:                                              ; preds = %225, %208
  %212 = load i32, i32* %6, align 4
  %213 = load i32, i32* @NUM_MTRS, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %228

215:                                              ; preds = %211
  %216 = load i32, i32* %6, align 4
  %217 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %218 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %217, i32 0, i32 5
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %6, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @decode_mtr(i32 %216, i32 %223)
  br label %225

225:                                              ; preds = %215
  %226 = load i32, i32* %6, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %6, align 4
  br label %211

228:                                              ; preds = %211
  %229 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %230 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %229, i32 0, i32 12
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @AMB_PRESENT_0, align 4
  %233 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %234 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %233, i32 0, i32 7
  %235 = call i32 @pci_read_config_word(i32 %231, i32 %232, i32* %234)
  %236 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %237 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %236, i32 0, i32 7
  %238 = load i32, i32* %237, align 8
  %239 = call i32 (i32, i8*, ...) @edac_dbg(i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %238)
  %240 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %241 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %240, i32 0, i32 12
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @AMB_PRESENT_1, align 4
  %244 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %245 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %244, i32 0, i32 8
  %246 = call i32 @pci_read_config_word(i32 %242, i32 %243, i32* %245)
  %247 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %248 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %247, i32 0, i32 8
  %249 = load i32, i32* %248, align 4
  %250 = call i32 (i32, i8*, ...) @edac_dbg(i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32 %249)
  %251 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %252 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @CHANNELS_PER_BRANCH, align 8
  %255 = icmp slt i64 %253, %254
  br i1 %255, label %256, label %261

256:                                              ; preds = %228
  %257 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %258 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %257, i32 0, i32 9
  store i32 0, i32* %258, align 8
  %259 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %260 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %259, i32 0, i32 10
  store i32 0, i32* %260, align 4
  br label %303

261:                                              ; preds = %228
  %262 = call i32 (i32, i8*, ...) @edac_dbg(i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %263

263:                                              ; preds = %277, %261
  %264 = load i32, i32* %6, align 4
  %265 = load i32, i32* @NUM_MTRS, align 4
  %266 = icmp slt i32 %264, %265
  br i1 %266, label %267, label %280

267:                                              ; preds = %263
  %268 = load i32, i32* %6, align 4
  %269 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %270 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %269, i32 0, i32 6
  %271 = load i32*, i32** %270, align 8
  %272 = load i32, i32* %6, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @decode_mtr(i32 %268, i32 %275)
  br label %277

277:                                              ; preds = %267
  %278 = load i32, i32* %6, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %6, align 4
  br label %263

280:                                              ; preds = %263
  %281 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %282 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %281, i32 0, i32 11
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* @AMB_PRESENT_0, align 4
  %285 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %286 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %285, i32 0, i32 9
  %287 = call i32 @pci_read_config_word(i32 %283, i32 %284, i32* %286)
  %288 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %289 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %288, i32 0, i32 9
  %290 = load i32, i32* %289, align 8
  %291 = call i32 (i32, i8*, ...) @edac_dbg(i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i32 %290)
  %292 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %293 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %292, i32 0, i32 11
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* @AMB_PRESENT_1, align 4
  %296 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %297 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %296, i32 0, i32 10
  %298 = call i32 @pci_read_config_word(i32 %294, i32 %295, i32* %297)
  %299 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %300 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %299, i32 0, i32 10
  %301 = load i32, i32* %300, align 4
  %302 = call i32 (i32, i8*, ...) @edac_dbg(i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i32 %301)
  br label %303

303:                                              ; preds = %280, %256
  %304 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %305 = call i32 @calculate_dimm_size(%struct.i5000_pvt* %304)
  ret void
}

declare dso_local i32 @pci_read_config_dword(i32, i64, i32*) #1

declare dso_local i32 @edac_dbg(i32, i8*, ...) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @decode_mtr(i32, i32) #1

declare dso_local i32 @calculate_dimm_size(%struct.i5000_pvt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
