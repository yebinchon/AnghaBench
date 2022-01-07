; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-pre.c_ipu_pre_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-pre.c_ipu_pre_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.resource = type { i32 }
%struct.ipu_pre = type { i32, %struct.device*, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"axi\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"fsl,iram\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@IPU_PRE_MAX_WIDTH = common dso_local global i32 0, align 4
@IPU_PRE_NUM_SCANLINES = common dso_local global i32 0, align 4
@ipu_pre_list_mutex = common dso_local global i32 0, align 4
@ipu_pre_list = common dso_local global i32 0, align 4
@available_pres = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ipu_pre_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipu_pre_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.ipu_pre*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ipu_pre* @devm_kzalloc(%struct.device* %9, i32 40, i32 %10)
  store %struct.ipu_pre* %11, %struct.ipu_pre** %6, align 8
  %12 = load %struct.ipu_pre*, %struct.ipu_pre** %6, align 8
  %13 = icmp ne %struct.ipu_pre* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %104

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load i32, i32* @IORESOURCE_MEM, align 4
  %20 = call %struct.resource* @platform_get_resource(%struct.platform_device* %18, i32 %19, i32 0)
  store %struct.resource* %20, %struct.resource** %5, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load %struct.resource*, %struct.resource** %5, align 8
  %24 = call i32 @devm_ioremap_resource(%struct.device* %22, %struct.resource* %23)
  %25 = load %struct.ipu_pre*, %struct.ipu_pre** %6, align 8
  %26 = getelementptr inbounds %struct.ipu_pre, %struct.ipu_pre* %25, i32 0, i32 6
  store i32 %24, i32* %26, align 8
  %27 = load %struct.ipu_pre*, %struct.ipu_pre** %6, align 8
  %28 = getelementptr inbounds %struct.ipu_pre, %struct.ipu_pre* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @IS_ERR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %17
  %33 = load %struct.ipu_pre*, %struct.ipu_pre** %6, align 8
  %34 = getelementptr inbounds %struct.ipu_pre, %struct.ipu_pre* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @PTR_ERR(i32 %35)
  store i32 %36, i32* %2, align 4
  br label %104

37:                                               ; preds = %17
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = call i32 @devm_clk_get(%struct.device* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.ipu_pre*, %struct.ipu_pre** %6, align 8
  %41 = getelementptr inbounds %struct.ipu_pre, %struct.ipu_pre* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ipu_pre*, %struct.ipu_pre** %6, align 8
  %43 = getelementptr inbounds %struct.ipu_pre, %struct.ipu_pre* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @IS_ERR(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %37
  %48 = load %struct.ipu_pre*, %struct.ipu_pre** %6, align 8
  %49 = getelementptr inbounds %struct.ipu_pre, %struct.ipu_pre* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @PTR_ERR(i32 %50)
  store i32 %51, i32* %2, align 4
  br label %104

52:                                               ; preds = %37
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = getelementptr inbounds %struct.device, %struct.device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @of_gen_pool_get(i32 %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %57 = load %struct.ipu_pre*, %struct.ipu_pre** %6, align 8
  %58 = getelementptr inbounds %struct.ipu_pre, %struct.ipu_pre* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 4
  %59 = load %struct.ipu_pre*, %struct.ipu_pre** %6, align 8
  %60 = getelementptr inbounds %struct.ipu_pre, %struct.ipu_pre* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %52
  %64 = load i32, i32* @EPROBE_DEFER, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %104

66:                                               ; preds = %52
  %67 = load %struct.ipu_pre*, %struct.ipu_pre** %6, align 8
  %68 = getelementptr inbounds %struct.ipu_pre, %struct.ipu_pre* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @IPU_PRE_MAX_WIDTH, align 4
  %71 = load i32, i32* @IPU_PRE_NUM_SCANLINES, align 4
  %72 = mul nsw i32 %70, %71
  %73 = mul nsw i32 %72, 4
  %74 = load %struct.ipu_pre*, %struct.ipu_pre** %6, align 8
  %75 = getelementptr inbounds %struct.ipu_pre, %struct.ipu_pre* %74, i32 0, i32 4
  %76 = call i32 @gen_pool_dma_alloc(i32 %69, i32 %73, i32* %75)
  %77 = load %struct.ipu_pre*, %struct.ipu_pre** %6, align 8
  %78 = getelementptr inbounds %struct.ipu_pre, %struct.ipu_pre* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = load %struct.ipu_pre*, %struct.ipu_pre** %6, align 8
  %80 = getelementptr inbounds %struct.ipu_pre, %struct.ipu_pre* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %66
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %104

86:                                               ; preds = %66
  %87 = load %struct.ipu_pre*, %struct.ipu_pre** %6, align 8
  %88 = getelementptr inbounds %struct.ipu_pre, %struct.ipu_pre* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @clk_prepare_enable(i32 %89)
  %91 = load %struct.device*, %struct.device** %4, align 8
  %92 = load %struct.ipu_pre*, %struct.ipu_pre** %6, align 8
  %93 = getelementptr inbounds %struct.ipu_pre, %struct.ipu_pre* %92, i32 0, i32 1
  store %struct.device* %91, %struct.device** %93, align 8
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = load %struct.ipu_pre*, %struct.ipu_pre** %6, align 8
  %96 = call i32 @platform_set_drvdata(%struct.platform_device* %94, %struct.ipu_pre* %95)
  %97 = call i32 @mutex_lock(i32* @ipu_pre_list_mutex)
  %98 = load %struct.ipu_pre*, %struct.ipu_pre** %6, align 8
  %99 = getelementptr inbounds %struct.ipu_pre, %struct.ipu_pre* %98, i32 0, i32 0
  %100 = call i32 @list_add(i32* %99, i32* @ipu_pre_list)
  %101 = load i32, i32* @available_pres, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* @available_pres, align 4
  %103 = call i32 @mutex_unlock(i32* @ipu_pre_list_mutex)
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %86, %83, %63, %47, %32, %14
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local %struct.ipu_pre* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @of_gen_pool_get(i32, i8*, i32) #1

declare dso_local i32 @gen_pool_dma_alloc(i32, i32, i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ipu_pre*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
