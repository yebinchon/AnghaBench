; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_sb_edac.c_get_memory_layout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_sb_edac.c_get_memory_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.sbridge_pvt* }
%struct.sbridge_pvt = type { i32, i32, %struct.TYPE_4__, i32*, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.sbridge_pvt.0*)*, i32 (%struct.sbridge_pvt.1*)*, i32, i32 (i32)*, i64, i32 (i32)*, i32, i32*, i32 (i32)*, i32* }
%struct.sbridge_pvt.0 = type opaque
%struct.sbridge_pvt.1 = type opaque
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"TOLM: %u.%03u GB (0x%016Lx)\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"TOHM: %u.%03u GB (0x%016Lx)\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"SAD#%d %s up to %u.%03u GB (0x%016Lx) Interleave: %s reg=0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"SAD#%d, interleave #%d: %d\0A\00", align 1
@KNIGHTS_LANDING = common dso_local global i64 0, align 8
@MAX_TAD = common dso_local global i32 0, align 4
@tad_dram_rule = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [114 x i8] c"TAD#%d: up to %u.%03u GB (0x%016Lx), socket interleave %d, memory interleave %d, TGT: %d, %d, %d, %d, reg=0x%08x\0A\00", align 1
@NUM_CHANNELS = common dso_local global i32 0, align 4
@tad_ch_nilv_offset = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [58 x i8] c"TAD CH#%d, offset #%d: %u.%03u GB (0x%016Lx), reg=0x%08x\0A\00", align 1
@MAX_RIR_RANGES = common dso_local global i32 0, align 4
@rir_way_limit = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [65 x i8] c"CH#%d RIR#%d, limit: %u.%03u GB (0x%016Lx), way: %d, reg=0x%08x\0A\00", align 1
@rir_offset = common dso_local global i32** null, align 8
@.str.7 = private unnamed_addr constant [73 x i8] c"CH#%d RIR#%d INTL#%d, offset %u.%03u GB (0x%016Lx), tgt: %d, reg=0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*)* @get_memory_layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_memory_layout(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca %struct.sbridge_pvt*, align 8
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
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %18 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %19 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %18, i32 0, i32 0
  %20 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %19, align 8
  store %struct.sbridge_pvt* %20, %struct.sbridge_pvt** %3, align 8
  store i32 0, i32* %12, align 4
  %21 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %22 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32 (%struct.sbridge_pvt.0*)*, i32 (%struct.sbridge_pvt.0*)** %23, align 8
  %25 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %26 = bitcast %struct.sbridge_pvt* %25 to %struct.sbridge_pvt.0*
  %27 = call i32 %24(%struct.sbridge_pvt.0* %26)
  %28 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %29 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %31 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 1, %32
  %34 = ashr i32 %33, 20
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @div_u64_rem(i32 %35, i32 1024, i32* %15)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %15, align 4
  %39 = mul nsw i32 %38, 1000
  %40 = sdiv i32 %39, 1024
  %41 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %42 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (i32, i8*, i32, i32, i32, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40, i32 %43)
  %45 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %46 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32 (%struct.sbridge_pvt.1*)*, i32 (%struct.sbridge_pvt.1*)** %47, align 8
  %49 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %50 = bitcast %struct.sbridge_pvt* %49 to %struct.sbridge_pvt.1*
  %51 = call i32 %48(%struct.sbridge_pvt.1* %50)
  %52 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %53 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %55 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 1, %56
  %58 = ashr i32 %57, 20
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @div_u64_rem(i32 %59, i32 1024, i32* %15)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %15, align 4
  %63 = mul nsw i32 %62, 1000
  %64 = sdiv i32 %63, 1024
  %65 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %66 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i32, i8*, i32, i32, i32, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %64, i32 %67)
  store i32 0, i32* %12, align 4
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %178, %1
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %72 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %70, %74
  br i1 %75, label %76, label %181

