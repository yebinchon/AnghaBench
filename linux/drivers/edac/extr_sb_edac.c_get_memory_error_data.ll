; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_sb_edac.c_get_memory_error_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_sb_edac.c_get_memory_error_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.sbridge_pvt* }
%struct.sbridge_pvt = type { i64, i32, %struct.TYPE_4__, %struct.pci_dev**, i64, i64, i64, %struct.pci_dev*, %struct.TYPE_3__*, %struct.pci_dev*, i64, i64 }
%struct.TYPE_4__ = type { i32, i64 (i32)*, i32 (i32)*, i64, i64 (i32)*, i32, i32*, i32 (i32)*, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.pci_dev = type { i32 }

@MAX_INTERLEAVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Error at TOLM area, on addr 0x%08Lx\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Error at MMIOH area, on addr 0x%016Lx\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Can't discover the memory socket\00", align 1
@SANDY_BRIDGE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"SAD interleave #%d: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [83 x i8] c"mc#%d: Error detected on SAD#%d: address 0x%016Lx < 0x%016Lx, Interleave [%d:6]%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"XOR[18:16]\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Can't discover socket interleave\00", align 1
@.str.8 = private unnamed_addr constant [55 x i8] c"SAD interleave index: %d (wayness %d) = CPU socket %d\0A\00", align 1
@HASWELL = common dso_local global i64 0, align 8
@BROADWELL = common dso_local global i64 0, align 8
@HASWELL_HASYSDEFEATURE2 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [64 x i8] c"SAD interleave package: %d = CPU socket %d, HA %i, shiftup: %i\0A\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"SAD interleave package: %d = CPU socket %d, HA %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"Struct for socket #%u wasn't initialized\00", align 1
@MAX_TAD = common dso_local global i32 0, align 4
@tad_dram_rule = common dso_local global i32* null, align 8
@.str.12 = private unnamed_addr constant [34 x i8] c"Can't discover the memory channel\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"Can't discover the TAD target\00", align 1
@tad_ch_nilv_offset = common dso_local global i32* null, align 8
@FULL_MIRRORING = common dso_local global i64 0, align 8
@ADDR_RANGE_MIRRORING = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [38 x i8] c"Invalid mirror set. Can't decode addr\00", align 1
@.str.15 = private unnamed_addr constant [140 x i8] c"TAD#%d: address 0x%016Lx < 0x%016Lx, socket interleave %d, channel interleave %d (offset 0x%08Lx), index %d, base ch: %d, ch mask: 0x%02lx\0A\00", align 1
@.str.16 = private unnamed_addr constant [74 x i8] c"Can't calculate ch addr: TAD offset 0x%08Lx is too high for addr 0x%08Lx!\00", align 1
@MAX_RIR_RANGES = common dso_local global i32 0, align 4
@rir_way_limit = common dso_local global i32* null, align 8
@.str.17 = private unnamed_addr constant [47 x i8] c"RIR#%d, limit: %u.%03u GB (0x%016Lx), way: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [51 x i8] c"Can't discover the memory rank for ch addr 0x%08Lx\00", align 1
@rir_offset = common dso_local global i32** null, align 8
@.str.19 = private unnamed_addr constant [72 x i8] c"RIR#%d: channel address 0x%08Lx < 0x%08Lx, RIR interleave %d, index %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*, i64, i32*, i32*, i64*, i32*, i8**, i8*)* @get_memory_error_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_memory_error_data(%struct.mem_ctl_info* %0, i64 %1, i32* %2, i32* %3, i64* %4, i32* %5, i8** %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.mem_ctl_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.mem_ctl_info*, align 8
  %19 = alloca %struct.sbridge_pvt*, align 8
  %20 = alloca %struct.pci_dev*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i64, align 8
  %44 = alloca i64, align 8
  %45 = alloca i64, align 8
  %46 = alloca i64, align 8
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %10, align 8
  store i64 %1, i64* %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i64* %4, i64** %14, align 8
  store i32* %5, i32** %15, align 8
  store i8** %6, i8*** %16, align 8
  store i8* %7, i8** %17, align 8
  %51 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %52 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %51, i32 0, i32 0
  %53 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %52, align 8
  store %struct.sbridge_pvt* %53, %struct.sbridge_pvt** %19, align 8
  store i32 0, i32* %30, align 4
  %54 = load i32, i32* @MAX_INTERLEAVE, align 4
  %55 = zext i32 %54 to i64
  %56 = call i8* @llvm.stacksave()
  store i8* %56, i8** %31, align 8
  %57 = alloca i32, i64 %55, align 16
  store i64 %55, i64* %32, align 8
  store i32 0, i32* %38, align 4
  store i64 0, i64* %45, align 8
  store i64 0, i64* %46, align 8
  %58 = load i64, i64* %11, align 8
  %59 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %19, align 8
  %60 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %59, i32 0, i32 11
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %58, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %8
  %64 = load i64, i64* %11, align 8
  %65 = icmp slt i64 %64, 4294967296
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i8*, i8** %17, align 8
  %68 = load i64, i64* %11, align 8
  %69 = call i32 (i8*, i8*, ...) @sprintf(i8* %67, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %9, align 4
  store i32 1, i32* %47, align 4
  br label %737

72:                                               ; preds = %63, %8
  %73 = load i64, i64* %11, align 8
  %74 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %19, align 8
  %75 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %74, i32 0, i32 10
  %76 = load i64, i64* %75, align 8
  %77 = icmp sge i64 %73, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load i8*, i8** %17, align 8
  %80 = load i64, i64* %11, align 8
  %81 = call i32 (i8*, i8*, ...) @sprintf(i8* %79, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %80)
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %9, align 4
  store i32 1, i32* %47, align 4
  br label %737

84:                                               ; preds = %72
  store i32 0, i32* %22, align 4
  br label %85

85:                                               ; preds = %131, %84
  %86 = load i32, i32* %22, align 4
  %87 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %19, align 8
  %88 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %86, %90
  br i1 %91, label %92, label %134

92:                                               ; preds = %85
  %93 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %19, align 8
  %94 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %93, i32 0, i32 9
  %95 = load %struct.pci_dev*, %struct.pci_dev** %94, align 8
  %96 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %19, align 8
  %97 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 8
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %22, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @pci_read_config_dword(%struct.pci_dev* %95, i32 %103, i32* %33)
  %105 = load i32, i32* %33, align 4
  %106 = call i32 @DRAM_RULE_ENABLE(i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %92
  br label %131

109:                                              ; preds = %92
  %110 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %19, align 8
  %111 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i64 (i32)*, i64 (i32)** %112, align 8
  %114 = load i32, i32* %33, align 4
  %115 = call i64 %113(i32 %114)
  store i64 %115, i64* %45, align 8
  %116 = load i64, i64* %45, align 8
  %117 = load i64, i64* %46, align 8
  %118 = icmp sle i64 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %109
  %120 = load i8*, i8** %17, align 8
  %121 = call i32 (i8*, i8*, ...) @sprintf(i8* %120, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %9, align 4
  store i32 1, i32* %47, align 4
  br label %737

124:                                              ; preds = %109
  %125 = load i64, i64* %11, align 8
  %126 = load i64, i64* %45, align 8
  %127 = icmp sle i64 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  br label %134

129:                                              ; preds = %124
  %130 = load i64, i64* %45, align 8
  store i64 %130, i64* %46, align 8
  br label %131

131:                                              ; preds = %129, %108
  %132 = load i32, i32* %22, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %22, align 4
  br label %85

134:                                              ; preds = %128, %85
  %135 = load i32, i32* %22, align 4
  %136 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %19, align 8
  %137 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp eq i32 %135, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %134
  %142 = load i8*, i8** %17, align 8
  %143 = call i32 (i8*, i8*, ...) @sprintf(i8* %142, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %9, align 4
  store i32 1, i32* %47, align 4
  br label %737

146:                                              ; preds = %134
  %147 = load i32, i32* %33, align 4
  store i32 %147, i32* %34, align 4
  %148 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %19, align 8
  %149 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 7
  %151 = load i32 (i32)*, i32 (i32)** %150, align 8
  %152 = load i32, i32* %34, align 4
  %153 = call i32 %151(i32 %152)
  %154 = call i8* @show_dram_attr(i32 %153)
  %155 = load i8**, i8*** %16, align 8
  store i8* %154, i8** %155, align 8
  %156 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %19, align 8
  %157 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 2
  %159 = load i32 (i32)*, i32 (i32)** %158, align 8
  %160 = load i32, i32* %34, align 4
  %161 = call i32 %159(i32 %160)
  store i32 %161, i32* %29, align 4
  %162 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %19, align 8
  %163 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %162, i32 0, i32 9
  %164 = load %struct.pci_dev*, %struct.pci_dev** %163, align 8
  %165 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %19, align 8
  %166 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 6
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %22, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @pci_read_config_dword(%struct.pci_dev* %164, i32 %172, i32* %33)
  %174 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %19, align 8
  %175 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @SANDY_BRIDGE, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %280

180:                                              ; preds = %146
  %181 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %19, align 8
  %182 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* %33, align 4
  %186 = call i32 @sad_pkg(i32 %184, i32 %185, i32 0)
  store i32 %186, i32* %26, align 4
  store i32 0, i32* %24, align 4
  br label %187

187:                                              ; preds = %217, %180
  %188 = load i32, i32* %24, align 4
  %189 = icmp slt i32 %188, 8
  br i1 %189, label %190, label %220

190:                                              ; preds = %187
  %191 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %19, align 8
  %192 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* %33, align 4
  %196 = load i32, i32* %24, align 4
  %197 = call i32 @sad_pkg(i32 %194, i32 %195, i32 %196)
  store i32 %197, i32* %48, align 4
  %198 = load i32, i32* %24, align 4
  %199 = icmp sgt i32 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %190
  %201 = load i32, i32* %26, align 4
  %202 = load i32, i32* %48, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %205

204:                                              ; preds = %200
  br label %220

205:                                              ; preds = %200, %190
  %206 = load i32, i32* %48, align 4
  %207 = load i32, i32* %24, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %57, i64 %208
  store i32 %206, i32* %209, align 4
  %210 = load i32, i32* %24, align 4
  %211 = load i32, i32* %24, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %57, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = zext i32 %214 to i64
  %216 = call i32 (i32, i8*, i32, i64, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %210, i64 %215)
  br label %217

217:                                              ; preds = %205
  %218 = load i32, i32* %24, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %24, align 4
  br label %187

220:                                              ; preds = %204, %187
  %221 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %19, align 8
  %222 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %221, i32 0, i32 8
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %22, align 4
  %227 = sext i32 %226 to i64
  %228 = load i64, i64* %11, align 8
  %229 = load i64, i64* %45, align 8
  %230 = load i32, i32* %24, align 4
  %231 = add nsw i32 %230, 7
  %232 = load i32, i32* %29, align 4
  %233 = icmp ne i32 %232, 0
  %234 = xor i1 %233, true
  %235 = zext i1 %234 to i64
  %236 = select i1 %234, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0)
  %237 = call i32 (i32, i8*, i32, i64, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.4, i64 0, i64 0), i32 %225, i64 %227, i64 %228, i64 %229, i32 %231, i8* %236)
  %238 = load i32, i32* %29, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %248

240:                                              ; preds = %220
  %241 = load i64, i64* %11, align 8
  %242 = ashr i64 %241, 6
  %243 = load i64, i64* %11, align 8
  %244 = ashr i64 %243, 16
  %245 = xor i64 %242, %244
  %246 = and i64 %245, 7
  %247 = trunc i64 %246 to i32
  store i32 %247, i32* %27, align 4
  br label %253

248:                                              ; preds = %220
  %249 = load i64, i64* %11, align 8
  %250 = ashr i64 %249, 6
  %251 = and i64 %250, 7
  %252 = trunc i64 %251 to i32
  store i32 %252, i32* %27, align 4
  br label %253

253:                                              ; preds = %248, %240
  %254 = load i32, i32* %24, align 4
  switch i32 %254, label %263 [
    i32 1, label %255
    i32 2, label %256
    i32 4, label %259
    i32 8, label %262
  ]

255:                                              ; preds = %253
  store i32 0, i32* %27, align 4
  br label %268

256:                                              ; preds = %253
  %257 = load i32, i32* %27, align 4
  %258 = and i32 %257, 1
  store i32 %258, i32* %27, align 4
  br label %268

259:                                              ; preds = %253
  %260 = load i32, i32* %27, align 4
  %261 = and i32 %260, 3
  store i32 %261, i32* %27, align 4
  br label %268

262:                                              ; preds = %253
  br label %268

263:                                              ; preds = %253
  %264 = load i8*, i8** %17, align 8
  %265 = call i32 (i8*, i8*, ...) @sprintf(i8* %264, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %266 = load i32, i32* @EINVAL, align 4
  %267 = sub nsw i32 0, %266
  store i32 %267, i32* %9, align 4
  store i32 1, i32* %47, align 4
  br label %737

268:                                              ; preds = %262, %259, %256, %255
  %269 = load i32, i32* %27, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %57, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = load i32*, i32** %12, align 8
  store i32 %272, i32* %273, align 4
  %274 = load i32, i32* %27, align 4
  %275 = load i32, i32* %24, align 4
  %276 = sext i32 %275 to i64
  %277 = load i32*, i32** %12, align 8
  %278 = load i32, i32* %277, align 4
  %279 = call i32 (i32, i8*, i32, i64, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i64 0, i64 0), i32 %274, i64 %276, i32 %278)
  br label %380

280:                                              ; preds = %146
  %281 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %19, align 8
  %282 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %281, i32 0, i32 2
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 3
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* @HASWELL, align 8
  %286 = icmp eq i64 %284, %285
  br i1 %286, label %294, label %287

287:                                              ; preds = %280
  %288 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %19, align 8
  %289 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %288, i32 0, i32 2
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i32 0, i32 3
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* @BROADWELL, align 8
  %293 = icmp eq i64 %291, %292
  br i1 %293, label %294, label %356

294:                                              ; preds = %287, %280
  %295 = load i32, i32* %34, align 4
  %296 = call i32 @A7MODE(i32 %295)
  store i32 %296, i32* %50, align 4
  %297 = load i32, i32* %50, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %309

299:                                              ; preds = %294
  %300 = load i64, i64* %11, align 8
  %301 = trunc i64 %300 to i32
  %302 = call i32 @GET_BITFIELD(i32 %301, i32 7, i32 8)
  %303 = shl i32 %302, 1
  store i32 %303, i32* %49, align 4
  %304 = load i64, i64* %11, align 8
  %305 = trunc i64 %304 to i32
  %306 = call i32 @GET_BITFIELD(i32 %305, i32 9, i32 9)
  %307 = load i32, i32* %49, align 4
  %308 = or i32 %307, %306
  store i32 %308, i32* %49, align 4
  br label %313

309:                                              ; preds = %294
  %310 = load i64, i64* %11, align 8
  %311 = trunc i64 %310 to i32
  %312 = call i32 @GET_BITFIELD(i32 %311, i32 6, i32 8)
  store i32 %312, i32* %49, align 4
  br label %313

313:                                              ; preds = %309, %299
  %314 = load i32, i32* %29, align 4
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %323

316:                                              ; preds = %313
  %317 = load i64, i64* %11, align 8
  %318 = trunc i64 %317 to i32
  %319 = call i32 @GET_BITFIELD(i32 %318, i32 16, i32 18)
  store i32 %319, i32* %27, align 4
  %320 = load i32, i32* %49, align 4
  %321 = load i32, i32* %27, align 4
  %322 = xor i32 %321, %320
  store i32 %322, i32* %27, align 4
  br label %325

323:                                              ; preds = %313
  %324 = load i32, i32* %49, align 4
  store i32 %324, i32* %27, align 4
  br label %325

325:                                              ; preds = %323, %316
  %326 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %19, align 8
  %327 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %326, i32 0, i32 2
  %328 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %327, i32 0, i32 5
  %329 = load i32, i32* %328, align 8
  %330 = load i32, i32* %33, align 4
  %331 = load i32, i32* %27, align 4
  %332 = call i32 @sad_pkg(i32 %329, i32 %330, i32 %331)
  store i32 %332, i32* %37, align 4
  %333 = load i32, i32* %37, align 4
  %334 = call i32 @sad_pkg_socket(i32 %333)
  %335 = load i32*, i32** %12, align 8
  store i32 %334, i32* %335, align 4
  %336 = load i32, i32* %37, align 4
  %337 = call i32 @sad_pkg_ha(i32 %336)
  store i32 %337, i32* %38, align 4
  %338 = load i32, i32* %50, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %348

340:                                              ; preds = %325
  %341 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %19, align 8
  %342 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %341, i32 0, i32 7
  %343 = load %struct.pci_dev*, %struct.pci_dev** %342, align 8
  %344 = load i32, i32* @HASWELL_HASYSDEFEATURE2, align 4
  %345 = call i32 @pci_read_config_dword(%struct.pci_dev* %343, i32 %344, i32* %33)
  %346 = load i32, i32* %33, align 4
  %347 = call i32 @GET_BITFIELD(i32 %346, i32 22, i32 22)
  store i32 %347, i32* %30, align 4
  br label %348

348:                                              ; preds = %340, %325
  %349 = load i32, i32* %27, align 4
  %350 = load i32*, i32** %12, align 8
  %351 = load i32, i32* %350, align 4
  %352 = sext i32 %351 to i64
  %353 = load i32, i32* %38, align 4
  %354 = load i32, i32* %30, align 4
  %355 = call i32 (i32, i8*, i32, i64, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.9, i64 0, i64 0), i32 %349, i64 %352, i32 %353, i32 %354)
  br label %379

356:                                              ; preds = %287
  %357 = load i64, i64* %11, align 8
  %358 = ashr i64 %357, 6
  %359 = and i64 %358, 7
  %360 = trunc i64 %359 to i32
  store i32 %360, i32* %27, align 4
  %361 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %19, align 8
  %362 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %361, i32 0, i32 2
  %363 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %362, i32 0, i32 5
  %364 = load i32, i32* %363, align 8
  %365 = load i32, i32* %33, align 4
  %366 = load i32, i32* %27, align 4
  %367 = call i32 @sad_pkg(i32 %364, i32 %365, i32 %366)
  store i32 %367, i32* %37, align 4
  %368 = load i32, i32* %37, align 4
  %369 = call i32 @sad_pkg_socket(i32 %368)
  %370 = load i32*, i32** %12, align 8
  store i32 %369, i32* %370, align 4
  %371 = load i32, i32* %37, align 4
  %372 = call i32 @sad_pkg_ha(i32 %371)
  store i32 %372, i32* %38, align 4
  %373 = load i32, i32* %27, align 4
  %374 = load i32*, i32** %12, align 8
  %375 = load i32, i32* %374, align 4
  %376 = sext i32 %375 to i64
  %377 = load i32, i32* %38, align 4
  %378 = call i32 (i32, i8*, i32, i64, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i64 0, i64 0), i32 %373, i64 %376, i32 %377)
  br label %379

379:                                              ; preds = %356, %348
  br label %380

380:                                              ; preds = %379, %268
  %381 = load i32, i32* %38, align 4
  %382 = load i32*, i32** %13, align 8
  store i32 %381, i32* %382, align 4
  %383 = load i32*, i32** %12, align 8
  %384 = load i32, i32* %383, align 4
  %385 = load i32, i32* %38, align 4
  %386 = call %struct.mem_ctl_info* @get_mci_for_node_id(i32 %384, i32 %385)
  store %struct.mem_ctl_info* %386, %struct.mem_ctl_info** %18, align 8
  %387 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %18, align 8
  %388 = icmp ne %struct.mem_ctl_info* %387, null
  br i1 %388, label %396, label %389

389:                                              ; preds = %380
  %390 = load i8*, i8** %17, align 8
  %391 = load i32*, i32** %12, align 8
  %392 = load i32, i32* %391, align 4
  %393 = call i32 (i8*, i8*, ...) @sprintf(i8* %390, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), i32 %392)
  %394 = load i32, i32* @EINVAL, align 4
  %395 = sub nsw i32 0, %394
  store i32 %395, i32* %9, align 4
  store i32 1, i32* %47, align 4
  br label %737

