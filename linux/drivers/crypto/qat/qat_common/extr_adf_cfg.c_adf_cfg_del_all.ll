; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_cfg.c_adf_cfg_del_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_cfg.c_adf_cfg_del_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adf_accel_dev = type { i32, %struct.adf_cfg_device_data* }
%struct.adf_cfg_device_data = type { i32, i32 }

@ADF_STATUS_CONFIGURED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adf_cfg_del_all(%struct.adf_accel_dev* %0) #0 {
  %2 = alloca %struct.adf_accel_dev*, align 8
  %3 = alloca %struct.adf_cfg_device_data*, align 8
  store %struct.adf_accel_dev* %0, %struct.adf_accel_dev** %2, align 8
  %4 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %2, align 8
  %5 = getelementptr inbounds %struct.adf_accel_dev, %struct.adf_accel_dev* %4, i32 0, i32 1
  %6 = load %struct.adf_cfg_device_data*, %struct.adf_cfg_device_data** %5, align 8
  store %struct.adf_cfg_device_data* %6, %struct.adf_cfg_device_data** %3, align 8
  %7 = load %struct.adf_cfg_device_data*, %struct.adf_cfg_device_data** %3, align 8
  %8 = getelementptr inbounds %struct.adf_cfg_device_data, %struct.adf_cfg_device_data* %7, i32 0, i32 0
  %9 = call i32 @down_write(i32* %8)
  %10 = load %struct.adf_cfg_device_data*, %struct.adf_cfg_device_data** %3, align 8
  %11 = getelementptr inbounds %struct.adf_cfg_device_data, %struct.adf_cfg_device_data* %10, i32 0, i32 1
  %12 = call i32 @adf_cfg_section_del_all(i32* %11)
  %13 = load %struct.adf_cfg_device_data*, %struct.adf_cfg_device_data** %3, align 8
  %14 = getelementptr inbounds %struct.adf_cfg_device_data, %struct.adf_cfg_device_data* %13, i32 0, i32 0
  %15 = call i32 @up_write(i32* %14)
  %16 = load i32, i32* @ADF_STATUS_CONFIGURED, align 4
  %17 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %2, align 8
  %18 = getelementptr inbounds %struct.adf_accel_dev, %struct.adf_accel_dev* %17, i32 0, i32 0
  %19 = call i32 @clear_bit(i32 %16, i32* %18)
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @adf_cfg_section_del_all(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
