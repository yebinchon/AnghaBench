; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mv_xor_v2.c_mv_xor_v2_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mv_xor_v2.c_mv_xor_v2_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mv_xor_v2_device = type { i32, i8*, i8*, i32, i32, %struct.TYPE_5__, %struct.dma_device, i32, %struct.mv_xor_v2_sw_desc*, i32, i32, %struct.msi_desc*, i8*, i8* }
%struct.TYPE_5__ = type { i32, %struct.dma_device* }
%struct.dma_device = type { i32, i32, i32, i32, i32, i32*, i32, i32, i32 }
%struct.mv_xor_v2_sw_desc = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.msi_desc = type { i32 }
%struct.resource = type { i32 }

@MV_XOR_V2_EXT_DESC_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@mv_xor_v2_set_msi_msg = common dso_local global i32 0, align 4
@mv_xor_v2_interrupt_handler = common dso_local global i32 0, align 4
@mv_xor_v2_tasklet = common dso_local global i32 0, align 4
@MV_XOR_V2_DESC_NUM = common dso_local global i32 0, align 4
@mv_xor_v2_tx_submit = common dso_local global i32 0, align 4
@DMA_MEMCPY = common dso_local global i32 0, align 4
@DMA_XOR = common dso_local global i32 0, align 4
@DMA_INTERRUPT = common dso_local global i32 0, align 4
@dma_cookie_status = common dso_local global i32 0, align 4
@mv_xor_v2_issue_pending = common dso_local global i32 0, align 4
@mv_xor_v2_prep_dma_memcpy = common dso_local global i32 0, align 4
@mv_xor_v2_prep_dma_interrupt = common dso_local global i32 0, align 4
@mv_xor_v2_prep_dma_xor = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Marvell Version 2 XOR driver\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mv_xor_v2_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_xor_v2_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mv_xor_v2_device*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dma_device*, align 8
  %9 = alloca %struct.mv_xor_v2_sw_desc*, align 8
  %10 = alloca %struct.msi_desc*, align 8
  %11 = alloca %struct.mv_xor_v2_sw_desc*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* @MV_XOR_V2_EXT_DESC_SIZE, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ne i64 4, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUILD_BUG_ON(i32 %15)
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.mv_xor_v2_device* @devm_kzalloc(i32* %18, i32 144, i32 %19)
  store %struct.mv_xor_v2_device* %20, %struct.mv_xor_v2_device** %4, align 8
  %21 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %4, align 8
  %22 = icmp ne %struct.mv_xor_v2_device* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %371