76:                                               ; preds = %69
  %77 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %78 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %81 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 9
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @pci_read_config_dword(i32 %79, i32 %87, i32* %10)
  %89 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %90 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 3
  %92 = load i32 (i32)*, i32 (i32)** %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = call i32 %92(i32 %93)
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @DRAM_RULE_ENABLE(i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %76
  br label %178

99:                                               ; preds = %76
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp sle i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  br label %181

104:                                              ; preds = %99
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, 1
  %107 = ashr i32 %106, 20
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %13, align 4
  %109 = call i32 @div_u64_rem(i32 %108, i32 1024, i32* %15)
  store i32 %109, i32* %14, align 4
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %112 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 8
  %114 = load i32 (i32)*, i32 (i32)** %113, align 8
  %115 = load i32, i32* %10, align 4
  %116 = call i32 %114(i32 %115)
  %117 = call i32 @show_dram_attr(i32 %116)
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* %15, align 4
  %120 = mul nsw i32 %119, 1000
  %121 = sdiv i32 %120, 1024
  %122 = load i32, i32* %13, align 4
  %123 = shl i32 %122, 20
  %124 = load i32, i32* %10, align 4
  %125 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %126 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @get_intlv_mode_str(i32 %124, i64 %128)
  %130 = load i32, i32* %10, align 4
  %131 = call i32 (i32, i8*, i32, i32, i32, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %110, i32 %117, i32 %118, i32 %121, i32 %123, i32 %129, i32 %130)
  %132 = load i32, i32* %11, align 4
  store i32 %132, i32* %12, align 4
  %133 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %134 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %137 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 7
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @pci_read_config_dword(i32 %135, i32 %143, i32* %10)
  %145 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %146 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* %10, align 4
  %150 = call i32 @sad_pkg(i32 %148, i32 %149, i32 0)
  store i32 %150, i32* %9, align 4
  store i32 0, i32* %5, align 4
  br label %151

151:                                              ; preds = %174, %104
  %152 = load i32, i32* %5, align 4
  %153 = icmp slt i32 %152, 8
  br i1 %153, label %154, label %177

154:                                              ; preds = %151
  %155 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %156 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 6
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* %10, align 4
  %160 = load i32, i32* %5, align 4
  %161 = call i32 @sad_pkg(i32 %158, i32 %159, i32 %160)
  store i32 %161, i32* %17, align 4
  %162 = load i32, i32* %5, align 4
  %163 = icmp sgt i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %154
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* %17, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %164
  br label %177

169:                                              ; preds = %164, %154
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* %5, align 4
  %172 = load i32, i32* %17, align 4
  %173 = call i32 (i32, i8*, i32, i32, i32, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %170, i32 %171, i32 %172)
  br label %174

174:                                              ; preds = %169
  %175 = load i32, i32* %5, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %5, align 4
  br label %151

177:                                              ; preds = %168, %151
  br label %178

178:                                              ; preds = %177, %98
  %179 = load i32, i32* %7, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %7, align 4
  br label %69

181:                                              ; preds = %103, %69
  %182 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %183 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 4
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @KNIGHTS_LANDING, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %181
  br label %428

189:                                              ; preds = %181
  store i32 0, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %190

190:                                              ; preds = %245, %189
  %191 = load i32, i32* %8, align 4
  %192 = load i32, i32* @MAX_TAD, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %248

194:                                              ; preds = %190
  %195 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %196 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %195, i32 0, i32 5
  %197 = load i32, i32* %196, align 8
  %198 = load i32*, i32** @tad_dram_rule, align 8
  %199 = load i32, i32* %8, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @pci_read_config_dword(i32 %197, i32 %202, i32* %10)
  %204 = load i32, i32* %10, align 4
  %205 = call i32 @TAD_LIMIT(i32 %204)
  store i32 %205, i32* %11, align 4
  %206 = load i32, i32* %11, align 4
  %207 = load i32, i32* %12, align 4
  %208 = icmp sle i32 %206, %207
  br i1 %208, label %209, label %210

209:                                              ; preds = %194
  br label %248

210:                                              ; preds = %194
  %211 = load i32, i32* %11, align 4
  %212 = add nsw i32 %211, 1
  %213 = ashr i32 %212, 20
  store i32 %213, i32* %13, align 4
  %214 = load i32, i32* %13, align 4
  %215 = call i32 @div_u64_rem(i32 %214, i32 1024, i32* %15)
  store i32 %215, i32* %14, align 4
  %216 = load i32, i32* %8, align 4
  %217 = load i32, i32* %14, align 4
  %218 = load i32, i32* %15, align 4
  %219 = mul nsw i32 %218, 1000
  %220 = sdiv i32 %219, 1024
  %221 = load i32, i32* %13, align 4
  %222 = shl i32 %221, 20
  %223 = load i32, i32* %10, align 4
  %224 = call i32 @TAD_SOCK(i32 %223)
  %225 = shl i32 1, %224
  %226 = load i32, i32* %10, align 4
  %227 = call i64 @TAD_CH(i32 %226)
  %228 = trunc i64 %227 to i32
  %229 = add nsw i32 %228, 1
  %230 = load i32, i32* %10, align 4
  %231 = call i64 @TAD_TGT0(i32 %230)
  %232 = trunc i64 %231 to i32
  %233 = load i32, i32* %10, align 4
  %234 = call i64 @TAD_TGT1(i32 %233)
  %235 = trunc i64 %234 to i32
  %236 = load i32, i32* %10, align 4
  %237 = call i64 @TAD_TGT2(i32 %236)
  %238 = trunc i64 %237 to i32
  %239 = load i32, i32* %10, align 4
  %240 = call i64 @TAD_TGT3(i32 %239)
  %241 = trunc i64 %240 to i32
  %242 = load i32, i32* %10, align 4
  %243 = call i32 (i32, i8*, i32, i32, i32, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.4, i64 0, i64 0), i32 %216, i32 %217, i32 %220, i32 %222, i32 %225, i32 %229, i32 %232, i32 %235, i32 %238, i32 %241, i32 %242)
  %244 = load i32, i32* %11, align 4
  store i32 %244, i32* %12, align 4
  br label %245

