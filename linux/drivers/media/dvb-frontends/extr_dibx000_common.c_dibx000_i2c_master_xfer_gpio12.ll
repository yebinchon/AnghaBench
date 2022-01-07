; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dibx000_common.c_dibx000_i2c_master_xfer_gpio12.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dibx000_common.c_dibx000_i2c_master_xfer_gpio12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32 }
%struct.dibx000_i2c_master = type { i32 }

@DIBX000_I2C_INTERFACE_GPIO_1_2 = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @dibx000_i2c_master_xfer_gpio12 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dibx000_i2c_master_xfer_gpio12(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dibx000_i2c_master*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %12 = call %struct.dibx000_i2c_master* @i2c_get_adapdata(%struct.i2c_adapter* %11)
  store %struct.dibx000_i2c_master* %12, %struct.dibx000_i2c_master** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %8, align 8
  %14 = load i32, i32* @DIBX000_I2C_INTERFACE_GPIO_1_2, align 4
  %15 = call i32 @dibx000_i2c_select_interface(%struct.dibx000_i2c_master* %13, i32 %14)
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %53, %3
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %56

20:                                               ; preds = %16
  %21 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i64 %23
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @I2C_M_RD, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %20
  %31 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %8, align 8
  %32 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %32, i64 %34
  %36 = call i32 @dibx000_master_i2c_read(%struct.dibx000_i2c_master* %31, %struct.i2c_msg* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %58

40:                                               ; preds = %30
  br label %52

41:                                               ; preds = %20
  %42 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %8, align 8
  %43 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %43, i64 %45
  %47 = call i32 @dibx000_master_i2c_write(%struct.dibx000_i2c_master* %42, %struct.i2c_msg* %46, i32 1)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %58

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51, %40
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %16

56:                                               ; preds = %16
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %56, %50, %39
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.dibx000_i2c_master* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @dibx000_i2c_select_interface(%struct.dibx000_i2c_master*, i32) #1

declare dso_local i32 @dibx000_master_i2c_read(%struct.dibx000_i2c_master*, %struct.i2c_msg*) #1

declare dso_local i32 @dibx000_master_i2c_write(%struct.dibx000_i2c_master*, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
