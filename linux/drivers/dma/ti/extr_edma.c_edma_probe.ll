; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_edma.c_edma_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_edma.c_edma_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i64, %struct.device }
%struct.device = type { %struct.device_node*, %struct.edma_soc_info* }
%struct.device_node = type { i32 }
%struct.edma_soc_info = type { i32, i32**, i32**, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32** }
%struct.resource = type { i32 }
%struct.edma_cc = type { i64, i32, i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_9__, %struct.TYPE_9__*, i32*, %struct.edma_soc_info*, %struct.TYPE_6__*, i8*, %struct.edma_soc_info*, %struct.device* }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.of_device_id = type { i64 }
%struct.of_phandle_args = type { i32*, i32 }

@edma_of_ids = common dso_local global i32 0, align 4
@EDMA_BINDING_TPCC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"failed to get DT data\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"pm_runtime_get_sync() failed\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"edma3_cc\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"mem resource not found, using index 0\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"no mem resource?\0A\00", align 1
@dummy_paramset = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"edma3_ccint\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"%s_ccint\00", align 1
@dma_irq_handler = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"CCINT (%d) failed --> %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"edma3_ccerrint\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"%s_ccerrint\00", align 1
@dma_ccerr_handler = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"CCERRINT (%d) failed --> %d\0A\00", align 1
@EDMA_SLOT_ANY = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [33 x i8] c"Can't allocate PaRAM dummy slot\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"ti,tptcs\00", align 1
@EDMA_DRAE = common dso_local global i32 0, align 4
@EDMA_QRAE = common dso_local global i32 0, align 4
@edma_filter_fn = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [37 x i8] c"slave ddev registration failed (%d)\0A\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"memcpy ddev registration failed (%d)\0A\00", align 1
@of_edma_xlate = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [27 x i8] c"TI EDMA DMA engine driver\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @edma_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edma_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.edma_soc_info*, align 8
  %5 = alloca [2 x i32]*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32]*, align 8
  %9 = alloca [2 x i32]*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.resource*, align 8
  %13 = alloca %struct.device_node*, align 8
  %14 = alloca %struct.device*, align 8
  %15 = alloca %struct.edma_cc*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.of_device_id*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.of_phandle_args, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 1
  %24 = load %struct.edma_soc_info*, %struct.edma_soc_info** %23, align 8
  store %struct.edma_soc_info* %24, %struct.edma_soc_info** %4, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.device, %struct.device* %26, i32 0, i32 0
  %28 = load %struct.device_node*, %struct.device_node** %27, align 8
  store %struct.device_node* %28, %struct.device_node** %13, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 1
  store %struct.device* %30, %struct.device** %14, align 8
  store i32 1, i32* %16, align 4
  %31 = load %struct.device_node*, %struct.device_node** %13, align 8
  %32 = icmp ne %struct.device_node* %31, null
  br i1 %32, label %33, label %61

33:                                               ; preds = %1
  %34 = load i32, i32* @edma_of_ids, align 4
  %35 = load %struct.device_node*, %struct.device_node** %13, align 8
  %36 = call %struct.of_device_id* @of_match_node(i32 %34, %struct.device_node* %35)
  store %struct.of_device_id* %36, %struct.of_device_id** %18, align 8
  %37 = load %struct.of_device_id*, %struct.of_device_id** %18, align 8
  %38 = icmp ne %struct.of_device_id* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = load %struct.of_device_id*, %struct.of_device_id** %18, align 8
  %41 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i64*
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @EDMA_BINDING_TPCC, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 0, i32* %16, align 4
  br label %48

