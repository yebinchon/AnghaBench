; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-fsi.c_fsi_i2c_write_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-fsi.c_fsi_i2c_write_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_i2c_port = type { i64, %struct.fsi_i2c_master* }
%struct.fsi_i2c_master = type { i32, i32 }
%struct.i2c_msg = type { i32, i32* }

@I2C_FSI_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_i2c_port*, %struct.i2c_msg*, i32)* @fsi_i2c_write_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_i2c_write_fifo(%struct.fsi_i2c_port* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsi_i2c_port*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fsi_i2c_master*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.fsi_i2c_port* %0, %struct.fsi_i2c_port** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.fsi_i2c_port*, %struct.fsi_i2c_port** %5, align 8
  %14 = getelementptr inbounds %struct.fsi_i2c_port, %struct.fsi_i2c_port* %13, i32 0, i32 1
  %15 = load %struct.fsi_i2c_master*, %struct.fsi_i2c_master** %14, align 8
  store %struct.fsi_i2c_master* %15, %struct.fsi_i2c_master** %10, align 8
  %16 = load %struct.fsi_i2c_master*, %struct.fsi_i2c_master** %10, align 8
  %17 = getelementptr inbounds %struct.fsi_i2c_master, %struct.fsi_i2c_master* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = sub nsw i32 %18, %19
  store i32 %20, i32* %11, align 4
  %21 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = load %struct.fsi_i2c_port*, %struct.fsi_i2c_port** %5, align 8
  %26 = getelementptr inbounds %struct.fsi_i2c_port, %struct.fsi_i2c_port* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = sub i64 %24, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @min(i32 %30, i32 %31)
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %56, %3
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %66

36:                                               ; preds = %33
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @fsi_i2c_get_op_bytes(i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.fsi_i2c_master*, %struct.fsi_i2c_master** %10, align 8
  %40 = getelementptr inbounds %struct.fsi_i2c_master, %struct.fsi_i2c_master* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @I2C_FSI_FIFO, align 4
  %43 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %44 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.fsi_i2c_port*, %struct.fsi_i2c_port** %5, align 8
  %47 = getelementptr inbounds %struct.fsi_i2c_port, %struct.fsi_i2c_port* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @fsi_device_write(i32 %41, i32 %42, i32* %49, i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %36
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %4, align 4
  br label %67

56:                                               ; preds = %36
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = load %struct.fsi_i2c_port*, %struct.fsi_i2c_port** %5, align 8
  %60 = getelementptr inbounds %struct.fsi_i2c_port, %struct.fsi_i2c_port* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, %58
  store i64 %62, i64* %60, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %11, align 4
  %65 = sub nsw i32 %64, %63
  store i32 %65, i32* %11, align 4
  br label %33

66:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %54
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @fsi_i2c_get_op_bytes(i32) #1

declare dso_local i32 @fsi_device_write(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