396:                                              ; preds = %380
  %397 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %18, align 8
  store %struct.mem_ctl_info* %397, %struct.mem_ctl_info** %10, align 8
  %398 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %399 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %398, i32 0, i32 0
  %400 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %399, align 8
  store %struct.sbridge_pvt* %400, %struct.sbridge_pvt** %19, align 8
  store i64 0, i64* %46, align 8
  %401 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %19, align 8
  %402 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %401, i32 0, i32 7
  %403 = load %struct.pci_dev*, %struct.pci_dev** %402, align 8
  store %struct.pci_dev* %403, %struct.pci_dev** %20, align 8
  store i32 0, i32* %23, align 4
  br label %404

404:                                              ; preds = %433, %396
  %405 = load i32, i32* %23, align 4
  %406 = load i32, i32* @MAX_TAD, align 4
  %407 = icmp slt i32 %405, %406
  br i1 %407, label %408, label %436

408:                                              ; preds = %404
  %409 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  %410 = load i32*, i32** @tad_dram_rule, align 8
  %411 = load i32, i32* %23, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i32, i32* %410, i64 %412
  %414 = load i32, i32* %413, align 4
  %415 = call i32 @pci_read_config_dword(%struct.pci_dev* %409, i32 %414, i32* %33)
  %416 = load i32, i32* %33, align 4
  %417 = call i64 @TAD_LIMIT(i32 %416)
  store i64 %417, i64* %45, align 8
  %418 = load i64, i64* %45, align 8
  %419 = load i64, i64* %46, align 8
  %420 = icmp sle i64 %418, %419
  br i1 %420, label %421, label %426

