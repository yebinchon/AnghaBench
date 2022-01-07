; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_stk8312.c_stk8312_otp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_stk8312.c_stk8312_otp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stk8312_data = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@STK8312_REG_OTPADDR = common dso_local global i32 0, align 4
@STK8312_REG_OTPCTRL = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@STK8312_REG_OTPDATA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@STK8312_REG_AFECTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to initialize sensor\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stk8312_data*)* @stk8312_otp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk8312_otp_init(%struct.stk8312_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stk8312_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  store %struct.stk8312_data* %0, %struct.stk8312_data** %3, align 8
  store i32 10, i32* %5, align 4
  %7 = load %struct.stk8312_data*, %struct.stk8312_data** %3, align 8
  %8 = getelementptr inbounds %struct.stk8312_data, %struct.stk8312_data* %7, i32 0, i32 0
  %9 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  store %struct.i2c_client* %9, %struct.i2c_client** %6, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %11 = load i32, i32* @STK8312_REG_OTPADDR, align 4
  %12 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %10, i32 %11, i32 112)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %76

16:                                               ; preds = %1
  %17 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %18 = load i32, i32* @STK8312_REG_OTPCTRL, align 4
  %19 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %17, i32 %18, i32 2)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %76

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %43, %23
  %25 = call i32 @usleep_range(i32 1000, i32 5000)
  %26 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %27 = load i32, i32* @STK8312_REG_OTPCTRL, align 4
  %28 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %76

32:                                               ; preds = %24
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @BIT(i32 7)
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  %42 = icmp sgt i32 %41, 0
  br label %43

43:                                               ; preds = %40, %35
  %44 = phi i1 [ false, %35 ], [ %42, %40 ]
  br i1 %44, label %24, label %45

45:                                               ; preds = %43
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* @ETIMEDOUT, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %76

51:                                               ; preds = %45
  %52 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %53 = load i32, i32* @STK8312_REG_OTPDATA, align 4
  %54 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %52, i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %57, %51
  %61 = load i32, i32* %4, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %76

64:                                               ; preds = %60
  %65 = load %struct.stk8312_data*, %struct.stk8312_data** %3, align 8
  %66 = getelementptr inbounds %struct.stk8312_data, %struct.stk8312_data* %65, i32 0, i32 0
  %67 = load %struct.i2c_client*, %struct.i2c_client** %66, align 8
  %68 = load i32, i32* @STK8312_REG_AFECTRL, align 4
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %67, i32 %68, i32 %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %76

74:                                               ; preds = %64
  %75 = call i32 @msleep(i32 150)
  store i32 0, i32* %2, align 4
  br label %81

76:                                               ; preds = %73, %63, %48, %31, %22, %15
  %77 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %78 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %77, i32 0, i32 0
  %79 = call i32 @dev_err(i32* %78, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %80 = load i32, i32* %4, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %76, %74
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
