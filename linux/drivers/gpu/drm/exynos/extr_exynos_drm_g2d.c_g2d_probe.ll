; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_g2d.c_g2d_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_g2d.c_g2d_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.resource = type { i32 }
%struct.g2d_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"g2d_runqueue_slab\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"g2d\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to create workqueue\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@g2d_runqueue_worker = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"fimg2d\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"failed to get gate clock\0A\00", align 1
@G2D_BIT_SUSPEND_RUNQUEUE = common dso_local global i32 0, align 4
@G2D_BIT_ENGINE_BUSY = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"failed to get irq\0A\00", align 1
@g2d_irq_handler = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"drm_g2d\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"irq request failed\0A\00", align 1
@MAX_POOL = common dso_local global i32 0, align 4
@g2d_component_ops = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [35 x i8] c"failed to register drm g2d device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @g2d_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g2d_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.g2d_data*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.g2d_data* @devm_kzalloc(%struct.device* %10, i32 56, i32 %11)
  store %struct.g2d_data* %12, %struct.g2d_data** %6, align 8
  %13 = load %struct.g2d_data*, %struct.g2d_data** %6, align 8
  %14 = icmp ne %struct.g2d_data* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %168

18:                                               ; preds = %1
  %19 = call i32 @kmem_cache_create(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 4, i32 0, i32 0, i32* null)
  %20 = load %struct.g2d_data*, %struct.g2d_data** %6, align 8
  %21 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.g2d_data*, %struct.g2d_data** %6, align 8
  %23 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %168

29:                                               ; preds = %18
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = load %struct.g2d_data*, %struct.g2d_data** %6, align 8
  %32 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %31, i32 0, i32 12
  store %struct.device* %30, %struct.device** %32, align 8
  %33 = call i32 @create_singlethread_workqueue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.g2d_data*, %struct.g2d_data** %6, align 8
  %35 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.g2d_data*, %struct.g2d_data** %6, align 8
  %37 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %29
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  br label %162