421:                                              ; preds = %408
  %422 = load i8*, i8** %17, align 8
  %423 = call i32 (i8*, i8*, ...) @sprintf(i8* %422, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0))
  %424 = load i32, i32* @EINVAL, align 4
  %425 = sub nsw i32 0, %424
  store i32 %425, i32* %9, align 4
  store i32 1, i32* %47, align 4
  br label %737

426:                                              ; preds = %408
  %427 = load i64, i64* %11, align 8
  %428 = load i64, i64* %45, align 8
  %429 = icmp sle i64 %427, %428
  br i1 %429, label %430, label %431

430:                                              ; preds = %426
  br label %436

431:                                              ; preds = %426
  %432 = load i64, i64* %45, align 8
  store i64 %432, i64* %46, align 8
  br label %433

433:                                              ; preds = %431
  %434 = load i32, i32* %23, align 4
  %435 = add nsw i32 %434, 1
  store i32 %435, i32* %23, align 4
  br label %404

436:                                              ; preds = %430, %404
  %437 = load i32, i32* %23, align 4
  %438 = load i32, i32* @MAX_TAD, align 4
  %439 = icmp eq i32 %437, %438
  br i1 %439, label %440, label %445

440:                                              ; preds = %436
  %441 = load i8*, i8** %17, align 8
  %442 = call i32 (i8*, i8*, ...) @sprintf(i8* %441, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0))
  %443 = load i32, i32* @EINVAL, align 4
  %444 = sub nsw i32 0, %443
  store i32 %444, i32* %9, align 4
  store i32 1, i32* %47, align 4
  br label %737

