; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_etnaviv_gpu_platform_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_etnaviv_gpu_platform_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.etnaviv_gpu = type { i64, %struct.device*, i32*, i8*, i32*, i8*, i32*, i32*, i32*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to get irq: %d\0A\00", align 1
@irq_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to request IRQ%u: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"clk_reg: %p\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"clk_bus: %p\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"clk_core: %p\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"shader\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"clk_shader: %p\00", align 1
@gpu_ops = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [34 x i8] c"failed to register component: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @etnaviv_gpu_platform_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etnaviv_gpu_platform_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.etnaviv_gpu*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.etnaviv_gpu* @devm_kzalloc(%struct.device* %9, i32 80, i32 %10)
  store %struct.etnaviv_gpu* %11, %struct.etnaviv_gpu** %5, align 8
  %12 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %13 = icmp ne %struct.etnaviv_gpu* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %203

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %21 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %20, i32 0, i32 1
  store %struct.device* %19, %struct.device** %21, align 8
  %22 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %23 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %22, i32 0, i32 10
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %26 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %25, i32 0, i32 9
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = call i32* @devm_platform_ioremap_resource(%struct.platform_device* %28, i32 0)
  %30 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %31 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %30, i32 0, i32 8
  store i32* %29, i32** %31, align 8
  %32 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %33 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %32, i32 0, i32 8
  %34 = load i32*, i32** %33, align 8
  %35 = call i64 @IS_ERR(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %17
  %38 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %39 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %38, i32 0, i32 8
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @PTR_ERR(i32* %40)
  store i32 %41, i32* %2, align 4
  br label %203

42:                                               ; preds = %17
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = call i64 @platform_get_irq(%struct.platform_device* %43, i32 0)
  %45 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %46 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %48 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %42
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %54 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %59 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %2, align 4
  br label %203

62:                                               ; preds = %42
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %66 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = load i32, i32* @irq_handler, align 4
  %70 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %71 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %70, i32 0, i32 1
  %72 = load %struct.device*, %struct.device** %71, align 8
  %73 = call i32 @dev_name(%struct.device* %72)
  %74 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %75 = call i32 @devm_request_irq(%struct.device* %64, i32 %68, i32 %69, i32 0, i32 %73, %struct.etnaviv_gpu* %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %62
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %81 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = load i32, i32* %6, align 4
  %85 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %79, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %83, i32 %84)
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %2, align 4
  br label %203

87:                                               ; preds = %62
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = call i8* @devm_clk_get(%struct.device* %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %91 = bitcast i8* %90 to i32*
  %92 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %93 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %92, i32 0, i32 7
  store i32* %91, i32** %93, align 8
  %94 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %95 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %94, i32 0, i32 7
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* %96)
  %98 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %99 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %98, i32 0, i32 7
  %100 = load i32*, i32** %99, align 8
  %101 = call i64 @IS_ERR(i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %87
  %104 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %105 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %104, i32 0, i32 7
  store i32* null, i32** %105, align 8
  br label %106

106:                                              ; preds = %103, %87
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %107, i32 0, i32 0
  %109 = call i8* @devm_clk_get(%struct.device* %108, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %110 = bitcast i8* %109 to i32*
  %111 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %112 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %111, i32 0, i32 6
  store i32* %110, i32** %112, align 8
  %113 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %114 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %113, i32 0, i32 6
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32* %115)
  %117 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %118 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %117, i32 0, i32 6
  %119 = load i32*, i32** %118, align 8
  %120 = call i64 @IS_ERR(i32* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %106
  %123 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %124 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %123, i32 0, i32 6
  store i32* null, i32** %124, align 8
  br label %125

125:                                              ; preds = %122, %106
  %126 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %127 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %126, i32 0, i32 0
  %128 = call i8* @devm_clk_get(%struct.device* %127, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %129 = bitcast i8* %128 to i32*
  %130 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %131 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %130, i32 0, i32 4
  store i32* %129, i32** %131, align 8
  %132 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %133 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %132, i32 0, i32 4
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32* %134)
  %136 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %137 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %136, i32 0, i32 4
  %138 = load i32*, i32** %137, align 8
  %139 = call i64 @IS_ERR(i32* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %125
  %142 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %143 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %142, i32 0, i32 4
  store i32* null, i32** %143, align 8
  br label %144

144:                                              ; preds = %141, %125
  %145 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %146 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %145, i32 0, i32 4
  %147 = load i32*, i32** %146, align 8
  %148 = call i8* @clk_get_rate(i32* %147)
  %149 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %150 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %149, i32 0, i32 5
  store i8* %148, i8** %150, align 8
  %151 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %152 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %151, i32 0, i32 0
  %153 = call i8* @devm_clk_get(%struct.device* %152, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %154 = bitcast i8* %153 to i32*
  %155 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %156 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %155, i32 0, i32 2
  store i32* %154, i32** %156, align 8
  %157 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %158 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = call i32 @DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32* %159)
  %161 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %162 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %161, i32 0, i32 2
  %163 = load i32*, i32** %162, align 8
  %164 = call i64 @IS_ERR(i32* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %144
  %167 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %168 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %167, i32 0, i32 2
  store i32* null, i32** %168, align 8
  br label %169

169:                                              ; preds = %166, %144
  %170 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %171 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %170, i32 0, i32 2
  %172 = load i32*, i32** %171, align 8
  %173 = call i8* @clk_get_rate(i32* %172)
  %174 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %175 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %174, i32 0, i32 3
  store i8* %173, i8** %175, align 8
  %176 = load %struct.device*, %struct.device** %4, align 8
  %177 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %178 = call i32 @dev_set_drvdata(%struct.device* %176, %struct.etnaviv_gpu* %177)
  %179 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %180 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %179, i32 0, i32 1
  %181 = load %struct.device*, %struct.device** %180, align 8
  %182 = call i32 @pm_runtime_use_autosuspend(%struct.device* %181)
  %183 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %184 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %183, i32 0, i32 1
  %185 = load %struct.device*, %struct.device** %184, align 8
  %186 = call i32 @pm_runtime_set_autosuspend_delay(%struct.device* %185, i32 200)
  %187 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %188 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %187, i32 0, i32 1
  %189 = load %struct.device*, %struct.device** %188, align 8
  %190 = call i32 @pm_runtime_enable(%struct.device* %189)
  %191 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %192 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %191, i32 0, i32 0
  %193 = call i32 @component_add(%struct.device* %192, i32* @gpu_ops)
  store i32 %193, i32* %6, align 4
  %194 = load i32, i32* %6, align 4
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %169
  %197 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %198 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %197, i32 0, i32 0
  %199 = load i32, i32* %6, align 4
  %200 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %198, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32 %199)
  %201 = load i32, i32* %6, align 4
  store i32 %201, i32* %2, align 4
  br label %203

202:                                              ; preds = %169
  store i32 0, i32* %2, align 4
  br label %203

203:                                              ; preds = %202, %196, %78, %51, %37, %14
  %204 = load i32, i32* %2, align 4
  ret i32 %204
}

declare dso_local %struct.etnaviv_gpu* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.etnaviv_gpu*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @DBG(i8*, i32*) #1

declare dso_local i8* @clk_get_rate(i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.etnaviv_gpu*) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @component_add(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
