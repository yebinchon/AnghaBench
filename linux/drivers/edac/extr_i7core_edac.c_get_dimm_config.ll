; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i7core_edac.c_get_dimm_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i7core_edac.c_get_dimm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, i32, i32, %struct.i7core_pvt* }
%struct.i7core_pvt = type { %struct.TYPE_4__*, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.pci_dev***, %struct.pci_dev** }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.pci_dev = type { i32 }
%struct.dimm_info = type { i32, i32, i32, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@MC_CONTROL = common dso_local global i32 0, align 4
@MC_STATUS = common dso_local global i32 0, align 4
@MC_MAX_DOD = common dso_local global i32 0, align 4
@MC_CHANNEL_MAPPER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"QPI %d control=0x%08x status=0x%08x dod=0x%08x map=0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"ECC enabled with x%d SDCC\0A\00", align 1
@EDAC_S8ECD8ED = common dso_local global i32 0, align 4
@EDAC_S4ECD4ED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"ECC disabled\0A\00", align 1
@EDAC_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [60 x i8] c"DOD Max limits: DIMMS: %d, %d-ranked, %d-banked x%x x 0x%x\0A\00", align 1
@NUM_CHANS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Channel %i is not active\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Channel %i is disabled\0A\00", align 1
@MC_CHANNEL_DIMM_INIT_PARAMS = common dso_local global i32 0, align 4
@THREE_DIMMS_PRESENT = common dso_local global i32 0, align 4
@SINGLE_QUAD_RANK_PRESENT = common dso_local global i32 0, align 4
@QUAD_RANK_PRESENT = common dso_local global i32 0, align 4
@REGISTERED_DIMM = common dso_local global i32 0, align 4
@MEM_RDDR3 = common dso_local global i32 0, align 4
@MEM_DDR3 = common dso_local global i32 0, align 4
@MC_DOD_CH_DIMM0 = common dso_local global i32 0, align 4
@MC_DOD_CH_DIMM1 = common dso_local global i32 0, align 4
@MC_DOD_CH_DIMM2 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"Ch%d phy rd%d, wr%d (0x%08x): %s%s%s%cDIMMs\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"3DIMMS \00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"SINGLE_4R \00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"HAS_4R \00", align 1
@.str.11 = private unnamed_addr constant [68 x i8] c"\09dimm %d %d MiB offset: %x, bank: %d, rank: %d, row: %#x, col: %#x\0A\00", align 1
@DEV_X4 = common dso_local global i32 0, align 4
@DEV_X8 = common dso_local global i32 0, align 4
@DEV_X16 = common dso_local global i32 0, align 4
@DEV_UNKNOWN = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [25 x i8] c"CPU#%uChannel#%u_DIMM#%u\00", align 1
@MC_SAG_CH_0 = common dso_local global i32 0, align 4
@MC_SAG_CH_1 = common dso_local global i32 0, align 4
@MC_SAG_CH_2 = common dso_local global i32 0, align 4
@MC_SAG_CH_3 = common dso_local global i32 0, align 4
@MC_SAG_CH_4 = common dso_local global i32 0, align 4
@MC_SAG_CH_5 = common dso_local global i32 0, align 4
@MC_SAG_CH_6 = common dso_local global i32 0, align 4
@MC_SAG_CH_7 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [29 x i8] c"\09[%i] DIVBY3\09REMOVED\09OFFSET\0A\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"\09\09%#x\09%#x\09%#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*)* @get_dimm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_dimm_config(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca %struct.i7core_pvt*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dimm_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [3 x i32], align 4
  %13 = alloca [8 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %3, align 8
  %20 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %21 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %20, i32 0, i32 3
  %22 = load %struct.i7core_pvt*, %struct.i7core_pvt** %21, align 8
  store %struct.i7core_pvt* %22, %struct.i7core_pvt** %4, align 8
  %23 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %24 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %23, i32 0, i32 4
  %25 = load %struct.pci_dev**, %struct.pci_dev*** %24, align 8
  %26 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %25, i64 0
  %27 = load %struct.pci_dev*, %struct.pci_dev** %26, align 8
  store %struct.pci_dev* %27, %struct.pci_dev** %5, align 8
  %28 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %29 = icmp ne %struct.pci_dev* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %492

33:                                               ; preds = %1
  %34 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %35 = load i32, i32* @MC_CONTROL, align 4
  %36 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %37 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = call i32 @pci_read_config_dword(%struct.pci_dev* %34, i32 %35, i32* %38)
  %40 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %41 = load i32, i32* @MC_STATUS, align 4
  %42 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %43 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = call i32 @pci_read_config_dword(%struct.pci_dev* %40, i32 %41, i32* %44)
  %46 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %47 = load i32, i32* @MC_MAX_DOD, align 4
  %48 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %49 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = call i32 @pci_read_config_dword(%struct.pci_dev* %46, i32 %47, i32* %50)
  %52 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %53 = load i32, i32* @MC_CHANNEL_MAPPER, align 4
  %54 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %55 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 3
  %57 = call i32 @pci_read_config_dword(%struct.pci_dev* %52, i32 %53, i32* %56)
  %58 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %59 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %64 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %68 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %72 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %76 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %66, i32 %70, i32 %74, i32 %78)
  %80 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %81 = call i64 @ECC_ENABLED(%struct.i7core_pvt* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %33
  %84 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %85 = call i64 @ECCx8(%struct.i7core_pvt* %84)
  %86 = icmp ne i64 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 8, i32 4
  %89 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %91 = call i64 @ECCx8(%struct.i7core_pvt* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %83
  %94 = load i32, i32* @EDAC_S8ECD8ED, align 4
  store i32 %94, i32* %8, align 4
  br label %97

95:                                               ; preds = %83
  %96 = load i32, i32* @EDAC_S4ECD4ED, align 4
  store i32 %96, i32* %8, align 4
  br label %97

97:                                               ; preds = %95, %93
  br label %101

98:                                               ; preds = %33
  %99 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %100 = load i32, i32* @EDAC_NONE, align 4
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %98, %97
  %102 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %103 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @numdimms(i32 %105)
  %107 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %108 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = ashr i32 %110, 2
  %112 = call i32 @numrank(i32 %111)
  %113 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %114 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = ashr i32 %116, 4
  %118 = call i32 @numbank(i32 %117)
  %119 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %120 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = ashr i32 %122, 6
  %124 = call i32 @numrow(i32 %123)
  %125 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %126 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = ashr i32 %128, 9
  %130 = call i32 @numcol(i32 %129)
  %131 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %106, i32 %112, i32 %118, i32 %124, i32 %130)
  store i32 0, i32* %6, align 4
  br label %132

132:                                              ; preds = %488, %101
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* @NUM_CHANS, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %491

136:                                              ; preds = %132
  %137 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %138 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %137, i32 0, i32 3
  %139 = load %struct.pci_dev***, %struct.pci_dev**** %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.pci_dev**, %struct.pci_dev*** %139, i64 %141
  %143 = load %struct.pci_dev**, %struct.pci_dev*** %142, align 8
  %144 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %143, i64 0
  %145 = load %struct.pci_dev*, %struct.pci_dev** %144, align 8
  %146 = icmp ne %struct.pci_dev* %145, null
  br i1 %146, label %148, label %147

147:                                              ; preds = %136
  br label %488

148:                                              ; preds = %136
  %149 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %150 = load i32, i32* %6, align 4
  %151 = call i32 @CH_ACTIVE(%struct.i7core_pvt* %149, i32 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %148
  %154 = load i32, i32* %6, align 4
  %155 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %154)
  br label %488

156:                                              ; preds = %148
  %157 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %158 = load i32, i32* %6, align 4
  %159 = call i64 @CH_DISABLED(%struct.i7core_pvt* %157, i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load i32, i32* %6, align 4
  %163 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %162)
  br label %488

164:                                              ; preds = %156
  %165 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %166 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %165, i32 0, i32 3
  %167 = load %struct.pci_dev***, %struct.pci_dev**** %166, align 8
  %168 = load i32, i32* %6, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.pci_dev**, %struct.pci_dev*** %167, i64 %169
  %171 = load %struct.pci_dev**, %struct.pci_dev*** %170, align 8
  %172 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %171, i64 0
  %173 = load %struct.pci_dev*, %struct.pci_dev** %172, align 8
  %174 = load i32, i32* @MC_CHANNEL_DIMM_INIT_PARAMS, align 4
  %175 = call i32 @pci_read_config_dword(%struct.pci_dev* %173, i32 %174, i32* %11)
  %176 = load i32, i32* %11, align 4
  %177 = load i32, i32* @THREE_DIMMS_PRESENT, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %188

180:                                              ; preds = %164
  %181 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %182 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %181, i32 0, i32 1
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %182, align 8
  %184 = load i32, i32* %6, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  store i32 1, i32* %187, align 4
  br label %188

188:                                              ; preds = %180, %164
  %189 = load i32, i32* %11, align 4
  %190 = load i32, i32* @SINGLE_QUAD_RANK_PRESENT, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %201

193:                                              ; preds = %188
  %194 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %195 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %194, i32 0, i32 1
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %195, align 8
  %197 = load i32, i32* %6, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 1
  store i32 1, i32* %200, align 4
  br label %201

201:                                              ; preds = %193, %188
  %202 = load i32, i32* %11, align 4
  %203 = load i32, i32* @QUAD_RANK_PRESENT, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %214

206:                                              ; preds = %201
  %207 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %208 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %207, i32 0, i32 1
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %208, align 8
  %210 = load i32, i32* %6, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 2
  store i32 1, i32* %213, align 4
  br label %214

214:                                              ; preds = %206, %201
  %215 = load i32, i32* %11, align 4
  %216 = load i32, i32* @REGISTERED_DIMM, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %214
  %220 = load i32, i32* @MEM_RDDR3, align 4
  store i32 %220, i32* %9, align 4
  br label %223

221:                                              ; preds = %214
  %222 = load i32, i32* @MEM_DDR3, align 4
  store i32 %222, i32* %9, align 4
  br label %223

223:                                              ; preds = %221, %219
  %224 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %225 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %224, i32 0, i32 3
  %226 = load %struct.pci_dev***, %struct.pci_dev**** %225, align 8
  %227 = load i32, i32* %6, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.pci_dev**, %struct.pci_dev*** %226, i64 %228
  %230 = load %struct.pci_dev**, %struct.pci_dev*** %229, align 8
  %231 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %230, i64 1
  %232 = load %struct.pci_dev*, %struct.pci_dev** %231, align 8
  %233 = load i32, i32* @MC_DOD_CH_DIMM0, align 4
  %234 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %235 = call i32 @pci_read_config_dword(%struct.pci_dev* %232, i32 %233, i32* %234)
  %236 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %237 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %236, i32 0, i32 3
  %238 = load %struct.pci_dev***, %struct.pci_dev**** %237, align 8
  %239 = load i32, i32* %6, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.pci_dev**, %struct.pci_dev*** %238, i64 %240
  %242 = load %struct.pci_dev**, %struct.pci_dev*** %241, align 8
  %243 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %242, i64 1
  %244 = load %struct.pci_dev*, %struct.pci_dev** %243, align 8
  %245 = load i32, i32* @MC_DOD_CH_DIMM1, align 4
  %246 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 1
  %247 = call i32 @pci_read_config_dword(%struct.pci_dev* %244, i32 %245, i32* %246)
  %248 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %249 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %248, i32 0, i32 3
  %250 = load %struct.pci_dev***, %struct.pci_dev**** %249, align 8
  %251 = load i32, i32* %6, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.pci_dev**, %struct.pci_dev*** %250, i64 %252
  %254 = load %struct.pci_dev**, %struct.pci_dev*** %253, align 8
  %255 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %254, i64 1
  %256 = load %struct.pci_dev*, %struct.pci_dev** %255, align 8
  %257 = load i32, i32* @MC_DOD_CH_DIMM2, align 4
  %258 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 2
  %259 = call i32 @pci_read_config_dword(%struct.pci_dev* %256, i32 %257, i32* %258)
  %260 = load i32, i32* %6, align 4
  %261 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %262 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %261, i32 0, i32 2
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* %6, align 4
  %266 = call i32 @RDLCH(i32 %264, i32 %265)
  %267 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %268 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %267, i32 0, i32 2
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* %6, align 4
  %272 = call i32 @WRLCH(i32 %270, i32 %271)
  %273 = load i32, i32* %11, align 4
  %274 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %275 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %274, i32 0, i32 1
  %276 = load %struct.TYPE_6__*, %struct.TYPE_6__** %275, align 8
  %277 = load i32, i32* %6, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = icmp ne i32 %281, 0
  %283 = zext i1 %282 to i64
  %284 = select i1 %282, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %285 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %286 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %285, i32 0, i32 1
  %287 = load %struct.TYPE_6__*, %struct.TYPE_6__** %286, align 8
  %288 = load i32, i32* %6, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = icmp ne i32 %292, 0
  %294 = zext i1 %293 to i64
  %295 = select i1 %293, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %296 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %297 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %296, i32 0, i32 1
  %298 = load %struct.TYPE_6__*, %struct.TYPE_6__** %297, align 8
  %299 = load i32, i32* %6, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %298, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 4
  %304 = icmp ne i32 %303, 0
  %305 = zext i1 %304 to i64
  %306 = select i1 %304, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %307 = load i32, i32* %11, align 4
  %308 = load i32, i32* @REGISTERED_DIMM, align 4
  %309 = and i32 %307, %308
  %310 = icmp ne i32 %309, 0
  %311 = zext i1 %310 to i64
  %312 = select i1 %310, i32 82, i32 85
  %313 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %260, i32 %266, i32 %272, i32 %273, i8* %284, i8* %295, i8* %306, i32 %312)
  store i32 0, i32* %7, align 4
  br label %314

314:                                              ; preds = %424, %223
  %315 = load i32, i32* %7, align 4
  %316 = icmp slt i32 %315, 3
  br i1 %316, label %317, label %427

317:                                              ; preds = %314
  %318 = load i32, i32* %7, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 %319
  %321 = load i32, i32* %320, align 4
  %322 = call i32 @DIMM_PRESENT(i32 %321)
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %325, label %324

324:                                              ; preds = %317
  br label %424

325:                                              ; preds = %317
  %326 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %327 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 8
  %329 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %330 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %333 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = load i32, i32* %6, align 4
  %336 = load i32, i32* %7, align 4
  %337 = call %struct.dimm_info* @EDAC_DIMM_PTR(i32 %328, i32 %331, i32 %334, i32 %335, i32 %336, i32 0)
  store %struct.dimm_info* %337, %struct.dimm_info** %10, align 8
  %338 = load i32, i32* %7, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = call i32 @MC_DOD_NUMBANK(i32 %341)
  %343 = call i32 @numbank(i32 %342)
  store i32 %343, i32* %14, align 4
  %344 = load i32, i32* %7, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 %345
  %347 = load i32, i32* %346, align 4
  %348 = call i32 @MC_DOD_NUMRANK(i32 %347)
  %349 = call i32 @numrank(i32 %348)
  store i32 %349, i32* %15, align 4
  %350 = load i32, i32* %7, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 %351
  %353 = load i32, i32* %352, align 4
  %354 = call i32 @MC_DOD_NUMROW(i32 %353)
  %355 = call i32 @numrow(i32 %354)
  store i32 %355, i32* %16, align 4
  %356 = load i32, i32* %7, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 %357
  %359 = load i32, i32* %358, align 4
  %360 = call i32 @MC_DOD_NUMCOL(i32 %359)
  %361 = call i32 @numcol(i32 %360)
  store i32 %361, i32* %17, align 4
  %362 = load i32, i32* %16, align 4
  %363 = load i32, i32* %17, align 4
  %364 = mul nsw i32 %362, %363
  %365 = load i32, i32* %14, align 4
  %366 = mul nsw i32 %364, %365
  %367 = load i32, i32* %15, align 4
  %368 = mul nsw i32 %366, %367
  %369 = ashr i32 %368, 17
  store i32 %369, i32* %18, align 4
  %370 = load i32, i32* %7, align 4
  %371 = load i32, i32* %18, align 4
  %372 = load i32, i32* %7, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 %373
  %375 = load i32, i32* %374, align 4
  %376 = call i32 @RANKOFFSET(i32 %375)
  %377 = load i32, i32* %14, align 4
  %378 = load i32, i32* %15, align 4
  %379 = load i32, i32* %16, align 4
  %380 = load i32, i32* %17, align 4
  %381 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.11, i64 0, i64 0), i32 %370, i32 %371, i32 %376, i32 %377, i32 %378, i32 %379, i32 %380)
  %382 = load i32, i32* %18, align 4
  %383 = call i32 @MiB_TO_PAGES(i32 %382)
  store i32 %383, i32* %19, align 4
  %384 = load i32, i32* %19, align 4
  %385 = load %struct.dimm_info*, %struct.dimm_info** %10, align 8
  %386 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %385, i32 0, i32 0
  store i32 %384, i32* %386, align 4
  %387 = load i32, i32* %14, align 4
  switch i32 %387, label %400 [
    i32 4, label %388
    i32 8, label %392
    i32 16, label %396
  ]

