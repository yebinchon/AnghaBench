; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmi_get_ddc_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmi_get_ddc_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_context = type { %struct.i2c_adapter*, %struct.TYPE_2__* }
%struct.i2c_adapter = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"samsung,exynos4210-hdmiddc\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ddc\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to find ddc node in device tree\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Failed to get ddc i2c adapter by node\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdmi_context*)* @hdmi_get_ddc_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_get_ddc_adapter(%struct.hdmi_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdmi_context*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  store %struct.hdmi_context* %0, %struct.hdmi_context** %3, align 8
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call %struct.device_node* @of_find_compatible_node(i32* null, i32* null, i8* %7)
  store %struct.device_node* %8, %struct.device_node** %5, align 8
  %9 = load %struct.device_node*, %struct.device_node** %5, align 8
  %10 = icmp ne %struct.device_node* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.device_node*, %struct.device_node** %5, align 8
  %13 = call %struct.device_node* @of_get_next_parent(%struct.device_node* %12)
  store %struct.device_node* %13, %struct.device_node** %5, align 8
  br label %21

14:                                               ; preds = %1
  %15 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %16 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.device_node* @of_parse_phandle(i32 %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.device_node* %20, %struct.device_node** %5, align 8
  br label %21

21:                                               ; preds = %14, %11
  %22 = load %struct.device_node*, %struct.device_node** %5, align 8
  %23 = icmp ne %struct.device_node* %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %26 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = call i32 @DRM_DEV_ERROR(%struct.TYPE_2__* %27, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %46

31:                                               ; preds = %21
  %32 = load %struct.device_node*, %struct.device_node** %5, align 8
  %33 = call %struct.i2c_adapter* @of_find_i2c_adapter_by_node(%struct.device_node* %32)
  store %struct.i2c_adapter* %33, %struct.i2c_adapter** %6, align 8
  %34 = load %struct.device_node*, %struct.device_node** %5, align 8
  %35 = call i32 @of_node_put(%struct.device_node* %34)
  %36 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %37 = icmp ne %struct.i2c_adapter* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %31
  %39 = call i32 @DRM_INFO(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %40 = load i32, i32* @EPROBE_DEFER, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %46

42:                                               ; preds = %31
  %43 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %44 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %45 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %44, i32 0, i32 0
  store %struct.i2c_adapter* %43, %struct.i2c_adapter** %45, align 8
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %42, %38, %24
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.device_node* @of_find_compatible_node(i32*, i32*, i8*) #1

declare dso_local %struct.device_node* @of_get_next_parent(%struct.device_node*) #1

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.TYPE_2__*, i8*) #1

declare dso_local %struct.i2c_adapter* @of_find_i2c_adapter_by_node(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @DRM_INFO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
