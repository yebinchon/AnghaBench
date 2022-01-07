; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_lpc18xx-dmamux.c_lpc18xx_dmamux_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_lpc18xx-dmamux.c_lpc18xx_dmamux_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.lpc18xx_dmamux_data = type { %struct.TYPE_5__, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"nxp,lpc1850-creg\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"syscon lookup failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"dma-requests\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"missing dma-requests property\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"dma-masters\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"can't get dma master\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"missing master dma-requests property\0A\00", align 1
@lpc18xx_dmamux_free = common dso_local global i32 0, align 4
@lpc18xx_dmamux_reserve = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lpc18xx_dmamux_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc18xx_dmamux_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.lpc18xx_dmamux_data*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %5, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.lpc18xx_dmamux_data* @devm_kzalloc(%struct.TYPE_6__* %13, i32 40, i32 %14)
  store %struct.lpc18xx_dmamux_data* %15, %struct.lpc18xx_dmamux_data** %6, align 8
  %16 = load %struct.lpc18xx_dmamux_data*, %struct.lpc18xx_dmamux_data** %6, align 8
  %17 = icmp ne %struct.lpc18xx_dmamux_data* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %113

21:                                               ; preds = %1
  %22 = call i32 @syscon_regmap_lookup_by_compatible(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.lpc18xx_dmamux_data*, %struct.lpc18xx_dmamux_data** %6, align 8
  %24 = getelementptr inbounds %struct.lpc18xx_dmamux_data, %struct.lpc18xx_dmamux_data* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 8
  %25 = load %struct.lpc18xx_dmamux_data*, %struct.lpc18xx_dmamux_data** %6, align 8
  %26 = getelementptr inbounds %struct.lpc18xx_dmamux_data, %struct.lpc18xx_dmamux_data* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @IS_ERR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %21
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = call i32 @dev_err(%struct.TYPE_6__* %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.lpc18xx_dmamux_data*, %struct.lpc18xx_dmamux_data** %6, align 8
  %35 = getelementptr inbounds %struct.lpc18xx_dmamux_data, %struct.lpc18xx_dmamux_data* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @PTR_ERR(i32 %36)
  store i32 %37, i32* %2, align 4
  br label %113

38:                                               ; preds = %21
  %39 = load %struct.device_node*, %struct.device_node** %5, align 8
  %40 = load %struct.lpc18xx_dmamux_data*, %struct.lpc18xx_dmamux_data** %6, align 8
  %41 = getelementptr inbounds %struct.lpc18xx_dmamux_data, %struct.lpc18xx_dmamux_data* %40, i32 0, i32 4
  %42 = call i32 @of_property_read_u32(%struct.device_node* %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = call i32 @dev_err(%struct.TYPE_6__* %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %2, align 4
  br label %113

50:                                               ; preds = %38
  %51 = load %struct.device_node*, %struct.device_node** %5, align 8
  %52 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 0)
  store %struct.device_node* %52, %struct.device_node** %4, align 8
  %53 = load %struct.device_node*, %struct.device_node** %4, align 8
  %54 = icmp ne %struct.device_node* %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %50
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = call i32 @dev_err(%struct.TYPE_6__* %57, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %113

61:                                               ; preds = %50
  %62 = load %struct.device_node*, %struct.device_node** %4, align 8
  %63 = load %struct.lpc18xx_dmamux_data*, %struct.lpc18xx_dmamux_data** %6, align 8
  %64 = getelementptr inbounds %struct.lpc18xx_dmamux_data, %struct.lpc18xx_dmamux_data* %63, i32 0, i32 3
  %65 = call i32 @of_property_read_u32(%struct.device_node* %62, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %64)
  store i32 %65, i32* %7, align 4
  %66 = load %struct.device_node*, %struct.device_node** %4, align 8
  %67 = call i32 @of_node_put(%struct.device_node* %66)
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %61
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = call i32 @dev_err(%struct.TYPE_6__* %72, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %2, align 4
  br label %113

75:                                               ; preds = %61
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = load %struct.lpc18xx_dmamux_data*, %struct.lpc18xx_dmamux_data** %6, align 8
  %79 = getelementptr inbounds %struct.lpc18xx_dmamux_data, %struct.lpc18xx_dmamux_data* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call i32 @devm_kcalloc(%struct.TYPE_6__* %77, i32 %80, i32 4, i32 %81)
  %83 = load %struct.lpc18xx_dmamux_data*, %struct.lpc18xx_dmamux_data** %6, align 8
  %84 = getelementptr inbounds %struct.lpc18xx_dmamux_data, %struct.lpc18xx_dmamux_data* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load %struct.lpc18xx_dmamux_data*, %struct.lpc18xx_dmamux_data** %6, align 8
  %86 = getelementptr inbounds %struct.lpc18xx_dmamux_data, %struct.lpc18xx_dmamux_data* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %75
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %113

92:                                               ; preds = %75
  %93 = load %struct.lpc18xx_dmamux_data*, %struct.lpc18xx_dmamux_data** %6, align 8
  %94 = getelementptr inbounds %struct.lpc18xx_dmamux_data, %struct.lpc18xx_dmamux_data* %93, i32 0, i32 1
  %95 = call i32 @spin_lock_init(i32* %94)
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = load %struct.lpc18xx_dmamux_data*, %struct.lpc18xx_dmamux_data** %6, align 8
  %98 = call i32 @platform_set_drvdata(%struct.platform_device* %96, %struct.lpc18xx_dmamux_data* %97)
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = load %struct.lpc18xx_dmamux_data*, %struct.lpc18xx_dmamux_data** %6, align 8
  %102 = getelementptr inbounds %struct.lpc18xx_dmamux_data, %struct.lpc18xx_dmamux_data* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  store %struct.TYPE_6__* %100, %struct.TYPE_6__** %103, align 8
  %104 = load i32, i32* @lpc18xx_dmamux_free, align 4
  %105 = load %struct.lpc18xx_dmamux_data*, %struct.lpc18xx_dmamux_data** %6, align 8
  %106 = getelementptr inbounds %struct.lpc18xx_dmamux_data, %struct.lpc18xx_dmamux_data* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 8
  %108 = load %struct.device_node*, %struct.device_node** %5, align 8
  %109 = load i32, i32* @lpc18xx_dmamux_reserve, align 4
  %110 = load %struct.lpc18xx_dmamux_data*, %struct.lpc18xx_dmamux_data** %6, align 8
  %111 = getelementptr inbounds %struct.lpc18xx_dmamux_data, %struct.lpc18xx_dmamux_data* %110, i32 0, i32 0
  %112 = call i32 @of_dma_router_register(%struct.device_node* %108, i32 %109, %struct.TYPE_5__* %111)
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %92, %89, %70, %55, %45, %30, %18
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local %struct.lpc18xx_dmamux_data* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @syscon_regmap_lookup_by_compatible(i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @devm_kcalloc(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.lpc18xx_dmamux_data*) #1

declare dso_local i32 @of_dma_router_register(%struct.device_node*, i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
