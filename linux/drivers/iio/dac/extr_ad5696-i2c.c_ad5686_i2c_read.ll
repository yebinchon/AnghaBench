; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5696-i2c.c_ad5686_i2c_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5696-i2c.c_ad5686_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad5686_state = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8*, i32, i32 }
%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_msg = type { i32, i32, i8*, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@AD5686_CMD_NOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad5686_state*, i32)* @ad5686_i2c_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5686_i2c_read(%struct.ad5686_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ad5686_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca [2 x %struct.i2c_msg], align 16
  %8 = alloca i32, align 4
  store %struct.ad5686_state* %0, %struct.ad5686_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ad5686_state*, %struct.ad5686_state** %4, align 8
  %10 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.i2c_client* @to_i2c_client(i32 %11)
  store %struct.i2c_client* %12, %struct.i2c_client** %6, align 8
  %13 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 0
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 0
  %15 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %14, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 1
  store i32 3, i32* %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 2
  %20 = load %struct.ad5686_state*, %struct.ad5686_state** %4, align 8
  %21 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  store i8* %26, i8** %19, align 8
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 3
  %28 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %27, align 8
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i64 1
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %31, i32 0, i32 0
  %33 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @I2C_M_RD, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %32, align 8
  %38 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %31, i32 0, i32 1
  store i32 2, i32* %38, align 4
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %31, i32 0, i32 2
  %40 = load %struct.ad5686_state*, %struct.ad5686_state** %4, align 8
  %41 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = bitcast i32* %44 to i8*
  store i8* %45, i8** %39, align 8
  %46 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %31, i32 0, i32 3
  %47 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %46, align 8
  %50 = load i32, i32* @AD5686_CMD_NOOP, align 4
  %51 = call i32 @AD5686_CMD(i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @AD5686_ADDR(i32 %52)
  %54 = or i32 %51, %53
  %55 = call i32 @cpu_to_be32(i32 %54)
  %56 = load %struct.ad5686_state*, %struct.ad5686_state** %4, align 8
  %57 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  store i32 %55, i32* %60, align 4
  %61 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %62 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 0
  %65 = call i32 @i2c_transfer(i32 %63, %struct.i2c_msg* %64, i32 2)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %2
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %3, align 4
  br label %78

70:                                               ; preds = %2
  %71 = load %struct.ad5686_state*, %struct.ad5686_state** %4, align 8
  %72 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @be16_to_cpu(i32 %76)
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %70, %68
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.i2c_client* @to_i2c_client(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @AD5686_CMD(i32) #1

declare dso_local i32 @AD5686_ADDR(i32) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