445:                                              ; preds = %436
  %446 = load i32, i32* %33, align 4
  %447 = call i32 @TAD_CH(i32 %446)
  %448 = add nsw i32 %447, 1
  store i32 %448, i32* %35, align 4
  %449 = load i32, i32* %33, align 4
  %450 = call i32 @TAD_SOCK(i32 %449)
  store i32 %450, i32* %36, align 4
  %451 = load i32, i32* %35, align 4
  %452 = icmp eq i32 %451, 3
  br i1 %452, label %453, label %457

453:                                              ; preds = %445
  %454 = load i64, i64* %11, align 8
  %455 = ashr i64 %454, 6
  %456 = trunc i64 %455 to i32
  store i32 %456, i32* %27, align 4
  br label %476

457:                                              ; preds = %445
  %458 = load i64, i64* %11, align 8
  %459 = load i32, i32* %36, align 4
  %460 = add nsw i32 6, %459
  %461 = load i32, i32* %30, align 4
  %462 = add nsw i32 %460, %461
  %463 = zext i32 %462 to i64
  %464 = ashr i64 %458, %463
  %465 = and i64 %464, 3
  %466 = trunc i64 %465 to i32
  store i32 %466, i32* %27, align 4
  %467 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %19, align 8
  %468 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %467, i32 0, i32 6
  %469 = load i64, i64* %468, align 8
  %470 = icmp ne i64 %469, 0
  br i1 %470, label %471, label %475