388:                                              ; preds = %325
  %389 = load i32, i32* @DEV_X4, align 4
  %390 = load %struct.dimm_info*, %struct.dimm_info** %10, align 8
  %391 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %390, i32 0, i32 5
  store i32 %389, i32* %391, align 4
  br label %404

392:                                              ; preds = %325
  %393 = load i32, i32* @DEV_X8, align 4
  %394 = load %struct.dimm_info*, %struct.dimm_info** %10, align 8
  %395 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %394, i32 0, i32 5
  store i32 %393, i32* %395, align 4
  br label %404

396:                                              ; preds = %325
  %397 = load i32, i32* @DEV_X16, align 4
  %398 = load %struct.dimm_info*, %struct.dimm_info** %10, align 8
  %399 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %398, i32 0, i32 5
  store i32 %397, i32* %399, align 4
  br label %404

400:                                              ; preds = %325
  %401 = load i32, i32* @DEV_UNKNOWN, align 4
  %402 = load %struct.dimm_info*, %struct.dimm_info** %10, align 8
  %403 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %402, i32 0, i32 5
  store i32 %401, i32* %403, align 4
  br label %404

404:                                              ; preds = %400, %396, %392, %388
  %405 = load %struct.dimm_info*, %struct.dimm_info** %10, align 8
  %406 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %405, i32 0, i32 4
  %407 = load i32, i32* %406, align 4
  %408 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %409 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %408, i32 0, i32 0
  %410 = load %struct.TYPE_4__*, %struct.TYPE_4__** %409, align 8
  %411 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 4
  %413 = load i32, i32* %6, align 4
  %414 = load i32, i32* %7, align 4
  %415 = call i32 @snprintf(i32 %407, i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 %412, i32 %413, i32 %414)
  %416 = load %struct.dimm_info*, %struct.dimm_info** %10, align 8
  %417 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %416, i32 0, i32 1
  store i32 8, i32* %417, align 4
  %418 = load i32, i32* %8, align 4
  %419 = load %struct.dimm_info*, %struct.dimm_info** %10, align 8
  %420 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %419, i32 0, i32 2
  store i32 %418, i32* %420, align 4
  %421 = load i32, i32* %9, align 4
  %422 = load %struct.dimm_info*, %struct.dimm_info** %10, align 8
  %423 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %422, i32 0, i32 3
  store i32 %421, i32* %423, align 4
  br label %424