45:                                               ; preds = %29
  %46 = load %struct.g2d_data*, %struct.g2d_data** %6, align 8
  %47 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %46, i32 0, i32 11
  %48 = load i32, i32* @g2d_runqueue_worker, align 4
  %49 = call i32 @INIT_WORK(i32* %47, i32 %48)
  %50 = load %struct.g2d_data*, %struct.g2d_data** %6, align 8
  %51 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %50, i32 0, i32 10
  %52 = call i32 @INIT_LIST_HEAD(i32* %51)
  %53 = load %struct.g2d_data*, %struct.g2d_data** %6, align 8
  %54 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %53, i32 0, i32 9
  %55 = call i32 @INIT_LIST_HEAD(i32* %54)
  %56 = load %struct.g2d_data*, %struct.g2d_data** %6, align 8
  %57 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %56, i32 0, i32 8
  %58 = call i32 @mutex_init(i32* %57)
  %59 = load %struct.g2d_data*, %struct.g2d_data** %6, align 8
  %60 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %59, i32 0, i32 7
  %61 = call i32 @mutex_init(i32* %60)
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = call i32 @devm_clk_get(%struct.device* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %64 = load %struct.g2d_data*, %struct.g2d_data** %6, align 8
  %65 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 8
  %66 = load %struct.g2d_data*, %struct.g2d_data** %6, align 8
  %67 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @IS_ERR(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %45
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = call i32 @dev_err(%struct.device* %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %74 = load %struct.g2d_data*, %struct.g2d_data** %6, align 8
  %75 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @PTR_ERR(i32 %76)
  store i32 %77, i32* %7, align 4
  br label %157

78:                                               ; preds = %45
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = call i32 @pm_runtime_use_autosuspend(%struct.device* %79)
  %81 = load %struct.device*, %struct.device** %4, align 8
  %82 = call i32 @pm_runtime_set_autosuspend_delay(%struct.device* %81, i32 2000)
  %83 = load %struct.device*, %struct.device** %4, align 8
  %84 = call i32 @pm_runtime_enable(%struct.device* %83)
  %85 = load i32, i32* @G2D_BIT_SUSPEND_RUNQUEUE, align 4
  %86 = load %struct.g2d_data*, %struct.g2d_data** %6, align 8
  %87 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %86, i32 0, i32 5
  %88 = call i32 @clear_bit(i32 %85, i32* %87)
  %89 = load i32, i32* @G2D_BIT_ENGINE_BUSY, align 4
  %90 = load %struct.g2d_data*, %struct.g2d_data** %6, align 8
  %91 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %90, i32 0, i32 5
  %92 = call i32 @clear_bit(i32 %89, i32* %91)
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = load i32, i32* @IORESOURCE_MEM, align 4
  %95 = call %struct.resource* @platform_get_resource(%struct.platform_device* %93, i32 %94, i32 0)
  store %struct.resource* %95, %struct.resource** %5, align 8
  %96 = load %struct.device*, %struct.device** %4, align 8
  %97 = load %struct.resource*, %struct.resource** %5, align 8
  %98 = call i32 @devm_ioremap_resource(%struct.device* %96, %struct.resource* %97)
  %99 = load %struct.g2d_data*, %struct.g2d_data** %6, align 8
  %100 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 8
  %101 = load %struct.g2d_data*, %struct.g2d_data** %6, align 8
  %102 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @IS_ERR(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %78
  %107 = load %struct.g2d_data*, %struct.g2d_data** %6, align 8
  %108 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @PTR_ERR(i32 %109)
  store i32 %110, i32* %7, align 4
  br label %154

111:                                              ; preds = %78
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = call i32 @platform_get_irq(%struct.platform_device* %112, i32 0)
  %114 = load %struct.g2d_data*, %struct.g2d_data** %6, align 8
  %115 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load %struct.g2d_data*, %struct.g2d_data** %6, align 8
  %117 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %111
  %121 = load %struct.device*, %struct.device** %4, align 8
  %122 = call i32 @dev_err(%struct.device* %121, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %123 = load %struct.g2d_data*, %struct.g2d_data** %6, align 8
  %124 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  store i32 %125, i32* %7, align 4
  br label %154

126:                                              ; preds = %111
  %127 = load %struct.device*, %struct.device** %4, align 8
  %128 = load %struct.g2d_data*, %struct.g2d_data** %6, align 8
  %129 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @g2d_irq_handler, align 4
  %132 = load %struct.g2d_data*, %struct.g2d_data** %6, align 8
  %133 = call i32 @devm_request_irq(%struct.device* %127, i32 %130, i32 %131, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), %struct.g2d_data* %132)
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %126
  %137 = load %struct.device*, %struct.device** %4, align 8
  %138 = call i32 @dev_err(%struct.device* %137, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  br label %154

139:                                              ; preds = %126
  %140 = load i32, i32* @MAX_POOL, align 4
  %141 = load %struct.g2d_data*, %struct.g2d_data** %6, align 8
  %142 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 4
  %143 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %144 = load %struct.g2d_data*, %struct.g2d_data** %6, align 8
  %145 = call i32 @platform_set_drvdata(%struct.platform_device* %143, %struct.g2d_data* %144)
  %146 = load %struct.device*, %struct.device** %4, align 8
  %147 = call i32 @component_add(%struct.device* %146, i32* @g2d_component_ops)
  store i32 %147, i32* %7, align 4
  %148 = load i32, i32* %7, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %139
  %151 = load %struct.device*, %struct.device** %4, align 8
  %152 = call i32 @dev_err(%struct.device* %151, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  br label %154

153:                                              ; preds = %139
  store i32 0, i32* %2, align 4
  br label %168

154:                                              ; preds = %150, %136, %120, %106
  %155 = load %struct.device*, %struct.device** %4, align 8
  %156 = call i32 @pm_runtime_disable(%struct.device* %155)
  br label %157

157:                                              ; preds = %154, %71
  %158 = load %struct.g2d_data*, %struct.g2d_data** %6, align 8
  %159 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @destroy_workqueue(i32 %160)
  br label %162

162:                                              ; preds = %157, %40
  %163 = load %struct.g2d_data*, %struct.g2d_data** %6, align 8
  %164 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @kmem_cache_destroy(i32 %165)
  %167 = load i32, i32* %7, align 4
  store i32 %167, i32* %2, align 4
  br label %168

168:                                              ; preds = %162, %153, %26, %15
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local %struct.g2d_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @kmem_cache_create(i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.g2d_data*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.g2d_data*) #1

declare dso_local i32 @component_add(%struct.device*, i32*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
