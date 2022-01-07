; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_uniphier-mdmac.c_uniphier_mdmac_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_uniphier-mdmac.c_uniphier_mdmac_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.uniphier_mdmac_device = type { i32, %struct.dma_device, i32 }
%struct.dma_device = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, %struct.device* }
%struct.resource = type { i32 }

@channels = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@DMA_PRIVATE = common dso_local global i32 0, align 4
@UNIPHIER_MDMAC_SLAVE_BUSWIDTHS = common dso_local global i8* null, align 8
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_RESIDUE_GRANULARITY_SEGMENT = common dso_local global i32 0, align 4
@uniphier_mdmac_free_chan_resources = common dso_local global i32 0, align 4
@uniphier_mdmac_prep_slave_sg = common dso_local global i32 0, align 4
@uniphier_mdmac_terminate_all = common dso_local global i32 0, align 4
@uniphier_mdmac_synchronize = common dso_local global i32 0, align 4
@uniphier_mdmac_tx_status = common dso_local global i32 0, align 4
@uniphier_mdmac_issue_pending = common dso_local global i32 0, align 4
@of_dma_xlate_by_chan_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @uniphier_mdmac_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_mdmac_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.uniphier_mdmac_device*, align 8
  %6 = alloca %struct.dma_device*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = call i32 @platform_irq_count(%struct.platform_device* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %2, align 4
  br label %178

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call i32 @DMA_BIT_MASK(i32 32)
  %22 = call i32 @dma_set_mask(%struct.device* %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %2, align 4
  br label %178

27:                                               ; preds = %19
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load %struct.uniphier_mdmac_device*, %struct.uniphier_mdmac_device** %5, align 8
  %30 = load i32, i32* @channels, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @struct_size(%struct.uniphier_mdmac_device* %29, i32 %30, i32 %31)
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.uniphier_mdmac_device* @devm_kzalloc(%struct.device* %28, i32 %32, i32 %33)
  store %struct.uniphier_mdmac_device* %34, %struct.uniphier_mdmac_device** %5, align 8
  %35 = load %struct.uniphier_mdmac_device*, %struct.uniphier_mdmac_device** %5, align 8
  %36 = icmp ne %struct.uniphier_mdmac_device* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %27
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %178

40:                                               ; preds = %27
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = load i32, i32* @IORESOURCE_MEM, align 4
  %43 = call %struct.resource* @platform_get_resource(%struct.platform_device* %41, i32 %42, i32 0)
  store %struct.resource* %43, %struct.resource** %7, align 8
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = load %struct.resource*, %struct.resource** %7, align 8
  %46 = call i32 @devm_ioremap_resource(%struct.device* %44, %struct.resource* %45)
  %47 = load %struct.uniphier_mdmac_device*, %struct.uniphier_mdmac_device** %5, align 8
  %48 = getelementptr inbounds %struct.uniphier_mdmac_device, %struct.uniphier_mdmac_device* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.uniphier_mdmac_device*, %struct.uniphier_mdmac_device** %5, align 8
  %50 = getelementptr inbounds %struct.uniphier_mdmac_device, %struct.uniphier_mdmac_device* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @IS_ERR(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %40
  %55 = load %struct.uniphier_mdmac_device*, %struct.uniphier_mdmac_device** %5, align 8
  %56 = getelementptr inbounds %struct.uniphier_mdmac_device, %struct.uniphier_mdmac_device* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @PTR_ERR(i32 %57)
  store i32 %58, i32* %2, align 4
  br label %178

59:                                               ; preds = %40
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = call i32 @devm_clk_get(%struct.device* %60, i32* null)
  %62 = load %struct.uniphier_mdmac_device*, %struct.uniphier_mdmac_device** %5, align 8
  %63 = getelementptr inbounds %struct.uniphier_mdmac_device, %struct.uniphier_mdmac_device* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.uniphier_mdmac_device*, %struct.uniphier_mdmac_device** %5, align 8
  %65 = getelementptr inbounds %struct.uniphier_mdmac_device, %struct.uniphier_mdmac_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @IS_ERR(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %59
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = call i32 @dev_err(%struct.device* %70, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %72 = load %struct.uniphier_mdmac_device*, %struct.uniphier_mdmac_device** %5, align 8
  %73 = getelementptr inbounds %struct.uniphier_mdmac_device, %struct.uniphier_mdmac_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @PTR_ERR(i32 %74)
  store i32 %75, i32* %2, align 4
  br label %178

76:                                               ; preds = %59
  %77 = load %struct.uniphier_mdmac_device*, %struct.uniphier_mdmac_device** %5, align 8
  %78 = getelementptr inbounds %struct.uniphier_mdmac_device, %struct.uniphier_mdmac_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @clk_prepare_enable(i32 %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %2, align 4
  br label %178

85:                                               ; preds = %76
  %86 = load %struct.uniphier_mdmac_device*, %struct.uniphier_mdmac_device** %5, align 8
  %87 = getelementptr inbounds %struct.uniphier_mdmac_device, %struct.uniphier_mdmac_device* %86, i32 0, i32 1
  store %struct.dma_device* %87, %struct.dma_device** %6, align 8
  %88 = load %struct.device*, %struct.device** %4, align 8
  %89 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %90 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %89, i32 0, i32 12
  store %struct.device* %88, %struct.device** %90, align 8
  %91 = load i32, i32* @DMA_PRIVATE, align 4
  %92 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %93 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %92, i32 0, i32 11
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @dma_cap_set(i32 %91, i32 %94)
  %96 = load i8*, i8** @UNIPHIER_MDMAC_SLAVE_BUSWIDTHS, align 8
  %97 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %98 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %97, i32 0, i32 10
  store i8* %96, i8** %98, align 8
  %99 = load i8*, i8** @UNIPHIER_MDMAC_SLAVE_BUSWIDTHS, align 8
  %100 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %101 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %100, i32 0, i32 9
  store i8* %99, i8** %101, align 8
  %102 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %103 = call i32 @BIT(i32 %102)
  %104 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %105 = call i32 @BIT(i32 %104)
  %106 = or i32 %103, %105
  %107 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %108 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* @DMA_RESIDUE_GRANULARITY_SEGMENT, align 4
  %110 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %111 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %110, i32 0, i32 8
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* @uniphier_mdmac_free_chan_resources, align 4
  %113 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %114 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %113, i32 0, i32 7
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @uniphier_mdmac_prep_slave_sg, align 4
  %116 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %117 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %116, i32 0, i32 6
  store i32 %115, i32* %117, align 8
  %118 = load i32, i32* @uniphier_mdmac_terminate_all, align 4
  %119 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %120 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %119, i32 0, i32 5
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* @uniphier_mdmac_synchronize, align 4
  %122 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %123 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %122, i32 0, i32 4
  store i32 %121, i32* %123, align 8
  %124 = load i32, i32* @uniphier_mdmac_tx_status, align 4
  %125 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %126 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* @uniphier_mdmac_issue_pending, align 4
  %128 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %129 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 8
  %130 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %131 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %130, i32 0, i32 1
  %132 = call i32 @INIT_LIST_HEAD(i32* %131)
  store i32 0, i32* %10, align 4
  br label %133

133:                                              ; preds = %146, %85
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %149

137:                                              ; preds = %133
  %138 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %139 = load %struct.uniphier_mdmac_device*, %struct.uniphier_mdmac_device** %5, align 8
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @uniphier_mdmac_chan_init(%struct.platform_device* %138, %struct.uniphier_mdmac_device* %139, i32 %140)
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* %9, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %137
  br label %172

145:                                              ; preds = %137
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %10, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %10, align 4
  br label %133

149:                                              ; preds = %133
  %150 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %151 = call i32 @dma_async_device_register(%struct.dma_device* %150)
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* %9, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %149
  br label %172

155:                                              ; preds = %149
  %156 = load %struct.device*, %struct.device** %4, align 8
  %157 = getelementptr inbounds %struct.device, %struct.device* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @of_dma_xlate_by_chan_id, align 4
  %160 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %161 = call i32 @of_dma_controller_register(i32 %158, i32 %159, %struct.dma_device* %160)
  store i32 %161, i32* %9, align 4
  %162 = load i32, i32* %9, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %155
  br label %169

165:                                              ; preds = %155
  %166 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %167 = load %struct.uniphier_mdmac_device*, %struct.uniphier_mdmac_device** %5, align 8
  %168 = call i32 @platform_set_drvdata(%struct.platform_device* %166, %struct.uniphier_mdmac_device* %167)
  store i32 0, i32* %2, align 4
  br label %178

169:                                              ; preds = %164
  %170 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %171 = call i32 @dma_async_device_unregister(%struct.dma_device* %170)
  br label %172

172:                                              ; preds = %169, %154, %144
  %173 = load %struct.uniphier_mdmac_device*, %struct.uniphier_mdmac_device** %5, align 8
  %174 = getelementptr inbounds %struct.uniphier_mdmac_device, %struct.uniphier_mdmac_device* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @clk_disable_unprepare(i32 %175)
  %177 = load i32, i32* %9, align 4
  store i32 %177, i32* %2, align 4
  br label %178

178:                                              ; preds = %172, %165, %83, %69, %54, %37, %25, %17
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

declare dso_local i32 @platform_irq_count(%struct.platform_device*) #1

declare dso_local i32 @dma_set_mask(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local %struct.uniphier_mdmac_device* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @struct_size(%struct.uniphier_mdmac_device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @uniphier_mdmac_chan_init(%struct.platform_device*, %struct.uniphier_mdmac_device*, i32) #1

declare dso_local i32 @dma_async_device_register(%struct.dma_device*) #1

declare dso_local i32 @of_dma_controller_register(i32, i32, %struct.dma_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.uniphier_mdmac_device*) #1

declare dso_local i32 @dma_async_device_unregister(%struct.dma_device*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