48:                                               ; preds = %47, %39, %33
  %49 = load %struct.device*, %struct.device** %14, align 8
  %50 = load i32, i32* %16, align 4
  %51 = call %struct.edma_soc_info* @edma_setup_info_from_dt(%struct.device* %49, i32 %50)
  store %struct.edma_soc_info* %51, %struct.edma_soc_info** %4, align 8
  %52 = load %struct.edma_soc_info*, %struct.edma_soc_info** %4, align 8
  %53 = call i64 @IS_ERR(%struct.edma_soc_info* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load %struct.device*, %struct.device** %14, align 8
  %57 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %56, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %58 = load %struct.edma_soc_info*, %struct.edma_soc_info** %4, align 8
  %59 = call i32 @PTR_ERR(%struct.edma_soc_info* %58)
  store i32 %59, i32* %2, align 4
  br label %620

60:                                               ; preds = %48
  br label %61

61:                                               ; preds = %60, %1
  %62 = load %struct.edma_soc_info*, %struct.edma_soc_info** %4, align 8
  %63 = icmp ne %struct.edma_soc_info* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* @ENODEV, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %620

67:                                               ; preds = %61
  %68 = load %struct.device*, %struct.device** %14, align 8
  %69 = call i32 @pm_runtime_enable(%struct.device* %68)
  %70 = load %struct.device*, %struct.device** %14, align 8
  %71 = call i32 @pm_runtime_get_sync(%struct.device* %70)
  store i32 %71, i32* %17, align 4
  %72 = load i32, i32* %17, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load %struct.device*, %struct.device** %14, align 8
  %76 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %75, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i32, i32* %17, align 4
  store i32 %77, i32* %2, align 4
  br label %620

78:                                               ; preds = %67
  %79 = load %struct.device*, %struct.device** %14, align 8
  %80 = call i32 @DMA_BIT_MASK(i32 32)
  %81 = call i32 @dma_set_mask_and_coherent(%struct.device* %79, i32 %80)
  store i32 %81, i32* %17, align 4
  %82 = load i32, i32* %17, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i32, i32* %17, align 4
  store i32 %85, i32* %2, align 4
  br label %620

86:                                               ; preds = %78
  %87 = load %struct.device*, %struct.device** %14, align 8
  %88 = load i32, i32* @GFP_KERNEL, align 4
  %89 = call %struct.edma_cc* @devm_kzalloc(%struct.device* %87, i32 112, i32 %88)
  store %struct.edma_cc* %89, %struct.edma_cc** %15, align 8
  %90 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %91 = icmp ne %struct.edma_cc* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %86
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %620

95:                                               ; preds = %86
  %96 = load %struct.device*, %struct.device** %14, align 8
  %97 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %98 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %97, i32 0, i32 16
  store %struct.device* %96, %struct.device** %98, align 8
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %103 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  %104 = load i32, i32* %16, align 4
  %105 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %106 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 8
  %107 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %108 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %95
  %112 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %113 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %112, i32 0, i32 0
  store i64 0, i64* %113, align 8
  br label %114

114:                                              ; preds = %111, %95
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = load i32, i32* @IORESOURCE_MEM, align 4
  %117 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %115, i32 %116, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store %struct.resource* %117, %struct.resource** %12, align 8
  %118 = load %struct.resource*, %struct.resource** %12, align 8
  %119 = icmp ne %struct.resource* %118, null
  br i1 %119, label %134, label %120

120:                                              ; preds = %114
  %121 = load %struct.device*, %struct.device** %14, align 8
  %122 = call i32 @dev_dbg(%struct.device* %121, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = load i32, i32* @IORESOURCE_MEM, align 4
  %125 = call %struct.resource* @platform_get_resource(%struct.platform_device* %123, i32 %124, i32 0)
  store %struct.resource* %125, %struct.resource** %12, align 8
  %126 = load %struct.resource*, %struct.resource** %12, align 8
  %127 = icmp ne %struct.resource* %126, null
  br i1 %127, label %133, label %128

128:                                              ; preds = %120
  %129 = load %struct.device*, %struct.device** %14, align 8
  %130 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %129, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %131 = load i32, i32* @ENODEV, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %2, align 4
  br label %620

133:                                              ; preds = %120
  br label %134

134:                                              ; preds = %133, %114
  %135 = load %struct.device*, %struct.device** %14, align 8
  %136 = load %struct.resource*, %struct.resource** %12, align 8
  %137 = call %struct.edma_soc_info* @devm_ioremap_resource(%struct.device* %135, %struct.resource* %136)
  %138 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %139 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %138, i32 0, i32 15
  store %struct.edma_soc_info* %137, %struct.edma_soc_info** %139, align 8
  %140 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %141 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %140, i32 0, i32 15
  %142 = load %struct.edma_soc_info*, %struct.edma_soc_info** %141, align 8
  %143 = call i64 @IS_ERR(%struct.edma_soc_info* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %134
  %146 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %147 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %146, i32 0, i32 15
  %148 = load %struct.edma_soc_info*, %struct.edma_soc_info** %147, align 8
  %149 = call i32 @PTR_ERR(%struct.edma_soc_info* %148)
  store i32 %149, i32* %2, align 4
  br label %620

150:                                              ; preds = %134
  %151 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %152 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %153 = call i32 @platform_set_drvdata(%struct.platform_device* %151, %struct.edma_cc* %152)
  %154 = load %struct.device*, %struct.device** %14, align 8
  %155 = load %struct.edma_soc_info*, %struct.edma_soc_info** %4, align 8
  %156 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %157 = call i32 @edma_setup_from_hw(%struct.device* %154, %struct.edma_soc_info* %155, %struct.edma_cc* %156)
  store i32 %157, i32* %17, align 4
  %158 = load i32, i32* %17, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %150
  %161 = load i32, i32* %17, align 4
  store i32 %161, i32* %2, align 4
  br label %620

162:                                              ; preds = %150
  %163 = load %struct.device*, %struct.device** %14, align 8
  %164 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %165 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @GFP_KERNEL, align 4
  %168 = call i8* @devm_kcalloc(%struct.device* %163, i32 %166, i32 4, i32 %167)
  %169 = bitcast i8* %168 to i32*
  %170 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %171 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %170, i32 0, i32 11
  store i32* %169, i32** %171, align 8
  %172 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %173 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %172, i32 0, i32 11
  %174 = load i32*, i32** %173, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %179, label %176

176:                                              ; preds = %162
  %177 = load i32, i32* @ENOMEM, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %2, align 4
  br label %620

179:                                              ; preds = %162
  %180 = load %struct.device*, %struct.device** %14, align 8
  %181 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %182 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @BITS_TO_LONGS(i32 %183)
  %185 = load i32, i32* @GFP_KERNEL, align 4
  %186 = call i8* @devm_kcalloc(%struct.device* %180, i32 %184, i32 8, i32 %185)
  %187 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %188 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %187, i32 0, i32 14
  store i8* %186, i8** %188, align 8
  %189 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %190 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %189, i32 0, i32 14
  %191 = load i8*, i8** %190, align 8
  %192 = icmp ne i8* %191, null
  br i1 %192, label %196, label %193

193:                                              ; preds = %179
  %194 = load i32, i32* @ENOMEM, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %2, align 4
  br label %620

196:                                              ; preds = %179
  %197 = load %struct.edma_soc_info*, %struct.edma_soc_info** %4, align 8
  %198 = getelementptr inbounds %struct.edma_soc_info, %struct.edma_soc_info* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %201 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %200, i32 0, i32 4
  store i32 %199, i32* %201, align 4
  %202 = load %struct.edma_soc_info*, %struct.edma_soc_info** %4, align 8
  %203 = getelementptr inbounds %struct.edma_soc_info, %struct.edma_soc_info* %202, i32 0, i32 5
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %203, align 8
  %205 = icmp ne %struct.TYPE_8__* %204, null
  br i1 %205, label %206, label %246

206:                                              ; preds = %196
  %207 = load %struct.edma_soc_info*, %struct.edma_soc_info** %4, align 8
  %208 = getelementptr inbounds %struct.edma_soc_info, %struct.edma_soc_info* %207, i32 0, i32 5
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  %211 = load i32**, i32*** %210, align 8
  %212 = bitcast i32** %211 to [2 x i32]*
  store [2 x i32]* %212, [2 x i32]** %8, align 8
  %213 = load [2 x i32]*, [2 x i32]** %8, align 8
  %214 = icmp ne [2 x i32]* %213, null
  br i1 %214, label %215, label %245

215:                                              ; preds = %206
  store i32 0, i32* %6, align 4
  br label %216

216:                                              ; preds = %241, %215
  %217 = load [2 x i32]*, [2 x i32]** %8, align 8
  %218 = load i32, i32* %6, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [2 x i32], [2 x i32]* %217, i64 %219
  %221 = getelementptr inbounds [2 x i32], [2 x i32]* %220, i64 0, i64 0
  %222 = load i32, i32* %221, align 4
  %223 = icmp ne i32 %222, -1
  br i1 %223, label %224, label %244

224:                                              ; preds = %216
  %225 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %226 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %225, i32 0, i32 14
  %227 = load i8*, i8** %226, align 8
  %228 = load [2 x i32]*, [2 x i32]** %8, align 8
  %229 = load i32, i32* %6, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [2 x i32], [2 x i32]* %228, i64 %230
  %232 = getelementptr inbounds [2 x i32], [2 x i32]* %231, i64 0, i64 0
  %233 = load i32, i32* %232, align 4
  %234 = load [2 x i32]*, [2 x i32]** %8, align 8
  %235 = load i32, i32* %6, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [2 x i32], [2 x i32]* %234, i64 %236
  %238 = getelementptr inbounds [2 x i32], [2 x i32]* %237, i64 0, i64 1
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @bitmap_set(i8* %227, i32 %233, i32 %239)
  br label %241

241:                                              ; preds = %224
  %242 = load i32, i32* %6, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %6, align 4
  br label %216

244:                                              ; preds = %216
  br label %245

245:                                              ; preds = %244, %206
  br label %246

246:                                              ; preds = %245, %196
  store i32 0, i32* %6, align 4
  br label %247

247:                                              ; preds = %265, %246
  %248 = load i32, i32* %6, align 4
  %249 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %250 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 8
  %252 = icmp slt i32 %248, %251
  br i1 %252, label %253, label %268

253:                                              ; preds = %247
  %254 = load i32, i32* %6, align 4
  %255 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %256 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %255, i32 0, i32 14
  %257 = load i8*, i8** %256, align 8
  %258 = call i32 @test_bit(i32 %254, i8* %257)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %264, label %260

260:                                              ; preds = %253
  %261 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %262 = load i32, i32* %6, align 4
  %263 = call i32 @edma_write_slot(%struct.edma_cc* %261, i32 %262, i32* @dummy_paramset)
  br label %264

264:                                              ; preds = %260, %253
  br label %265

265:                                              ; preds = %264
  %266 = load i32, i32* %6, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %6, align 4
  br label %247

268:                                              ; preds = %247
  %269 = load %struct.edma_soc_info*, %struct.edma_soc_info** %4, align 8
  %270 = getelementptr inbounds %struct.edma_soc_info, %struct.edma_soc_info* %269, i32 0, i32 1
  %271 = load i32**, i32*** %270, align 8
  %272 = bitcast i32** %271 to [2 x i32]*
  store [2 x i32]* %272, [2 x i32]** %9, align 8
  %273 = load [2 x i32]*, [2 x i32]** %9, align 8
  %274 = icmp ne [2 x i32]* %273, null
  br i1 %274, label %275, label %295

275:                                              ; preds = %268
  store i32 0, i32* %6, align 4
  br label %276

276:                                              ; preds = %291, %275
  %277 = load [2 x i32]*, [2 x i32]** %9, align 8
  %278 = load i32, i32* %6, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [2 x i32], [2 x i32]* %277, i64 %279
  %281 = getelementptr inbounds [2 x i32], [2 x i32]* %280, i64 0, i64 1
  %282 = load i32, i32* %281, align 4
  %283 = icmp ne i32 %282, -1
  br i1 %283, label %284, label %294

284:                                              ; preds = %276
  %285 = load [2 x i32]*, [2 x i32]** %9, align 8
  %286 = load i32, i32* %6, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [2 x i32], [2 x i32]* %285, i64 %287
  %289 = getelementptr inbounds [2 x i32], [2 x i32]* %288, i64 0, i64 1
  %290 = load i32, i32* %289, align 4
  store i32 %290, i32* %7, align 4
  br label %291

291:                                              ; preds = %284
  %292 = load i32, i32* %6, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %6, align 4
  br label %276

294:                                              ; preds = %276
  br label %295

295:                                              ; preds = %294, %268
  %296 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %297 = call i32 @platform_get_irq_byname(%struct.platform_device* %296, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i32 %297, i32* %10, align 4
  %298 = load i32, i32* %10, align 4
  %299 = icmp slt i32 %298, 0
  br i1 %299, label %300, label %306

300:                                              ; preds = %295
  %301 = load %struct.device_node*, %struct.device_node** %13, align 8
  %302 = icmp ne %struct.device_node* %301, null
  br i1 %302, label %303, label %306

303:                                              ; preds = %300
  %304 = load %struct.device_node*, %struct.device_node** %13, align 8
  %305 = call i32 @irq_of_parse_and_map(%struct.device_node* %304, i32 0)
  store i32 %305, i32* %10, align 4
  br label %306

306:                                              ; preds = %303, %300, %295
  %307 = load i32, i32* %10, align 4
  %308 = icmp sge i32 %307, 0
  br i1 %308, label %309, label %333

309:                                              ; preds = %306
  %310 = load %struct.device*, %struct.device** %14, align 8
  %311 = load i32, i32* @GFP_KERNEL, align 4
  %312 = load %struct.device*, %struct.device** %14, align 8
  %313 = call i32 @dev_name(%struct.device* %312)
  %314 = call i8* @devm_kasprintf(%struct.device* %310, i32 %311, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %313)
  store i8* %314, i8** %11, align 8
  %315 = load %struct.device*, %struct.device** %14, align 8
  %316 = load i32, i32* %10, align 4
  %317 = load i32, i32* @dma_irq_handler, align 4
  %318 = load i8*, i8** %11, align 8
  %319 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %320 = call i32 @devm_request_irq(%struct.device* %315, i32 %316, i32 %317, i32 0, i8* %318, %struct.edma_cc* %319)
  store i32 %320, i32* %17, align 4
  %321 = load i32, i32* %17, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %329

323:                                              ; preds = %309
  %324 = load %struct.device*, %struct.device** %14, align 8
  %325 = load i32, i32* %10, align 4
  %326 = load i32, i32* %17, align 4
  %327 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %324, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %325, i32 %326)
  %328 = load i32, i32* %17, align 4
  store i32 %328, i32* %2, align 4
  br label %620

329:                                              ; preds = %309
  %330 = load i32, i32* %10, align 4
  %331 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %332 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %331, i32 0, i32 5
  store i32 %330, i32* %332, align 8
  br label %333

333:                                              ; preds = %329, %306
  %334 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %335 = call i32 @platform_get_irq_byname(%struct.platform_device* %334, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  store i32 %335, i32* %10, align 4
  %336 = load i32, i32* %10, align 4
  %337 = icmp slt i32 %336, 0
  br i1 %337, label %338, label %344

338:                                              ; preds = %333
  %339 = load %struct.device_node*, %struct.device_node** %13, align 8
  %340 = icmp ne %struct.device_node* %339, null
  br i1 %340, label %341, label %344

341:                                              ; preds = %338
  %342 = load %struct.device_node*, %struct.device_node** %13, align 8
  %343 = call i32 @irq_of_parse_and_map(%struct.device_node* %342, i32 2)
  store i32 %343, i32* %10, align 4
  br label %344

344:                                              ; preds = %341, %338, %333
  %345 = load i32, i32* %10, align 4
  %346 = icmp sge i32 %345, 0
  br i1 %346, label %347, label %371

347:                                              ; preds = %344
  %348 = load %struct.device*, %struct.device** %14, align 8
  %349 = load i32, i32* @GFP_KERNEL, align 4
  %350 = load %struct.device*, %struct.device** %14, align 8
  %351 = call i32 @dev_name(%struct.device* %350)
  %352 = call i8* @devm_kasprintf(%struct.device* %348, i32 %349, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %351)
  store i8* %352, i8** %11, align 8
  %353 = load %struct.device*, %struct.device** %14, align 8
  %354 = load i32, i32* %10, align 4
  %355 = load i32, i32* @dma_ccerr_handler, align 4
  %356 = load i8*, i8** %11, align 8
  %357 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %358 = call i32 @devm_request_irq(%struct.device* %353, i32 %354, i32 %355, i32 0, i8* %356, %struct.edma_cc* %357)
  store i32 %358, i32* %17, align 4
  %359 = load i32, i32* %17, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %367

361:                                              ; preds = %347
  %362 = load %struct.device*, %struct.device** %14, align 8
  %363 = load i32, i32* %10, align 4
  %364 = load i32, i32* %17, align 4
  %365 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %362, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 %363, i32 %364)
  %366 = load i32, i32* %17, align 4
  store i32 %366, i32* %2, align 4
  br label %620

367:                                              ; preds = %347
  %368 = load i32, i32* %10, align 4
  %369 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %370 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %369, i32 0, i32 6
  store i32 %368, i32* %370, align 4
  br label %371

371:                                              ; preds = %367, %344
  %372 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %373 = load i32, i32* @EDMA_SLOT_ANY, align 4
  %374 = call i64 @edma_alloc_slot(%struct.edma_cc* %372, i32 %373)
  %375 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %376 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %375, i32 0, i32 7
  store i64 %374, i64* %376, align 8
  %377 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %378 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %377, i32 0, i32 7
  %379 = load i64, i64* %378, align 8
  %380 = icmp slt i64 %379, 0
  br i1 %380, label %381, label %388

381:                                              ; preds = %371
  %382 = load %struct.device*, %struct.device** %14, align 8
  %383 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %382, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  %384 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %385 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %384, i32 0, i32 7
  %386 = load i64, i64* %385, align 8
  %387 = trunc i64 %386 to i32
  store i32 %387, i32* %2, align 4
  br label %620

388:                                              ; preds = %371
  %389 = load %struct.edma_soc_info*, %struct.edma_soc_info** %4, align 8
  %390 = getelementptr inbounds %struct.edma_soc_info, %struct.edma_soc_info* %389, i32 0, i32 2
  %391 = load i32**, i32*** %390, align 8
  %392 = bitcast i32** %391 to [2 x i32]*
  store [2 x i32]* %392, [2 x i32]** %5, align 8
  %393 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %394 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %393, i32 0, i32 1
  %395 = load i32, i32* %394, align 8
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %478, label %397

397:                                              ; preds = %388
  store i32 0, i32* %19, align 4
  %398 = load %struct.device*, %struct.device** %14, align 8
  %399 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %400 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %399, i32 0, i32 8
  %401 = load i32, i32* %400, align 8
  %402 = load i32, i32* @GFP_KERNEL, align 4
  %403 = call i8* @devm_kcalloc(%struct.device* %398, i32 %401, i32 8, i32 %402)
  %404 = bitcast i8* %403 to %struct.TYPE_6__*
  %405 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %406 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %405, i32 0, i32 13
  store %struct.TYPE_6__* %404, %struct.TYPE_6__** %406, align 8
  %407 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %408 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %407, i32 0, i32 13
  %409 = load %struct.TYPE_6__*, %struct.TYPE_6__** %408, align 8
  %410 = icmp ne %struct.TYPE_6__* %409, null
  br i1 %410, label %414, label %411

411:                                              ; preds = %397
  %412 = load i32, i32* @ENOMEM, align 4
  %413 = sub nsw i32 0, %412
  store i32 %413, i32* %2, align 4
  br label %620

414:                                              ; preds = %397
  store i32 0, i32* %6, align 4
  br label %415

415:                                              ; preds = %474, %414
  %416 = load %struct.device_node*, %struct.device_node** %13, align 8
  %417 = load i32, i32* %6, align 4
  %418 = call i32 @of_parse_phandle_with_fixed_args(%struct.device_node* %416, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 1, i32 %417, %struct.of_phandle_args* %20)
  store i32 %418, i32* %17, align 4
  %419 = load i32, i32* %17, align 4
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %427, label %421

421:                                              ; preds = %415
  %422 = load i32, i32* %6, align 4
  %423 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %424 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %423, i32 0, i32 8
  %425 = load i32, i32* %424, align 8
  %426 = icmp eq i32 %422, %425
  br i1 %426, label %427, label %428

427:                                              ; preds = %421, %415
  br label %477

428:                                              ; preds = %421
  %429 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %20, i32 0, i32 1
  %430 = load i32, i32* %429, align 8
  %431 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %432 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %431, i32 0, i32 13
  %433 = load %struct.TYPE_6__*, %struct.TYPE_6__** %432, align 8
  %434 = load i32, i32* %6, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %433, i64 %435
  %437 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %436, i32 0, i32 1
  store i32 %430, i32* %437, align 4
  %438 = load i32, i32* %6, align 4
  %439 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %440 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %439, i32 0, i32 13
  %441 = load %struct.TYPE_6__*, %struct.TYPE_6__** %440, align 8
  %442 = load i32, i32* %6, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %441, i64 %443
  %445 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %444, i32 0, i32 0
  store i32 %438, i32* %445, align 4
  %446 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %20, i32 0, i32 0
  %447 = load i32*, i32** %446, align 8
  %448 = getelementptr inbounds i32, i32* %447, i64 0
  %449 = load i32, i32* %448, align 4
  %450 = load [2 x i32]*, [2 x i32]** %5, align 8
  %451 = load i32, i32* %6, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds [2 x i32], [2 x i32]* %450, i64 %452
  %454 = getelementptr inbounds [2 x i32], [2 x i32]* %453, i64 0, i64 1
  store i32 %449, i32* %454, align 4
  %455 = load [2 x i32]*, [2 x i32]** %5, align 8
  %456 = load i32, i32* %6, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds [2 x i32], [2 x i32]* %455, i64 %457
  %459 = getelementptr inbounds [2 x i32], [2 x i32]* %458, i64 0, i64 1
  %460 = load i32, i32* %459, align 4
  %461 = load i32, i32* %19, align 4
  %462 = icmp sgt i32 %460, %461
  br i1 %462, label %463, label %473

463:                                              ; preds = %428
  %464 = load [2 x i32]*, [2 x i32]** %5, align 8
  %465 = load i32, i32* %6, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds [2 x i32], [2 x i32]* %464, i64 %466
  %468 = getelementptr inbounds [2 x i32], [2 x i32]* %467, i64 0, i64 1
  %469 = load i32, i32* %468, align 4
  store i32 %469, i32* %19, align 4
  %470 = load i32, i32* %6, align 4
  %471 = load %struct.edma_soc_info*, %struct.edma_soc_info** %4, align 8
  %472 = getelementptr inbounds %struct.edma_soc_info, %struct.edma_soc_info* %471, i32 0, i32 0
  store i32 %470, i32* %472, align 8
  br label %473

473:                                              ; preds = %463, %428
  br label %474

474:                                              ; preds = %473
  %475 = load i32, i32* %6, align 4
  %476 = add nsw i32 %475, 1
  store i32 %476, i32* %6, align 4
  br label %415

477:                                              ; preds = %427
  br label %478

478:                                              ; preds = %477, %388
  store i32 0, i32* %6, align 4
  br label %479

479:                                              ; preds = %502, %478
  %480 = load [2 x i32]*, [2 x i32]** %5, align 8
  %481 = load i32, i32* %6, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds [2 x i32], [2 x i32]* %480, i64 %482
  %484 = getelementptr inbounds [2 x i32], [2 x i32]* %483, i64 0, i64 0
  %485 = load i32, i32* %484, align 4
  %486 = icmp ne i32 %485, -1
  br i1 %486, label %487, label %505

487:                                              ; preds = %479
  %488 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %489 = load [2 x i32]*, [2 x i32]** %5, align 8
  %490 = load i32, i32* %6, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds [2 x i32], [2 x i32]* %489, i64 %491
  %493 = getelementptr inbounds [2 x i32], [2 x i32]* %492, i64 0, i64 0
  %494 = load i32, i32* %493, align 4
  %495 = load [2 x i32]*, [2 x i32]** %5, align 8
  %496 = load i32, i32* %6, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds [2 x i32], [2 x i32]* %495, i64 %497
  %499 = getelementptr inbounds [2 x i32], [2 x i32]* %498, i64 0, i64 1
  %500 = load i32, i32* %499, align 4
  %501 = call i32 @edma_assign_priority_to_queue(%struct.edma_cc* %488, i32 %494, i32 %500)
  br label %502

502:                                              ; preds = %487
  %503 = load i32, i32* %6, align 4
  %504 = add nsw i32 %503, 1
  store i32 %504, i32* %6, align 4
  br label %479

505:                                              ; preds = %479
  %506 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %507 = load i32, i32* @EDMA_DRAE, align 4
  %508 = call i32 @edma_write_array2(%struct.edma_cc* %506, i32 %507, i32 0, i32 0, i32 0)
  %509 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %510 = load i32, i32* @EDMA_DRAE, align 4
  %511 = call i32 @edma_write_array2(%struct.edma_cc* %509, i32 %510, i32 0, i32 1, i32 0)
  %512 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %513 = load i32, i32* @EDMA_QRAE, align 4
  %514 = call i32 @edma_write_array(%struct.edma_cc* %512, i32 %513, i32 0, i32 0)
  %515 = load %struct.edma_soc_info*, %struct.edma_soc_info** %4, align 8
  %516 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %517 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %516, i32 0, i32 12
  store %struct.edma_soc_info* %515, %struct.edma_soc_info** %517, align 8
  %518 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %519 = load i32, i32* %16, align 4
  %520 = call i32 @edma_dma_init(%struct.edma_cc* %518, i32 %519)
  store i32 0, i32* %6, align 4
  br label %521

521:                                              ; preds = %549, %505
  %522 = load i32, i32* %6, align 4
  %523 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %524 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %523, i32 0, i32 2
  %525 = load i32, i32* %524, align 4
  %526 = icmp slt i32 %522, %525
  br i1 %526, label %527, label %552

527:                                              ; preds = %521
  %528 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %529 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %528, i32 0, i32 11
  %530 = load i32*, i32** %529, align 8
  %531 = load i32, i32* %6, align 4
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds i32, i32* %530, i64 %532
  %534 = load %struct.edma_soc_info*, %struct.edma_soc_info** %4, align 8
  %535 = getelementptr inbounds %struct.edma_soc_info, %struct.edma_soc_info* %534, i32 0, i32 0
  %536 = load i32, i32* %535, align 8
  %537 = call i32 @edma_assign_channel_eventq(i32* %533, i32 %536)
  %538 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %539 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %538, i32 0, i32 11
  %540 = load i32*, i32** %539, align 8
  %541 = load i32, i32* %6, align 4
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds i32, i32* %540, i64 %542
  %544 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %545 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %544, i32 0, i32 7
  %546 = load i64, i64* %545, align 8
  %547 = trunc i64 %546 to i32
  %548 = call i32 @edma_set_chmap(i32* %543, i32 %547)
  br label %549

549:                                              ; preds = %527
  %550 = load i32, i32* %6, align 4
  %551 = add nsw i32 %550, 1
  store i32 %551, i32* %6, align 4
  br label %521

552:                                              ; preds = %521
  %553 = load %struct.edma_soc_info*, %struct.edma_soc_info** %4, align 8
  %554 = getelementptr inbounds %struct.edma_soc_info, %struct.edma_soc_info* %553, i32 0, i32 4
  %555 = load i32, i32* %554, align 4
  %556 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %557 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %556, i32 0, i32 9
  %558 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %557, i32 0, i32 0
  %559 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %558, i32 0, i32 2
  store i32 %555, i32* %559, align 4
  %560 = load %struct.edma_soc_info*, %struct.edma_soc_info** %4, align 8
  %561 = getelementptr inbounds %struct.edma_soc_info, %struct.edma_soc_info* %560, i32 0, i32 3
  %562 = load i32, i32* %561, align 8
  %563 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %564 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %563, i32 0, i32 9
  %565 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %564, i32 0, i32 0
  %566 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %565, i32 0, i32 1
  store i32 %562, i32* %566, align 4
  %567 = load i32, i32* @edma_filter_fn, align 4
  %568 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %569 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %568, i32 0, i32 9
  %570 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %569, i32 0, i32 0
  %571 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %570, i32 0, i32 0
  store i32 %567, i32* %571, align 4
  %572 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %573 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %572, i32 0, i32 9
  %574 = call i32 @dma_async_device_register(%struct.TYPE_9__* %573)
  store i32 %574, i32* %17, align 4
  %575 = load i32, i32* %17, align 4
  %576 = icmp ne i32 %575, 0
  br i1 %576, label %577, label %581

577:                                              ; preds = %552
  %578 = load %struct.device*, %struct.device** %14, align 8
  %579 = load i32, i32* %17, align 4
  %580 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %578, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0), i32 %579)
  br label %612

581:                                              ; preds = %552
  %582 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %583 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %582, i32 0, i32 10
  %584 = load %struct.TYPE_9__*, %struct.TYPE_9__** %583, align 8
  %585 = icmp ne %struct.TYPE_9__* %584, null
  br i1 %585, label %586, label %601

586:                                              ; preds = %581
  %587 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %588 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %587, i32 0, i32 10
  %589 = load %struct.TYPE_9__*, %struct.TYPE_9__** %588, align 8
  %590 = call i32 @dma_async_device_register(%struct.TYPE_9__* %589)
  store i32 %590, i32* %17, align 4
  %591 = load i32, i32* %17, align 4
  %592 = icmp ne i32 %591, 0
  br i1 %592, label %593, label %600

593:                                              ; preds = %586
  %594 = load %struct.device*, %struct.device** %14, align 8
  %595 = load i32, i32* %17, align 4
  %596 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %594, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0), i32 %595)
  %597 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %598 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %597, i32 0, i32 9
  %599 = call i32 @dma_async_device_unregister(%struct.TYPE_9__* %598)
  br label %612

