; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-zx2967.c_zx2967_smbus_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-zx2967.c_zx2967_smbus_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%union.i2c_smbus_data = type { i32 }
%struct.zx2967_i2c = type { i32 }

@I2C_SMBUS_WRITE = common dso_local global i8 0, align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@I2C_SMBUS_READ = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)* @zx2967_smbus_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx2967_smbus_xfer(%struct.i2c_adapter* %0, i32 %1, i16 zeroext %2, i8 signext %3, i32 %4, i32 %5, %union.i2c_smbus_data* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.i2c_smbus_data*, align 8
  %16 = alloca %struct.zx2967_i2c*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i16 %2, i16* %11, align 2
  store i8 %3, i8* %12, align 1
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %union.i2c_smbus_data* %6, %union.i2c_smbus_data** %15, align 8
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %18 = call %struct.zx2967_i2c* @i2c_get_adapdata(%struct.i2c_adapter* %17)
  store %struct.zx2967_i2c* %18, %struct.zx2967_i2c** %16, align 8
  %19 = load i32, i32* %14, align 4
  %20 = icmp eq i32 %19, 129
  br i1 %20, label %21, label %23

21:                                               ; preds = %7
  %22 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  store i8 %22, i8* %12, align 1
  br label %23

23:                                               ; preds = %21, %7
  %24 = load i32, i32* %14, align 4
  switch i32 %24, label %33 [
    i32 129, label %25
    i32 131, label %25
    i32 130, label %25
    i32 128, label %25
  ]

25:                                               ; preds = %23, %23, %23, %23
  %26 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %16, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i8, i8* %12, align 1
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %14, align 4
  %31 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %32 = call i32 @zx2967_smbus_xfer_prepare(%struct.zx2967_i2c* %26, i32 %27, i8 signext %28, i32 %29, i32 %30, %union.i2c_smbus_data* %31)
  br label %36

33:                                               ; preds = %23
  %34 = load i32, i32* @EOPNOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %8, align 4
  br label %50

36:                                               ; preds = %25
  %37 = load i8, i8* %12, align 1
  %38 = sext i8 %37 to i32
  %39 = load i8, i8* @I2C_SMBUS_READ, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %16, align 8
  %44 = load i32, i32* %14, align 4
  %45 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %46 = call i32 @zx2967_smbus_xfer_read(%struct.zx2967_i2c* %43, i32 %44, %union.i2c_smbus_data* %45)
  store i32 %46, i32* %8, align 4
  br label %50

47:                                               ; preds = %36
  %48 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %16, align 8
  %49 = call i32 @zx2967_smbus_xfer_write(%struct.zx2967_i2c* %48)
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %47, %42, %33
  %51 = load i32, i32* %8, align 4
  ret i32 %51
}

declare dso_local %struct.zx2967_i2c* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @zx2967_smbus_xfer_prepare(%struct.zx2967_i2c*, i32, i8 signext, i32, i32, %union.i2c_smbus_data*) #1

declare dso_local i32 @zx2967_smbus_xfer_read(%struct.zx2967_i2c*, i32, %union.i2c_smbus_data*) #1

declare dso_local i32 @zx2967_smbus_xfer_write(%struct.zx2967_i2c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