245:                                              ; preds = %210
  %246 = load i32, i32* %8, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %8, align 4
  br label %190

248:                                              ; preds = %209, %190
  store i32 0, i32* %4, align 4
  br label %249

249:                                              ; preds = %302, %248
  %250 = load i32, i32* %4, align 4
  %251 = load i32, i32* @NUM_CHANNELS, align 4
  %252 = icmp slt i32 %250, %251
  br i1 %252, label %253, label %305

253:                                              ; preds = %249
  %254 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %255 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %254, i32 0, i32 4
  %256 = load %struct.TYPE_3__*, %struct.TYPE_3__** %255, align 8
  %257 = load i32, i32* %4, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %264, label %263

263:                                              ; preds = %253
  br label %302

264:                                              ; preds = %253
  store i32 0, i32* %5, align 4
  br label %265

265:                                              ; preds = %298, %264
  %266 = load i32, i32* %5, align 4
  %267 = load i32, i32* %8, align 4
  %268 = icmp slt i32 %266, %267
  br i1 %268, label %269, label %301

269:                                              ; preds = %265
  %270 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %271 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %270, i32 0, i32 3
  %272 = load i32*, i32** %271, align 8
  %273 = load i32, i32* %4, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = load i32*, i32** @tad_ch_nilv_offset, align 8
  %278 = load i32, i32* %5, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @pci_read_config_dword(i32 %276, i32 %281, i32* %10)
  %283 = load i32, i32* %10, align 4
  %284 = call i32 @TAD_OFFSET(i32 %283)
  %285 = ashr i32 %284, 20
  store i32 %285, i32* %13, align 4
  %286 = load i32, i32* %13, align 4
  %287 = call i32 @div_u64_rem(i32 %286, i32 1024, i32* %15)
  store i32 %287, i32* %14, align 4
  %288 = load i32, i32* %4, align 4
  %289 = load i32, i32* %5, align 4
  %290 = load i32, i32* %14, align 4
  %291 = load i32, i32* %15, align 4
  %292 = mul nsw i32 %291, 1000
  %293 = sdiv i32 %292, 1024
  %294 = load i32, i32* %13, align 4
  %295 = shl i32 %294, 20
  %296 = load i32, i32* %10, align 4
  %297 = call i32 (i32, i8*, i32, i32, i32, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i32 %288, i32 %289, i32 %290, i32 %293, i32 %295, i32 %296)
  br label %298

