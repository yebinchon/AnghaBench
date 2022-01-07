; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_sb_edac.c_sbridge_register_mci.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_sb_edac.c_sbridge_register_mci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edac_mc_layer = type { i32, i32, i32 }
%struct.sbridge_dev = type { %struct.mem_ctl_info*, i32, i32, i32, %struct.pci_dev** }
%struct.mem_ctl_info = type { i8*, i32*, i32*, i32, i32, i8*, i8*, i32, %struct.sbridge_pvt* }
%struct.sbridge_pvt = type { %struct.sbridge_dev*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32*, i8*, i8*, i8*, %struct.edac_mc_layer*, i8*, i8*, i32 }
%struct.pci_dev = type { i32 }

@EDAC_MC_LAYER_CHANNEL = common dso_local global i32 0, align 4
@KNL_MAX_CHANNELS = common dso_local global i32 0, align 4
@NUM_CHANNELS = common dso_local global i32 0, align 4
@EDAC_MC_LAYER_SLOT = common dso_local global i32 0, align 4
@MAX_DIMMS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"MC: mci = %p, dev = %p\0A\00", align 1
@MEM_FLAG_DDR4 = common dso_local global i32 0, align 4
@MEM_FLAG_DDR3 = common dso_local global i32 0, align 4
@EDAC_FLAG_NONE = common dso_local global i8* null, align 8
@EDAC_MOD_STR = common dso_local global i32 0, align 4
@IB_RANK_CFG_A = common dso_local global i32 0, align 4
@ibridge_get_tolm = common dso_local global i8* null, align 8
@ibridge_get_tohm = common dso_local global i8* null, align 8
@ibridge_dram_rule = common dso_local global %struct.edac_mc_layer* null, align 8
@get_memory_type = common dso_local global i8* null, align 8
@get_node_id = common dso_local global i8* null, align 8
@ibridge_get_ha = common dso_local global i8* null, align 8
@rir_limit = common dso_local global i8* null, align 8
@sad_limit = common dso_local global i8* null, align 8
@interleave_mode = common dso_local global i8* null, align 8
@dram_attr = common dso_local global i8* null, align 8
@ibridge_interleave_list = common dso_local global i8* null, align 8
@ibridge_interleave_pkg = common dso_local global i8* null, align 8
@ibridge_get_width = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Ivy Bridge SrcID#%d_Ha#%d\00", align 1
@SB_RANK_CFG_A = common dso_local global i32 0, align 4
@sbridge_get_tolm = common dso_local global i8* null, align 8
@sbridge_get_tohm = common dso_local global i8* null, align 8
@sbridge_dram_rule = common dso_local global %struct.edac_mc_layer* null, align 8
@sbridge_get_ha = common dso_local global i8* null, align 8
@sbridge_interleave_list = common dso_local global i8* null, align 8
@sbridge_interleave_pkg = common dso_local global i8* null, align 8
@sbridge_get_width = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"Sandy Bridge SrcID#%d_Ha#%d\00", align 1
@haswell_get_tolm = common dso_local global i8* null, align 8
@haswell_get_tohm = common dso_local global i8* null, align 8
@haswell_get_memory_type = common dso_local global i8* null, align 8
@haswell_get_node_id = common dso_local global i8* null, align 8
@haswell_rir_limit = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"Haswell SrcID#%d_Ha#%d\00", align 1
@broadwell_get_width = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"Broadwell SrcID#%d_Ha#%d\00", align 1
@knl_get_tolm = common dso_local global i8* null, align 8
@knl_get_tohm = common dso_local global i8* null, align 8
@knl_dram_rule = common dso_local global %struct.edac_mc_layer* null, align 8
@knl_get_memory_type = common dso_local global i8* null, align 8
@knl_get_node_id = common dso_local global i8* null, align 8
@knl_get_ha = common dso_local global i8* null, align 8
@knl_sad_limit = common dso_local global i8* null, align 8
@knl_interleave_mode = common dso_local global i8* null, align 8
@dram_attr_knl = common dso_local global i8* null, align 8
@knl_interleave_list = common dso_local global i8* null, align 8
@knl_get_width = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"Knights Landing SrcID#%d_Ha#%d\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"MC: failed to get_dimm_config()\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"MC: failed edac_mc_add_mc()\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbridge_dev*, i32)* @sbridge_register_mci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbridge_register_mci(%struct.sbridge_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sbridge_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mem_ctl_info*, align 8
  %7 = alloca [2 x %struct.edac_mc_layer], align 16
  %8 = alloca %struct.sbridge_pvt*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.sbridge_dev* %0, %struct.sbridge_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.sbridge_dev*, %struct.sbridge_dev** %4, align 8
  %12 = getelementptr inbounds %struct.sbridge_dev, %struct.sbridge_dev* %11, i32 0, i32 4
  %13 = load %struct.pci_dev**, %struct.pci_dev*** %12, align 8
  %14 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %13, i64 0
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %9, align 8
  %16 = load i32, i32* @EDAC_MC_LAYER_CHANNEL, align 4
  %17 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %7, i64 0, i64 0
  %18 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 129
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @KNL_MAX_CHANNELS, align 4
  br label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @NUM_CHANNELS, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %7, i64 0, i64 0
  %28 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 16
  %29 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %7, i64 0, i64 0
  %30 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %29, i32 0, i32 1
  store i32 0, i32* %30, align 4
  %31 = load i32, i32* @EDAC_MC_LAYER_SLOT, align 4
  %32 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %7, i64 0, i64 1
  %33 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, 129
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  br label %39