26:                                               ; preds = %1
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = load i32, i32* @IORESOURCE_MEM, align 4
  %29 = call %struct.resource* @platform_get_resource(%struct.platform_device* %27, i32 %28, i32 0)
  store %struct.resource* %29, %struct.resource** %5, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load %struct.resource*, %struct.resource** %5, align 8
  %33 = call i8* @devm_ioremap_resource(i32* %31, %struct.resource* %32)
  %34 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %4, align 8
  %35 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %34, i32 0, i32 13
  store i8* %33, i8** %35, align 8
  %36 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %4, align 8
  %37 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %36, i32 0, i32 13
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @IS_ERR(i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %26
  %42 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %4, align 8
  %43 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %42, i32 0, i32 13
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @PTR_ERR(i8* %44)
  store i32 %45, i32* %2, align 4
  br label %371

46:                                               ; preds = %26
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = load i32, i32* @IORESOURCE_MEM, align 4
  %49 = call %struct.resource* @platform_get_resource(%struct.platform_device* %47, i32 %48, i32 1)
  store %struct.resource* %49, %struct.resource** %5, align 8
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = load %struct.resource*, %struct.resource** %5, align 8
  %53 = call i8* @devm_ioremap_resource(i32* %51, %struct.resource* %52)
  %54 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %4, align 8
  %55 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %54, i32 0, i32 12
  store i8* %53, i8** %55, align 8
  %56 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %4, align 8
  %57 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %56, i32 0, i32 12
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @IS_ERR(i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %46
  %62 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %4, align 8
  %63 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %62, i32 0, i32 12
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @PTR_ERR(i8* %64)
  store i32 %65, i32* %2, align 4
  br label %371

66:                                               ; preds = %46
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %4, align 8
  %69 = call i32 @platform_set_drvdata(%struct.platform_device* %67, %struct.mv_xor_v2_device* %68)
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = call i32 @DMA_BIT_MASK(i32 40)
  %73 = call i32 @dma_set_mask_and_coherent(i32* %71, i32 %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %2, align 4
  br label %371

78:                                               ; preds = %66
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = call i8* @devm_clk_get(i32* %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %82 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %4, align 8
  %83 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  %84 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %4, align 8
  %85 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @PTR_ERR(i8* %86)
  %88 = load i32, i32* @ENOENT, align 4
  %89 = sub nsw i32 0, %88
  %90 = icmp ne i32 %87, %89
  br i1 %90, label %91, label %113

91:                                               ; preds = %78
  %92 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %4, align 8
  %93 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = call i64 @IS_ERR(i8* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %107, label %97

97:                                               ; preds = %91
  %98 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %4, align 8
  %99 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @clk_prepare_enable(i8* %100)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* %2, align 4
  br label %371

106:                                              ; preds = %97
  br label %112

107:                                              ; preds = %91
  %108 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %4, align 8
  %109 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @PTR_ERR(i8* %110)
  store i32 %111, i32* %2, align 4
  br label %371

112:                                              ; preds = %106
  br label %113

113:                                              ; preds = %112, %78
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 0
  %116 = call i8* @devm_clk_get(i32* %115, i8* null)
  %117 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %4, align 8
  %118 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %117, i32 0, i32 2
  store i8* %116, i8** %118, align 8
  %119 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %4, align 8
  %120 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %119, i32 0, i32 2
  %121 = load i8*, i8** %120, align 8
  %122 = call i64 @IS_ERR(i8* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %113
  %125 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %4, align 8
  %126 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %125, i32 0, i32 2
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @PTR_ERR(i8* %127)
  %129 = load i32, i32* @EPROBE_DEFER, align 4
  %130 = sub nsw i32 0, %129
  %131 = icmp eq i32 %128, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %124
  %133 = load i32, i32* @EPROBE_DEFER, align 4
  store i32 %133, i32* %7, align 4
  br label %365

134:                                              ; preds = %124, %113
  %135 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %4, align 8
  %136 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %135, i32 0, i32 2
  %137 = load i8*, i8** %136, align 8
  %138 = call i64 @IS_ERR(i8* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %149, label %140

140:                                              ; preds = %134
  %141 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %4, align 8
  %142 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %141, i32 0, i32 2
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @clk_prepare_enable(i8* %143)
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* %7, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %140
  br label %365

148:                                              ; preds = %140
  br label %149

149:                                              ; preds = %148, %134
  %150 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %151 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %150, i32 0, i32 0
  %152 = load i32, i32* @mv_xor_v2_set_msi_msg, align 4
  %153 = call i32 @platform_msi_domain_alloc_irqs(i32* %151, i32 1, i32 %152)
  store i32 %153, i32* %7, align 4
  %154 = load i32, i32* %7, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %149
  br label %360

157:                                              ; preds = %149
  %158 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %159 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %158, i32 0, i32 0
  %160 = call %struct.msi_desc* @first_msi_entry(i32* %159)
  store %struct.msi_desc* %160, %struct.msi_desc** %10, align 8
  %161 = load %struct.msi_desc*, %struct.msi_desc** %10, align 8
  %162 = icmp ne %struct.msi_desc* %161, null
  br i1 %162, label %164, label %163

163:                                              ; preds = %157
  br label %356

164:                                              ; preds = %157
  %165 = load %struct.msi_desc*, %struct.msi_desc** %10, align 8
  %166 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %4, align 8
  %167 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %166, i32 0, i32 11
  store %struct.msi_desc* %165, %struct.msi_desc** %167, align 8
  %168 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %169 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %168, i32 0, i32 0
  %170 = load %struct.msi_desc*, %struct.msi_desc** %10, align 8
  %171 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @mv_xor_v2_interrupt_handler, align 4
  %174 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %175 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %174, i32 0, i32 0
  %176 = call i32 @dev_name(i32* %175)
  %177 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %4, align 8
  %178 = call i32 @devm_request_irq(i32* %169, i32 %172, i32 %173, i32 0, i32 %176, %struct.mv_xor_v2_device* %177)
  store i32 %178, i32* %7, align 4
  %179 = load i32, i32* %7, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %164
  br label %356

182:                                              ; preds = %164
  %183 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %4, align 8
  %184 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %183, i32 0, i32 10
  %185 = load i32, i32* @mv_xor_v2_tasklet, align 4
  %186 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %4, align 8
  %187 = ptrtoint %struct.mv_xor_v2_device* %186 to i64
  %188 = call i32 @tasklet_init(i32* %184, i32 %185, i64 %187)
  %189 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %4, align 8
  %190 = call i32 @mv_xor_v2_set_desc_size(%struct.mv_xor_v2_device* %189)
  %191 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %4, align 8
  %192 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 8
  %193 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %4, align 8
  %194 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %193, i32 0, i32 5
  %195 = call i32 @dma_cookie_init(%struct.TYPE_5__* %194)
  %196 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %197 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %196, i32 0, i32 0
  %198 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %4, align 8
  %199 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @MV_XOR_V2_DESC_NUM, align 4
  %202 = mul nsw i32 %200, %201
  %203 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %4, align 8
  %204 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %203, i32 0, i32 3
  %205 = load i32, i32* @GFP_KERNEL, align 4
  %206 = call i32 @dma_alloc_coherent(i32* %197, i32 %202, i32* %204, i32 %205)
  %207 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %4, align 8
  %208 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %207, i32 0, i32 4
  store i32 %206, i32* %208, align 4
  %209 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %4, align 8
  %210 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %216, label %213

213:                                              ; preds = %182
  %214 = load i32, i32* @ENOMEM, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %7, align 4
  br label %356

216:                                              ; preds = %182
  %217 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %218 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %217, i32 0, i32 0
  %219 = load i32, i32* @MV_XOR_V2_DESC_NUM, align 4
  %220 = load i32, i32* @GFP_KERNEL, align 4
  %221 = call %struct.mv_xor_v2_sw_desc* @devm_kcalloc(i32* %218, i32 %219, i32 12, i32 %220)
  %222 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %4, align 8
  %223 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %222, i32 0, i32 8
  store %struct.mv_xor_v2_sw_desc* %221, %struct.mv_xor_v2_sw_desc** %223, align 8
  %224 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %4, align 8
  %225 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %224, i32 0, i32 8
  %226 = load %struct.mv_xor_v2_sw_desc*, %struct.mv_xor_v2_sw_desc** %225, align 8
  %227 = icmp ne %struct.mv_xor_v2_sw_desc* %226, null
  br i1 %227, label %231, label %228

228:                                              ; preds = %216
  %229 = load i32, i32* @ENOMEM, align 4
  %230 = sub nsw i32 0, %229
  store i32 %230, i32* %7, align 4
  br label %341

231:                                              ; preds = %216
  %232 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %4, align 8
  %233 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %232, i32 0, i32 9
  %234 = call i32 @spin_lock_init(i32* %233)
  %235 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %4, align 8
  %236 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %235, i32 0, i32 7
  %237 = call i32 @INIT_LIST_HEAD(i32* %236)
  store i32 0, i32* %6, align 4
  br label %238

238:                                              ; preds = %269, %231
  %239 = load i32, i32* %6, align 4
  %240 = load i32, i32* @MV_XOR_V2_DESC_NUM, align 4
  %241 = icmp slt i32 %239, %240
  br i1 %241, label %242, label %272

242:                                              ; preds = %238
  %243 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %4, align 8
  %244 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %243, i32 0, i32 8
  %245 = load %struct.mv_xor_v2_sw_desc*, %struct.mv_xor_v2_sw_desc** %244, align 8
  %246 = load i32, i32* %6, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.mv_xor_v2_sw_desc, %struct.mv_xor_v2_sw_desc* %245, i64 %247
  store %struct.mv_xor_v2_sw_desc* %248, %struct.mv_xor_v2_sw_desc** %11, align 8
  %249 = load i32, i32* %6, align 4
  %250 = load %struct.mv_xor_v2_sw_desc*, %struct.mv_xor_v2_sw_desc** %11, align 8
  %251 = getelementptr inbounds %struct.mv_xor_v2_sw_desc, %struct.mv_xor_v2_sw_desc* %250, i32 0, i32 0
  store i32 %249, i32* %251, align 4
  %252 = load %struct.mv_xor_v2_sw_desc*, %struct.mv_xor_v2_sw_desc** %11, align 8
  %253 = getelementptr inbounds %struct.mv_xor_v2_sw_desc, %struct.mv_xor_v2_sw_desc* %252, i32 0, i32 2
  %254 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %4, align 8
  %255 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %254, i32 0, i32 5
  %256 = call i32 @dma_async_tx_descriptor_init(%struct.TYPE_6__* %253, %struct.TYPE_5__* %255)
  %257 = load i32, i32* @mv_xor_v2_tx_submit, align 4
  %258 = load %struct.mv_xor_v2_sw_desc*, %struct.mv_xor_v2_sw_desc** %11, align 8
  %259 = getelementptr inbounds %struct.mv_xor_v2_sw_desc, %struct.mv_xor_v2_sw_desc* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 0
  store i32 %257, i32* %260, align 4
  %261 = load %struct.mv_xor_v2_sw_desc*, %struct.mv_xor_v2_sw_desc** %11, align 8
  %262 = getelementptr inbounds %struct.mv_xor_v2_sw_desc, %struct.mv_xor_v2_sw_desc* %261, i32 0, i32 2
  %263 = call i32 @async_tx_ack(%struct.TYPE_6__* %262)
  %264 = load %struct.mv_xor_v2_sw_desc*, %struct.mv_xor_v2_sw_desc** %11, align 8
  %265 = getelementptr inbounds %struct.mv_xor_v2_sw_desc, %struct.mv_xor_v2_sw_desc* %264, i32 0, i32 1
  %266 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %4, align 8
  %267 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %266, i32 0, i32 7
  %268 = call i32 @list_add(i32* %265, i32* %267)
  br label %269

269:                                              ; preds = %242
  %270 = load i32, i32* %6, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %6, align 4
  br label %238

272:                                              ; preds = %238
  %273 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %4, align 8
  %274 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %273, i32 0, i32 6
  store %struct.dma_device* %274, %struct.dma_device** %8, align 8
  %275 = load %struct.dma_device*, %struct.dma_device** %8, align 8
  %276 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %275, i32 0, i32 8
  %277 = load i32, i32* %276, align 8
  %278 = call i32 @dma_cap_zero(i32 %277)
  %279 = load i32, i32* @DMA_MEMCPY, align 4
  %280 = load %struct.dma_device*, %struct.dma_device** %8, align 8
  %281 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %280, i32 0, i32 8
  %282 = load i32, i32* %281, align 8
  %283 = call i32 @dma_cap_set(i32 %279, i32 %282)
  %284 = load i32, i32* @DMA_XOR, align 4
  %285 = load %struct.dma_device*, %struct.dma_device** %8, align 8
  %286 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %285, i32 0, i32 8
  %287 = load i32, i32* %286, align 8
  %288 = call i32 @dma_cap_set(i32 %284, i32 %287)
  %289 = load i32, i32* @DMA_INTERRUPT, align 4
  %290 = load %struct.dma_device*, %struct.dma_device** %8, align 8
  %291 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %290, i32 0, i32 8
  %292 = load i32, i32* %291, align 8
  %293 = call i32 @dma_cap_set(i32 %289, i32 %292)
  %294 = load %struct.dma_device*, %struct.dma_device** %8, align 8
  %295 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %294, i32 0, i32 1
  %296 = call i32 @INIT_LIST_HEAD(i32* %295)
  %297 = load i32, i32* @dma_cookie_status, align 4
  %298 = load %struct.dma_device*, %struct.dma_device** %8, align 8
  %299 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %298, i32 0, i32 7
  store i32 %297, i32* %299, align 4
  %300 = load i32, i32* @mv_xor_v2_issue_pending, align 4
  %301 = load %struct.dma_device*, %struct.dma_device** %8, align 8
  %302 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %301, i32 0, i32 6
  store i32 %300, i32* %302, align 8
  %303 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %304 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %303, i32 0, i32 0
  %305 = load %struct.dma_device*, %struct.dma_device** %8, align 8
  %306 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %305, i32 0, i32 5
  store i32* %304, i32** %306, align 8
  %307 = load i32, i32* @mv_xor_v2_prep_dma_memcpy, align 4
  %308 = load %struct.dma_device*, %struct.dma_device** %8, align 8
  %309 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %308, i32 0, i32 4
  store i32 %307, i32* %309, align 8
  %310 = load i32, i32* @mv_xor_v2_prep_dma_interrupt, align 4
  %311 = load %struct.dma_device*, %struct.dma_device** %8, align 8
  %312 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %311, i32 0, i32 3
  store i32 %310, i32* %312, align 4
  %313 = load %struct.dma_device*, %struct.dma_device** %8, align 8
  %314 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %313, i32 0, i32 0
  store i32 8, i32* %314, align 8
  %315 = load i32, i32* @mv_xor_v2_prep_dma_xor, align 4
  %316 = load %struct.dma_device*, %struct.dma_device** %8, align 8
  %317 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %316, i32 0, i32 2
  store i32 %315, i32* %317, align 8
  %318 = load %struct.dma_device*, %struct.dma_device** %8, align 8
  %319 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %4, align 8
  %320 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %319, i32 0, i32 5
  %321 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %320, i32 0, i32 1
  store %struct.dma_device* %318, %struct.dma_device** %321, align 8
  %322 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %4, align 8
  %323 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %322, i32 0, i32 5
  %324 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %323, i32 0, i32 0
  %325 = load %struct.dma_device*, %struct.dma_device** %8, align 8
  %326 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %325, i32 0, i32 1
  %327 = call i32 @list_add_tail(i32* %324, i32* %326)
  %328 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %4, align 8
  %329 = call i32 @mv_xor_v2_enable_imsg_thrd(%struct.mv_xor_v2_device* %328)
  %330 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %4, align 8
  %331 = call i32 @mv_xor_v2_descq_init(%struct.mv_xor_v2_device* %330)
  %332 = load %struct.dma_device*, %struct.dma_device** %8, align 8
  %333 = call i32 @dma_async_device_register(%struct.dma_device* %332)
  store i32 %333, i32* %7, align 4
  %334 = load i32, i32* %7, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %337

336:                                              ; preds = %272
  br label %341

337:                                              ; preds = %272
  %338 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %339 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %338, i32 0, i32 0
  %340 = call i32 @dev_notice(i32* %339, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %371

341:                                              ; preds = %336, %228
  %342 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %343 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %342, i32 0, i32 0
  %344 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %4, align 8
  %345 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = load i32, i32* @MV_XOR_V2_DESC_NUM, align 4
  %348 = mul nsw i32 %346, %347
  %349 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %4, align 8
  %350 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %349, i32 0, i32 4
  %351 = load i32, i32* %350, align 4
  %352 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %4, align 8
  %353 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %352, i32 0, i32 3
  %354 = load i32, i32* %353, align 8
  %355 = call i32 @dma_free_coherent(i32* %343, i32 %348, i32 %351, i32 %354)
  br label %356

356:                                              ; preds = %341, %213, %181, %163
  %357 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %358 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %357, i32 0, i32 0
  %359 = call i32 @platform_msi_domain_free_irqs(i32* %358)
  br label %360

360:                                              ; preds = %356, %156
  %361 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %4, align 8
  %362 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %361, i32 0, i32 2
  %363 = load i8*, i8** %362, align 8
  %364 = call i32 @clk_disable_unprepare(i8* %363)
  br label %365

365:                                              ; preds = %360, %147, %132
  %366 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %4, align 8
  %367 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %366, i32 0, i32 1
  %368 = load i8*, i8** %367, align 8
  %369 = call i32 @clk_disable_unprepare(i8* %368)
  %370 = load i32, i32* %7, align 4
  store i32 %370, i32* %2, align 4
  br label %371

371:                                              ; preds = %365, %337, %107, %104, %76, %61, %41, %23
  %372 = load i32, i32* %2, align 4
  ret i32 %372
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local %struct.mv_xor_v2_device* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mv_xor_v2_device*) #1

declare dso_local i32 @dma_set_mask_and_coherent(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i8* @devm_clk_get(i32*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @platform_msi_domain_alloc_irqs(i32*, i32, i32) #1

declare dso_local %struct.msi_desc* @first_msi_entry(i32*) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.mv_xor_v2_device*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @mv_xor_v2_set_desc_size(%struct.mv_xor_v2_device*) #1

declare dso_local i32 @dma_cookie_init(%struct.TYPE_5__*) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local %struct.mv_xor_v2_sw_desc* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dma_async_tx_descriptor_init(%struct.TYPE_6__*, %struct.TYPE_5__*) #1

declare dso_local i32 @async_tx_ack(%struct.TYPE_6__*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @dma_cap_zero(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mv_xor_v2_enable_imsg_thrd(%struct.mv_xor_v2_device*) #1

declare dso_local i32 @mv_xor_v2_descq_init(%struct.mv_xor_v2_device*) #1

declare dso_local i32 @dma_async_device_register(%struct.dma_device*) #1

declare dso_local i32 @dev_notice(i32*, i8*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @platform_msi_domain_free_irqs(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
