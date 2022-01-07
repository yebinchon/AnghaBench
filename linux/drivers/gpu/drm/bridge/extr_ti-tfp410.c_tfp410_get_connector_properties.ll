; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_ti-tfp410.c_tfp410_get_connector_properties.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_ti-tfp410.c_tfp410_get_connector_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tfp410 = type { %struct.TYPE_2__*, i32, i32*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.device_node = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"hdmi-connector\00", align 1
@DRM_MODE_CONNECTOR_HDMIA = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_DVID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"hpd-gpios\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"hpd\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"ddc-i2c-bus\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Connector's ddc i2c bus found\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tfp410*)* @tfp410_get_connector_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tfp410_get_connector_properties(%struct.tfp410* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tfp410*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  store %struct.tfp410* %0, %struct.tfp410** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.tfp410*, %struct.tfp410** %3, align 8
  %8 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.device_node* @of_graph_get_remote_node(i32 %11, i32 1, i32 -1)
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  %13 = load %struct.device_node*, %struct.device_node** %4, align 8
  %14 = icmp ne %struct.device_node* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %86

18:                                               ; preds = %1
  %19 = load %struct.device_node*, %struct.device_node** %4, align 8
  %20 = call i64 @of_device_is_compatible(%struct.device_node* %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* @DRM_MODE_CONNECTOR_HDMIA, align 4
  %24 = load %struct.tfp410*, %struct.tfp410** %3, align 8
  %25 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  br label %30

26:                                               ; preds = %18
  %27 = load i32, i32* @DRM_MODE_CONNECTOR_DVID, align 4
  %28 = load %struct.tfp410*, %struct.tfp410** %3, align 8
  %29 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  br label %30

30:                                               ; preds = %26, %22
  %31 = load %struct.device_node*, %struct.device_node** %4, align 8
  %32 = getelementptr inbounds %struct.device_node, %struct.device_node* %31, i32 0, i32 0
  %33 = load i32, i32* @GPIOD_IN, align 4
  %34 = call i32* @fwnode_get_named_gpiod(i32* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %35 = load %struct.tfp410*, %struct.tfp410** %3, align 8
  %36 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %35, i32 0, i32 2
  store i32* %34, i32** %36, align 8
  %37 = load %struct.tfp410*, %struct.tfp410** %3, align 8
  %38 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = call i64 @IS_ERR(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %30
  %43 = load %struct.tfp410*, %struct.tfp410** %3, align 8
  %44 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @PTR_ERR(i32* %45)
  store i32 %46, i32* %6, align 4
  %47 = load %struct.tfp410*, %struct.tfp410** %3, align 8
  %48 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %47, i32 0, i32 2
  store i32* null, i32** %48, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @ENOENT, align 4
  %51 = sub nsw i32 0, %50
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  store i32 0, i32* %6, align 4
  br label %55

54:                                               ; preds = %42
  br label %82

55:                                               ; preds = %53
  br label %56

56:                                               ; preds = %55, %30
  %57 = load %struct.device_node*, %struct.device_node** %4, align 8
  %58 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 0)
  store %struct.device_node* %58, %struct.device_node** %5, align 8
  %59 = load %struct.device_node*, %struct.device_node** %5, align 8
  %60 = icmp ne %struct.device_node* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  br label %82

62:                                               ; preds = %56
  %63 = load %struct.device_node*, %struct.device_node** %5, align 8
  %64 = call i32 @of_get_i2c_adapter_by_node(%struct.device_node* %63)
  %65 = load %struct.tfp410*, %struct.tfp410** %3, align 8
  %66 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load %struct.tfp410*, %struct.tfp410** %3, align 8
  %68 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %62
  %72 = load %struct.tfp410*, %struct.tfp410** %3, align 8
  %73 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = call i32 @dev_info(%struct.TYPE_2__* %74, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %79

76:                                               ; preds = %62
  %77 = load i32, i32* @EPROBE_DEFER, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %76, %71
  %80 = load %struct.device_node*, %struct.device_node** %5, align 8
  %81 = call i32 @of_node_put(%struct.device_node* %80)
  br label %82

82:                                               ; preds = %79, %61, %54
  %83 = load %struct.device_node*, %struct.device_node** %4, align 8
  %84 = call i32 @of_node_put(%struct.device_node* %83)
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %82, %15
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.device_node* @of_graph_get_remote_node(i32, i32, i32) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32* @fwnode_get_named_gpiod(i32*, i8*, i32, i32, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @of_get_i2c_adapter_by_node(%struct.device_node*) #1

declare dso_local i32 @dev_info(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
