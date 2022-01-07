; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-imx.c_i2c_imx_dma_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-imx.c_i2c_imx_dma_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_i2c_struct = type { %struct.imx_i2c_dma*, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.imx_i2c_dma = type { i8*, i8*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.dma_slave_config = type { i32, i32, i32, i8*, i8*, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"can't request DMA tx channel (%d)\0A\00", align 1
@IMX_I2C_I2DR = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_1_BYTE = common dso_local global i8* null, align 8
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"can't configure tx channel (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"can't request DMA rx channel (%d)\0A\00", align 1
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"can't configure rx channel (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"using %s (tx) and %s (rx) for DMA transfers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx_i2c_struct*, i8*)* @i2c_imx_dma_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_imx_dma_request(%struct.imx_i2c_struct* %0, i8* %1) #0 {
  %3 = alloca %struct.imx_i2c_struct*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.imx_i2c_dma*, align 8
  %6 = alloca %struct.dma_slave_config, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.imx_i2c_struct* %0, %struct.imx_i2c_struct** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.imx_i2c_struct*, %struct.imx_i2c_struct** %3, align 8
  %10 = getelementptr inbounds %struct.imx_i2c_struct, %struct.imx_i2c_struct* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %7, align 8
  %12 = load %struct.device*, %struct.device** %7, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.imx_i2c_dma* @devm_kzalloc(%struct.device* %12, i32 24, i32 %13)
  store %struct.imx_i2c_dma* %14, %struct.imx_i2c_dma** %5, align 8
  %15 = load %struct.imx_i2c_dma*, %struct.imx_i2c_dma** %5, align 8
  %16 = icmp ne %struct.imx_i2c_dma* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %161

18:                                               ; preds = %2
  %19 = load %struct.device*, %struct.device** %7, align 8
  %20 = call i8* @dma_request_chan(%struct.device* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.imx_i2c_dma*, %struct.imx_i2c_dma** %5, align 8
  %22 = getelementptr inbounds %struct.imx_i2c_dma, %struct.imx_i2c_dma* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load %struct.imx_i2c_dma*, %struct.imx_i2c_dma** %5, align 8
  %24 = getelementptr inbounds %struct.imx_i2c_dma, %struct.imx_i2c_dma* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @IS_ERR(i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %18
  %29 = load %struct.imx_i2c_dma*, %struct.imx_i2c_dma** %5, align 8
  %30 = getelementptr inbounds %struct.imx_i2c_dma, %struct.imx_i2c_dma* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @PTR_ERR(i8* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp ne i32 %33, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %28
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @EPROBE_DEFER, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.device*, %struct.device** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %42, %37, %28
  br label %157

47:                                               ; preds = %18
  %48 = load i8*, i8** %4, align 8
  %49 = load i32, i32* @IMX_I2C_I2DR, align 4
  %50 = load %struct.imx_i2c_struct*, %struct.imx_i2c_struct** %3, align 8
  %51 = getelementptr inbounds %struct.imx_i2c_struct, %struct.imx_i2c_struct* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %49, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr i8, i8* %48, i64 %56
  %58 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 6
  store i8* %57, i8** %58, align 8
  %59 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_1_BYTE, align 8
  %60 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 5
  store i8* %59, i8** %60, align 8
  %61 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %63 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 2
  store i32 %62, i32* %63, align 8
  %64 = load %struct.imx_i2c_dma*, %struct.imx_i2c_dma** %5, align 8
  %65 = getelementptr inbounds %struct.imx_i2c_dma, %struct.imx_i2c_dma* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @dmaengine_slave_config(i8* %66, %struct.dma_slave_config* %6)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %47
  %71 = load %struct.device*, %struct.device** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @dev_err(%struct.device* %71, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  br label %152

74:                                               ; preds = %47
  %75 = load %struct.device*, %struct.device** %7, align 8
  %76 = call i8* @dma_request_chan(%struct.device* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %77 = load %struct.imx_i2c_dma*, %struct.imx_i2c_dma** %5, align 8
  %78 = getelementptr inbounds %struct.imx_i2c_dma, %struct.imx_i2c_dma* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = load %struct.imx_i2c_dma*, %struct.imx_i2c_dma** %5, align 8
  %80 = getelementptr inbounds %struct.imx_i2c_dma, %struct.imx_i2c_dma* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = call i64 @IS_ERR(i8* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %103

84:                                               ; preds = %74
  %85 = load %struct.imx_i2c_dma*, %struct.imx_i2c_dma** %5, align 8
  %86 = getelementptr inbounds %struct.imx_i2c_dma, %struct.imx_i2c_dma* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @PTR_ERR(i8* %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @ENODEV, align 4
  %91 = sub nsw i32 0, %90
  %92 = icmp ne i32 %89, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %84
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @EPROBE_DEFER, align 4
  %96 = sub nsw i32 0, %95
  %97 = icmp ne i32 %94, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load %struct.device*, %struct.device** %7, align 8
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @dev_err(%struct.device* %99, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %98, %93, %84
  br label %152

103:                                              ; preds = %74
  %104 = load i8*, i8** %4, align 8
  %105 = load i32, i32* @IMX_I2C_I2DR, align 4
  %106 = load %struct.imx_i2c_struct*, %struct.imx_i2c_struct** %3, align 8
  %107 = getelementptr inbounds %struct.imx_i2c_struct, %struct.imx_i2c_struct* %106, i32 0, i32 1
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = shl i32 %105, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr i8, i8* %104, i64 %112
  %114 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 4
  store i8* %113, i8** %114, align 8
  %115 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_1_BYTE, align 8
  %116 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 3
  store i8* %115, i8** %116, align 8
  %117 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 1
  store i32 1, i32* %117, align 4
  %118 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %119 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 2
  store i32 %118, i32* %119, align 8
  %120 = load %struct.imx_i2c_dma*, %struct.imx_i2c_dma** %5, align 8
  %121 = getelementptr inbounds %struct.imx_i2c_dma, %struct.imx_i2c_dma* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @dmaengine_slave_config(i8* %122, %struct.dma_slave_config* %6)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %8, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %103
  %127 = load %struct.device*, %struct.device** %7, align 8
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @dev_err(%struct.device* %127, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %128)
  br label %147

130:                                              ; preds = %103
  %131 = load %struct.imx_i2c_dma*, %struct.imx_i2c_dma** %5, align 8
  %132 = load %struct.imx_i2c_struct*, %struct.imx_i2c_struct** %3, align 8
  %133 = getelementptr inbounds %struct.imx_i2c_struct, %struct.imx_i2c_struct* %132, i32 0, i32 0
  store %struct.imx_i2c_dma* %131, %struct.imx_i2c_dma** %133, align 8
  %134 = load %struct.imx_i2c_dma*, %struct.imx_i2c_dma** %5, align 8
  %135 = getelementptr inbounds %struct.imx_i2c_dma, %struct.imx_i2c_dma* %134, i32 0, i32 2
  %136 = call i32 @init_completion(i32* %135)
  %137 = load %struct.device*, %struct.device** %7, align 8
  %138 = load %struct.imx_i2c_dma*, %struct.imx_i2c_dma** %5, align 8
  %139 = getelementptr inbounds %struct.imx_i2c_dma, %struct.imx_i2c_dma* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @dma_chan_name(i8* %140)
  %142 = load %struct.imx_i2c_dma*, %struct.imx_i2c_dma** %5, align 8
  %143 = getelementptr inbounds %struct.imx_i2c_dma, %struct.imx_i2c_dma* %142, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @dma_chan_name(i8* %144)
  %146 = call i32 @dev_info(%struct.device* %137, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %141, i32 %145)
  br label %161

147:                                              ; preds = %126
  %148 = load %struct.imx_i2c_dma*, %struct.imx_i2c_dma** %5, align 8
  %149 = getelementptr inbounds %struct.imx_i2c_dma, %struct.imx_i2c_dma* %148, i32 0, i32 1
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 @dma_release_channel(i8* %150)
  br label %152

152:                                              ; preds = %147, %102, %70
  %153 = load %struct.imx_i2c_dma*, %struct.imx_i2c_dma** %5, align 8
  %154 = getelementptr inbounds %struct.imx_i2c_dma, %struct.imx_i2c_dma* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @dma_release_channel(i8* %155)
  br label %157

157:                                              ; preds = %152, %46
  %158 = load %struct.device*, %struct.device** %7, align 8
  %159 = load %struct.imx_i2c_dma*, %struct.imx_i2c_dma** %5, align 8
  %160 = call i32 @devm_kfree(%struct.device* %158, %struct.imx_i2c_dma* %159)
  br label %161

161:                                              ; preds = %157, %130, %17
  ret void
}

declare dso_local %struct.imx_i2c_dma* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @dma_request_chan(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @dmaengine_slave_config(i8*, %struct.dma_slave_config*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @dma_chan_name(i8*) #1

declare dso_local i32 @dma_release_channel(i8*) #1

declare dso_local i32 @devm_kfree(%struct.device*, %struct.imx_i2c_dma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
