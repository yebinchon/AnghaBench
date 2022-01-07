; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-mux-pinctrl.c_i2c_mux_pinctrl_parent_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-mux-pinctrl.c_i2c_mux_pinctrl_parent_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"i2c-parent\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Cannot parse i2c-parent\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i2c_adapter* (%struct.device*)* @i2c_mux_pinctrl_parent_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i2c_adapter* @i2c_mux_pinctrl_parent_adapter(%struct.device* %0) #0 {
  %2 = alloca %struct.i2c_adapter*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = load %struct.device_node*, %struct.device_node** %8, align 8
  store %struct.device_node* %9, %struct.device_node** %4, align 8
  %10 = load %struct.device_node*, %struct.device_node** %4, align 8
  %11 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %11, %struct.device_node** %5, align 8
  %12 = load %struct.device_node*, %struct.device_node** %5, align 8
  %13 = icmp ne %struct.device_node* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = call i32 @dev_err(%struct.device* %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.i2c_adapter* @ERR_PTR(i32 %18)
  store %struct.i2c_adapter* %19, %struct.i2c_adapter** %2, align 8
  br label %33

20:                                               ; preds = %1
  %21 = load %struct.device_node*, %struct.device_node** %5, align 8
  %22 = call %struct.i2c_adapter* @of_find_i2c_adapter_by_node(%struct.device_node* %21)
  store %struct.i2c_adapter* %22, %struct.i2c_adapter** %6, align 8
  %23 = load %struct.device_node*, %struct.device_node** %5, align 8
  %24 = call i32 @of_node_put(%struct.device_node* %23)
  %25 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %26 = icmp ne %struct.i2c_adapter* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @EPROBE_DEFER, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.i2c_adapter* @ERR_PTR(i32 %29)
  store %struct.i2c_adapter* %30, %struct.i2c_adapter** %2, align 8
  br label %33

31:                                               ; preds = %20
  %32 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  store %struct.i2c_adapter* %32, %struct.i2c_adapter** %2, align 8
  br label %33

33:                                               ; preds = %31, %27, %14
  %34 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  ret %struct.i2c_adapter* %34
}

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.i2c_adapter* @ERR_PTR(i32) #1

declare dso_local %struct.i2c_adapter* @of_find_i2c_adapter_by_node(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