471:                                              ; preds = %457
  %472 = load i32, i32* %27, align 4
  %473 = load i64, i64* %11, align 8
  %474 = call i32 @haswell_chan_hash(i32 %472, i64 %473)
  store i32 %474, i32* %27, align 4
  br label %475

475:                                              ; preds = %471, %457
  br label %476

476:                                              ; preds = %475, %453
  %477 = load i32, i32* %27, align 4
  %478 = load i32, i32* %35, align 4
  %479 = srem i32 %477, %478
  store i32 %479, i32* %27, align 4
  %480 = load i32, i32* %27, align 4
  switch i32 %480, label %493 [
    i32 0, label %481
    i32 1, label %484
    i32 2, label %487
    i32 3, label %490
  ]

481:                                              ; preds = %476
  %482 = load i32, i32* %33, align 4
  %483 = call i32 @TAD_TGT0(i32 %482)
  store i32 %483, i32* %28, align 4
  br label %498

484:                                              ; preds = %476
  %485 = load i32, i32* %33, align 4
  %486 = call i32 @TAD_TGT1(i32 %485)
  store i32 %486, i32* %28, align 4
  br label %498

487:                                              ; preds = %476
  %488 = load i32, i32* %33, align 4
  %489 = call i32 @TAD_TGT2(i32 %488)
  store i32 %489, i32* %28, align 4
  br label %498

490:                                              ; preds = %476
  %491 = load i32, i32* %33, align 4
  %492 = call i32 @TAD_TGT3(i32 %491)
  store i32 %492, i32* %28, align 4
  br label %498

