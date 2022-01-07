; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_cfg.c_adf_cfg_dev_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_cfg.c_adf_cfg_dev_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adf_accel_dev = type { i32, %struct.adf_cfg_device_data* }
%struct.adf_cfg_device_data = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"dev_cfg\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@qat_dev_cfg_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adf_cfg_dev_add(%struct.adf_accel_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adf_accel_dev*, align 8
  %4 = alloca %struct.adf_cfg_device_data*, align 8
  store %struct.adf_accel_dev* %0, %struct.adf_accel_dev** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.adf_cfg_device_data* @kzalloc(i32 12, i32 %5)
  store %struct.adf_cfg_device_data* %6, %struct.adf_cfg_device_data** %4, align 8
  %7 = load %struct.adf_cfg_device_data*, %struct.adf_cfg_device_data** %4, align 8
  %8 = icmp ne %struct.adf_cfg_device_data* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %30

12:                                               ; preds = %1
  %13 = load %struct.adf_cfg_device_data*, %struct.adf_cfg_device_data** %4, align 8
  %14 = getelementptr inbounds %struct.adf_cfg_device_data, %struct.adf_cfg_device_data* %13, i32 0, i32 2
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load %struct.adf_cfg_device_data*, %struct.adf_cfg_device_data** %4, align 8
  %17 = getelementptr inbounds %struct.adf_cfg_device_data, %struct.adf_cfg_device_data* %16, i32 0, i32 1
  %18 = call i32 @init_rwsem(i32* %17)
  %19 = load %struct.adf_cfg_device_data*, %struct.adf_cfg_device_data** %4, align 8
  %20 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %3, align 8
  %21 = getelementptr inbounds %struct.adf_accel_dev, %struct.adf_accel_dev* %20, i32 0, i32 1
  store %struct.adf_cfg_device_data* %19, %struct.adf_cfg_device_data** %21, align 8
  %22 = load i32, i32* @S_IRUSR, align 4
  %23 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %3, align 8
  %24 = getelementptr inbounds %struct.adf_accel_dev, %struct.adf_accel_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.adf_cfg_device_data*, %struct.adf_cfg_device_data** %4, align 8
  %27 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25, %struct.adf_cfg_device_data* %26, i32* @qat_dev_cfg_fops)
  %28 = load %struct.adf_cfg_device_data*, %struct.adf_cfg_device_data** %4, align 8
  %29 = getelementptr inbounds %struct.adf_cfg_device_data, %struct.adf_cfg_device_data* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %12, %9
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.adf_cfg_device_data* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.adf_cfg_device_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
