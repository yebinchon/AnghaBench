; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_hw.c_get_transaction_timeout_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_hw.c_get_transaction_timeout_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_i2c_hw = type { i32, i32 }

@TRANSACTION_TIMEOUT_IN_I2C_CLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dce_i2c_hw*, i32)* @get_transaction_timeout_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_transaction_timeout_hw(%struct.dce_i2c_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dce_i2c_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dce_i2c_hw* %0, %struct.dce_i2c_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %4, align 8
  %10 = call i32 @get_speed(%struct.dce_i2c_hw* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

14:                                               ; preds = %2
  %15 = load i32, i32* @TRANSACTION_TIMEOUT_IN_I2C_CLOCKS, align 4
  %16 = mul nsw i32 1000, %15
  %17 = load i32, i32* %6, align 4
  %18 = sdiv i32 %16, %17
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  %20 = shl i32 %19, 3
  %21 = add nsw i32 1, %20
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %8, align 4
  %23 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %4, align 8
  %24 = getelementptr inbounds %struct.dce_i2c_hw, %struct.dce_i2c_hw* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 3
  %27 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %4, align 8
  %28 = getelementptr inbounds %struct.dce_i2c_hw, %struct.dce_i2c_hw* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 1
  %31 = add nsw i32 %26, %30
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = mul nsw i32 %34, %35
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %14, %13
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @get_speed(%struct.dce_i2c_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
