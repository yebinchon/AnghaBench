; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/imx/extr_scu-pd.c_imx_sc_pd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/imx/extr_scu-pd.c_imx_sc_pd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.imx_sc_pd_soc = type { i32 }

@pm_ipc_handle = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @imx_sc_pd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_sc_pd_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.imx_sc_pd_soc*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = call i32 @imx_scu_get_handle(i32* @pm_ipc_handle)
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* %2, align 4
  br label %25

11:                                               ; preds = %1
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = call %struct.imx_sc_pd_soc* @of_device_get_match_data(i32* %13)
  store %struct.imx_sc_pd_soc* %14, %struct.imx_sc_pd_soc** %4, align 8
  %15 = load %struct.imx_sc_pd_soc*, %struct.imx_sc_pd_soc** %4, align 8
  %16 = icmp ne %struct.imx_sc_pd_soc* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %25

20:                                               ; preds = %11
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load %struct.imx_sc_pd_soc*, %struct.imx_sc_pd_soc** %4, align 8
  %24 = call i32 @imx_scu_init_pm_domains(i32* %22, %struct.imx_sc_pd_soc* %23)
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %20, %17, %9
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @imx_scu_get_handle(i32*) #1

declare dso_local %struct.imx_sc_pd_soc* @of_device_get_match_data(i32*) #1

declare dso_local i32 @imx_scu_init_pm_domains(i32*, %struct.imx_sc_pd_soc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
