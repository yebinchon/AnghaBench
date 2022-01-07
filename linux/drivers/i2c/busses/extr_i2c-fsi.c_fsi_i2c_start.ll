; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-fsi.c_fsi_i2c_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-fsi.c_fsi_i2c_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_i2c_port = type { i64, %struct.fsi_i2c_master* }
%struct.fsi_i2c_master = type { i32 }
%struct.i2c_msg = type { i32, i32, i32 }

@I2C_CMD_WITH_START = common dso_local global i32 0, align 4
@I2C_CMD_WITH_ADDR = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@I2C_CMD_READ = common dso_local global i32 0, align 4
@I2C_M_STOP = common dso_local global i32 0, align 4
@I2C_CMD_WITH_STOP = common dso_local global i32 0, align 4
@I2C_CMD_ADDR = common dso_local global i32 0, align 4
@I2C_CMD_LEN = common dso_local global i32 0, align 4
@I2C_FSI_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_i2c_port*, %struct.i2c_msg*, i32)* @fsi_i2c_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_i2c_start(%struct.fsi_i2c_port* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.fsi_i2c_port*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fsi_i2c_master*, align 8
  %8 = alloca i32, align 4
  store %struct.fsi_i2c_port* %0, %struct.fsi_i2c_port** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.fsi_i2c_port*, %struct.fsi_i2c_port** %4, align 8
  %10 = getelementptr inbounds %struct.fsi_i2c_port, %struct.fsi_i2c_port* %9, i32 0, i32 1
  %11 = load %struct.fsi_i2c_master*, %struct.fsi_i2c_master** %10, align 8
  store %struct.fsi_i2c_master* %11, %struct.fsi_i2c_master** %7, align 8
  %12 = load i32, i32* @I2C_CMD_WITH_START, align 4
  %13 = load i32, i32* @I2C_CMD_WITH_ADDR, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %8, align 4
  %15 = load %struct.fsi_i2c_port*, %struct.fsi_i2c_port** %4, align 8
  %16 = getelementptr inbounds %struct.fsi_i2c_port, %struct.fsi_i2c_port* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @I2C_M_RD, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load i32, i32* @I2C_CMD_READ, align 4
  %25 = load i32, i32* %8, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %23, %3
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @I2C_M_STOP, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30, %27
  %38 = load i32, i32* @I2C_CMD_WITH_STOP, align 4
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %37, %30
  %42 = load i32, i32* @I2C_CMD_ADDR, align 4
  %43 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %44 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @FIELD_PREP(i32 %42, i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* @I2C_CMD_LEN, align 4
  %50 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %51 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @FIELD_PREP(i32 %49, i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %8, align 4
  %56 = load %struct.fsi_i2c_master*, %struct.fsi_i2c_master** %7, align 8
  %57 = getelementptr inbounds %struct.fsi_i2c_master, %struct.fsi_i2c_master* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @I2C_FSI_CMD, align 4
  %60 = call i32 @fsi_i2c_write_reg(i32 %58, i32 %59, i32* %8)
  ret i32 %60
}

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @fsi_i2c_write_reg(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