424:                                              ; preds = %404, %324
  %425 = load i32, i32* %7, align 4
  %426 = add nsw i32 %425, 1
  store i32 %426, i32* %7, align 4
  br label %314

427:                                              ; preds = %314
  %428 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %429 = load i32, i32* @MC_SAG_CH_0, align 4
  %430 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %431 = call i32 @pci_read_config_dword(%struct.pci_dev* %428, i32 %429, i32* %430)
  %432 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %433 = load i32, i32* @MC_SAG_CH_1, align 4
  %434 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 1
  %435 = call i32 @pci_read_config_dword(%struct.pci_dev* %432, i32 %433, i32* %434)
  %436 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %437 = load i32, i32* @MC_SAG_CH_2, align 4
  %438 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 2
  %439 = call i32 @pci_read_config_dword(%struct.pci_dev* %436, i32 %437, i32* %438)
  %440 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %441 = load i32, i32* @MC_SAG_CH_3, align 4
  %442 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 3
  %443 = call i32 @pci_read_config_dword(%struct.pci_dev* %440, i32 %441, i32* %442)
  %444 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %445 = load i32, i32* @MC_SAG_CH_4, align 4
  %446 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 4
  %447 = call i32 @pci_read_config_dword(%struct.pci_dev* %444, i32 %445, i32* %446)
  %448 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %449 = load i32, i32* @MC_SAG_CH_5, align 4
  %450 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 5
  %451 = call i32 @pci_read_config_dword(%struct.pci_dev* %448, i32 %449, i32* %450)
  %452 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %453 = load i32, i32* @MC_SAG_CH_6, align 4
  %454 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 6
  %455 = call i32 @pci_read_config_dword(%struct.pci_dev* %452, i32 %453, i32* %454)
  %456 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %457 = load i32, i32* @MC_SAG_CH_7, align 4
  %458 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 7
  %459 = call i32 @pci_read_config_dword(%struct.pci_dev* %456, i32 %457, i32* %458)
  %460 = load i32, i32* %6, align 4
  %461 = call i32 (i32, i8*, ...) @edac_dbg(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i32 %460)
  store i32 0, i32* %7, align 4
  br label %462

