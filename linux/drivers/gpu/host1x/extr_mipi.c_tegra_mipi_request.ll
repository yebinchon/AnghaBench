; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_mipi.c_tegra_mipi_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_mipi.c_tegra_mipi_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_mipi_device = type { i32, %struct.device*, i32, i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.of_phandle_args = type { i32, i32* }

@.str = private unnamed_addr constant [22 x i8] c"nvidia,mipi-calibrate\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"#nvidia,mipi-calibrate-cells\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tegra_mipi_device* @tegra_mipi_request(%struct.device* %0) #0 {
  %2 = alloca %struct.tegra_mipi_device*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.tegra_mipi_device*, align 8
  %6 = alloca %struct.of_phandle_args, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %4, align 8
  %11 = load %struct.device_node*, %struct.device_node** %4, align 8
  %12 = call i32 @of_parse_phandle_with_args(%struct.device_node* %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 0, %struct.of_phandle_args* %6)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.tegra_mipi_device* @ERR_PTR(i32 %16)
  store %struct.tegra_mipi_device* %17, %struct.tegra_mipi_device** %2, align 8
  br label %81

18:                                               ; preds = %1
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.tegra_mipi_device* @kzalloc(i32 24, i32 %19)
  store %struct.tegra_mipi_device* %20, %struct.tegra_mipi_device** %5, align 8
  %21 = load %struct.tegra_mipi_device*, %struct.tegra_mipi_device** %5, align 8
  %22 = icmp ne %struct.tegra_mipi_device* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %75

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %6, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @of_find_device_by_node(i32 %28)
  %30 = load %struct.tegra_mipi_device*, %struct.tegra_mipi_device** %5, align 8
  %31 = getelementptr inbounds %struct.tegra_mipi_device, %struct.tegra_mipi_device* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.tegra_mipi_device*, %struct.tegra_mipi_device** %5, align 8
  %33 = getelementptr inbounds %struct.tegra_mipi_device, %struct.tegra_mipi_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %26
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %72

39:                                               ; preds = %26
  %40 = load %struct.tegra_mipi_device*, %struct.tegra_mipi_device** %5, align 8
  %41 = getelementptr inbounds %struct.tegra_mipi_device, %struct.tegra_mipi_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @platform_get_drvdata(i32 %42)
  %44 = load %struct.tegra_mipi_device*, %struct.tegra_mipi_device** %5, align 8
  %45 = getelementptr inbounds %struct.tegra_mipi_device, %struct.tegra_mipi_device* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.tegra_mipi_device*, %struct.tegra_mipi_device** %5, align 8
  %47 = getelementptr inbounds %struct.tegra_mipi_device, %struct.tegra_mipi_device* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %39
  %51 = load i32, i32* @EPROBE_DEFER, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %7, align 4
  br label %67

53:                                               ; preds = %39
  %54 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %6, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @of_node_put(i32 %55)
  %57 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %6, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.tegra_mipi_device*, %struct.tegra_mipi_device** %5, align 8
  %62 = getelementptr inbounds %struct.tegra_mipi_device, %struct.tegra_mipi_device* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.device*, %struct.device** %3, align 8
  %64 = load %struct.tegra_mipi_device*, %struct.tegra_mipi_device** %5, align 8
  %65 = getelementptr inbounds %struct.tegra_mipi_device, %struct.tegra_mipi_device* %64, i32 0, i32 1
  store %struct.device* %63, %struct.device** %65, align 8
  %66 = load %struct.tegra_mipi_device*, %struct.tegra_mipi_device** %5, align 8
  store %struct.tegra_mipi_device* %66, %struct.tegra_mipi_device** %2, align 8
  br label %81

67:                                               ; preds = %50
  %68 = load %struct.tegra_mipi_device*, %struct.tegra_mipi_device** %5, align 8
  %69 = getelementptr inbounds %struct.tegra_mipi_device, %struct.tegra_mipi_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @platform_device_put(i32 %70)
  br label %72

72:                                               ; preds = %67, %36
  %73 = load %struct.tegra_mipi_device*, %struct.tegra_mipi_device** %5, align 8
  %74 = call i32 @kfree(%struct.tegra_mipi_device* %73)
  br label %75

75:                                               ; preds = %72, %23
  %76 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %6, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @of_node_put(i32 %77)
  %79 = load i32, i32* %7, align 4
  %80 = call %struct.tegra_mipi_device* @ERR_PTR(i32 %79)
  store %struct.tegra_mipi_device* %80, %struct.tegra_mipi_device** %2, align 8
  br label %81

81:                                               ; preds = %75, %53, %15
  %82 = load %struct.tegra_mipi_device*, %struct.tegra_mipi_device** %2, align 8
  ret %struct.tegra_mipi_device* %82
}

declare dso_local i32 @of_parse_phandle_with_args(%struct.device_node*, i8*, i8*, i32, %struct.of_phandle_args*) #1

declare dso_local %struct.tegra_mipi_device* @ERR_PTR(i32) #1

declare dso_local %struct.tegra_mipi_device* @kzalloc(i32, i32) #1

declare dso_local i32 @of_find_device_by_node(i32) #1

declare dso_local i32 @platform_get_drvdata(i32) #1

declare dso_local i32 @of_node_put(i32) #1

declare dso_local i32 @platform_device_put(i32) #1

declare dso_local i32 @kfree(%struct.tegra_mipi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
