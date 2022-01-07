; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-hix5hd2.c_hix5hd2_i2c_xfer_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-hix5hd2.c_hix5hd2_i2c_xfer_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hix5hd2_i2c_priv = type { i32, i32, i32, %struct.TYPE_2__, i32, i32, %struct.i2c_msg*, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_msg = type { i32, i32 }

@HIX5I2C_STAT_INIT = common dso_local global i32 0, align 4
@HIX5I2C_STAT_RW_ERR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s timeout=%d\0A\00", align 1
@I2C_M_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@HIX5I2C_STAT_RW_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hix5hd2_i2c_priv*, %struct.i2c_msg*, i32)* @hix5hd2_i2c_xfer_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hix5hd2_i2c_xfer_msg(%struct.hix5hd2_i2c_priv* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.hix5hd2_i2c_priv*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.hix5hd2_i2c_priv* %0, %struct.hix5hd2_i2c_priv** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %10 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %4, align 8
  %11 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %10, i32 0, i32 6
  store %struct.i2c_msg* %9, %struct.i2c_msg** %11, align 8
  %12 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %4, align 8
  %13 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %12, i32 0, i32 8
  store i64 0, i64* %13, align 8
  %14 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %4, align 8
  %15 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %14, i32 0, i32 6
  %16 = load %struct.i2c_msg*, %struct.i2c_msg** %15, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %4, align 8
  %20 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %19, i32 0, i32 7
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %4, align 8
  %23 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %4, align 8
  %25 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %24, i32 0, i32 1
  store i32 0, i32* %25, align 4
  %26 = load i32, i32* @HIX5I2C_STAT_INIT, align 4
  %27 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %4, align 8
  %28 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %4, align 8
  %30 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %29, i32 0, i32 5
  %31 = call i32 @reinit_completion(i32* %30)
  %32 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @hix5hd2_i2c_message_start(%struct.hix5hd2_i2c_priv* %32, i32 %33)
  %35 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %4, align 8
  %36 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %35, i32 0, i32 5
  %37 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %4, align 8
  %38 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @wait_for_completion_timeout(i32* %36, i32 %40)
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %68

44:                                               ; preds = %3
  %45 = load i32, i32* @HIX5I2C_STAT_RW_ERR, align 4
  %46 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %4, align 8
  %47 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @ETIMEDOUT, align 4
  %49 = sub nsw i32 0, %48
  %50 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %4, align 8
  %51 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %4, align 8
  %53 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %56 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @I2C_M_RD, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %63 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %4, align 8
  %64 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dev_warn(i32 %54, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %62, i32 %66)
  br label %68

68:                                               ; preds = %44, %3
  %69 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %4, align 8
  %70 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %8, align 4
  %72 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %4, align 8
  %73 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @HIX5I2C_STAT_RW_SUCCESS, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %68
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %4, align 8
  %82 = call i32 @hix5hd2_i2c_wait_bus_idle(%struct.hix5hd2_i2c_priv* %81)
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %80, %77, %68
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %4, align 8
  %88 = call i32 @hix5hd2_i2c_reset(%struct.hix5hd2_i2c_priv* %87)
  br label %89

89:                                               ; preds = %86, %83
  %90 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %4, align 8
  %91 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  ret i32 %92
}

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @hix5hd2_i2c_message_start(%struct.hix5hd2_i2c_priv*, i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i8*, i32) #1

declare dso_local i32 @hix5hd2_i2c_wait_bus_idle(%struct.hix5hd2_i2c_priv*) #1

declare dso_local i32 @hix5hd2_i2c_reset(%struct.hix5hd2_i2c_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