37:                                               ; preds = %25
  %38 = load i32, i32* @MAX_DIMMS, align 4
  br label %39

39:                                               ; preds = %37, %36
  %40 = phi i32 [ 1, %36 ], [ %38, %37 ]
  %41 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %7, i64 0, i64 1
  %42 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %7, i64 0, i64 1
  %44 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %43, i32 0, i32 1
  store i32 1, i32* %44, align 4
  %45 = load %struct.sbridge_dev*, %struct.sbridge_dev** %4, align 8
  %46 = getelementptr inbounds %struct.sbridge_dev, %struct.sbridge_dev* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %7, i64 0, i64 0
  %49 = call i8* @ARRAY_SIZE(%struct.edac_mc_layer* %48)
  %50 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %7, i64 0, i64 0
  %51 = call %struct.mem_ctl_info* @edac_mc_alloc(i32 %47, i8* %49, %struct.edac_mc_layer* %50, i32 136)
  store %struct.mem_ctl_info* %51, %struct.mem_ctl_info** %6, align 8
  %52 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %53 = icmp ne %struct.mem_ctl_info* %52, null
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %39
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %580

61:                                               ; preds = %39
  %62 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %63 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %64 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %63, i32 0, i32 0
  %65 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.mem_ctl_info* %62, i32* %64)
  %66 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %67 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %66, i32 0, i32 8
  %68 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %67, align 8
  store %struct.sbridge_pvt* %68, %struct.sbridge_pvt** %8, align 8
  %69 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %70 = call i32 @memset(%struct.sbridge_pvt* %69, i32 0, i32 136)
  %71 = load %struct.sbridge_dev*, %struct.sbridge_dev** %4, align 8
  %72 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %73 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %72, i32 0, i32 0
  store %struct.sbridge_dev* %71, %struct.sbridge_dev** %73, align 8
  %74 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %75 = load %struct.sbridge_dev*, %struct.sbridge_dev** %4, align 8
  %76 = getelementptr inbounds %struct.sbridge_dev, %struct.sbridge_dev* %75, i32 0, i32 0
  store %struct.mem_ctl_info* %74, %struct.mem_ctl_info** %76, align 8
  %77 = load i32, i32* %5, align 4
  %78 = icmp eq i32 %77, 129
  br i1 %78, label %79, label %81

79:                                               ; preds = %61
  %80 = load i32, i32* @MEM_FLAG_DDR4, align 4
  br label %83

81:                                               ; preds = %61
  %82 = load i32, i32* @MEM_FLAG_DDR3, align 4
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %80, %79 ], [ %82, %81 ]
  %85 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %86 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %85, i32 0, i32 7
  store i32 %84, i32* %86, align 8
  %87 = load i8*, i8** @EDAC_FLAG_NONE, align 8
  %88 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %89 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %88, i32 0, i32 6
  store i8* %87, i8** %89, align 8
  %90 = load i8*, i8** @EDAC_FLAG_NONE, align 8
  %91 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %92 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %91, i32 0, i32 5
  store i8* %90, i8** %92, align 8
  %93 = load i32, i32* @EDAC_MOD_STR, align 4
  %94 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %95 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 4
  %96 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %97 = call i32 @pci_name(%struct.pci_dev* %96)
  %98 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %99 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 8
  %100 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %101 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %100, i32 0, i32 2
  store i32* null, i32** %101, align 8
  %102 = load i32, i32* %5, align 4
  %103 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %104 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  store i32 %102, i32* %105, align 8
  %106 = load i32, i32* %5, align 4
  switch i32 %106, label %538 [
    i32 130, label %107
    i32 128, label %196
    i32 131, label %285
    i32 132, label %370
    i32 129, label %455
  ]

