; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-fsi.c_fsi_i2c_set_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-fsi.c_fsi_i2c_set_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_i2c_port = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.fsi_device* }
%struct.fsi_device = type { i32 }

@I2C_FSI_MODE = common dso_local global i32 0, align 4
@I2C_MODE_PORT = common dso_local global i32 0, align 4
@I2C_FSI_RESET_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_i2c_port*)* @fsi_i2c_set_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_i2c_set_port(%struct.fsi_i2c_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsi_i2c_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fsi_i2c_port* %0, %struct.fsi_i2c_port** %3, align 8
  %8 = load %struct.fsi_i2c_port*, %struct.fsi_i2c_port** %3, align 8
  %9 = getelementptr inbounds %struct.fsi_i2c_port, %struct.fsi_i2c_port* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.fsi_device*, %struct.fsi_device** %11, align 8
  store %struct.fsi_device* %12, %struct.fsi_device** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.fsi_device*, %struct.fsi_device** %5, align 8
  %14 = load i32, i32* @I2C_FSI_MODE, align 4
  %15 = call i32 @fsi_i2c_read_reg(%struct.fsi_device* %13, i32 %14, i32* %6)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %51

20:                                               ; preds = %1
  %21 = load i32, i32* @I2C_MODE_PORT, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @FIELD_GET(i32 %21, i32 %22)
  %24 = load %struct.fsi_i2c_port*, %struct.fsi_i2c_port** %3, align 8
  %25 = getelementptr inbounds %struct.fsi_i2c_port, %struct.fsi_i2c_port* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %51

29:                                               ; preds = %20
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @I2C_MODE_PORT, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = load i32, i32* @I2C_MODE_PORT, align 4
  %35 = load %struct.fsi_i2c_port*, %struct.fsi_i2c_port** %3, align 8
  %36 = getelementptr inbounds %struct.fsi_i2c_port, %struct.fsi_i2c_port* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @FIELD_PREP(i32 %34, i64 %37)
  %39 = or i32 %33, %38
  store i32 %39, i32* %6, align 4
  %40 = load %struct.fsi_device*, %struct.fsi_device** %5, align 8
  %41 = load i32, i32* @I2C_FSI_MODE, align 4
  %42 = call i32 @fsi_i2c_write_reg(%struct.fsi_device* %40, i32 %41, i32* %6)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %29
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %51

47:                                               ; preds = %29
  %48 = load %struct.fsi_device*, %struct.fsi_device** %5, align 8
  %49 = load i32, i32* @I2C_FSI_RESET_ERR, align 4
  %50 = call i32 @fsi_i2c_write_reg(%struct.fsi_device* %48, i32 %49, i32* %7)
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %47, %45, %28, %18
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @fsi_i2c_read_reg(%struct.fsi_device*, i32, i32*) #1

declare dso_local i64 @FIELD_GET(i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i64) #1

declare dso_local i32 @fsi_i2c_write_reg(%struct.fsi_device*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
