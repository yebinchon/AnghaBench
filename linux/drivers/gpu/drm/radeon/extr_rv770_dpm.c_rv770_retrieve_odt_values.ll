; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_retrieve_odt_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_retrieve_odt_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64 }
%struct.rv7xx_power_info = type { i64 }

@CHIP_RV730 = common dso_local global i64 0, align 8
@CHIP_RV710 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @rv770_retrieve_odt_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv770_retrieve_odt_values(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.rv7xx_power_info*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %4 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %5 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %4)
  store %struct.rv7xx_power_info* %5, %struct.rv7xx_power_info** %3, align 8
  %6 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %7 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %26

11:                                               ; preds = %1
  %12 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %13 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CHIP_RV730, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  %18 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %19 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CHIP_RV710, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17, %11
  %24 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %25 = call i32 @rv730_get_odt_values(%struct.radeon_device* %24)
  br label %26

26:                                               ; preds = %10, %23, %17
  ret void
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @rv730_get_odt_values(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
