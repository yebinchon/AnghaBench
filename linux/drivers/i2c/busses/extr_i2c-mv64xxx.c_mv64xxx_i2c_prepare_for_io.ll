; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mv64xxx.c_mv64xxx_i2c_prepare_for_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mv64xxx.c_mv64xxx_i2c_prepare_for_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv64xxx_i2c_data = type { i32, i32, i32 }
%struct.i2c_msg = type { i32, i64 }

@MV64XXX_I2C_REG_CONTROL_ACK = common dso_local global i32 0, align 4
@MV64XXX_I2C_REG_CONTROL_INTEN = common dso_local global i32 0, align 4
@MV64XXX_I2C_REG_CONTROL_TWSIEN = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@I2C_M_TEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv64xxx_i2c_data*, %struct.i2c_msg*)* @mv64xxx_i2c_prepare_for_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv64xxx_i2c_prepare_for_io(%struct.mv64xxx_i2c_data* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca %struct.mv64xxx_i2c_data*, align 8
  %4 = alloca %struct.i2c_msg*, align 8
  %5 = alloca i32, align 4
  store %struct.mv64xxx_i2c_data* %0, %struct.mv64xxx_i2c_data** %3, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @MV64XXX_I2C_REG_CONTROL_ACK, align 4
  %7 = load i32, i32* @MV64XXX_I2C_REG_CONTROL_INTEN, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @MV64XXX_I2C_REG_CONTROL_TWSIEN, align 4
  %10 = or i32 %8, %9
  %11 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %12 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @I2C_M_RD, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 1, i32* %5, align 4
  br label %20

20:                                               ; preds = %19, %2
  %21 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @I2C_M_TEN, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %20
  %28 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = and i32 %31, 768
  %33 = ashr i32 %32, 7
  %34 = or i32 240, %33
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %38 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %40 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = and i32 %42, 255
  %44 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %45 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  br label %58

46:                                               ; preds = %20
  %47 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %48 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @MV64XXX_I2C_ADDR_ADDR(i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %55 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %57 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %56, i32 0, i32 2
  store i32 0, i32* %57, align 4
  br label %58

58:                                               ; preds = %46, %27
  ret void
}

declare dso_local i32 @MV64XXX_I2C_ADDR_ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
