; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl.c_dfl_fpga_check_port_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl.c_dfl_fpga_check_port_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dfl_feature_platform_data = type { i32 }
%struct.dfl_fpga_port_ops = type { i32 (%struct.platform_device*)* }

@FEATURE_DEV_ID_UNUSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dfl_fpga_check_port_id(%struct.platform_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dfl_feature_platform_data*, align 8
  %7 = alloca %struct.dfl_fpga_port_ops*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.dfl_feature_platform_data* @dev_get_platdata(i32* %9)
  store %struct.dfl_feature_platform_data* %10, %struct.dfl_feature_platform_data** %6, align 8
  %11 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %6, align 8
  %12 = getelementptr inbounds %struct.dfl_feature_platform_data, %struct.dfl_feature_platform_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @FEATURE_DEV_ID_UNUSED, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %6, align 8
  %18 = getelementptr inbounds %struct.dfl_feature_platform_data, %struct.dfl_feature_platform_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %19, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %3, align 4
  br label %54

25:                                               ; preds = %2
  %26 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %27 = call %struct.dfl_fpga_port_ops* @dfl_fpga_port_ops_get(%struct.platform_device* %26)
  store %struct.dfl_fpga_port_ops* %27, %struct.dfl_fpga_port_ops** %7, align 8
  %28 = load %struct.dfl_fpga_port_ops*, %struct.dfl_fpga_port_ops** %7, align 8
  %29 = icmp ne %struct.dfl_fpga_port_ops* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.dfl_fpga_port_ops*, %struct.dfl_fpga_port_ops** %7, align 8
  %32 = getelementptr inbounds %struct.dfl_fpga_port_ops, %struct.dfl_fpga_port_ops* %31, i32 0, i32 0
  %33 = load i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)** %32, align 8
  %34 = icmp ne i32 (%struct.platform_device*)* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30, %25
  store i32 0, i32* %3, align 4
  br label %54

36:                                               ; preds = %30
  %37 = load %struct.dfl_fpga_port_ops*, %struct.dfl_fpga_port_ops** %7, align 8
  %38 = getelementptr inbounds %struct.dfl_fpga_port_ops, %struct.dfl_fpga_port_ops* %37, i32 0, i32 0
  %39 = load i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)** %38, align 8
  %40 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %41 = call i32 %39(%struct.platform_device* %40)
  %42 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %6, align 8
  %43 = getelementptr inbounds %struct.dfl_feature_platform_data, %struct.dfl_feature_platform_data* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.dfl_fpga_port_ops*, %struct.dfl_fpga_port_ops** %7, align 8
  %45 = call i32 @dfl_fpga_port_ops_put(%struct.dfl_fpga_port_ops* %44)
  %46 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %6, align 8
  %47 = getelementptr inbounds %struct.dfl_feature_platform_data, %struct.dfl_feature_platform_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %5, align 8
  %50 = bitcast i8* %49 to i32*
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %48, %51
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %36, %35, %16
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.dfl_feature_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.dfl_fpga_port_ops* @dfl_fpga_port_ops_get(%struct.platform_device*) #1

declare dso_local i32 @dfl_fpga_port_ops_put(%struct.dfl_fpga_port_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