600:                                              ; preds = %586
  br label %601

601:                                              ; preds = %600, %581
  %602 = load %struct.device_node*, %struct.device_node** %13, align 8
  %603 = icmp ne %struct.device_node* %602, null
  br i1 %603, label %604, label %609

604:                                              ; preds = %601
  %605 = load %struct.device_node*, %struct.device_node** %13, align 8
  %606 = load i32, i32* @of_edma_xlate, align 4
  %607 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %608 = call i32 @of_dma_controller_register(%struct.device_node* %605, i32 %606, %struct.edma_cc* %607)
  br label %609

609:                                              ; preds = %604, %601
  %610 = load %struct.device*, %struct.device** %14, align 8
  %611 = call i32 @dev_info(%struct.device* %610, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %620

612:                                              ; preds = %593, %577
  %613 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %614 = load %struct.edma_cc*, %struct.edma_cc** %15, align 8
  %615 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %614, i32 0, i32 7
  %616 = load i64, i64* %615, align 8
  %617 = trunc i64 %616 to i32
  %618 = call i32 @edma_free_slot(%struct.edma_cc* %613, i32 %617)
  %619 = load i32, i32* %17, align 4
  store i32 %619, i32* %2, align 4
  br label %620

620:                                              ; preds = %612, %609, %411, %381, %361, %323, %193, %176, %160, %145, %128, %92, %84, %74, %64, %55
  %621 = load i32, i32* %2, align 4
  ret i32 %621
}