462:                                              ; preds = %484, %427
  %463 = load i32, i32* %7, align 4
  %464 = icmp slt i32 %463, 8
  br i1 %464, label %465, label %487

465:                                              ; preds = %462
  %466 = load i32, i32* %7, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 %467
  %469 = load i32, i32* %468, align 4
  %470 = ashr i32 %469, 27
  %471 = and i32 %470, 1
  %472 = load i32, i32* %7, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 %473
  %475 = load i32, i32* %474, align 4
  %476 = ashr i32 %475, 24
  %477 = and i32 %476, 7
  %478 = load i32, i32* %7, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 %479
  %481 = load i32, i32* %480, align 4
  %482 = and i32 %481, 16777215
  %483 = call i32 (i32, i8*, ...) @edac_dbg(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32 %471, i32 %477, i32 %482)
  br label %484

484:                                              ; preds = %465
  %485 = load i32, i32* %7, align 4
  %486 = add nsw i32 %485, 1
  store i32 %486, i32* %7, align 4
  br label %462

487:                                              ; preds = %462
  br label %488

488:                                              ; preds = %487, %161, %153, %147
  %489 = load i32, i32* %6, align 4
  %490 = add nsw i32 %489, 1
  store i32 %490, i32* %6, align 4
  br label %132

491:                                              ; preds = %132
  store i32 0, i32* %2, align 4
  br label %492

