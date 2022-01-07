; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_connector.c_detect_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_connector.c_detect_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi = type { %struct.hdmi_platform_config* }
%struct.hdmi_platform_config = type { %struct.hdmi_gpio_data* }
%struct.hdmi_gpio_data = type { i32 }

@HPD_GPIO_INDEX = common dso_local global i64 0, align 8
@connector_status_connected = common dso_local global i32 0, align 4
@connector_status_disconnected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdmi*)* @detect_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @detect_gpio(%struct.hdmi* %0) #0 {
  %2 = alloca %struct.hdmi*, align 8
  %3 = alloca %struct.hdmi_platform_config*, align 8
  %4 = alloca %struct.hdmi_gpio_data, align 4
  store %struct.hdmi* %0, %struct.hdmi** %2, align 8
  %5 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %6 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %5, i32 0, i32 0
  %7 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %6, align 8
  store %struct.hdmi_platform_config* %7, %struct.hdmi_platform_config** %3, align 8
  %8 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %3, align 8
  %9 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %8, i32 0, i32 0
  %10 = load %struct.hdmi_gpio_data*, %struct.hdmi_gpio_data** %9, align 8
  %11 = load i64, i64* @HPD_GPIO_INDEX, align 8
  %12 = getelementptr inbounds %struct.hdmi_gpio_data, %struct.hdmi_gpio_data* %10, i64 %11
  %13 = bitcast %struct.hdmi_gpio_data* %4 to i8*
  %14 = bitcast %struct.hdmi_gpio_data* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 4, i1 false)
  %15 = getelementptr inbounds %struct.hdmi_gpio_data, %struct.hdmi_gpio_data* %4, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @gpiod_get_value(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @connector_status_connected, align 4
  br label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @connector_status_disconnected, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  ret i32 %24
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @gpiod_get_value(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
