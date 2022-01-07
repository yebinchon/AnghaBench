; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_drv.c_sec_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_drv.c_sec_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.sec_dev_info = type { i32*, i32, i32, %struct.device* }

@.str = private unnamed_addr constant [33 x i8] c"Failed to set 64 bit dma mask %d\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"sgl\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to create sec sgl dma pool\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Base initialization fail! %d\0A\00", align 1
@SEC_Q_NUM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"Failed to register algorithms with crypto %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sec_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sec_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sec_dev_info*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call i32 @DMA_BIT_MASK(i32 64)
  %13 = call i32 @dma_set_mask_and_coherent(%struct.device* %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %152

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.sec_dev_info* @devm_kzalloc(%struct.device* %23, i32 24, i32 %24)
  store %struct.sec_dev_info* %25, %struct.sec_dev_info** %4, align 8
  %26 = load %struct.sec_dev_info*, %struct.sec_dev_info** %4, align 8
  %27 = icmp ne %struct.sec_dev_info* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %152

31:                                               ; preds = %22
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = load %struct.sec_dev_info*, %struct.sec_dev_info** %4, align 8
  %34 = getelementptr inbounds %struct.sec_dev_info, %struct.sec_dev_info* %33, i32 0, i32 3
  store %struct.device* %32, %struct.device** %34, align 8
  %35 = load %struct.sec_dev_info*, %struct.sec_dev_info** %4, align 8
  %36 = getelementptr inbounds %struct.sec_dev_info, %struct.sec_dev_info* %35, i32 0, i32 2
  %37 = call i32 @mutex_init(i32* %36)
  %38 = load %struct.device*, %struct.device** %5, align 8
  %39 = call i32 @dmam_pool_create(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.device* %38, i32 4, i32 64, i32 0)
  %40 = load %struct.sec_dev_info*, %struct.sec_dev_info** %4, align 8
  %41 = getelementptr inbounds %struct.sec_dev_info, %struct.sec_dev_info* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.sec_dev_info*, %struct.sec_dev_info** %4, align 8
  %43 = getelementptr inbounds %struct.sec_dev_info, %struct.sec_dev_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %31
  %47 = load %struct.device*, %struct.device** %5, align 8
  %48 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %47, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %152

51:                                               ; preds = %31
  %52 = load %struct.sec_dev_info*, %struct.sec_dev_info** %4, align 8
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = call i32 @sec_base_init(%struct.sec_dev_info* %52, %struct.platform_device* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load %struct.device*, %struct.device** %5, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %2, align 4
  br label %152

62:                                               ; preds = %51
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %100, %62
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @SEC_Q_NUM, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %103

67:                                               ; preds = %63
  %68 = load %struct.sec_dev_info*, %struct.sec_dev_info** %4, align 8
  %69 = load %struct.sec_dev_info*, %struct.sec_dev_info** %4, align 8
  %70 = getelementptr inbounds %struct.sec_dev_info, %struct.sec_dev_info* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @sec_queue_config(%struct.sec_dev_info* %68, i32* %74, i32 %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %67
  br label %123

80:                                               ; preds = %67
  %81 = load %struct.sec_dev_info*, %struct.sec_dev_info** %4, align 8
  %82 = getelementptr inbounds %struct.sec_dev_info, %struct.sec_dev_info* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = call i32 @sec_queue_irq_init(i32* %86)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %80
  %91 = load %struct.sec_dev_info*, %struct.sec_dev_info** %4, align 8
  %92 = load %struct.sec_dev_info*, %struct.sec_dev_info** %4, align 8
  %93 = getelementptr inbounds %struct.sec_dev_info, %struct.sec_dev_info* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = call i32 @sec_queue_unconfig(%struct.sec_dev_info* %91, i32* %97)
  br label %123

99:                                               ; preds = %80
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %63

103:                                              ; preds = %63
  %104 = call i32 (...) @sec_algs_register()
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load %struct.device*, %struct.device** %5, align 8
  %109 = load i32, i32* %8, align 4
  %110 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %108, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %109)
  br label %123

111:                                              ; preds = %103
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = load %struct.sec_dev_info*, %struct.sec_dev_info** %4, align 8
  %114 = call i32 @platform_set_drvdata(%struct.platform_device* %112, %struct.sec_dev_info* %113)
  %115 = load %struct.sec_dev_info*, %struct.sec_dev_info** %4, align 8
  %116 = call i32 @sec_id_alloc(%struct.sec_dev_info* %115)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  br label %121

120:                                              ; preds = %111
  store i32 0, i32* %2, align 4
  br label %152

121:                                              ; preds = %119
  %122 = call i32 (...) @sec_algs_unregister()
  br label %123

123:                                              ; preds = %121, %107, %90, %79
  %124 = load i32, i32* %6, align 4
  %125 = sub nsw i32 %124, 1
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %145, %123
  %127 = load i32, i32* %7, align 4
  %128 = icmp sge i32 %127, 0
  br i1 %128, label %129, label %148

129:                                              ; preds = %126
  %130 = load %struct.sec_dev_info*, %struct.sec_dev_info** %4, align 8
  %131 = getelementptr inbounds %struct.sec_dev_info, %struct.sec_dev_info* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = call i32 @sec_queue_irq_uninit(i32* %135)
  %137 = load %struct.sec_dev_info*, %struct.sec_dev_info** %4, align 8
  %138 = load %struct.sec_dev_info*, %struct.sec_dev_info** %4, align 8
  %139 = getelementptr inbounds %struct.sec_dev_info, %struct.sec_dev_info* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = call i32 @sec_queue_unconfig(%struct.sec_dev_info* %137, i32* %143)
  br label %145

145:                                              ; preds = %129
  %146 = load i32, i32* %7, align 4
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* %7, align 4
  br label %126

148:                                              ; preds = %126
  %149 = load %struct.sec_dev_info*, %struct.sec_dev_info** %4, align 8
  %150 = call i32 @sec_base_exit(%struct.sec_dev_info* %149)
  %151 = load i32, i32* %8, align 4
  store i32 %151, i32* %2, align 4
  br label %152

152:                                              ; preds = %148, %120, %57, %46, %28, %16
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local i32 @dma_set_mask_and_coherent(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.sec_dev_info* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dmam_pool_create(i8*, %struct.device*, i32, i32, i32) #1

declare dso_local i32 @sec_base_init(%struct.sec_dev_info*, %struct.platform_device*) #1

declare dso_local i32 @sec_queue_config(%struct.sec_dev_info*, i32*, i32) #1

declare dso_local i32 @sec_queue_irq_init(i32*) #1

declare dso_local i32 @sec_queue_unconfig(%struct.sec_dev_info*, i32*) #1

declare dso_local i32 @sec_algs_register(...) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sec_dev_info*) #1

declare dso_local i32 @sec_id_alloc(%struct.sec_dev_info*) #1

declare dso_local i32 @sec_algs_unregister(...) #1

declare dso_local i32 @sec_queue_irq_uninit(i32*) #1

declare dso_local i32 @sec_base_exit(%struct.sec_dev_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
