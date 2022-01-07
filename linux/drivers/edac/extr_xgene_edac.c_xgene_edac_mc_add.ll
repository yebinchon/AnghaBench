; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_xgene_edac.c_xgene_edac_mc_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_xgene_edac.c_xgene_edac_mc_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_edac = type { i32, i32 }
%struct.device_node = type { i32 }
%struct.mem_ctl_info = type { i8*, i8*, i32, i32, i32, i32, i32*, i32, i8*, i8*, i32, i32*, %struct.xgene_edac_mc_ctx* }
%struct.xgene_edac_mc_ctx = type { i8*, i32, %struct.mem_ctl_info*, i32, i32, %struct.xgene_edac* }
%struct.edac_mc_layer = type { i32, i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"no MCU resource address\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"unable to map MCU resource\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"memory-controller\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"no memory-controller property\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EDAC_MC_LAYER_CHIP_SELECT = common dso_local global i32 0, align 4
@EDAC_MC_LAYER_CHANNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"xgene_edac_mc_err\00", align 1
@MEM_FLAG_RDDR = common dso_local global i32 0, align 4
@MEM_FLAG_RDDR2 = common dso_local global i32 0, align 4
@MEM_FLAG_RDDR3 = common dso_local global i32 0, align 4
@MEM_FLAG_DDR = common dso_local global i32 0, align 4
@MEM_FLAG_DDR2 = common dso_local global i32 0, align 4
@MEM_FLAG_DDR3 = common dso_local global i32 0, align 4
@EDAC_FLAG_SECDED = common dso_local global i8* null, align 8
@EDAC_MOD_STR = common dso_local global i32 0, align 4
@SCRUB_FLAG_HW_SRC = common dso_local global i32 0, align 4
@SCRUB_HW_SRC = common dso_local global i32 0, align 4
@edac_op_state = common dso_local global i64 0, align 8
@EDAC_OPSTATE_POLL = common dso_local global i64 0, align 8
@xgene_edac_mc_check = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"edac_mc_add_mc failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"X-Gene EDAC MC registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgene_edac*, %struct.device_node*)* @xgene_edac_mc_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_edac_mc_add(%struct.xgene_edac* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xgene_edac*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.mem_ctl_info*, align 8
  %7 = alloca [2 x %struct.edac_mc_layer], align 16
  %8 = alloca %struct.xgene_edac_mc_ctx, align 8
  %9 = alloca %struct.xgene_edac_mc_ctx*, align 8
  %10 = alloca %struct.resource, align 4
  %11 = alloca i32, align 4
  store %struct.xgene_edac* %0, %struct.xgene_edac** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %12 = call i32 @memset(%struct.xgene_edac_mc_ctx* %8, i32 0, i32 40)
  %13 = load %struct.xgene_edac*, %struct.xgene_edac** %4, align 8
  %14 = getelementptr inbounds %struct.xgene_edac_mc_ctx, %struct.xgene_edac_mc_ctx* %8, i32 0, i32 5
  store %struct.xgene_edac* %13, %struct.xgene_edac** %14, align 8
  %15 = load %struct.xgene_edac*, %struct.xgene_edac** %4, align 8
  %16 = getelementptr inbounds %struct.xgene_edac, %struct.xgene_edac* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i32 @devres_open_group(i32 %17, i32 (%struct.xgene_edac*, %struct.device_node*)* @xgene_edac_mc_add, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %199

24:                                               ; preds = %2
  %25 = load %struct.device_node*, %struct.device_node** %5, align 8
  %26 = call i32 @of_address_to_resource(%struct.device_node* %25, i32 0, %struct.resource* %10)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.xgene_edac*, %struct.xgene_edac** %4, align 8
  %31 = getelementptr inbounds %struct.xgene_edac, %struct.xgene_edac* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %193

34:                                               ; preds = %24
  %35 = load %struct.xgene_edac*, %struct.xgene_edac** %4, align 8
  %36 = getelementptr inbounds %struct.xgene_edac, %struct.xgene_edac* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @devm_ioremap_resource(i32 %37, %struct.resource* %10)
  %39 = getelementptr inbounds %struct.xgene_edac_mc_ctx, %struct.xgene_edac_mc_ctx* %8, i32 0, i32 4
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds %struct.xgene_edac_mc_ctx, %struct.xgene_edac_mc_ctx* %8, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @IS_ERR(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %34
  %45 = load %struct.xgene_edac*, %struct.xgene_edac** %4, align 8
  %46 = getelementptr inbounds %struct.xgene_edac, %struct.xgene_edac* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %49 = getelementptr inbounds %struct.xgene_edac_mc_ctx, %struct.xgene_edac_mc_ctx* %8, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @PTR_ERR(i32 %50)
  store i32 %51, i32* %11, align 4
  br label %193

52:                                               ; preds = %34
  %53 = load %struct.device_node*, %struct.device_node** %5, align 8
  %54 = getelementptr inbounds %struct.xgene_edac_mc_ctx, %struct.xgene_edac_mc_ctx* %8, i32 0, i32 3
  %55 = call i64 @of_property_read_u32(%struct.device_node* %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load %struct.xgene_edac*, %struct.xgene_edac** %4, align 8
  %59 = getelementptr inbounds %struct.xgene_edac, %struct.xgene_edac* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %62 = load i32, i32* @ENODEV, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %11, align 4
  br label %193

64:                                               ; preds = %52
  %65 = getelementptr inbounds %struct.xgene_edac_mc_ctx, %struct.xgene_edac_mc_ctx* %8, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @xgene_edac_mc_is_active(%struct.xgene_edac_mc_ctx* %8, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* @ENODEV, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %11, align 4
  br label %193

72:                                               ; preds = %64
  %73 = load i32, i32* @EDAC_MC_LAYER_CHIP_SELECT, align 4
  %74 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %7, i64 0, i64 0
  %75 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %7, i64 0, i64 0
  %77 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %76, i32 0, i32 0
  store i32 4, i32* %77, align 16
  %78 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %7, i64 0, i64 0
  %79 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %78, i32 0, i32 1
  store i32 1, i32* %79, align 4
  %80 = load i32, i32* @EDAC_MC_LAYER_CHANNEL, align 4
  %81 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %7, i64 0, i64 1
  %82 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  %83 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %7, i64 0, i64 1
  %84 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %83, i32 0, i32 0
  store i32 2, i32* %84, align 4
  %85 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %7, i64 0, i64 1
  %86 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %85, i32 0, i32 1
  store i32 0, i32* %86, align 4
  %87 = getelementptr inbounds %struct.xgene_edac_mc_ctx, %struct.xgene_edac_mc_ctx* %8, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %7, i64 0, i64 0
  %90 = call i32 @ARRAY_SIZE(%struct.edac_mc_layer* %89)
  %91 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %7, i64 0, i64 0
  %92 = call %struct.mem_ctl_info* @edac_mc_alloc(i32 %88, i32 %90, %struct.edac_mc_layer* %91, i32 40)
  store %struct.mem_ctl_info* %92, %struct.mem_ctl_info** %6, align 8
  %93 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %94 = icmp ne %struct.mem_ctl_info* %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %72
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %11, align 4
  br label %193

98:                                               ; preds = %72
  %99 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %100 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %99, i32 0, i32 12
  %101 = load %struct.xgene_edac_mc_ctx*, %struct.xgene_edac_mc_ctx** %100, align 8
  store %struct.xgene_edac_mc_ctx* %101, %struct.xgene_edac_mc_ctx** %9, align 8
  %102 = load %struct.xgene_edac_mc_ctx*, %struct.xgene_edac_mc_ctx** %9, align 8
  %103 = bitcast %struct.xgene_edac_mc_ctx* %102 to i8*
  %104 = bitcast %struct.xgene_edac_mc_ctx* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %103, i8* align 8 %104, i64 40, i1 false)
  %105 = load %struct.xgene_edac_mc_ctx*, %struct.xgene_edac_mc_ctx** %9, align 8
  %106 = getelementptr inbounds %struct.xgene_edac_mc_ctx, %struct.xgene_edac_mc_ctx* %105, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8** %106, align 8
  %107 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %108 = load %struct.xgene_edac_mc_ctx*, %struct.xgene_edac_mc_ctx** %9, align 8
  %109 = getelementptr inbounds %struct.xgene_edac_mc_ctx, %struct.xgene_edac_mc_ctx* %108, i32 0, i32 2
  store %struct.mem_ctl_info* %107, %struct.mem_ctl_info** %109, align 8
  %110 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %111 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %110, i32 0, i32 10
  %112 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %113 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %112, i32 0, i32 11
  store i32* %111, i32** %113, align 8
  %114 = load %struct.xgene_edac_mc_ctx*, %struct.xgene_edac_mc_ctx** %9, align 8
  %115 = getelementptr inbounds %struct.xgene_edac_mc_ctx, %struct.xgene_edac_mc_ctx* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %118 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %117, i32 0, i32 0
  store i8* %116, i8** %118, align 8
  %119 = load %struct.xgene_edac_mc_ctx*, %struct.xgene_edac_mc_ctx** %9, align 8
  %120 = getelementptr inbounds %struct.xgene_edac_mc_ctx, %struct.xgene_edac_mc_ctx* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %123 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %122, i32 0, i32 1
  store i8* %121, i8** %123, align 8
  %124 = load i32, i32* @MEM_FLAG_RDDR, align 4
  %125 = load i32, i32* @MEM_FLAG_RDDR2, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @MEM_FLAG_RDDR3, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @MEM_FLAG_DDR, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @MEM_FLAG_DDR2, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @MEM_FLAG_DDR3, align 4
  %134 = or i32 %132, %133
  %135 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %136 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 8
  %137 = load i8*, i8** @EDAC_FLAG_SECDED, align 8
  %138 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %139 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %138, i32 0, i32 9
  store i8* %137, i8** %139, align 8
  %140 = load i8*, i8** @EDAC_FLAG_SECDED, align 8
  %141 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %142 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %141, i32 0, i32 8
  store i8* %140, i8** %142, align 8
  %143 = load i32, i32* @EDAC_MOD_STR, align 4
  %144 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %145 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %144, i32 0, i32 7
  store i32 %143, i32* %145, align 8
  %146 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %147 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %146, i32 0, i32 6
  store i32* null, i32** %147, align 8
  %148 = load i32, i32* @SCRUB_FLAG_HW_SRC, align 4
  %149 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %150 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %149, i32 0, i32 5
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* @SCRUB_HW_SRC, align 4
  %152 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %153 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %152, i32 0, i32 4
  store i32 %151, i32* %153, align 8
  %154 = load i64, i64* @edac_op_state, align 8
  %155 = load i64, i64* @EDAC_OPSTATE_POLL, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %98
  %158 = load i32, i32* @xgene_edac_mc_check, align 4
  %159 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %160 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %159, i32 0, i32 3
  store i32 %158, i32* %160, align 4
  br label %161

161:                                              ; preds = %157, %98
  %162 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %163 = call i64 @edac_mc_add_mc(%struct.mem_ctl_info* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %161
  %166 = load %struct.xgene_edac*, %struct.xgene_edac** %4, align 8
  %167 = getelementptr inbounds %struct.xgene_edac, %struct.xgene_edac* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @dev_err(i32 %168, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %170 = load i32, i32* @EINVAL, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %11, align 4
  br label %190

172:                                              ; preds = %161
  %173 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %174 = call i32 @xgene_edac_mc_create_debugfs_node(%struct.mem_ctl_info* %173)
  %175 = load %struct.xgene_edac_mc_ctx*, %struct.xgene_edac_mc_ctx** %9, align 8
  %176 = getelementptr inbounds %struct.xgene_edac_mc_ctx, %struct.xgene_edac_mc_ctx* %175, i32 0, i32 1
  %177 = load %struct.xgene_edac*, %struct.xgene_edac** %4, align 8
  %178 = getelementptr inbounds %struct.xgene_edac, %struct.xgene_edac* %177, i32 0, i32 1
  %179 = call i32 @list_add(i32* %176, i32* %178)
  %180 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %181 = call i32 @xgene_edac_mc_irq_ctl(%struct.mem_ctl_info* %180, i32 1)
  %182 = load %struct.xgene_edac*, %struct.xgene_edac** %4, align 8
  %183 = getelementptr inbounds %struct.xgene_edac, %struct.xgene_edac* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @devres_remove_group(i32 %184, i32 (%struct.xgene_edac*, %struct.device_node*)* @xgene_edac_mc_add)
  %186 = load %struct.xgene_edac*, %struct.xgene_edac** %4, align 8
  %187 = getelementptr inbounds %struct.xgene_edac, %struct.xgene_edac* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @dev_info(i32 %188, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %199

190:                                              ; preds = %165
  %191 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %192 = call i32 @edac_mc_free(%struct.mem_ctl_info* %191)
  br label %193

193:                                              ; preds = %190, %95, %69, %57, %44, %29
  %194 = load %struct.xgene_edac*, %struct.xgene_edac** %4, align 8
  %195 = getelementptr inbounds %struct.xgene_edac, %struct.xgene_edac* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @devres_release_group(i32 %196, i32 (%struct.xgene_edac*, %struct.device_node*)* @xgene_edac_mc_add)
  %198 = load i32, i32* %11, align 4
  store i32 %198, i32* %3, align 4
  br label %199

199:                                              ; preds = %193, %172, %21
  %200 = load i32, i32* %3, align 4
  ret i32 %200
}

declare dso_local i32 @memset(%struct.xgene_edac_mc_ctx*, i32, i32) #1

declare dso_local i32 @devres_open_group(i32, i32 (%struct.xgene_edac*, %struct.device_node*)*, i32) #1

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @devm_ioremap_resource(i32, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @xgene_edac_mc_is_active(%struct.xgene_edac_mc_ctx*, i32) #1

declare dso_local %struct.mem_ctl_info* @edac_mc_alloc(i32, i32, %struct.edac_mc_layer*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.edac_mc_layer*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @edac_mc_add_mc(%struct.mem_ctl_info*) #1

declare dso_local i32 @xgene_edac_mc_create_debugfs_node(%struct.mem_ctl_info*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @xgene_edac_mc_irq_ctl(%struct.mem_ctl_info*, i32) #1

declare dso_local i32 @devres_remove_group(i32, i32 (%struct.xgene_edac*, %struct.device_node*)*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @edac_mc_free(%struct.mem_ctl_info*) #1

declare dso_local i32 @devres_release_group(i32, i32 (%struct.xgene_edac*, %struct.device_node*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
