; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-platform.c_mtk_crypto_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-platform.c_mtk_crypto_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mtk_cryp = type { i64*, i32*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MTK_IRQ_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"cryp\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Unable to allocate descriptor rings.\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Failed to initialize cryptographic engine.\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Unable to register cipher algorithm.\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Unable to register hash algorithm.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mtk_crypto_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_crypto_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mtk_cryp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.mtk_cryp* @devm_kzalloc(i32* %8, i32 24, i32 %9)
  store %struct.mtk_cryp* %10, %struct.mtk_cryp** %4, align 8
  %11 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %12 = icmp ne %struct.mtk_cryp* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %169

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %17, i32 0)
  %19 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %20 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %22 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @IS_ERR(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %16
  %27 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %28 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @PTR_ERR(i32 %29)
  store i32 %30, i32* %2, align 4
  br label %169

31:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %64, %31
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @MTK_IRQ_NUM, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %67

36:                                               ; preds = %32
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @platform_get_irq(%struct.platform_device* %37, i32 %38)
  %40 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %41 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  store i64 %39, i64* %45, align 8
  %46 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %47 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %36
  %55 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %56 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %2, align 4
  br label %169

63:                                               ; preds = %36
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %32

67:                                               ; preds = %32
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = call i32 @devm_clk_get(i32* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %71 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %72 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %74 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @IS_ERR(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %67
  %79 = load i32, i32* @EPROBE_DEFER, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %169

81:                                               ; preds = %67
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %85 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %84, i32 0, i32 1
  store i32* %83, i32** %85, align 8
  %86 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %87 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @pm_runtime_enable(i32* %88)
  %90 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %91 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @pm_runtime_get_sync(i32* %92)
  %94 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %95 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @clk_prepare_enable(i32 %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %81
  br label %159

101:                                              ; preds = %81
  %102 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %103 = call i32 @mtk_desc_ring_alloc(%struct.mtk_cryp* %102)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %108 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @dev_err(i32* %109, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %154

111:                                              ; preds = %101
  %112 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %113 = call i32 @mtk_accelerator_init(%struct.mtk_cryp* %112)
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %6, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %118 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @dev_err(i32* %119, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %151

121:                                              ; preds = %111
  %122 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %123 = call i32 @mtk_cipher_alg_register(%struct.mtk_cryp* %122)
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %128 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @dev_err(i32* %129, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %148

131:                                              ; preds = %121
  %132 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %133 = call i32 @mtk_hash_alg_register(%struct.mtk_cryp* %132)
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %6, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %131
  %137 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %138 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = call i32 @dev_err(i32* %139, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %145

141:                                              ; preds = %131
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %144 = call i32 @platform_set_drvdata(%struct.platform_device* %142, %struct.mtk_cryp* %143)
  store i32 0, i32* %2, align 4
  br label %169

145:                                              ; preds = %136
  %146 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %147 = call i32 @mtk_cipher_alg_release(%struct.mtk_cryp* %146)
  br label %148

148:                                              ; preds = %145, %126
  %149 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %150 = call i32 @mtk_dfe_dse_reset(%struct.mtk_cryp* %149)
  br label %151

151:                                              ; preds = %148, %116
  %152 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %153 = call i32 @mtk_desc_dma_free(%struct.mtk_cryp* %152)
  br label %154

154:                                              ; preds = %151, %106
  %155 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %156 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @clk_disable_unprepare(i32 %157)
  br label %159

159:                                              ; preds = %154, %100
  %160 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %161 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = call i32 @pm_runtime_put_sync(i32* %162)
  %164 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %165 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = call i32 @pm_runtime_disable(i32* %166)
  %168 = load i32, i32* %6, align 4
  store i32 %168, i32* %2, align 4
  br label %169

169:                                              ; preds = %159, %141, %78, %54, %26, %13
  %170 = load i32, i32* %2, align 4
  ret i32 %170
}

declare dso_local %struct.mtk_cryp* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_clk_get(i32*, i8*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @mtk_desc_ring_alloc(%struct.mtk_cryp*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mtk_accelerator_init(%struct.mtk_cryp*) #1

declare dso_local i32 @mtk_cipher_alg_register(%struct.mtk_cryp*) #1

declare dso_local i32 @mtk_hash_alg_register(%struct.mtk_cryp*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mtk_cryp*) #1

declare dso_local i32 @mtk_cipher_alg_release(%struct.mtk_cryp*) #1

declare dso_local i32 @mtk_dfe_dse_reset(%struct.mtk_cryp*) #1

declare dso_local i32 @mtk_desc_dma_free(%struct.mtk_cryp*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