493:                                              ; preds = %476
  %494 = load i8*, i8** %17, align 8
  %495 = call i32 (i8*, i8*, ...) @sprintf(i8* %494, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0))
  %496 = load i32, i32* @EINVAL, align 4
  %497 = sub nsw i32 0, %496
  store i32 %497, i32* %9, align 4
  store i32 1, i32* %47, align 4
  br label %737

498:                                              ; preds = %490, %487, %484, %481
  %499 = load i32, i32* %28, align 4
  %500 = shl i32 1, %499
  %501 = sext i32 %500 to i64
  %502 = load i64*, i64** %14, align 8
  store i64 %501, i64* %502, align 8
  %503 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %19, align 8
  %504 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %503, i32 0, i32 3
  %505 = load %struct.pci_dev**, %struct.pci_dev*** %504, align 8
  %506 = load i32, i32* %28, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %505, i64 %507
  %509 = load %struct.pci_dev*, %struct.pci_dev** %508, align 8
  %510 = load i32*, i32** @tad_ch_nilv_offset, align 8
  %511 = load i32, i32* %23, align 4
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds i32, i32* %510, i64 %512
  %514 = load i32, i32* %513, align 4
  %515 = call i32 @pci_read_config_dword(%struct.pci_dev* %509, i32 %514, i32* %39)
  %516 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %19, align 8
  %517 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %516, i32 0, i32 0
  %518 = load i64, i64* %517, align 8
  %519 = load i64, i64* @FULL_MIRRORING, align 8
  %520 = icmp eq i64 %518, %519
  br i1 %520, label %530, label %521

521:                                              ; preds = %498
  %522 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %19, align 8
  %523 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %522, i32 0, i32 0
  %524 = load i64, i64* %523, align 8
  %525 = load i64, i64* @ADDR_RANGE_MIRRORING, align 8
  %526 = icmp eq i64 %524, %525
  br i1 %526, label %527, label %554

527:                                              ; preds = %521
  %528 = load i32, i32* %23, align 4
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %530, label %554

530:                                              ; preds = %527, %498
  %531 = load i32, i32* %28, align 4
  %532 = add nsw i32 %531, 2
  %533 = srem i32 %532, 4
  %534 = shl i32 1, %533
  %535 = sext i32 %534 to i64
  %536 = load i64*, i64** %14, align 8
  %537 = load i64, i64* %536, align 8
  %538 = or i64 %537, %535
  store i64 %538, i64* %536, align 8
  %539 = load i32, i32* %35, align 4
  switch i32 %539, label %546 [
    i32 2, label %540
    i32 4, label %540
  ]

540:                                              ; preds = %530, %530
  %541 = load i32, i32* %36, align 4
  %542 = shl i32 1, %541
  %543 = load i32, i32* %35, align 4
  %544 = ashr i32 %543, 1
  %545 = mul nsw i32 %542, %544
  store i32 %545, i32* %25, align 4
  br label %551

546:                                              ; preds = %530
  %547 = load i8*, i8** %17, align 8
  %548 = call i32 (i8*, i8*, ...) @sprintf(i8* %547, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0))
  %549 = load i32, i32* @EINVAL, align 4
  %550 = sub nsw i32 0, %549
  store i32 %550, i32* %9, align 4
  store i32 1, i32* %47, align 4
  br label %737

551:                                              ; preds = %540
  %552 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %19, align 8
  %553 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %552, i32 0, i32 1
  store i32 1, i32* %553, align 8
  br label %561

554:                                              ; preds = %527, %521
  %555 = load i32, i32* %36, align 4
  %556 = shl i32 1, %555
  %557 = load i32, i32* %35, align 4
  %558 = mul nsw i32 %556, %557
  store i32 %558, i32* %25, align 4
  %559 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %19, align 8
  %560 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %559, i32 0, i32 1
  store i32 0, i32* %560, align 8
  br label %561

561:                                              ; preds = %554, %551
  %562 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %19, align 8
  %563 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %562, i32 0, i32 5
  %564 = load i64, i64* %563, align 8
  %565 = icmp ne i64 %564, 0
  br i1 %565, label %566, label %575

566:                                              ; preds = %561
  %567 = load i32, i32* %28, align 4
  %568 = add nsw i32 %567, 1
  %569 = srem i32 %568, 4
  %570 = shl i32 1, %569
  %571 = sext i32 %570 to i64
  %572 = load i64*, i64** %14, align 8
  %573 = load i64, i64* %572, align 8
  %574 = or i64 %573, %571
  store i64 %574, i64* %572, align 8
  br label %575

575:                                              ; preds = %566, %561
  %576 = load i32, i32* %39, align 4
  %577 = call i64 @TAD_OFFSET(i32 %576)
  store i64 %577, i64* %44, align 8
  %578 = load i32, i32* %23, align 4
  %579 = load i64, i64* %11, align 8
  %580 = load i64, i64* %45, align 8
  %581 = load i32, i32* %36, align 4
  %582 = load i32, i32* %35, align 4
  %583 = load i64, i64* %44, align 8
  %584 = load i32, i32* %27, align 4
  %585 = load i32, i32* %28, align 4
  %586 = load i64*, i64** %14, align 8
  %587 = load i64, i64* %586, align 8
  %588 = call i32 (i32, i8*, i32, i64, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([140 x i8], [140 x i8]* @.str.15, i64 0, i64 0), i32 %578, i64 %579, i64 %580, i32 %581, i32 %582, i64 %583, i32 %584, i32 %585, i64 %587)
  %589 = load i64, i64* %44, align 8
  %590 = load i64, i64* %11, align 8
  %591 = icmp sgt i64 %589, %590
  br i1 %591, label %592, label %599

