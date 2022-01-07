; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_core.c_qce_crypto_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_core.c_qce_crypto_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.qce_device = type { i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct.device*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"iface\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@qce_tasklet_req_done = common dso_local global i32 0, align 4
@QCE_QUEUE_LENGTH = common dso_local global i32 0, align 4
@qce_async_request_enqueue = common dso_local global i32 0, align 4
@qce_async_request_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @qce_crypto_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qce_crypto_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.qce_device*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.qce_device* @devm_kzalloc(%struct.device* %9, i32 64, i32 %10)
  store %struct.qce_device* %11, %struct.qce_device** %5, align 8
  %12 = load %struct.qce_device*, %struct.qce_device** %5, align 8
  %13 = icmp ne %struct.qce_device* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %184

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load %struct.qce_device*, %struct.qce_device** %5, align 8
  %20 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %19, i32 0, i32 9
  store %struct.device* %18, %struct.device** %20, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = load %struct.qce_device*, %struct.qce_device** %5, align 8
  %23 = call i32 @platform_set_drvdata(%struct.platform_device* %21, %struct.qce_device* %22)
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %24, i32 0)
  %26 = load %struct.qce_device*, %struct.qce_device** %5, align 8
  %27 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %26, i32 0, i32 10
  store i8* %25, i8** %27, align 8
  %28 = load %struct.qce_device*, %struct.qce_device** %5, align 8
  %29 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %28, i32 0, i32 10
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @IS_ERR(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %17
  %34 = load %struct.qce_device*, %struct.qce_device** %5, align 8
  %35 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %34, i32 0, i32 10
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @PTR_ERR(i8* %36)
  store i32 %37, i32* %2, align 4
  br label %184

38:                                               ; preds = %17
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = call i32 @DMA_BIT_MASK(i32 32)
  %41 = call i32 @dma_set_mask_and_coherent(%struct.device* %39, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %2, align 4
  br label %184

46:                                               ; preds = %38
  %47 = load %struct.qce_device*, %struct.qce_device** %5, align 8
  %48 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %47, i32 0, i32 9
  %49 = load %struct.device*, %struct.device** %48, align 8
  %50 = call i8* @devm_clk_get(%struct.device* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.qce_device*, %struct.qce_device** %5, align 8
  %52 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load %struct.qce_device*, %struct.qce_device** %5, align 8
  %54 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @IS_ERR(i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %46
  %59 = load %struct.qce_device*, %struct.qce_device** %5, align 8
  %60 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @PTR_ERR(i8* %61)
  store i32 %62, i32* %2, align 4
  br label %184

63:                                               ; preds = %46
  %64 = load %struct.qce_device*, %struct.qce_device** %5, align 8
  %65 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %64, i32 0, i32 9
  %66 = load %struct.device*, %struct.device** %65, align 8
  %67 = call i8* @devm_clk_get(%struct.device* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.qce_device*, %struct.qce_device** %5, align 8
  %69 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load %struct.qce_device*, %struct.qce_device** %5, align 8
  %71 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = call i64 @IS_ERR(i8* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %63
  %76 = load %struct.qce_device*, %struct.qce_device** %5, align 8
  %77 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @PTR_ERR(i8* %78)
  store i32 %79, i32* %2, align 4
  br label %184

80:                                               ; preds = %63
  %81 = load %struct.qce_device*, %struct.qce_device** %5, align 8
  %82 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %81, i32 0, i32 9
  %83 = load %struct.device*, %struct.device** %82, align 8
  %84 = call i8* @devm_clk_get(%struct.device* %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %85 = load %struct.qce_device*, %struct.qce_device** %5, align 8
  %86 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %85, i32 0, i32 2
  store i8* %84, i8** %86, align 8
  %87 = load %struct.qce_device*, %struct.qce_device** %5, align 8
  %88 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %87, i32 0, i32 2
  %89 = load i8*, i8** %88, align 8
  %90 = call i64 @IS_ERR(i8* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %80
  %93 = load %struct.qce_device*, %struct.qce_device** %5, align 8
  %94 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %93, i32 0, i32 2
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @PTR_ERR(i8* %95)
  store i32 %96, i32* %2, align 4
  br label %184

97:                                               ; preds = %80
  %98 = load %struct.qce_device*, %struct.qce_device** %5, align 8
  %99 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @clk_prepare_enable(i8* %100)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %2, align 4
  br label %184

106:                                              ; preds = %97
  %107 = load %struct.qce_device*, %struct.qce_device** %5, align 8
  %108 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @clk_prepare_enable(i8* %109)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  br label %178

114:                                              ; preds = %106
  %115 = load %struct.qce_device*, %struct.qce_device** %5, align 8
  %116 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %115, i32 0, i32 2
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @clk_prepare_enable(i8* %117)
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  br label %173

122:                                              ; preds = %114
  %123 = load %struct.qce_device*, %struct.qce_device** %5, align 8
  %124 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %123, i32 0, i32 9
  %125 = load %struct.device*, %struct.device** %124, align 8
  %126 = load %struct.qce_device*, %struct.qce_device** %5, align 8
  %127 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %126, i32 0, i32 3
  %128 = call i32 @qce_dma_request(%struct.device* %125, i32* %127)
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %6, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %122
  br label %168

132:                                              ; preds = %122
  %133 = load %struct.qce_device*, %struct.qce_device** %5, align 8
  %134 = call i32 @qce_check_version(%struct.qce_device* %133)
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %6, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  br label %168

138:                                              ; preds = %132
  %139 = load %struct.qce_device*, %struct.qce_device** %5, align 8
  %140 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %139, i32 0, i32 8
  %141 = call i32 @spin_lock_init(i32* %140)
  %142 = load %struct.qce_device*, %struct.qce_device** %5, align 8
  %143 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %142, i32 0, i32 7
  %144 = load i32, i32* @qce_tasklet_req_done, align 4
  %145 = load %struct.qce_device*, %struct.qce_device** %5, align 8
  %146 = ptrtoint %struct.qce_device* %145 to i64
  %147 = call i32 @tasklet_init(i32* %143, i32 %144, i64 %146)
  %148 = load %struct.qce_device*, %struct.qce_device** %5, align 8
  %149 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %148, i32 0, i32 6
  %150 = load i32, i32* @QCE_QUEUE_LENGTH, align 4
  %151 = call i32 @crypto_init_queue(i32* %149, i32 %150)
  %152 = load i32, i32* @qce_async_request_enqueue, align 4
  %153 = load %struct.qce_device*, %struct.qce_device** %5, align 8
  %154 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %153, i32 0, i32 5
  store i32 %152, i32* %154, align 8
  %155 = load i32, i32* @qce_async_request_done, align 4
  %156 = load %struct.qce_device*, %struct.qce_device** %5, align 8
  %157 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %156, i32 0, i32 4
  store i32 %155, i32* %157, align 4
  %158 = load %struct.qce_device*, %struct.qce_device** %5, align 8
  %159 = call i32 @qce_register_algs(%struct.qce_device* %158)
  store i32 %159, i32* %6, align 4
  %160 = load i32, i32* %6, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %138
  br label %164

163:                                              ; preds = %138
  store i32 0, i32* %2, align 4
  br label %184

164:                                              ; preds = %162
  %165 = load %struct.qce_device*, %struct.qce_device** %5, align 8
  %166 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %165, i32 0, i32 3
  %167 = call i32 @qce_dma_release(i32* %166)
  br label %168

168:                                              ; preds = %164, %137, %131
  %169 = load %struct.qce_device*, %struct.qce_device** %5, align 8
  %170 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %169, i32 0, i32 2
  %171 = load i8*, i8** %170, align 8
  %172 = call i32 @clk_disable_unprepare(i8* %171)
  br label %173

173:                                              ; preds = %168, %121
  %174 = load %struct.qce_device*, %struct.qce_device** %5, align 8
  %175 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %174, i32 0, i32 1
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 @clk_disable_unprepare(i8* %176)
  br label %178

178:                                              ; preds = %173, %113
  %179 = load %struct.qce_device*, %struct.qce_device** %5, align 8
  %180 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %179, i32 0, i32 0
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 @clk_disable_unprepare(i8* %181)
  %183 = load i32, i32* %6, align 4
  store i32 %183, i32* %2, align 4
  br label %184

184:                                              ; preds = %178, %163, %104, %92, %75, %58, %44, %33, %14
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local %struct.qce_device* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.qce_device*) #1

declare dso_local i8* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @dma_set_mask_and_coherent(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @qce_dma_request(%struct.device*, i32*) #1

declare dso_local i32 @qce_check_version(%struct.qce_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @crypto_init_queue(i32*, i32) #1

declare dso_local i32 @qce_register_algs(%struct.qce_device*) #1

declare dso_local i32 @qce_dma_release(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