107:                                              ; preds = %83
  %108 = load i32, i32* @IB_RANK_CFG_A, align 4
  %109 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %110 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 15
  store i32 %108, i32* %111, align 8
  %112 = load i8*, i8** @ibridge_get_tolm, align 8
  %113 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %114 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 14
  store i8* %112, i8** %115, align 8
  %116 = load i8*, i8** @ibridge_get_tohm, align 8
  %117 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %118 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 13
  store i8* %116, i8** %119, align 8
  %120 = load %struct.edac_mc_layer*, %struct.edac_mc_layer** @ibridge_dram_rule, align 8
  %121 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %122 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 12
  store %struct.edac_mc_layer* %120, %struct.edac_mc_layer** %123, align 8
  %124 = load i8*, i8** @get_memory_type, align 8
  %125 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %126 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 11
  store i8* %124, i8** %127, align 8
  %128 = load i8*, i8** @get_node_id, align 8
  %129 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %130 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 10
  store i8* %128, i8** %131, align 8
  %132 = load i8*, i8** @ibridge_get_ha, align 8
  %133 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %134 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 9
  store i8* %132, i8** %135, align 8
  %136 = load i8*, i8** @rir_limit, align 8
  %137 = bitcast i8* %136 to i32*
  %138 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %139 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 8
  store i32* %137, i32** %140, align 8
  %141 = load i8*, i8** @sad_limit, align 8
  %142 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %143 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 7
  store i8* %141, i8** %144, align 8
  %145 = load i8*, i8** @interleave_mode, align 8
  %146 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %147 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 6
  store i8* %145, i8** %148, align 8
  %149 = load i8*, i8** @dram_attr, align 8
  %150 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %151 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 5
  store i8* %149, i8** %152, align 8
  %153 = load %struct.edac_mc_layer*, %struct.edac_mc_layer** @ibridge_dram_rule, align 8
  %154 = call i8* @ARRAY_SIZE(%struct.edac_mc_layer* %153)
  %155 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %156 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 4
  store i8* %154, i8** %157, align 8
  %158 = load i8*, i8** @ibridge_interleave_list, align 8
  %159 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %160 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 3
  store i8* %158, i8** %161, align 8
  %162 = load i8*, i8** @ibridge_interleave_pkg, align 8
  %163 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %164 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 2
  store i8* %162, i8** %165, align 8
  %166 = load i8*, i8** @ibridge_get_width, align 8
  %167 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %168 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 1
  store i8* %166, i8** %169, align 8
  %170 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %171 = load %struct.sbridge_dev*, %struct.sbridge_dev** %4, align 8
  %172 = call i32 @ibridge_mci_bind_devs(%struct.mem_ctl_info* %170, %struct.sbridge_dev* %171)
  store i32 %172, i32* %10, align 4
  %173 = load i32, i32* %10, align 4
  %174 = icmp slt i32 %173, 0
  %175 = zext i1 %174 to i32
  %176 = call i64 @unlikely(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %107
  br label %574

179:                                              ; preds = %107
  %180 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %181 = call i32 @get_source_id(%struct.mem_ctl_info* %180)
  %182 = load i32, i32* @GFP_KERNEL, align 4
  %183 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %184 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %183, i32 0, i32 0
  %185 = load %struct.sbridge_dev*, %struct.sbridge_dev** %184, align 8
  %186 = getelementptr inbounds %struct.sbridge_dev, %struct.sbridge_dev* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %189 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %188, i32 0, i32 0
  %190 = load %struct.sbridge_dev*, %struct.sbridge_dev** %189, align 8
  %191 = getelementptr inbounds %struct.sbridge_dev, %struct.sbridge_dev* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = call i8* @kasprintf(i32 %182, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %187, i32 %192)
  %194 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %195 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %194, i32 0, i32 0
  store i8* %193, i8** %195, align 8
  br label %538

196:                                              ; preds = %83
  %197 = load i32, i32* @SB_RANK_CFG_A, align 4
  %198 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %199 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 15
  store i32 %197, i32* %200, align 8
  %201 = load i8*, i8** @sbridge_get_tolm, align 8
  %202 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %203 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 14
  store i8* %201, i8** %204, align 8
  %205 = load i8*, i8** @sbridge_get_tohm, align 8
  %206 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %207 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 13
  store i8* %205, i8** %208, align 8
  %209 = load %struct.edac_mc_layer*, %struct.edac_mc_layer** @sbridge_dram_rule, align 8
  %210 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %211 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 12
  store %struct.edac_mc_layer* %209, %struct.edac_mc_layer** %212, align 8
  %213 = load i8*, i8** @get_memory_type, align 8
  %214 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %215 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 11
  store i8* %213, i8** %216, align 8
  %217 = load i8*, i8** @get_node_id, align 8
  %218 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %219 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 10
  store i8* %217, i8** %220, align 8
  %221 = load i8*, i8** @sbridge_get_ha, align 8
  %222 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %223 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 9
  store i8* %221, i8** %224, align 8
  %225 = load i8*, i8** @rir_limit, align 8
  %226 = bitcast i8* %225 to i32*
  %227 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %228 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i32 0, i32 8
  store i32* %226, i32** %229, align 8
  %230 = load i8*, i8** @sad_limit, align 8
  %231 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %232 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 7
  store i8* %230, i8** %233, align 8
  %234 = load i8*, i8** @interleave_mode, align 8
  %235 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %236 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i32 0, i32 6
  store i8* %234, i8** %237, align 8
  %238 = load i8*, i8** @dram_attr, align 8
  %239 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %240 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i32 0, i32 5
  store i8* %238, i8** %241, align 8
  %242 = load %struct.edac_mc_layer*, %struct.edac_mc_layer** @sbridge_dram_rule, align 8
  %243 = call i8* @ARRAY_SIZE(%struct.edac_mc_layer* %242)
  %244 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %245 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 4
  store i8* %243, i8** %246, align 8
  %247 = load i8*, i8** @sbridge_interleave_list, align 8
  %248 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %249 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 3
  store i8* %247, i8** %250, align 8
  %251 = load i8*, i8** @sbridge_interleave_pkg, align 8
  %252 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %253 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %253, i32 0, i32 2
  store i8* %251, i8** %254, align 8
  %255 = load i8*, i8** @sbridge_get_width, align 8
  %256 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %257 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i32 0, i32 1
  store i8* %255, i8** %258, align 8
  %259 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %260 = load %struct.sbridge_dev*, %struct.sbridge_dev** %4, align 8
  %261 = call i32 @sbridge_mci_bind_devs(%struct.mem_ctl_info* %259, %struct.sbridge_dev* %260)
  store i32 %261, i32* %10, align 4
  %262 = load i32, i32* %10, align 4
  %263 = icmp slt i32 %262, 0
  %264 = zext i1 %263 to i32
  %265 = call i64 @unlikely(i32 %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %196
  br label %574

268:                                              ; preds = %196
  %269 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %270 = call i32 @get_source_id(%struct.mem_ctl_info* %269)
  %271 = load i32, i32* @GFP_KERNEL, align 4
  %272 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %273 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %272, i32 0, i32 0
  %274 = load %struct.sbridge_dev*, %struct.sbridge_dev** %273, align 8
  %275 = getelementptr inbounds %struct.sbridge_dev, %struct.sbridge_dev* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %278 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %277, i32 0, i32 0
  %279 = load %struct.sbridge_dev*, %struct.sbridge_dev** %278, align 8
  %280 = getelementptr inbounds %struct.sbridge_dev, %struct.sbridge_dev* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 8
  %282 = call i8* @kasprintf(i32 %271, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %276, i32 %281)
  %283 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %284 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %283, i32 0, i32 0
  store i8* %282, i8** %284, align 8
  br label %538

285:                                              ; preds = %83
  %286 = load i8*, i8** @haswell_get_tolm, align 8
  %287 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %288 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %288, i32 0, i32 14
  store i8* %286, i8** %289, align 8
  %290 = load i8*, i8** @haswell_get_tohm, align 8
  %291 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %292 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %292, i32 0, i32 13
  store i8* %290, i8** %293, align 8
  %294 = load %struct.edac_mc_layer*, %struct.edac_mc_layer** @ibridge_dram_rule, align 8
  %295 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %296 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %296, i32 0, i32 12
  store %struct.edac_mc_layer* %294, %struct.edac_mc_layer** %297, align 8
  %298 = load i8*, i8** @haswell_get_memory_type, align 8
  %299 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %300 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %300, i32 0, i32 11
  store i8* %298, i8** %301, align 8
  %302 = load i8*, i8** @haswell_get_node_id, align 8
  %303 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %304 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %303, i32 0, i32 1
  %305 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %304, i32 0, i32 10
  store i8* %302, i8** %305, align 8
  %306 = load i8*, i8** @ibridge_get_ha, align 8
  %307 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %308 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %307, i32 0, i32 1
  %309 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %308, i32 0, i32 9
  store i8* %306, i8** %309, align 8
  %310 = load i8*, i8** @haswell_rir_limit, align 8
  %311 = bitcast i8* %310 to i32*
  %312 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %313 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %313, i32 0, i32 8
  store i32* %311, i32** %314, align 8
  %315 = load i8*, i8** @sad_limit, align 8
  %316 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %317 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %316, i32 0, i32 1
  %318 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %317, i32 0, i32 7
  store i8* %315, i8** %318, align 8
  %319 = load i8*, i8** @interleave_mode, align 8
  %320 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %321 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %321, i32 0, i32 6
  store i8* %319, i8** %322, align 8
  %323 = load i8*, i8** @dram_attr, align 8
  %324 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %325 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %324, i32 0, i32 1
  %326 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %325, i32 0, i32 5
  store i8* %323, i8** %326, align 8
  %327 = load %struct.edac_mc_layer*, %struct.edac_mc_layer** @ibridge_dram_rule, align 8
  %328 = call i8* @ARRAY_SIZE(%struct.edac_mc_layer* %327)
  %329 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %330 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %329, i32 0, i32 1
  %331 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %330, i32 0, i32 4
  store i8* %328, i8** %331, align 8
  %332 = load i8*, i8** @ibridge_interleave_list, align 8
  %333 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %334 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %333, i32 0, i32 1
  %335 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %334, i32 0, i32 3
  store i8* %332, i8** %335, align 8
  %336 = load i8*, i8** @ibridge_interleave_pkg, align 8
  %337 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %338 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %337, i32 0, i32 1
  %339 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %338, i32 0, i32 2
  store i8* %336, i8** %339, align 8
  %340 = load i8*, i8** @ibridge_get_width, align 8
  %341 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %342 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %341, i32 0, i32 1
  %343 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %342, i32 0, i32 1
  store i8* %340, i8** %343, align 8
  %344 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %345 = load %struct.sbridge_dev*, %struct.sbridge_dev** %4, align 8
  %346 = call i32 @haswell_mci_bind_devs(%struct.mem_ctl_info* %344, %struct.sbridge_dev* %345)
  store i32 %346, i32* %10, align 4
  %347 = load i32, i32* %10, align 4
  %348 = icmp slt i32 %347, 0
  %349 = zext i1 %348 to i32
  %350 = call i64 @unlikely(i32 %349)
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %353

352:                                              ; preds = %285
  br label %574

353:                                              ; preds = %285
  %354 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %355 = call i32 @get_source_id(%struct.mem_ctl_info* %354)
  %356 = load i32, i32* @GFP_KERNEL, align 4
  %357 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %358 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %357, i32 0, i32 0
  %359 = load %struct.sbridge_dev*, %struct.sbridge_dev** %358, align 8
  %360 = getelementptr inbounds %struct.sbridge_dev, %struct.sbridge_dev* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 4
  %362 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %363 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %362, i32 0, i32 0
  %364 = load %struct.sbridge_dev*, %struct.sbridge_dev** %363, align 8
  %365 = getelementptr inbounds %struct.sbridge_dev, %struct.sbridge_dev* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 8
  %367 = call i8* @kasprintf(i32 %356, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %361, i32 %366)
  %368 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %369 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %368, i32 0, i32 0
  store i8* %367, i8** %369, align 8
  br label %538

370:                                              ; preds = %83
  %371 = load i8*, i8** @haswell_get_tolm, align 8
  %372 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %373 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %372, i32 0, i32 1
  %374 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %373, i32 0, i32 14
  store i8* %371, i8** %374, align 8
  %375 = load i8*, i8** @haswell_get_tohm, align 8
  %376 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %377 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %376, i32 0, i32 1
  %378 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %377, i32 0, i32 13
  store i8* %375, i8** %378, align 8
  %379 = load %struct.edac_mc_layer*, %struct.edac_mc_layer** @ibridge_dram_rule, align 8
  %380 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %381 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %380, i32 0, i32 1
  %382 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %381, i32 0, i32 12
  store %struct.edac_mc_layer* %379, %struct.edac_mc_layer** %382, align 8
  %383 = load i8*, i8** @haswell_get_memory_type, align 8
  %384 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %385 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %384, i32 0, i32 1
  %386 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %385, i32 0, i32 11
  store i8* %383, i8** %386, align 8
  %387 = load i8*, i8** @haswell_get_node_id, align 8
  %388 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %389 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %388, i32 0, i32 1
  %390 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %389, i32 0, i32 10
  store i8* %387, i8** %390, align 8
  %391 = load i8*, i8** @ibridge_get_ha, align 8
  %392 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %393 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %392, i32 0, i32 1
  %394 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %393, i32 0, i32 9
  store i8* %391, i8** %394, align 8
  %395 = load i8*, i8** @haswell_rir_limit, align 8
  %396 = bitcast i8* %395 to i32*
  %397 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %398 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %397, i32 0, i32 1
  %399 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %398, i32 0, i32 8
  store i32* %396, i32** %399, align 8
  %400 = load i8*, i8** @sad_limit, align 8
  %401 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %402 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %401, i32 0, i32 1
  %403 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %402, i32 0, i32 7
  store i8* %400, i8** %403, align 8
  %404 = load i8*, i8** @interleave_mode, align 8
  %405 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %406 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %405, i32 0, i32 1
  %407 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %406, i32 0, i32 6
  store i8* %404, i8** %407, align 8
  %408 = load i8*, i8** @dram_attr, align 8
  %409 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %410 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %409, i32 0, i32 1
  %411 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %410, i32 0, i32 5
  store i8* %408, i8** %411, align 8
  %412 = load %struct.edac_mc_layer*, %struct.edac_mc_layer** @ibridge_dram_rule, align 8
  %413 = call i8* @ARRAY_SIZE(%struct.edac_mc_layer* %412)
  %414 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %415 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %414, i32 0, i32 1
  %416 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %415, i32 0, i32 4
  store i8* %413, i8** %416, align 8
  %417 = load i8*, i8** @ibridge_interleave_list, align 8
  %418 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %419 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %418, i32 0, i32 1
  %420 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %419, i32 0, i32 3
  store i8* %417, i8** %420, align 8
  %421 = load i8*, i8** @ibridge_interleave_pkg, align 8
  %422 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %423 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %422, i32 0, i32 1
  %424 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %423, i32 0, i32 2
  store i8* %421, i8** %424, align 8
  %425 = load i8*, i8** @broadwell_get_width, align 8
  %426 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %427 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %426, i32 0, i32 1
  %428 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %427, i32 0, i32 1
  store i8* %425, i8** %428, align 8
  %429 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %430 = load %struct.sbridge_dev*, %struct.sbridge_dev** %4, align 8
  %431 = call i32 @broadwell_mci_bind_devs(%struct.mem_ctl_info* %429, %struct.sbridge_dev* %430)
  store i32 %431, i32* %10, align 4
  %432 = load i32, i32* %10, align 4
  %433 = icmp slt i32 %432, 0
  %434 = zext i1 %433 to i32
  %435 = call i64 @unlikely(i32 %434)
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %437, label %438

437:                                              ; preds = %370
  br label %574

438:                                              ; preds = %370
  %439 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %440 = call i32 @get_source_id(%struct.mem_ctl_info* %439)
  %441 = load i32, i32* @GFP_KERNEL, align 4
  %442 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %443 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %442, i32 0, i32 0
  %444 = load %struct.sbridge_dev*, %struct.sbridge_dev** %443, align 8
  %445 = getelementptr inbounds %struct.sbridge_dev, %struct.sbridge_dev* %444, i32 0, i32 2
  %446 = load i32, i32* %445, align 4
  %447 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %448 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %447, i32 0, i32 0
  %449 = load %struct.sbridge_dev*, %struct.sbridge_dev** %448, align 8
  %450 = getelementptr inbounds %struct.sbridge_dev, %struct.sbridge_dev* %449, i32 0, i32 1
  %451 = load i32, i32* %450, align 8
  %452 = call i8* @kasprintf(i32 %441, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %446, i32 %451)
  %453 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %454 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %453, i32 0, i32 0
  store i8* %452, i8** %454, align 8
  br label %538

455:                                              ; preds = %83
  %456 = load i8*, i8** @knl_get_tolm, align 8
  %457 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %458 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %457, i32 0, i32 1
  %459 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %458, i32 0, i32 14
  store i8* %456, i8** %459, align 8
  %460 = load i8*, i8** @knl_get_tohm, align 8
  %461 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %462 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %461, i32 0, i32 1
  %463 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %462, i32 0, i32 13
  store i8* %460, i8** %463, align 8
  %464 = load %struct.edac_mc_layer*, %struct.edac_mc_layer** @knl_dram_rule, align 8
  %465 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %466 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %465, i32 0, i32 1
  %467 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %466, i32 0, i32 12
  store %struct.edac_mc_layer* %464, %struct.edac_mc_layer** %467, align 8
  %468 = load i8*, i8** @knl_get_memory_type, align 8
  %469 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %470 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %469, i32 0, i32 1
  %471 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %470, i32 0, i32 11
  store i8* %468, i8** %471, align 8
  %472 = load i8*, i8** @knl_get_node_id, align 8
  %473 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %474 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %473, i32 0, i32 1
  %475 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %474, i32 0, i32 10
  store i8* %472, i8** %475, align 8
  %476 = load i8*, i8** @knl_get_ha, align 8
  %477 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %478 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %477, i32 0, i32 1
  %479 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %478, i32 0, i32 9
  store i8* %476, i8** %479, align 8
  %480 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %481 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %480, i32 0, i32 1
  %482 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %481, i32 0, i32 8
  store i32* null, i32** %482, align 8
  %483 = load i8*, i8** @knl_sad_limit, align 8
  %484 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %485 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %484, i32 0, i32 1
  %486 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %485, i32 0, i32 7
  store i8* %483, i8** %486, align 8
  %487 = load i8*, i8** @knl_interleave_mode, align 8
  %488 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %489 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %488, i32 0, i32 1
  %490 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %489, i32 0, i32 6
  store i8* %487, i8** %490, align 8
  %491 = load i8*, i8** @dram_attr_knl, align 8
  %492 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %493 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %492, i32 0, i32 1
  %494 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %493, i32 0, i32 5
  store i8* %491, i8** %494, align 8
  %495 = load %struct.edac_mc_layer*, %struct.edac_mc_layer** @knl_dram_rule, align 8
  %496 = call i8* @ARRAY_SIZE(%struct.edac_mc_layer* %495)
  %497 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %498 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %497, i32 0, i32 1
  %499 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %498, i32 0, i32 4
  store i8* %496, i8** %499, align 8
  %500 = load i8*, i8** @knl_interleave_list, align 8
  %501 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %502 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %501, i32 0, i32 1
  %503 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %502, i32 0, i32 3
  store i8* %500, i8** %503, align 8
  %504 = load i8*, i8** @ibridge_interleave_pkg, align 8
  %505 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %506 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %505, i32 0, i32 1
  %507 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %506, i32 0, i32 2
  store i8* %504, i8** %507, align 8
  %508 = load i8*, i8** @knl_get_width, align 8
  %509 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %510 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %509, i32 0, i32 1
  %511 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %510, i32 0, i32 1
  store i8* %508, i8** %511, align 8
  %512 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %513 = load %struct.sbridge_dev*, %struct.sbridge_dev** %4, align 8
  %514 = call i32 @knl_mci_bind_devs(%struct.mem_ctl_info* %512, %struct.sbridge_dev* %513)
  store i32 %514, i32* %10, align 4
  %515 = load i32, i32* %10, align 4
  %516 = icmp slt i32 %515, 0
  %517 = zext i1 %516 to i32
  %518 = call i64 @unlikely(i32 %517)
  %519 = icmp ne i64 %518, 0
  br i1 %519, label %520, label %521

520:                                              ; preds = %455
  br label %574

521:                                              ; preds = %455
  %522 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %523 = call i32 @get_source_id(%struct.mem_ctl_info* %522)
  %524 = load i32, i32* @GFP_KERNEL, align 4
  %525 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %526 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %525, i32 0, i32 0
  %527 = load %struct.sbridge_dev*, %struct.sbridge_dev** %526, align 8
  %528 = getelementptr inbounds %struct.sbridge_dev, %struct.sbridge_dev* %527, i32 0, i32 2
  %529 = load i32, i32* %528, align 4
  %530 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %531 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %530, i32 0, i32 0
  %532 = load %struct.sbridge_dev*, %struct.sbridge_dev** %531, align 8
  %533 = getelementptr inbounds %struct.sbridge_dev, %struct.sbridge_dev* %532, i32 0, i32 1
  %534 = load i32, i32* %533, align 8
  %535 = call i8* @kasprintf(i32 %524, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %529, i32 %534)
  %536 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %537 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %536, i32 0, i32 0
  store i8* %535, i8** %537, align 8
  br label %538

538:                                              ; preds = %83, %521, %438, %353, %268, %179
  %539 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %540 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %539, i32 0, i32 0
  %541 = load i8*, i8** %540, align 8
  %542 = icmp ne i8* %541, null
  br i1 %542, label %546, label %543

543:                                              ; preds = %538
  %544 = load i32, i32* @ENOMEM, align 4
  %545 = sub nsw i32 0, %544
  store i32 %545, i32* %10, align 4
  br label %574

546:                                              ; preds = %538
  %547 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %548 = call i32 @get_dimm_config(%struct.mem_ctl_info* %547)
  store i32 %548, i32* %10, align 4
  %549 = load i32, i32* %10, align 4
  %550 = icmp slt i32 %549, 0
  br i1 %550, label %551, label %553

551:                                              ; preds = %546
  %552 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  br label %569

553:                                              ; preds = %546
  %554 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %555 = call i32 @get_memory_layout(%struct.mem_ctl_info* %554)
  %556 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %557 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %556, i32 0, i32 0
  %558 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %559 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %558, i32 0, i32 1
  store i32* %557, i32** %559, align 8
  %560 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %561 = call i32 @edac_mc_add_mc(%struct.mem_ctl_info* %560)
  %562 = call i64 @unlikely(i32 %561)
  %563 = icmp ne i64 %562, 0
  br i1 %563, label %564, label %568

564:                                              ; preds = %553
  %565 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %566 = load i32, i32* @EINVAL, align 4
  %567 = sub nsw i32 0, %566
  store i32 %567, i32* %10, align 4
  br label %569

568:                                              ; preds = %553
  store i32 0, i32* %3, align 4
  br label %580

569:                                              ; preds = %564, %551
  %570 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %571 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %570, i32 0, i32 0
  %572 = load i8*, i8** %571, align 8
  %573 = call i32 @kfree(i8* %572)
  br label %574

574:                                              ; preds = %569, %543, %520, %437, %352, %267, %178
  %575 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %576 = call i32 @edac_mc_free(%struct.mem_ctl_info* %575)
  %577 = load %struct.sbridge_dev*, %struct.sbridge_dev** %4, align 8
  %578 = getelementptr inbounds %struct.sbridge_dev, %struct.sbridge_dev* %577, i32 0, i32 0
  store %struct.mem_ctl_info* null, %struct.mem_ctl_info** %578, align 8
  %579 = load i32, i32* %10, align 4
  store i32 %579, i32* %3, align 4
  br label %580

580:                                              ; preds = %574, %568, %58
  %581 = load i32, i32* %3, align 4
  ret i32 %581
}

declare dso_local %struct.mem_ctl_info* @edac_mc_alloc(i32, i8*, %struct.edac_mc_layer*, i32) #1

declare dso_local i8* @ARRAY_SIZE(%struct.edac_mc_layer*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @edac_dbg(i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.sbridge_pvt*, i32, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @ibridge_mci_bind_devs(%struct.mem_ctl_info*, %struct.sbridge_dev*) #1

declare dso_local i32 @get_source_id(%struct.mem_ctl_info*) #1

declare dso_local i8* @kasprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @sbridge_mci_bind_devs(%struct.mem_ctl_info*, %struct.sbridge_dev*) #1

declare dso_local i32 @haswell_mci_bind_devs(%struct.mem_ctl_info*, %struct.sbridge_dev*) #1

declare dso_local i32 @broadwell_mci_bind_devs(%struct.mem_ctl_info*, %struct.sbridge_dev*) #1

declare dso_local i32 @knl_mci_bind_devs(%struct.mem_ctl_info*, %struct.sbridge_dev*) #1

declare dso_local i32 @get_dimm_config(%struct.mem_ctl_info*) #1

declare dso_local i32 @get_memory_layout(%struct.mem_ctl_info*) #1

declare dso_local i32 @edac_mc_add_mc(%struct.mem_ctl_info*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @edac_mc_free(%struct.mem_ctl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
