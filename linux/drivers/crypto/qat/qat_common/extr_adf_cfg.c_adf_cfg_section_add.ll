; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_cfg.c_adf_cfg_section_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_cfg.c_adf_cfg_section_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adf_accel_dev = type { %struct.adf_cfg_device_data* }
%struct.adf_cfg_device_data = type { i32, i32 }
%struct.adf_cfg_section = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adf_cfg_section_add(%struct.adf_accel_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adf_accel_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.adf_cfg_device_data*, align 8
  %7 = alloca %struct.adf_cfg_section*, align 8
  store %struct.adf_accel_dev* %0, %struct.adf_accel_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %4, align 8
  %9 = getelementptr inbounds %struct.adf_accel_dev, %struct.adf_accel_dev* %8, i32 0, i32 0
  %10 = load %struct.adf_cfg_device_data*, %struct.adf_cfg_device_data** %9, align 8
  store %struct.adf_cfg_device_data* %10, %struct.adf_cfg_device_data** %6, align 8
  %11 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call %struct.adf_cfg_section* @adf_cfg_sec_find(%struct.adf_accel_dev* %11, i8* %12)
  store %struct.adf_cfg_section* %13, %struct.adf_cfg_section** %7, align 8
  %14 = load %struct.adf_cfg_section*, %struct.adf_cfg_section** %7, align 8
  %15 = icmp ne %struct.adf_cfg_section* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %45

17:                                               ; preds = %2
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.adf_cfg_section* @kzalloc(i32 12, i32 %18)
  store %struct.adf_cfg_section* %19, %struct.adf_cfg_section** %7, align 8
  %20 = load %struct.adf_cfg_section*, %struct.adf_cfg_section** %7, align 8
  %21 = icmp ne %struct.adf_cfg_section* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %45

25:                                               ; preds = %17
  %26 = load %struct.adf_cfg_section*, %struct.adf_cfg_section** %7, align 8
  %27 = getelementptr inbounds %struct.adf_cfg_section, %struct.adf_cfg_section* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @strlcpy(i32 %28, i8* %29, i32 4)
  %31 = load %struct.adf_cfg_section*, %struct.adf_cfg_section** %7, align 8
  %32 = getelementptr inbounds %struct.adf_cfg_section, %struct.adf_cfg_section* %31, i32 0, i32 1
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load %struct.adf_cfg_device_data*, %struct.adf_cfg_device_data** %6, align 8
  %35 = getelementptr inbounds %struct.adf_cfg_device_data, %struct.adf_cfg_device_data* %34, i32 0, i32 0
  %36 = call i32 @down_write(i32* %35)
  %37 = load %struct.adf_cfg_section*, %struct.adf_cfg_section** %7, align 8
  %38 = getelementptr inbounds %struct.adf_cfg_section, %struct.adf_cfg_section* %37, i32 0, i32 0
  %39 = load %struct.adf_cfg_device_data*, %struct.adf_cfg_device_data** %6, align 8
  %40 = getelementptr inbounds %struct.adf_cfg_device_data, %struct.adf_cfg_device_data* %39, i32 0, i32 1
  %41 = call i32 @list_add_tail(i32* %38, i32* %40)
  %42 = load %struct.adf_cfg_device_data*, %struct.adf_cfg_device_data** %6, align 8
  %43 = getelementptr inbounds %struct.adf_cfg_device_data, %struct.adf_cfg_device_data* %42, i32 0, i32 0
  %44 = call i32 @up_write(i32* %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %25, %22, %16
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.adf_cfg_section* @adf_cfg_sec_find(%struct.adf_accel_dev*, i8*) #1

declare dso_local %struct.adf_cfg_section* @kzalloc(i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