declare dso_local %struct.of_device_id* @of_match_node(i32, %struct.device_node*) #1

declare dso_local %struct.edma_soc_info* @edma_setup_info_from_dt(%struct.device*, i32) #1

declare dso_local i64 @IS_ERR(%struct.edma_soc_info*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.edma_soc_info*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @dma_set_mask_and_coherent(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local %struct.edma_cc* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.edma_soc_info* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.edma_cc*) #1

declare dso_local i32 @edma_setup_from_hw(%struct.device*, %struct.edma_soc_info*, %struct.edma_cc*) #1

declare dso_local i8* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @bitmap_set(i8*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i8*) #1

declare dso_local i32 @edma_write_slot(%struct.edma_cc*, i32, i32*) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i8* @devm_kasprintf(%struct.device*, i32, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.edma_cc*) #1

declare dso_local i64 @edma_alloc_slot(%struct.edma_cc*, i32) #1

declare dso_local i32 @of_parse_phandle_with_fixed_args(%struct.device_node*, i8*, i32, i32, %struct.of_phandle_args*) #1

declare dso_local i32 @edma_assign_priority_to_queue(%struct.edma_cc*, i32, i32) #1

declare dso_local i32 @edma_write_array2(%struct.edma_cc*, i32, i32, i32, i32) #1

declare dso_local i32 @edma_write_array(%struct.edma_cc*, i32, i32, i32) #1

declare dso_local i32 @edma_dma_init(%struct.edma_cc*, i32) #1

declare dso_local i32 @edma_assign_channel_eventq(i32*, i32) #1

declare dso_local i32 @edma_set_chmap(i32*, i32) #1

declare dso_local i32 @dma_async_device_register(%struct.TYPE_9__*) #1

declare dso_local i32 @dma_async_device_unregister(%struct.TYPE_9__*) #1

declare dso_local i32 @of_dma_controller_register(%struct.device_node*, i32, %struct.edma_cc*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @edma_free_slot(%struct.edma_cc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
