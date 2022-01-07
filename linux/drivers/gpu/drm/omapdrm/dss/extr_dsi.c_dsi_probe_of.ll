; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_probe_of.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_probe_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_data = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.property = type { i32 }
%struct.omap_dsi_pin_config = type { i32, i32* }

@.str = private unnamed_addr constant [6 x i8] c"lanes\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to find lane data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"bad number of lanes\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"failed to read lane data\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"failed to configure pins\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsi_data*)* @dsi_probe_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_probe_of(%struct.dsi_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dsi_data*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.property*, align 8
  %6 = alloca [10 x i64], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.device_node*, align 8
  %12 = alloca %struct.omap_dsi_pin_config, align 8
  store %struct.dsi_data* %0, %struct.dsi_data** %3, align 8
  %13 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %14 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %4, align 8
  %18 = load %struct.device_node*, %struct.device_node** %4, align 8
  %19 = call %struct.device_node* @of_graph_get_endpoint_by_regs(%struct.device_node* %18, i32 0, i32 0)
  store %struct.device_node* %19, %struct.device_node** %11, align 8
  %20 = load %struct.device_node*, %struct.device_node** %11, align 8
  %21 = icmp ne %struct.device_node* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %111

23:                                               ; preds = %1
  %24 = load %struct.device_node*, %struct.device_node** %11, align 8
  %25 = call %struct.property* @of_find_property(%struct.device_node* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %7)
  store %struct.property* %25, %struct.property** %5, align 8
  %26 = load %struct.property*, %struct.property** %5, align 8
  %27 = icmp eq %struct.property* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %30 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = call i32 @dev_err(%struct.TYPE_2__* %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %9, align 4
  br label %107

35:                                               ; preds = %23
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = udiv i64 %37, 8
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 4
  br i1 %41, label %53, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* %8, align 4
  %44 = srem i32 %43, 2
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %49 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = mul nsw i32 %50, 2
  %52 = icmp sgt i32 %47, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %46, %42, %35
  %54 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %55 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = call i32 @dev_err(%struct.TYPE_2__* %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %9, align 4
  br label %107

60:                                               ; preds = %46
  %61 = load %struct.device_node*, %struct.device_node** %11, align 8
  %62 = getelementptr inbounds [10 x i64], [10 x i64]* %6, i64 0, i64 0
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @of_property_read_u32_array(%struct.device_node* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64* %62, i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %69 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = call i32 @dev_err(%struct.TYPE_2__* %70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %107

72:                                               ; preds = %60
  %73 = load i32, i32* %8, align 4
  %74 = getelementptr inbounds %struct.omap_dsi_pin_config, %struct.omap_dsi_pin_config* %12, i32 0, i32 0
  store i32 %73, i32* %74, align 8
  store i32 0, i32* %10, align 4
  br label %75

75:                                               ; preds = %90, %72
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %93

79:                                               ; preds = %75
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [10 x i64], [10 x i64]* %6, i64 0, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  %85 = getelementptr inbounds %struct.omap_dsi_pin_config, %struct.omap_dsi_pin_config* %12, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %84, i32* %89, align 4
  br label %90

90:                                               ; preds = %79
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %75

93:                                               ; preds = %75
  %94 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %95 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %94, i32 0, i32 2
  %96 = call i32 @dsi_configure_pins(i32* %95, %struct.omap_dsi_pin_config* %12)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %101 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %100, i32 0, i32 1
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = call i32 @dev_err(%struct.TYPE_2__* %102, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %107

104:                                              ; preds = %93
  %105 = load %struct.device_node*, %struct.device_node** %11, align 8
  %106 = call i32 @of_node_put(%struct.device_node* %105)
  store i32 0, i32* %2, align 4
  br label %111

107:                                              ; preds = %99, %67, %53, %28
  %108 = load %struct.device_node*, %struct.device_node** %11, align 8
  %109 = call i32 @of_node_put(%struct.device_node* %108)
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %107, %104, %22
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.device_node* @of_graph_get_endpoint_by_regs(%struct.device_node*, i32, i32) #1

declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @of_property_read_u32_array(%struct.device_node*, i8*, i64*, i32) #1

declare dso_local i32 @dsi_configure_pins(i32*, %struct.omap_dsi_pin_config*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
