; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-fsi.c_fsi_i2c_reset_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-fsi.c_fsi_i2c_reset_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_i2c_master = type { i32 }
%struct.fsi_i2c_port = type { i32 }

@I2C_FSI_RESET_ERR = common dso_local global i32 0, align 4
@I2C_RESET_SLEEP_MIN_US = common dso_local global i32 0, align 4
@I2C_RESET_SLEEP_MAX_US = common dso_local global i32 0, align 4
@I2C_FSI_STAT = common dso_local global i32 0, align 4
@I2C_STAT_CMD_COMP = common dso_local global i32 0, align 4
@I2C_FSI_RESET_I2C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_i2c_master*, %struct.fsi_i2c_port*)* @fsi_i2c_reset_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_i2c_reset_bus(%struct.fsi_i2c_master* %0, %struct.fsi_i2c_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsi_i2c_master*, align 8
  %5 = alloca %struct.fsi_i2c_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fsi_i2c_master* %0, %struct.fsi_i2c_master** %4, align 8
  store %struct.fsi_i2c_port* %1, %struct.fsi_i2c_port** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.fsi_i2c_port*, %struct.fsi_i2c_port** %5, align 8
  %10 = getelementptr inbounds %struct.fsi_i2c_port, %struct.fsi_i2c_port* %9, i32 0, i32 0
  %11 = call i32 @i2c_recover_bus(i32* %10)
  %12 = load %struct.fsi_i2c_master*, %struct.fsi_i2c_master** %4, align 8
  %13 = getelementptr inbounds %struct.fsi_i2c_master, %struct.fsi_i2c_master* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @I2C_FSI_RESET_ERR, align 4
  %16 = call i32 @fsi_i2c_write_reg(i32 %14, i32 %15, i32* %8)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %53

21:                                               ; preds = %2
  %22 = load i32, i32* @I2C_RESET_SLEEP_MIN_US, align 4
  %23 = load i32, i32* @I2C_RESET_SLEEP_MAX_US, align 4
  %24 = call i32 @usleep_range(i32 %22, i32 %23)
  %25 = load %struct.fsi_i2c_master*, %struct.fsi_i2c_master** %4, align 8
  %26 = getelementptr inbounds %struct.fsi_i2c_master, %struct.fsi_i2c_master* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @I2C_FSI_STAT, align 4
  %29 = call i32 @fsi_i2c_read_reg(i32 %27, i32 %28, i32* %7)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %53

34:                                               ; preds = %21
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @I2C_STAT_CMD_COMP, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %53

40:                                               ; preds = %34
  %41 = load %struct.fsi_i2c_master*, %struct.fsi_i2c_master** %4, align 8
  %42 = getelementptr inbounds %struct.fsi_i2c_master, %struct.fsi_i2c_master* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @I2C_FSI_RESET_I2C, align 4
  %45 = call i32 @fsi_i2c_write_reg(i32 %43, i32 %44, i32* %8)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %53

50:                                               ; preds = %40
  %51 = load %struct.fsi_i2c_master*, %struct.fsi_i2c_master** %4, align 8
  %52 = call i32 @fsi_i2c_dev_init(%struct.fsi_i2c_master* %51)
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %50, %48, %39, %32, %19
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @i2c_recover_bus(i32*) #1

declare dso_local i32 @fsi_i2c_write_reg(i32, i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @fsi_i2c_read_reg(i32, i32, i32*) #1

declare dso_local i32 @fsi_i2c_dev_init(%struct.fsi_i2c_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
