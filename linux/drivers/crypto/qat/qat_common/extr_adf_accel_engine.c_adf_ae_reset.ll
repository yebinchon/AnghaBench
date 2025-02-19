; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_accel_engine.c_adf_ae_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_accel_engine.c_adf_ae_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adf_accel_dev = type { %struct.adf_fw_loader_data* }
%struct.adf_fw_loader_data = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adf_accel_dev*, i32)* @adf_ae_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adf_ae_reset(%struct.adf_accel_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adf_accel_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.adf_fw_loader_data*, align 8
  store %struct.adf_accel_dev* %0, %struct.adf_accel_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %4, align 8
  %8 = getelementptr inbounds %struct.adf_accel_dev, %struct.adf_accel_dev* %7, i32 0, i32 0
  %9 = load %struct.adf_fw_loader_data*, %struct.adf_fw_loader_data** %8, align 8
  store %struct.adf_fw_loader_data* %9, %struct.adf_fw_loader_data** %6, align 8
  %10 = load %struct.adf_fw_loader_data*, %struct.adf_fw_loader_data** %6, align 8
  %11 = getelementptr inbounds %struct.adf_fw_loader_data, %struct.adf_fw_loader_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @qat_hal_reset(i32 %12)
  %14 = load %struct.adf_fw_loader_data*, %struct.adf_fw_loader_data** %6, align 8
  %15 = getelementptr inbounds %struct.adf_fw_loader_data, %struct.adf_fw_loader_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @qat_hal_clr_reset(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EFAULT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %22, %19
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @qat_hal_reset(i32) #1

declare dso_local i64 @qat_hal_clr_reset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
