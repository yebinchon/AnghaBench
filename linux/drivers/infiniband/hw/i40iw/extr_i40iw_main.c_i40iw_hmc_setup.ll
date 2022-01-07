; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_hmc_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_hmc_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { i32, i32, i32 }

@I40IW_SD_TYPE_DIRECT = common dso_local global i32 0, align 4
@IW_CFG_FPM_QP_COUNT = common dso_local global i32 0, align 4
@HMC_OBJS_CREATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_device*)* @i40iw_hmc_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_hmc_setup(%struct.i40iw_device* %0) #0 {
  %2 = alloca %struct.i40iw_device*, align 8
  %3 = alloca i32, align 4
  store %struct.i40iw_device* %0, %struct.i40iw_device** %2, align 8
  %4 = load i32, i32* @I40IW_SD_TYPE_DIRECT, align 4
  %5 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %6 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %5, i32 0, i32 2
  store i32 %4, i32* %6, align 4
  %7 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %8 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %7, i32 0, i32 1
  %9 = load i32, i32* @IW_CFG_FPM_QP_COUNT, align 4
  %10 = call i32 @i40iw_config_fpm_values(i32* %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %24

14:                                               ; preds = %1
  %15 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %16 = call i32 @i40iw_create_hmc_objs(%struct.i40iw_device* %15, i32 1)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %24

20:                                               ; preds = %14
  %21 = load i32, i32* @HMC_OBJS_CREATED, align 4
  %22 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %23 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  br label %24

24:                                               ; preds = %20, %19, %13
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @i40iw_config_fpm_values(i32*, i32) #1

declare dso_local i32 @i40iw_create_hmc_objs(%struct.i40iw_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
