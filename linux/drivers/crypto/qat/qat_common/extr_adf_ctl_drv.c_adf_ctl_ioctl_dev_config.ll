; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_ctl_drv.c_adf_ctl_ioctl_dev_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_ctl_drv.c_adf_ctl_ioctl_dev_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.adf_user_cfg_ctl_data = type { i32 }
%struct.adf_accel_dev = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@ADF_STATUS_CONFIGURED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i64)* @adf_ctl_ioctl_dev_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adf_ctl_ioctl_dev_config(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.adf_user_cfg_ctl_data*, align 8
  %10 = alloca %struct.adf_accel_dev*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @adf_ctl_alloc_resources(%struct.adf_user_cfg_ctl_data** %9, i64 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %4, align 4
  br label %51

17:                                               ; preds = %3
  %18 = load %struct.adf_user_cfg_ctl_data*, %struct.adf_user_cfg_ctl_data** %9, align 8
  %19 = getelementptr inbounds %struct.adf_user_cfg_ctl_data, %struct.adf_user_cfg_ctl_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.adf_accel_dev* @adf_devmgr_get_dev_by_id(i32 %20)
  store %struct.adf_accel_dev* %21, %struct.adf_accel_dev** %10, align 8
  %22 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %10, align 8
  %23 = icmp ne %struct.adf_accel_dev* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @EFAULT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  br label %47

27:                                               ; preds = %17
  %28 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %10, align 8
  %29 = call i64 @adf_dev_started(%struct.adf_accel_dev* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @EFAULT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %47

34:                                               ; preds = %27
  %35 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %10, align 8
  %36 = load %struct.adf_user_cfg_ctl_data*, %struct.adf_user_cfg_ctl_data** %9, align 8
  %37 = call i64 @adf_copy_key_value_data(%struct.adf_accel_dev* %35, %struct.adf_user_cfg_ctl_data* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @EFAULT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  br label %47

42:                                               ; preds = %34
  %43 = load i32, i32* @ADF_STATUS_CONFIGURED, align 4
  %44 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %10, align 8
  %45 = getelementptr inbounds %struct.adf_accel_dev, %struct.adf_accel_dev* %44, i32 0, i32 0
  %46 = call i32 @set_bit(i32 %43, i32* %45)
  br label %47

47:                                               ; preds = %42, %39, %31, %24
  %48 = load %struct.adf_user_cfg_ctl_data*, %struct.adf_user_cfg_ctl_data** %9, align 8
  %49 = call i32 @kfree(%struct.adf_user_cfg_ctl_data* %48)
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %47, %15
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @adf_ctl_alloc_resources(%struct.adf_user_cfg_ctl_data**, i64) #1

declare dso_local %struct.adf_accel_dev* @adf_devmgr_get_dev_by_id(i32) #1

declare dso_local i64 @adf_dev_started(%struct.adf_accel_dev*) #1

declare dso_local i64 @adf_copy_key_value_data(%struct.adf_accel_dev*, %struct.adf_user_cfg_ctl_data*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @kfree(%struct.adf_user_cfg_ctl_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
