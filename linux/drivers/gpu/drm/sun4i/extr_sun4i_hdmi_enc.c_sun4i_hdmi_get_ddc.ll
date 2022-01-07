; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_hdmi_enc.c_sun4i_hdmi_get_ddc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_hdmi_enc.c_sun4i_hdmi_get_ddc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.device = type { i32 }
%struct.device_node = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"ddc-i2c-bus\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i2c_adapter* (%struct.device*)* @sun4i_hdmi_get_ddc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i2c_adapter* @sun4i_hdmi_get_ddc(%struct.device* %0) #0 {
  %2 = alloca %struct.i2c_adapter*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.device_node* @of_graph_get_remote_node(i32 %9, i32 1, i32 -1)
  store %struct.device_node* %10, %struct.device_node** %5, align 8
  %11 = load %struct.device_node*, %struct.device_node** %5, align 8
  %12 = icmp ne %struct.device_node* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.i2c_adapter* @ERR_PTR(i32 %15)
  store %struct.i2c_adapter* %16, %struct.i2c_adapter** %2, align 8
  br label %41

17:                                               ; preds = %1
  %18 = load %struct.device_node*, %struct.device_node** %5, align 8
  %19 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %19, %struct.device_node** %4, align 8
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = call i32 @of_node_put(%struct.device_node* %20)
  %22 = load %struct.device_node*, %struct.device_node** %4, align 8
  %23 = icmp ne %struct.device_node* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.i2c_adapter* @ERR_PTR(i32 %26)
  store %struct.i2c_adapter* %27, %struct.i2c_adapter** %2, align 8
  br label %41

28:                                               ; preds = %17
  %29 = load %struct.device_node*, %struct.device_node** %4, align 8
  %30 = call %struct.i2c_adapter* @of_get_i2c_adapter_by_node(%struct.device_node* %29)
  store %struct.i2c_adapter* %30, %struct.i2c_adapter** %6, align 8
  %31 = load %struct.device_node*, %struct.device_node** %4, align 8
  %32 = call i32 @of_node_put(%struct.device_node* %31)
  %33 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %34 = icmp ne %struct.i2c_adapter* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @EPROBE_DEFER, align 4
  %37 = sub nsw i32 0, %36
  %38 = call %struct.i2c_adapter* @ERR_PTR(i32 %37)
  store %struct.i2c_adapter* %38, %struct.i2c_adapter** %2, align 8
  br label %41

39:                                               ; preds = %28
  %40 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  store %struct.i2c_adapter* %40, %struct.i2c_adapter** %2, align 8
  br label %41

41:                                               ; preds = %39, %35, %24, %13
  %42 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  ret %struct.i2c_adapter* %42
}

declare dso_local %struct.device_node* @of_graph_get_remote_node(i32, i32, i32) #1

declare dso_local %struct.i2c_adapter* @ERR_PTR(i32) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.i2c_adapter* @of_get_i2c_adapter_by_node(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
