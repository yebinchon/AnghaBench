; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-jz4780.c_jz4780_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-jz4780.c_jz4780_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.jz4780_i2c* }
%struct.jz4780_i2c = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_msg = type { i32, i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"I2C prepare failed\0A\00", align 1
@JZ4780_I2C_TAR = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @jz4780_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.jz4780_i2c*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @EIO, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %12, i32 0, i32 0
  %14 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %13, align 8
  store %struct.jz4780_i2c* %14, %struct.jz4780_i2c** %9, align 8
  %15 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %9, align 8
  %16 = call i32 @jz4780_i2c_prepare(%struct.jz4780_i2c* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %9, align 8
  %21 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %88

24:                                               ; preds = %3
  %25 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %9, align 8
  %29 = load i32, i32* @JZ4780_I2C_TAR, align 4
  %30 = call i32 @jz4780_i2c_readw(%struct.jz4780_i2c* %28, i32 %29)
  %31 = icmp ne i32 %27, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %24
  %33 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %9, align 8
  %34 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @jz4780_i2c_set_target(%struct.jz4780_i2c* %33, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %88

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %24
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %81, %42
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %86

47:                                               ; preds = %43
  %48 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %49 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @I2C_M_RD, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %47
  %55 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %9, align 8
  %56 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %57 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %60 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @jz4780_i2c_xfer_read(%struct.jz4780_i2c* %55, i32 %58, i32 %61, i32 %62, i32 %63)
  store i32 %64, i32* %8, align 4
  br label %76

65:                                               ; preds = %47
  %66 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %9, align 8
  %67 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %68 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %71 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @jz4780_i2c_xfer_write(%struct.jz4780_i2c* %66, i32 %69, i32 %72, i32 %73, i32 %74)
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %65, %54
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %88

80:                                               ; preds = %76
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  %84 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %85 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %84, i32 1
  store %struct.i2c_msg* %85, %struct.i2c_msg** %5, align 8
  br label %43

86:                                               ; preds = %43
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %86, %79, %40, %19
  %89 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %9, align 8
  %90 = call i32 @jz4780_i2c_cleanup(%struct.jz4780_i2c* %89)
  %91 = load i32, i32* %8, align 4
  ret i32 %91
}

declare dso_local i32 @jz4780_i2c_prepare(%struct.jz4780_i2c*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @jz4780_i2c_readw(%struct.jz4780_i2c*, i32) #1

declare dso_local i32 @jz4780_i2c_set_target(%struct.jz4780_i2c*, i32) #1

declare dso_local i32 @jz4780_i2c_xfer_read(%struct.jz4780_i2c*, i32, i32, i32, i32) #1

declare dso_local i32 @jz4780_i2c_xfer_write(%struct.jz4780_i2c*, i32, i32, i32, i32) #1

declare dso_local i32 @jz4780_i2c_cleanup(%struct.jz4780_i2c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