298:                                              ; preds = %269
  %299 = load i32, i32* %5, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %5, align 4
  br label %265

301:                                              ; preds = %265
  br label %302

302:                                              ; preds = %301, %263
  %303 = load i32, i32* %4, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %4, align 4
  br label %249

305:                                              ; preds = %249
  store i32 0, i32* %4, align 4
  br label %306

306:                                              ; preds = %425, %305
  %307 = load i32, i32* %4, align 4
  %308 = load i32, i32* @NUM_CHANNELS, align 4
  %309 = icmp slt i32 %307, %308
  br i1 %309, label %310, label %428

310:                                              ; preds = %306
  %311 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %312 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %311, i32 0, i32 4
  %313 = load %struct.TYPE_3__*, %struct.TYPE_3__** %312, align 8
  %314 = load i32, i32* %4, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %313, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %321, label %320

320:                                              ; preds = %310
  br label %425

321:                                              ; preds = %310
  store i32 0, i32* %5, align 4
  br label %322

322:                                              ; preds = %421, %321
  %323 = load i32, i32* %5, align 4
  %324 = load i32, i32* @MAX_RIR_RANGES, align 4
  %325 = icmp slt i32 %323, %324
  br i1 %325, label %326, label %424

326:                                              ; preds = %322
  %327 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %328 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %327, i32 0, i32 3
  %329 = load i32*, i32** %328, align 8
  %330 = load i32, i32* %4, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %329, i64 %331
  %333 = load i32, i32* %332, align 4
  %334 = load i32*, i32** @rir_way_limit, align 8
  %335 = load i32, i32* %5, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %334, i64 %336
  %338 = load i32, i32* %337, align 4
  %339 = call i32 @pci_read_config_dword(i32 %333, i32 %338, i32* %10)
  %340 = load i32, i32* %10, align 4
  %341 = call i32 @IS_RIR_VALID(i32 %340)
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %344, label %343

343:                                              ; preds = %326
  br label %421

344:                                              ; preds = %326
  %345 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %346 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %345, i32 0, i32 2
  %347 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %346, i32 0, i32 5
  %348 = load i32 (i32)*, i32 (i32)** %347, align 8
  %349 = load i32, i32* %10, align 4
  %350 = call i32 %348(i32 %349)
  %351 = ashr i32 %350, 20
  store i32 %351, i32* %13, align 4
  %352 = load i32, i32* %10, align 4
  %353 = call i32 @RIR_WAY(i32 %352)
  %354 = shl i32 1, %353
  store i32 %354, i32* %16, align 4
  %355 = load i32, i32* %13, align 4
  %356 = call i32 @div_u64_rem(i32 %355, i32 1024, i32* %15)
  store i32 %356, i32* %14, align 4
  %357 = load i32, i32* %4, align 4
  %358 = load i32, i32* %5, align 4
  %359 = load i32, i32* %14, align 4
  %360 = load i32, i32* %15, align 4
  %361 = mul nsw i32 %360, 1000
  %362 = sdiv i32 %361, 1024
  %363 = load i32, i32* %13, align 4
  %364 = shl i32 %363, 20
  %365 = load i32, i32* %16, align 4
  %366 = load i32, i32* %10, align 4
  %367 = call i32 (i32, i8*, i32, i32, i32, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0), i32 %357, i32 %358, i32 %359, i32 %362, i32 %364, i32 %365, i32 %366)
  store i32 0, i32* %6, align 4
  br label %368

368:                                              ; preds = %417, %344
  %369 = load i32, i32* %6, align 4
  %370 = load i32, i32* %16, align 4
  %371 = icmp slt i32 %369, %370
  br i1 %371, label %372, label %420

