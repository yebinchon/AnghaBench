; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-pdc-mailbox.c_pdc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-pdc-mailbox.c_pdc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.resource = type { i32, i32 }
%struct.pdc_state = type { i32, i32, i32, i32, i32, %struct.platform_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pdcg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [41 x i8] c"PDC device cannot perform DMA. Error %d.\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"pdc rings\00", align 1
@PDC_RING_SIZE = common dso_local global i32 0, align 4
@RING_ALIGN = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"PDC register region res.start = %pa, res.end = %pa\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to map registers: %d\0A\00", align 1
@pdc_tasklet_cb = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"pdc_probe() successful\00", align 1
@PDC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pdc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.pdc_state*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.pdc_state* @devm_kzalloc(%struct.device* %10, i32 32, i32 %11)
  store %struct.pdc_state* %12, %struct.pdc_state** %7, align 8
  %13 = load %struct.pdc_state*, %struct.pdc_state** %7, align 8
  %14 = icmp ne %struct.pdc_state* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %141

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load %struct.pdc_state*, %struct.pdc_state** %7, align 8
  %21 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %20, i32 0, i32 5
  store %struct.platform_device* %19, %struct.platform_device** %21, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load %struct.pdc_state*, %struct.pdc_state** %7, align 8
  %24 = call i32 @platform_set_drvdata(%struct.platform_device* %22, %struct.pdc_state* %23)
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pdcg, i32 0, i32 0), align 4
  %26 = load %struct.pdc_state*, %struct.pdc_state** %7, align 8
  %27 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pdcg, i32 0, i32 0), align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pdcg, i32 0, i32 0), align 4
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = call i32 @DMA_BIT_MASK(i32 39)
  %32 = call i32 @dma_set_mask_and_coherent(%struct.device* %30, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %18
  %36 = load %struct.device*, %struct.device** %5, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @dev_warn(%struct.device* %36, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %141

39:                                               ; preds = %18
  %40 = load %struct.device*, %struct.device** %5, align 8
  %41 = load i32, i32* @PDC_RING_SIZE, align 4
  %42 = load i32, i32* @RING_ALIGN, align 4
  %43 = call i32 @dma_pool_create(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %struct.device* %40, i32 %41, i32 %42, i32 0)
  %44 = load %struct.pdc_state*, %struct.pdc_state** %7, align 8
  %45 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.pdc_state*, %struct.pdc_state** %7, align 8
  %47 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %39
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %141

53:                                               ; preds = %39
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = load %struct.pdc_state*, %struct.pdc_state** %7, align 8
  %56 = call i32 @pdc_dt_read(%struct.platform_device* %54, %struct.pdc_state* %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %136

60:                                               ; preds = %53
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = load i32, i32* @IORESOURCE_MEM, align 4
  %63 = call %struct.resource* @platform_get_resource(%struct.platform_device* %61, i32 %62, i32 0)
  store %struct.resource* %63, %struct.resource** %6, align 8
  %64 = load %struct.resource*, %struct.resource** %6, align 8
  %65 = icmp ne %struct.resource* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* @ENODEV, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %136

69:                                               ; preds = %60
  %70 = load %struct.device*, %struct.device** %5, align 8
  %71 = load %struct.resource*, %struct.resource** %6, align 8
  %72 = getelementptr inbounds %struct.resource, %struct.resource* %71, i32 0, i32 1
  %73 = load %struct.resource*, %struct.resource** %6, align 8
  %74 = getelementptr inbounds %struct.resource, %struct.resource* %73, i32 0, i32 0
  %75 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %70, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32* %72, i32* %74)
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = load %struct.resource*, %struct.resource** %6, align 8
  %79 = call i32 @devm_ioremap_resource(%struct.device* %77, %struct.resource* %78)
  %80 = load %struct.pdc_state*, %struct.pdc_state** %7, align 8
  %81 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  %82 = load %struct.pdc_state*, %struct.pdc_state** %7, align 8
  %83 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @IS_ERR(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %69
  %88 = load %struct.pdc_state*, %struct.pdc_state** %7, align 8
  %89 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @PTR_ERR(i32 %90)
  store i32 %91, i32* %4, align 4
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @dev_err(%struct.device* %93, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  br label %136

96:                                               ; preds = %69
  %97 = load %struct.pdc_state*, %struct.pdc_state** %7, align 8
  %98 = call i32 @pdc_rx_buf_pool_create(%struct.pdc_state* %97)
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %4, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %136

102:                                              ; preds = %96
  %103 = load %struct.pdc_state*, %struct.pdc_state** %7, align 8
  %104 = call i32 @pdc_hw_init(%struct.pdc_state* %103)
  %105 = load %struct.pdc_state*, %struct.pdc_state** %7, align 8
  %106 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %105, i32 0, i32 2
  %107 = load i32, i32* @pdc_tasklet_cb, align 4
  %108 = load %struct.pdc_state*, %struct.pdc_state** %7, align 8
  %109 = ptrtoint %struct.pdc_state* %108 to i64
  %110 = call i32 @tasklet_init(i32* %106, i32 %107, i64 %109)
  %111 = load %struct.pdc_state*, %struct.pdc_state** %7, align 8
  %112 = call i32 @pdc_interrupts_init(%struct.pdc_state* %111)
  store i32 %112, i32* %4, align 4
  %113 = load i32, i32* %4, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %102
  br label %128

116:                                              ; preds = %102
  %117 = load %struct.pdc_state*, %struct.pdc_state** %7, align 8
  %118 = call i32 @pdc_mb_init(%struct.pdc_state* %117)
  store i32 %118, i32* %4, align 4
  %119 = load i32, i32* %4, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %128

122:                                              ; preds = %116
  %123 = load %struct.pdc_state*, %struct.pdc_state** %7, align 8
  %124 = call i32 @pdc_setup_debugfs(%struct.pdc_state* %123)
  %125 = load %struct.device*, %struct.device** %5, align 8
  %126 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %125, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %127 = load i32, i32* @PDC_SUCCESS, align 4
  store i32 %127, i32* %2, align 4
  br label %143

128:                                              ; preds = %121, %115
  %129 = load %struct.pdc_state*, %struct.pdc_state** %7, align 8
  %130 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %129, i32 0, i32 2
  %131 = call i32 @tasklet_kill(i32* %130)
  %132 = load %struct.pdc_state*, %struct.pdc_state** %7, align 8
  %133 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @dma_pool_destroy(i32 %134)
  br label %136

136:                                              ; preds = %128, %101, %87, %66, %59
  %137 = load %struct.pdc_state*, %struct.pdc_state** %7, align 8
  %138 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @dma_pool_destroy(i32 %139)
  br label %141

141:                                              ; preds = %136, %50, %35, %15
  %142 = load i32, i32* %4, align 4
  store i32 %142, i32* %2, align 4
  br label %143

143:                                              ; preds = %141, %122
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local %struct.pdc_state* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pdc_state*) #1

declare dso_local i32 @dma_set_mask_and_coherent(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @dma_pool_create(i8*, %struct.device*, i32, i32, i32) #1

declare dso_local i32 @pdc_dt_read(%struct.platform_device*, %struct.pdc_state*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @pdc_rx_buf_pool_create(%struct.pdc_state*) #1

declare dso_local i32 @pdc_hw_init(%struct.pdc_state*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @pdc_interrupts_init(%struct.pdc_state*) #1

declare dso_local i32 @pdc_mb_init(%struct.pdc_state*) #1

declare dso_local i32 @pdc_setup_debugfs(%struct.pdc_state*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @dma_pool_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