592:                                              ; preds = %575
  %593 = load i8*, i8** %17, align 8
  %594 = load i64, i64* %44, align 8
  %595 = load i64, i64* %11, align 8
  %596 = call i32 (i8*, i8*, ...) @sprintf(i8* %593, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.16, i64 0, i64 0), i64 %594, i64 %595)
  %597 = load i32, i32* @EINVAL, align 4
  %598 = sub nsw i32 0, %597
  store i32 %598, i32* %9, align 4
  store i32 1, i32* %47, align 4
  br label %737

599:                                              ; preds = %575
  %600 = load i64, i64* %11, align 8
  %601 = load i64, i64* %44, align 8
  %602 = sub nsw i64 %600, %601
  store i64 %602, i64* %43, align 8
  %603 = load i32, i32* %30, align 4
  %604 = add nsw i32 6, %603
  %605 = load i64, i64* %43, align 8
  %606 = zext i32 %604 to i64
  %607 = ashr i64 %605, %606
  store i64 %607, i64* %43, align 8
  %608 = load i32, i32* %25, align 4
  %609 = sext i32 %608 to i64
  %610 = load i64, i64* %43, align 8
  %611 = sdiv i64 %610, %609
  store i64 %611, i64* %43, align 8
  %612 = load i32, i32* %30, align 4
  %613 = add nsw i32 6, %612
  %614 = load i64, i64* %43, align 8
  %615 = zext i32 %613 to i64
  %616 = shl i64 %614, %615
  store i64 %616, i64* %43, align 8
  %617 = load i64, i64* %11, align 8
  %618 = load i32, i32* %30, align 4
  %619 = add nsw i32 6, %618
  %620 = shl i32 1, %619
  %621 = sub nsw i32 %620, 1
  %622 = sext i32 %621 to i64
  %623 = and i64 %617, %622
  %624 = load i64, i64* %43, align 8
  %625 = or i64 %624, %623
  store i64 %625, i64* %43, align 8
  store i32 0, i32* %21, align 4
  br label %626

626:                                              ; preds = %674, %599
  %627 = load i32, i32* %21, align 4
  %628 = load i32, i32* @MAX_RIR_RANGES, align 4
  %629 = icmp slt i32 %627, %628
  br i1 %629, label %630, label %677

630:                                              ; preds = %626
  %631 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %19, align 8
  %632 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %631, i32 0, i32 3
  %633 = load %struct.pci_dev**, %struct.pci_dev*** %632, align 8
  %634 = load i32, i32* %28, align 4
  %635 = sext i32 %634 to i64
  %636 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %633, i64 %635
  %637 = load %struct.pci_dev*, %struct.pci_dev** %636, align 8
  %638 = load i32*, i32** @rir_way_limit, align 8
  %639 = load i32, i32* %21, align 4
  %640 = sext i32 %639 to i64
  %641 = getelementptr inbounds i32, i32* %638, i64 %640
  %642 = load i32, i32* %641, align 4
  %643 = call i32 @pci_read_config_dword(%struct.pci_dev* %637, i32 %642, i32* %33)
  %644 = load i32, i32* %33, align 4
  %645 = call i32 @IS_RIR_VALID(i32 %644)
  %646 = icmp ne i32 %645, 0
  br i1 %646, label %648, label %647

647:                                              ; preds = %630
  br label %674

648:                                              ; preds = %630
  %649 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %19, align 8
  %650 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %649, i32 0, i32 2
  %651 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %650, i32 0, i32 4
  %652 = load i64 (i32)*, i64 (i32)** %651, align 8
  %653 = load i32, i32* %33, align 4
  %654 = call i64 %652(i32 %653)
  store i64 %654, i64* %45, align 8
  %655 = load i64, i64* %45, align 8
  %656 = ashr i64 %655, 20
  %657 = call i32 @div_u64_rem(i64 %656, i32 1024, i32* %41)
  store i32 %657, i32* %42, align 4
  %658 = load i32, i32* %21, align 4
  %659 = load i32, i32* %42, align 4
  %660 = sext i32 %659 to i64
  %661 = load i32, i32* %41, align 4
  %662 = mul nsw i32 %661, 1000
  %663 = sdiv i32 %662, 1024
  %664 = load i64, i64* %45, align 8
  %665 = load i32, i32* %33, align 4
  %666 = call i32 @RIR_WAY(i32 %665)
  %667 = shl i32 1, %666
  %668 = call i32 (i32, i8*, i32, i64, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.17, i64 0, i64 0), i32 %658, i64 %660, i32 %663, i64 %664, i32 %667)
  %669 = load i64, i64* %43, align 8
  %670 = load i64, i64* %45, align 8
  %671 = icmp sle i64 %669, %670
  br i1 %671, label %672, label %673

672:                                              ; preds = %648
  br label %677

673:                                              ; preds = %648
  br label %674

674:                                              ; preds = %673, %647
  %675 = load i32, i32* %21, align 4
  %676 = add nsw i32 %675, 1
  store i32 %676, i32* %21, align 4
  br label %626

677:                                              ; preds = %672, %626
  %678 = load i32, i32* %21, align 4
  %679 = load i32, i32* @MAX_RIR_RANGES, align 4
  %680 = icmp eq i32 %678, %679
  br i1 %680, label %681, label %687

