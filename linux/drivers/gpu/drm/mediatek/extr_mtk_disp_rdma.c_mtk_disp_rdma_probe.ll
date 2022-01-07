; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_disp_rdma.c_mtk_disp_rdma_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_disp_rdma.c_mtk_disp_rdma_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.mtk_disp_rdma = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MTK_DISP_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to identify by alias: %d\0A\00", align 1
@mtk_disp_rdma_funcs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to initialize component: %d\0A\00", align 1
@DISP_REG_RDMA_INT_ENABLE = common dso_local global i64 0, align 8
@DISP_REG_RDMA_INT_STATUS = common dso_local global i64 0, align 8
@mtk_disp_rdma_irq_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to request irq %d: %d\0A\00", align 1
@mtk_disp_rdma_component_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to add component: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mtk_disp_rdma_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_disp_rdma_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.mtk_disp_rdma*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.mtk_disp_rdma* @devm_kzalloc(%struct.device* %11, i32 16, i32 %12)
  store %struct.mtk_disp_rdma* %13, %struct.mtk_disp_rdma** %5, align 8
  %14 = load %struct.mtk_disp_rdma*, %struct.mtk_disp_rdma** %5, align 8
  %15 = icmp ne %struct.mtk_disp_rdma* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %104

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = call i32 @platform_get_irq(%struct.platform_device* %20, i32 0)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %2, align 4
  br label %104

26:                                               ; preds = %19
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = getelementptr inbounds %struct.device, %struct.device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MTK_DISP_RDMA, align 4
  %31 = call i32 @mtk_ddp_comp_get_id(i32 %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %104

39:                                               ; preds = %26
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = getelementptr inbounds %struct.device, %struct.device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mtk_disp_rdma*, %struct.mtk_disp_rdma** %5, align 8
  %45 = getelementptr inbounds %struct.mtk_disp_rdma, %struct.mtk_disp_rdma* %44, i32 0, i32 1
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @mtk_ddp_comp_init(%struct.device* %40, i32 %43, %struct.TYPE_2__* %45, i32 %46, i32* @mtk_disp_rdma_funcs)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %39
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %51, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %2, align 4
  br label %104

55:                                               ; preds = %39
  %56 = load %struct.mtk_disp_rdma*, %struct.mtk_disp_rdma** %5, align 8
  %57 = getelementptr inbounds %struct.mtk_disp_rdma, %struct.mtk_disp_rdma* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @DISP_REG_RDMA_INT_ENABLE, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel(i32 0, i64 %61)
  %63 = load %struct.mtk_disp_rdma*, %struct.mtk_disp_rdma** %5, align 8
  %64 = getelementptr inbounds %struct.mtk_disp_rdma, %struct.mtk_disp_rdma* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @DISP_REG_RDMA_INT_STATUS, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writel(i32 0, i64 %68)
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @mtk_disp_rdma_irq_handler, align 4
  %73 = load i32, i32* @IRQF_TRIGGER_NONE, align 4
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = call i32 @dev_name(%struct.device* %74)
  %76 = load %struct.mtk_disp_rdma*, %struct.mtk_disp_rdma** %5, align 8
  %77 = call i32 @devm_request_irq(%struct.device* %70, i32 %71, i32 %72, i32 %73, i32 %75, %struct.mtk_disp_rdma* %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %55
  %81 = load %struct.device*, %struct.device** %4, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %81, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %82, i32 %83)
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %2, align 4
  br label %104

86:                                               ; preds = %55
  %87 = load %struct.device*, %struct.device** %4, align 8
  %88 = call i32 @of_device_get_match_data(%struct.device* %87)
  %89 = load %struct.mtk_disp_rdma*, %struct.mtk_disp_rdma** %5, align 8
  %90 = getelementptr inbounds %struct.mtk_disp_rdma, %struct.mtk_disp_rdma* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = load %struct.mtk_disp_rdma*, %struct.mtk_disp_rdma** %5, align 8
  %93 = call i32 @platform_set_drvdata(%struct.platform_device* %91, %struct.mtk_disp_rdma* %92)
  %94 = load %struct.device*, %struct.device** %4, align 8
  %95 = call i32 @component_add(%struct.device* %94, i32* @mtk_disp_rdma_component_ops)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %86
  %99 = load %struct.device*, %struct.device** %4, align 8
  %100 = load i32, i32* %8, align 4
  %101 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %99, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %98, %86
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %102, %80, %50, %34, %24, %16
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local %struct.mtk_disp_rdma* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @mtk_ddp_comp_get_id(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @mtk_ddp_comp_init(%struct.device*, i32, %struct.TYPE_2__*, i32, i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.mtk_disp_rdma*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mtk_disp_rdma*) #1

declare dso_local i32 @component_add(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
