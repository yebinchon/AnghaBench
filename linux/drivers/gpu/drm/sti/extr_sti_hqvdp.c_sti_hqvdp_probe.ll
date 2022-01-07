; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hqvdp.c_sti_hqvdp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hqvdp.c_sti_hqvdp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.sti_hqvdp = type { i32, i8*, i8*, i8*, i32, %struct.device* }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to allocate HQVDP context\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Get memory resource failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Register mapping failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"hqvdp\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"pix_main\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Cannot get clocks\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"st,vtg\00", align 1
@sti_hqvdp_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sti_hqvdp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_hqvdp_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.sti_hqvdp*, align 8
  %7 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.sti_hqvdp* @devm_kzalloc(%struct.device* %11, i32 48, i32 %12)
  store %struct.sti_hqvdp* %13, %struct.sti_hqvdp** %6, align 8
  %14 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %6, align 8
  %15 = icmp ne %struct.sti_hqvdp* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %112

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %6, align 8
  %23 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %22, i32 0, i32 5
  store %struct.device* %21, %struct.device** %23, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load i32, i32* @IORESOURCE_MEM, align 4
  %26 = call %struct.resource* @platform_get_resource(%struct.platform_device* %24, i32 %25, i32 0)
  store %struct.resource* %26, %struct.resource** %7, align 8
  %27 = load %struct.resource*, %struct.resource** %7, align 8
  %28 = icmp ne %struct.resource* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %20
  %30 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32, i32* @ENXIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %112

33:                                               ; preds = %20
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = load %struct.resource*, %struct.resource** %7, align 8
  %36 = getelementptr inbounds %struct.resource, %struct.resource* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.resource*, %struct.resource** %7, align 8
  %39 = call i32 @resource_size(%struct.resource* %38)
  %40 = call i32 @devm_ioremap(%struct.device* %34, i32 %37, i32 %39)
  %41 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %6, align 8
  %42 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  %43 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %6, align 8
  %44 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %33
  %48 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i32, i32* @ENXIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %112

51:                                               ; preds = %33
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = call i8* @devm_clk_get(%struct.device* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %54 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %6, align 8
  %55 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = call i8* @devm_clk_get(%struct.device* %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %58 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %6, align 8
  %59 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  %60 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %6, align 8
  %61 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %60, i32 0, i32 3
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @IS_ERR(i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %51
  %66 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %6, align 8
  %67 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %66, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = call i64 @IS_ERR(i8* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %65, %51
  %72 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %73 = load i32, i32* @ENXIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %112

75:                                               ; preds = %65
  %76 = load %struct.device*, %struct.device** %4, align 8
  %77 = call i8* @devm_reset_control_get(%struct.device* %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %78 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %6, align 8
  %79 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  %80 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %6, align 8
  %81 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 @IS_ERR(i8* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %75
  %86 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %6, align 8
  %87 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @reset_control_deassert(i8* %88)
  br label %90

90:                                               ; preds = %85, %75
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.device, %struct.device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call %struct.device_node* @of_parse_phandle(i32 %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 0)
  store %struct.device_node* %95, %struct.device_node** %5, align 8
  %96 = load %struct.device_node*, %struct.device_node** %5, align 8
  %97 = icmp ne %struct.device_node* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %90
  %99 = load %struct.device_node*, %struct.device_node** %5, align 8
  %100 = call i32 @of_vtg_find(%struct.device_node* %99)
  %101 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %6, align 8
  %102 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  br label %103

103:                                              ; preds = %98, %90
  %104 = load %struct.device_node*, %struct.device_node** %5, align 8
  %105 = call i32 @of_node_put(%struct.device_node* %104)
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %6, align 8
  %108 = call i32 @platform_set_drvdata(%struct.platform_device* %106, %struct.sti_hqvdp* %107)
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 0
  %111 = call i32 @component_add(%struct.device* %110, i32* @sti_hqvdp_ops)
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %103, %71, %47, %29, %16
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local %struct.sti_hqvdp* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap(%struct.device*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i8* @devm_reset_control_get(%struct.device*, i8*) #1

declare dso_local i32 @reset_control_deassert(i8*) #1

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local i32 @of_vtg_find(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sti_hqvdp*) #1

declare dso_local i32 @component_add(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
