; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma7660.c_mma7660_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma7660.c_mma7660_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mma7660_data = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@MMA7660_REG_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to read sensor mode\0A\00", align 1
@MMA7660_MODE_ACTIVE = common dso_local global i32 0, align 4
@MMA7660_REG_MODE_BIT_TON = common dso_local global i32 0, align 4
@MMA7660_REG_MODE_BIT_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to change sensor mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mma7660_data*, i32)* @mma7660_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mma7660_set_mode(%struct.mma7660_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mma7660_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_client*, align 8
  store %struct.mma7660_data* %0, %struct.mma7660_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mma7660_data*, %struct.mma7660_data** %4, align 8
  %9 = getelementptr inbounds %struct.mma7660_data, %struct.mma7660_data* %8, i32 0, i32 1
  %10 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %10, %struct.i2c_client** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.mma7660_data*, %struct.mma7660_data** %4, align 8
  %13 = getelementptr inbounds %struct.mma7660_data, %struct.mma7660_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %66

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %19 = load i32, i32* @MMA7660_REG_MODE, align 4
  %20 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %66

28:                                               ; preds = %17
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @MMA7660_MODE_ACTIVE, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load i32, i32* @MMA7660_REG_MODE_BIT_TON, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* @MMA7660_REG_MODE_BIT_MODE, align 4
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %6, align 4
  br label %49

40:                                               ; preds = %28
  %41 = load i32, i32* @MMA7660_REG_MODE_BIT_TON, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* @MMA7660_REG_MODE_BIT_MODE, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %40, %32
  %50 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %51 = load i32, i32* @MMA7660_REG_MODE, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %50, i32 %51, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 0
  %59 = call i32 @dev_err(i32* %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %3, align 4
  br label %66

61:                                               ; preds = %49
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.mma7660_data*, %struct.mma7660_data** %4, align 8
  %64 = getelementptr inbounds %struct.mma7660_data, %struct.mma7660_data* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %61, %56, %23, %16
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
