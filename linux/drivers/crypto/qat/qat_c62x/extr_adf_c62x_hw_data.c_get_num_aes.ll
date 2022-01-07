; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_c62x/extr_adf_c62x_hw_data.c_get_num_aes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_c62x/extr_adf_c62x_hw_data.c_get_num_aes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adf_hw_device_data = type { i32 }

@ADF_C62X_MAX_ACCELENGINES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adf_hw_device_data*)* @get_num_aes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_num_aes(%struct.adf_hw_device_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adf_hw_device_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.adf_hw_device_data* %0, %struct.adf_hw_device_data** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %3, align 8
  %7 = icmp ne %struct.adf_hw_device_data* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %3, align 8
  %10 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %36

14:                                               ; preds = %8
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %31, %14
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @ADF_C62X_MAX_ACCELENGINES, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %15
  %20 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %3, align 8
  %21 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = shl i32 1, %23
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %27, %19
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %15

34:                                               ; preds = %15
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %13
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
