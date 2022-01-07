; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos7_drm_decon.c_decon_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos7_drm_decon.c_decon_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.decon_context = type { i32, i32, i32, i8*, i32, i32, i8*, i8*, i8*, i8*, %struct.device* }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"i80-if-timings\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"pclk_decon0\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to get bus clock pclk\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"aclk_decon0\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"failed to get bus clock aclk\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"decon0_eclk\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"failed to get eclock\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"decon0_vclk\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"failed to get vclock\0A\00", align 1
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"lcd_sys\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"vsync\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"irq request failed.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@decon_irq_handler = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [10 x i8] c"drm_decon\00", align 1
@decon_component_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @decon_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decon_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.decon_context*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %199

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.decon_context* @devm_kzalloc(%struct.device* %19, i32 72, i32 %20)
  store %struct.decon_context* %21, %struct.decon_context** %5, align 8
  %22 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %23 = icmp ne %struct.decon_context* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %199

27:                                               ; preds = %18
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %30 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %29, i32 0, i32 10
  store %struct.device* %28, %struct.device** %30, align 8
  %31 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %32 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = getelementptr inbounds %struct.device, %struct.device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.device_node* @of_get_child_by_name(i32 %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %36, %struct.device_node** %6, align 8
  %37 = load %struct.device_node*, %struct.device_node** %6, align 8
  %38 = icmp ne %struct.device_node* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %27
  %40 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %41 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %27
  %43 = load %struct.device_node*, %struct.device_node** %6, align 8
  %44 = call i32 @of_node_put(%struct.device_node* %43)
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = getelementptr inbounds %struct.device, %struct.device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @of_iomap(i32 %47, i32 0)
  %49 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %50 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %52 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %42
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %199

58:                                               ; preds = %42
  %59 = load %struct.device*, %struct.device** %4, align 8
  %60 = call i8* @devm_clk_get(%struct.device* %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %61 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %62 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %61, i32 0, i32 9
  store i8* %60, i8** %62, align 8
  %63 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %64 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %63, i32 0, i32 9
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @IS_ERR(i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %58
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = call i32 @dev_err(%struct.device* %69, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %71 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %72 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %71, i32 0, i32 9
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @PTR_ERR(i8* %73)
  store i32 %74, i32* %8, align 4
  br label %193

75:                                               ; preds = %58
  %76 = load %struct.device*, %struct.device** %4, align 8
  %77 = call i8* @devm_clk_get(%struct.device* %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %78 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %79 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %78, i32 0, i32 8
  store i8* %77, i8** %79, align 8
  %80 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %81 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %80, i32 0, i32 8
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 @IS_ERR(i8* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %75
  %86 = load %struct.device*, %struct.device** %4, align 8
  %87 = call i32 @dev_err(%struct.device* %86, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %88 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %89 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %88, i32 0, i32 8
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @PTR_ERR(i8* %90)
  store i32 %91, i32* %8, align 4
  br label %193

92:                                               ; preds = %75
  %93 = load %struct.device*, %struct.device** %4, align 8
  %94 = call i8* @devm_clk_get(%struct.device* %93, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %95 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %96 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %95, i32 0, i32 7
  store i8* %94, i8** %96, align 8
  %97 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %98 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %97, i32 0, i32 7
  %99 = load i8*, i8** %98, align 8
  %100 = call i64 @IS_ERR(i8* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %92
  %103 = load %struct.device*, %struct.device** %4, align 8
  %104 = call i32 @dev_err(%struct.device* %103, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %105 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %106 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %105, i32 0, i32 7
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @PTR_ERR(i8* %107)
  store i32 %108, i32* %8, align 4
  br label %193

109:                                              ; preds = %92
  %110 = load %struct.device*, %struct.device** %4, align 8
  %111 = call i8* @devm_clk_get(%struct.device* %110, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %112 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %113 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %112, i32 0, i32 6
  store i8* %111, i8** %113, align 8
  %114 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %115 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %114, i32 0, i32 6
  %116 = load i8*, i8** %115, align 8
  %117 = call i64 @IS_ERR(i8* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %109
  %120 = load %struct.device*, %struct.device** %4, align 8
  %121 = call i32 @dev_err(%struct.device* %120, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %122 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %123 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %122, i32 0, i32 6
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @PTR_ERR(i8* %124)
  store i32 %125, i32* %8, align 4
  br label %193

126:                                              ; preds = %109
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = load i32, i32* @IORESOURCE_IRQ, align 4
  %129 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %130 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0)
  %135 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %127, i32 %128, i8* %134)
  store %struct.resource* %135, %struct.resource** %7, align 8
  %136 = load %struct.resource*, %struct.resource** %7, align 8
  %137 = icmp ne %struct.resource* %136, null
  br i1 %137, label %143, label %138

138:                                              ; preds = %126
  %139 = load %struct.device*, %struct.device** %4, align 8
  %140 = call i32 @dev_err(%struct.device* %139, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %141 = load i32, i32* @ENXIO, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %8, align 4
  br label %193

143:                                              ; preds = %126
  %144 = load %struct.device*, %struct.device** %4, align 8
  %145 = load %struct.resource*, %struct.resource** %7, align 8
  %146 = getelementptr inbounds %struct.resource, %struct.resource* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @decon_irq_handler, align 4
  %149 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %150 = call i32 @devm_request_irq(%struct.device* %144, i32 %147, i32 %148, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), %struct.decon_context* %149)
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* %8, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %143
  %154 = load %struct.device*, %struct.device** %4, align 8
  %155 = call i32 @dev_err(%struct.device* %154, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  br label %193

156:                                              ; preds = %143
  %157 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %158 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %157, i32 0, i32 5
  %159 = call i32 @init_waitqueue_head(i32* %158)
  %160 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %161 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %160, i32 0, i32 4
  %162 = call i32 @atomic_set(i32* %161, i32 0)
  %163 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %164 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %165 = call i32 @platform_set_drvdata(%struct.platform_device* %163, %struct.decon_context* %164)
  %166 = load %struct.device*, %struct.device** %4, align 8
  %167 = call i8* @exynos_dpi_probe(%struct.device* %166)
  %168 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %169 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %168, i32 0, i32 3
  store i8* %167, i8** %169, align 8
  %170 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %171 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %170, i32 0, i32 3
  %172 = load i8*, i8** %171, align 8
  %173 = call i64 @IS_ERR(i8* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %156
  %176 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %177 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %176, i32 0, i32 3
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 @PTR_ERR(i8* %178)
  store i32 %179, i32* %8, align 4
  br label %193

180:                                              ; preds = %156
  %181 = load %struct.device*, %struct.device** %4, align 8
  %182 = call i32 @pm_runtime_enable(%struct.device* %181)
  %183 = load %struct.device*, %struct.device** %4, align 8
  %184 = call i32 @component_add(%struct.device* %183, i32* @decon_component_ops)
  store i32 %184, i32* %8, align 4
  %185 = load i32, i32* %8, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %180
  br label %190

188:                                              ; preds = %180
  %189 = load i32, i32* %8, align 4
  store i32 %189, i32* %2, align 4
  br label %199

190:                                              ; preds = %187
  %191 = load %struct.device*, %struct.device** %4, align 8
  %192 = call i32 @pm_runtime_disable(%struct.device* %191)
  br label %193

193:                                              ; preds = %190, %175, %153, %138, %119, %102, %85, %68
  %194 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %195 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @iounmap(i32 %196)
  %198 = load i32, i32* %8, align 4
  store i32 %198, i32* %2, align 4
  br label %199

199:                                              ; preds = %193, %188, %55, %24, %15
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

declare dso_local %struct.decon_context* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.device_node* @of_get_child_by_name(i32, i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @of_iomap(i32, i32) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.decon_context*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.decon_context*) #1

declare dso_local i8* @exynos_dpi_probe(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @component_add(%struct.device*, i32*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @iounmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