492:                                              ; preds = %491, %30
  %493 = load i32, i32* %2, align 4
  ret i32 %493
}

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @edac_dbg(i32, i8*, ...) #1

declare dso_local i64 @ECC_ENABLED(%struct.i7core_pvt*) #1

declare dso_local i64 @ECCx8(%struct.i7core_pvt*) #1

declare dso_local i32 @numdimms(i32) #1

declare dso_local i32 @numrank(i32) #1

declare dso_local i32 @numbank(i32) #1

declare dso_local i32 @numrow(i32) #1

declare dso_local i32 @numcol(i32) #1

declare dso_local i32 @CH_ACTIVE(%struct.i7core_pvt*, i32) #1

declare dso_local i64 @CH_DISABLED(%struct.i7core_pvt*, i32) #1

declare dso_local i32 @RDLCH(i32, i32) #1

declare dso_local i32 @WRLCH(i32, i32) #1

declare dso_local i32 @DIMM_PRESENT(i32) #1

declare dso_local %struct.dimm_info* @EDAC_DIMM_PTR(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MC_DOD_NUMBANK(i32) #1

declare dso_local i32 @MC_DOD_NUMRANK(i32) #1

declare dso_local i32 @MC_DOD_NUMROW(i32) #1

declare dso_local i32 @MC_DOD_NUMCOL(i32) #1

declare dso_local i32 @RANKOFFSET(i32) #1

declare dso_local i32 @MiB_TO_PAGES(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
