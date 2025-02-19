; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_isr.c_adf_setup_bh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_isr.c_adf_setup_bh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adf_accel_dev = type { %struct.adf_hw_device_data*, %struct.adf_etr_data* }
%struct.adf_hw_device_data = type { i32 }
%struct.adf_etr_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@adf_response_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adf_accel_dev*)* @adf_setup_bh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adf_setup_bh(%struct.adf_accel_dev* %0) #0 {
  %2 = alloca %struct.adf_accel_dev*, align 8
  %3 = alloca %struct.adf_etr_data*, align 8
  %4 = alloca %struct.adf_hw_device_data*, align 8
  %5 = alloca i32, align 4
  store %struct.adf_accel_dev* %0, %struct.adf_accel_dev** %2, align 8
  %6 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %2, align 8
  %7 = getelementptr inbounds %struct.adf_accel_dev, %struct.adf_accel_dev* %6, i32 0, i32 1
  %8 = load %struct.adf_etr_data*, %struct.adf_etr_data** %7, align 8
  store %struct.adf_etr_data* %8, %struct.adf_etr_data** %3, align 8
  %9 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %2, align 8
  %10 = getelementptr inbounds %struct.adf_accel_dev, %struct.adf_accel_dev* %9, i32 0, i32 0
  %11 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %10, align 8
  store %struct.adf_hw_device_data* %11, %struct.adf_hw_device_data** %4, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %35, %1
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %4, align 8
  %15 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %12
  %19 = load %struct.adf_etr_data*, %struct.adf_etr_data** %3, align 8
  %20 = getelementptr inbounds %struct.adf_etr_data, %struct.adf_etr_data* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* @adf_response_handler, align 4
  %27 = load %struct.adf_etr_data*, %struct.adf_etr_data** %3, align 8
  %28 = getelementptr inbounds %struct.adf_etr_data, %struct.adf_etr_data* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = ptrtoint %struct.TYPE_2__* %32 to i64
  %34 = call i32 @tasklet_init(i32* %25, i32 %26, i64 %33)
  br label %35

35:                                               ; preds = %18
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %12

38:                                               ; preds = %12
  ret i32 0
}

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
