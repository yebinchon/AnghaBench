; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_da311.c_da311_register_mask_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_da311.c_da311_register_mask_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@DA311_REG_BANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32, i32)* @da311_register_mask_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da311_register_mask_write(%struct.i2c_client* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %7, align 4
  %13 = and i32 %12, 65280
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %4
  %16 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %17 = load i32, i32* @DA311_REG_BANK, align 4
  %18 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %16, i32 %17, i32 1)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %5, align 4
  br label %70

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23, %4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 255
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %5, align 4
  br label %70

35:                                               ; preds = %27
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %11, align 4
  br label %37

37:                                               ; preds = %35, %24
  %38 = load i32, i32* %8, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %11, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* %11, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %11, align 4
  %47 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = and i32 %48, 255
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %47, i32 %49, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %37
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %5, align 4
  br label %70

56:                                               ; preds = %37
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, 65280
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %62 = load i32, i32* @DA311_REG_BANK, align 4
  %63 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %61, i32 %62, i32 0)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %5, align 4
  br label %70

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68, %56
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %69, %66, %54, %33, %21
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
