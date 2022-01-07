; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_accel_engine.c_adf_ae_fw_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_accel_engine.c_adf_ae_fw_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adf_accel_dev = type { %struct.adf_hw_device_data*, %struct.adf_fw_loader_data* }
%struct.adf_hw_device_data = type { i32 }
%struct.adf_fw_loader_data = type { i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adf_ae_fw_release(%struct.adf_accel_dev* %0) #0 {
  %2 = alloca %struct.adf_accel_dev*, align 8
  %3 = alloca %struct.adf_fw_loader_data*, align 8
  %4 = alloca %struct.adf_hw_device_data*, align 8
  store %struct.adf_accel_dev* %0, %struct.adf_accel_dev** %2, align 8
  %5 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %2, align 8
  %6 = getelementptr inbounds %struct.adf_accel_dev, %struct.adf_accel_dev* %5, i32 0, i32 1
  %7 = load %struct.adf_fw_loader_data*, %struct.adf_fw_loader_data** %6, align 8
  store %struct.adf_fw_loader_data* %7, %struct.adf_fw_loader_data** %3, align 8
  %8 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %2, align 8
  %9 = getelementptr inbounds %struct.adf_accel_dev, %struct.adf_accel_dev* %8, i32 0, i32 0
  %10 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %9, align 8
  store %struct.adf_hw_device_data* %10, %struct.adf_hw_device_data** %4, align 8
  %11 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %4, align 8
  %12 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %39

16:                                               ; preds = %1
  %17 = load %struct.adf_fw_loader_data*, %struct.adf_fw_loader_data** %3, align 8
  %18 = getelementptr inbounds %struct.adf_fw_loader_data, %struct.adf_fw_loader_data* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @qat_uclo_del_uof_obj(i32* %19)
  %21 = load %struct.adf_fw_loader_data*, %struct.adf_fw_loader_data** %3, align 8
  %22 = getelementptr inbounds %struct.adf_fw_loader_data, %struct.adf_fw_loader_data* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @qat_hal_deinit(i32* %23)
  %25 = load %struct.adf_fw_loader_data*, %struct.adf_fw_loader_data** %3, align 8
  %26 = getelementptr inbounds %struct.adf_fw_loader_data, %struct.adf_fw_loader_data* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @release_firmware(i32* %27)
  %29 = load %struct.adf_fw_loader_data*, %struct.adf_fw_loader_data** %3, align 8
  %30 = getelementptr inbounds %struct.adf_fw_loader_data, %struct.adf_fw_loader_data* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @release_firmware(i32* %31)
  %33 = load %struct.adf_fw_loader_data*, %struct.adf_fw_loader_data** %3, align 8
  %34 = getelementptr inbounds %struct.adf_fw_loader_data, %struct.adf_fw_loader_data* %33, i32 0, i32 2
  store i32* null, i32** %34, align 8
  %35 = load %struct.adf_fw_loader_data*, %struct.adf_fw_loader_data** %3, align 8
  %36 = getelementptr inbounds %struct.adf_fw_loader_data, %struct.adf_fw_loader_data* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  %37 = load %struct.adf_fw_loader_data*, %struct.adf_fw_loader_data** %3, align 8
  %38 = getelementptr inbounds %struct.adf_fw_loader_data, %struct.adf_fw_loader_data* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @qat_uclo_del_uof_obj(i32*) #1

declare dso_local i32 @qat_hal_deinit(i32*) #1

declare dso_local i32 @release_firmware(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
