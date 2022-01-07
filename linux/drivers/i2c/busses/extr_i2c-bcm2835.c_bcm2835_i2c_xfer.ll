; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-bcm2835.c_bcm2835_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-bcm2835.c_bcm2835_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32 }
%struct.bcm2835_i2c_dev = type { i32, i32, i32, i32, %struct.i2c_msg* }

@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"only one read message supported, has to be last\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@BCM2835_I2C_C = common dso_local global i32 0, align 4
@BCM2835_I2C_C_CLEAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"i2c transfer timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"i2c transfer failed: %x\0A\00", align 1
@BCM2835_I2C_S_ERR = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @bcm2835_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bcm2835_i2c_dev*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %12 = call %struct.bcm2835_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter* %11)
  store %struct.bcm2835_i2c_dev* %12, %struct.bcm2835_i2c_dev** %8, align 8
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %36, %3
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* %7, align 4
  %16 = sub nsw i32 %15, 1
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %13
  %19 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i64 %21
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @I2C_M_RD, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %18
  %29 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %8, align 8
  %30 = getelementptr inbounds %struct.bcm2835_i2c_dev, %struct.bcm2835_i2c_dev* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dev_warn_once(i32 %31, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %99

35:                                               ; preds = %18
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %10, align 4
  br label %13

39:                                               ; preds = %13
  %40 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %41 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %8, align 8
  %42 = getelementptr inbounds %struct.bcm2835_i2c_dev, %struct.bcm2835_i2c_dev* %41, i32 0, i32 4
  store %struct.i2c_msg* %40, %struct.i2c_msg** %42, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %8, align 8
  %45 = getelementptr inbounds %struct.bcm2835_i2c_dev, %struct.bcm2835_i2c_dev* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %8, align 8
  %47 = getelementptr inbounds %struct.bcm2835_i2c_dev, %struct.bcm2835_i2c_dev* %46, i32 0, i32 3
  %48 = call i32 @reinit_completion(i32* %47)
  %49 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %8, align 8
  %50 = call i32 @bcm2835_i2c_start_transfer(%struct.bcm2835_i2c_dev* %49)
  %51 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %8, align 8
  %52 = getelementptr inbounds %struct.bcm2835_i2c_dev, %struct.bcm2835_i2c_dev* %51, i32 0, i32 3
  %53 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %54 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @wait_for_completion_timeout(i32* %52, i32 %55)
  store i64 %56, i64* %9, align 8
  %57 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %8, align 8
  %58 = call i32 @bcm2835_i2c_finish_transfer(%struct.bcm2835_i2c_dev* %57)
  %59 = load i64, i64* %9, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %72, label %61

61:                                               ; preds = %39
  %62 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %8, align 8
  %63 = load i32, i32* @BCM2835_I2C_C, align 4
  %64 = load i32, i32* @BCM2835_I2C_C_CLEAR, align 4
  %65 = call i32 @bcm2835_i2c_writel(%struct.bcm2835_i2c_dev* %62, i32 %63, i32 %64)
  %66 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %8, align 8
  %67 = getelementptr inbounds %struct.bcm2835_i2c_dev, %struct.bcm2835_i2c_dev* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @dev_err(i32 %68, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* @ETIMEDOUT, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %99

72:                                               ; preds = %39
  %73 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %8, align 8
  %74 = getelementptr inbounds %struct.bcm2835_i2c_dev, %struct.bcm2835_i2c_dev* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %4, align 4
  br label %99

79:                                               ; preds = %72
  %80 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %8, align 8
  %81 = getelementptr inbounds %struct.bcm2835_i2c_dev, %struct.bcm2835_i2c_dev* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %8, align 8
  %84 = getelementptr inbounds %struct.bcm2835_i2c_dev, %struct.bcm2835_i2c_dev* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @dev_dbg(i32 %82, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  %87 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %8, align 8
  %88 = getelementptr inbounds %struct.bcm2835_i2c_dev, %struct.bcm2835_i2c_dev* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @BCM2835_I2C_S_ERR, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %79
  %94 = load i32, i32* @EREMOTEIO, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %99

96:                                               ; preds = %79
  %97 = load i32, i32* @EIO, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %96, %93, %77, %61, %28
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local %struct.bcm2835_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @dev_warn_once(i32, i8*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @bcm2835_i2c_start_transfer(%struct.bcm2835_i2c_dev*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @bcm2835_i2c_finish_transfer(%struct.bcm2835_i2c_dev*) #1

declare dso_local i32 @bcm2835_i2c_writel(%struct.bcm2835_i2c_dev*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
