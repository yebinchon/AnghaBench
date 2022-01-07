; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_mixer_resources_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_mixer_resources_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mixer_context = type { i32, %struct.TYPE_2__*, i32*, i8*, i8*, i8*, i32 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"mixer\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to get clock 'mixer'\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"hdmi\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to get clock 'hdmi'\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"sclk_hdmi\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"failed to get clock 'sclk_hdmi'\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"get memory resource failed.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"register mapping failed.\0A\00", align 1
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"get interrupt resource failed.\0A\00", align 1
@mixer_irq_handler = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"drm_mixer\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"request interrupt failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mixer_context*)* @mixer_resources_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixer_resources_init(%struct.mixer_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mixer_context*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.mixer_context* %0, %struct.mixer_context** %3, align 8
  %7 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %8 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %12 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %11, i32 0, i32 6
  %13 = call i32 @spin_lock_init(i32* %12)
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call i8* @devm_clk_get(%struct.device* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %17 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %16, i32 0, i32 5
  store i8* %15, i8** %17, align 8
  %18 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %19 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %18, i32 0, i32 5
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @IS_ERR(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %125

28:                                               ; preds = %1
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = call i8* @devm_clk_get(%struct.device* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %31 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %32 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %31, i32 0, i32 4
  store i8* %30, i8** %32, align 8
  %33 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %34 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %33, i32 0, i32 4
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @IS_ERR(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %28
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %41 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %42 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %41, i32 0, i32 4
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @PTR_ERR(i8* %43)
  store i32 %44, i32* %2, align 4
  br label %125

45:                                               ; preds = %28
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = call i8* @devm_clk_get(%struct.device* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %48 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %49 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %51 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %50, i32 0, i32 3
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @IS_ERR(i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %45
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = call i32 @dev_err(%struct.device* %56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %125

60:                                               ; preds = %45
  %61 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %62 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* @IORESOURCE_MEM, align 4
  %65 = call %struct.resource* @platform_get_resource(%struct.TYPE_2__* %63, i32 %64, i32 0)
  store %struct.resource* %65, %struct.resource** %5, align 8
  %66 = load %struct.resource*, %struct.resource** %5, align 8
  %67 = icmp eq %struct.resource* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %60
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = call i32 @dev_err(%struct.device* %69, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %71 = load i32, i32* @ENXIO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %125

73:                                               ; preds = %60
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = load %struct.resource*, %struct.resource** %5, align 8
  %76 = getelementptr inbounds %struct.resource, %struct.resource* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.resource*, %struct.resource** %5, align 8
  %79 = call i32 @resource_size(%struct.resource* %78)
  %80 = call i32* @devm_ioremap(%struct.device* %74, i32 %77, i32 %79)
  %81 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %82 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %81, i32 0, i32 2
  store i32* %80, i32** %82, align 8
  %83 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %84 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %73
  %88 = load %struct.device*, %struct.device** %4, align 8
  %89 = call i32 @dev_err(%struct.device* %88, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %90 = load i32, i32* @ENXIO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %125

92:                                               ; preds = %73
  %93 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %94 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %93, i32 0, i32 1
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = load i32, i32* @IORESOURCE_IRQ, align 4
  %97 = call %struct.resource* @platform_get_resource(%struct.TYPE_2__* %95, i32 %96, i32 0)
  store %struct.resource* %97, %struct.resource** %5, align 8
  %98 = load %struct.resource*, %struct.resource** %5, align 8
  %99 = icmp eq %struct.resource* %98, null
  br i1 %99, label %100, label %105

100:                                              ; preds = %92
  %101 = load %struct.device*, %struct.device** %4, align 8
  %102 = call i32 @dev_err(%struct.device* %101, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %103 = load i32, i32* @ENXIO, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %2, align 4
  br label %125

105:                                              ; preds = %92
  %106 = load %struct.device*, %struct.device** %4, align 8
  %107 = load %struct.resource*, %struct.resource** %5, align 8
  %108 = getelementptr inbounds %struct.resource, %struct.resource* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @mixer_irq_handler, align 4
  %111 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %112 = call i32 @devm_request_irq(%struct.device* %106, i32 %109, i32 %110, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), %struct.mixer_context* %111)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %105
  %116 = load %struct.device*, %struct.device** %4, align 8
  %117 = call i32 @dev_err(%struct.device* %116, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %118 = load i32, i32* %6, align 4
  store i32 %118, i32* %2, align 4
  br label %125

119:                                              ; preds = %105
  %120 = load %struct.resource*, %struct.resource** %5, align 8
  %121 = getelementptr inbounds %struct.resource, %struct.resource* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %124 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  store i32 0, i32* %2, align 4
  br label %125

125:                                              ; preds = %119, %115, %100, %87, %68, %55, %38, %23
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32* @devm_ioremap(%struct.device*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.mixer_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