372:                                              ; preds = %368
  %373 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %374 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %373, i32 0, i32 3
  %375 = load i32*, i32** %374, align 8
  %376 = load i32, i32* %4, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i32, i32* %375, i64 %377
  %379 = load i32, i32* %378, align 4
  %380 = load i32**, i32*** @rir_offset, align 8
  %381 = load i32, i32* %5, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i32*, i32** %380, i64 %382
  %384 = load i32*, i32** %383, align 8
  %385 = load i32, i32* %6, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i32, i32* %384, i64 %386
  %388 = load i32, i32* %387, align 4
  %389 = call i32 @pci_read_config_dword(i32 %379, i32 %388, i32* %10)
  %390 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %391 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %390, i32 0, i32 2
  %392 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %391, i32 0, i32 4
  %393 = load i64, i64* %392, align 8
  %394 = load i32, i32* %10, align 4
  %395 = call i32 @RIR_OFFSET(i64 %393, i32 %394)
  %396 = shl i32 %395, 6
  store i32 %396, i32* %13, align 4
  %397 = load i32, i32* %13, align 4
  %398 = call i32 @div_u64_rem(i32 %397, i32 1024, i32* %15)
  store i32 %398, i32* %14, align 4
  %399 = load i32, i32* %4, align 4
  %400 = load i32, i32* %5, align 4
  %401 = load i32, i32* %6, align 4
  %402 = load i32, i32* %14, align 4
  %403 = load i32, i32* %15, align 4
  %404 = mul nsw i32 %403, 1000
  %405 = sdiv i32 %404, 1024
  %406 = load i32, i32* %13, align 4
  %407 = shl i32 %406, 20
  %408 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %409 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %408, i32 0, i32 2
  %410 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %409, i32 0, i32 4
  %411 = load i64, i64* %410, align 8
  %412 = load i32, i32* %10, align 4
  %413 = call i64 @RIR_RNK_TGT(i64 %411, i32 %412)
  %414 = trunc i64 %413 to i32
  %415 = load i32, i32* %10, align 4
  %416 = call i32 (i32, i8*, i32, i32, i32, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.7, i64 0, i64 0), i32 %399, i32 %400, i32 %401, i32 %402, i32 %405, i32 %407, i32 %414, i32 %415)
  br label %417

417:                                              ; preds = %372
  %418 = load i32, i32* %6, align 4
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %6, align 4
  br label %368

420:                                              ; preds = %368
  br label %421

421:                                              ; preds = %420, %343
  %422 = load i32, i32* %5, align 4
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %5, align 4
  br label %322

424:                                              ; preds = %322
  br label %425

425:                                              ; preds = %424, %320
  %426 = load i32, i32* %4, align 4
  %427 = add nsw i32 %426, 1
  store i32 %427, i32* %4, align 4
  br label %306

428:                                              ; preds = %188, %306
  ret void
}

declare dso_local i32 @div_u64_rem(i32, i32, i32*) #1

declare dso_local i32 @edac_dbg(i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @DRAM_RULE_ENABLE(i32) #1

declare dso_local i32 @show_dram_attr(i32) #1

declare dso_local i32 @get_intlv_mode_str(i32, i64) #1

declare dso_local i32 @sad_pkg(i32, i32, i32) #1

declare dso_local i32 @TAD_LIMIT(i32) #1

declare dso_local i32 @TAD_SOCK(i32) #1

declare dso_local i64 @TAD_CH(i32) #1

declare dso_local i64 @TAD_TGT0(i32) #1

declare dso_local i64 @TAD_TGT1(i32) #1

declare dso_local i64 @TAD_TGT2(i32) #1

declare dso_local i64 @TAD_TGT3(i32) #1

declare dso_local i32 @TAD_OFFSET(i32) #1

declare dso_local i32 @IS_RIR_VALID(i32) #1

declare dso_local i32 @RIR_WAY(i32) #1

declare dso_local i32 @RIR_OFFSET(i64, i32) #1

declare dso_local i64 @RIR_RNK_TGT(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
