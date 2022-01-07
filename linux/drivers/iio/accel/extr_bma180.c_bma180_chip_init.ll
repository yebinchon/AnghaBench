; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bma180.c_bma180_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bma180.c_bma180_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bma180_data = type { i32 }

@BMA180_CHIP_ID = common dso_local global i32 0, align 4
@BMA180_ID_REG_VAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bma180_data*)* @bma180_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bma180_chip_init(%struct.bma180_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bma180_data*, align 8
  %4 = alloca i32, align 4
  store %struct.bma180_data* %0, %struct.bma180_data** %3, align 8
  %5 = load %struct.bma180_data*, %struct.bma180_data** %3, align 8
  %6 = getelementptr inbounds %struct.bma180_data, %struct.bma180_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @BMA180_CHIP_ID, align 4
  %9 = call i32 @i2c_smbus_read_byte_data(i32 %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %39

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @BMA180_ID_REG_VAL, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %39

21:                                               ; preds = %14
  %22 = load %struct.bma180_data*, %struct.bma180_data** %3, align 8
  %23 = call i32 @bma180_soft_reset(%struct.bma180_data* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %39

28:                                               ; preds = %21
  %29 = call i32 @msleep(i32 20)
  %30 = load %struct.bma180_data*, %struct.bma180_data** %3, align 8
  %31 = call i32 @bma180_set_new_data_intr_state(%struct.bma180_data* %30, i32 0)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %39

36:                                               ; preds = %28
  %37 = load %struct.bma180_data*, %struct.bma180_data** %3, align 8
  %38 = call i32 @bma180_set_pmode(%struct.bma180_data* %37, i32 0)
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %36, %34, %26, %18, %12
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local i32 @bma180_soft_reset(%struct.bma180_data*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @bma180_set_new_data_intr_state(%struct.bma180_data*, i32) #1

declare dso_local i32 @bma180_set_pmode(%struct.bma180_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