681:                                              ; preds = %677
  %682 = load i8*, i8** %17, align 8
  %683 = load i64, i64* %43, align 8
  %684 = call i32 (i8*, i8*, ...) @sprintf(i8* %682, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.18, i64 0, i64 0), i64 %683)
  %685 = load i32, i32* @EINVAL, align 4
  %686 = sub nsw i32 0, %685
  store i32 %686, i32* %9, align 4
  store i32 1, i32* %47, align 4
  br label %737

687:                                              ; preds = %677
  %688 = load i32, i32* %33, align 4
  %689 = call i32 @RIR_WAY(i32 %688)
  store i32 %689, i32* %40, align 4
  %690 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %19, align 8
  %691 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %690, i32 0, i32 4
  %692 = load i64, i64* %691, align 8
  %693 = icmp ne i64 %692, 0
  br i1 %693, label %694, label %698

694:                                              ; preds = %687
  %695 = load i64, i64* %43, align 8
  %696 = ashr i64 %695, 6
  %697 = trunc i64 %696 to i32
  store i32 %697, i32* %27, align 4
  br label %702

698:                                              ; preds = %687
  %699 = load i64, i64* %43, align 8
  %700 = ashr i64 %699, 13
  %701 = trunc i64 %700 to i32
  store i32 %701, i32* %27, align 4
  br label %702

702:                                              ; preds = %698, %694
  %703 = load i32, i32* %40, align 4
  %704 = shl i32 1, %703
  %705 = load i32, i32* %27, align 4
  %706 = srem i32 %705, %704
  store i32 %706, i32* %27, align 4
  %707 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %19, align 8
  %708 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %707, i32 0, i32 3
  %709 = load %struct.pci_dev**, %struct.pci_dev*** %708, align 8
  %710 = load i32, i32* %28, align 4
  %711 = sext i32 %710 to i64
  %712 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %709, i64 %711
  %713 = load %struct.pci_dev*, %struct.pci_dev** %712, align 8
  %714 = load i32**, i32*** @rir_offset, align 8
  %715 = load i32, i32* %21, align 4
  %716 = sext i32 %715 to i64
  %717 = getelementptr inbounds i32*, i32** %714, i64 %716
  %718 = load i32*, i32** %717, align 8
  %719 = load i32, i32* %27, align 4
  %720 = sext i32 %719 to i64
  %721 = getelementptr inbounds i32, i32* %718, i64 %720
  %722 = load i32, i32* %721, align 4
  %723 = call i32 @pci_read_config_dword(%struct.pci_dev* %713, i32 %722, i32* %33)
  %724 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %19, align 8
  %725 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %724, i32 0, i32 2
  %726 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %725, i32 0, i32 3
  %727 = load i64, i64* %726, align 8
  %728 = load i32, i32* %33, align 4
  %729 = call i32 @RIR_RNK_TGT(i64 %727, i32 %728)
  %730 = load i32*, i32** %15, align 8
  store i32 %729, i32* %730, align 4
  %731 = load i32, i32* %21, align 4
  %732 = load i64, i64* %43, align 8
  %733 = load i64, i64* %45, align 8
  %734 = load i32, i32* %40, align 4
  %735 = load i32, i32* %27, align 4
  %736 = call i32 (i32, i8*, i32, i64, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.19, i64 0, i64 0), i32 %731, i64 %732, i64 %733, i32 %734, i32 %735)
  store i32 0, i32* %9, align 4
  store i32 1, i32* %47, align 4
  br label %737

737:                                              ; preds = %702, %681, %592, %546, %493, %440, %421, %389, %263, %141, %119, %78, %66
  %738 = load i8*, i8** %31, align 8
  call void @llvm.stackrestore(i8* %738)
  %739 = load i32, i32* %9, align 4
  ret i32 %739
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #2

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #2

declare dso_local i32 @DRAM_RULE_ENABLE(i32) #2

declare dso_local i8* @show_dram_attr(i32) #2

declare dso_local i32 @sad_pkg(i32, i32, i32) #2

declare dso_local i32 @edac_dbg(i32, i8*, i32, i64, ...) #2

declare dso_local i32 @A7MODE(i32) #2

declare dso_local i32 @GET_BITFIELD(i32, i32, i32) #2

declare dso_local i32 @sad_pkg_socket(i32) #2

declare dso_local i32 @sad_pkg_ha(i32) #2

declare dso_local %struct.mem_ctl_info* @get_mci_for_node_id(i32, i32) #2

declare dso_local i64 @TAD_LIMIT(i32) #2

declare dso_local i32 @TAD_CH(i32) #2

declare dso_local i32 @TAD_SOCK(i32) #2

declare dso_local i32 @haswell_chan_hash(i32, i64) #2

declare dso_local i32 @TAD_TGT0(i32) #2

declare dso_local i32 @TAD_TGT1(i32) #2

declare dso_local i32 @TAD_TGT2(i32) #2

declare dso_local i32 @TAD_TGT3(i32) #2

declare dso_local i64 @TAD_OFFSET(i32) #2

declare dso_local i32 @IS_RIR_VALID(i32) #2

declare dso_local i32 @div_u64_rem(i64, i32, i32*) #2

declare dso_local i32 @RIR_WAY(i32) #2

declare dso_local i32 @RIR_RNK_TGT(i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
