; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5696-i2c.c_ad5686_i2c_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5696-i2c.c_ad5686_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad5686_state = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32*, i32 }
%struct.i2c_client = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad5686_state*, i32, i32, i32)* @ad5686_i2c_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5686_i2c_write(%struct.ad5686_state* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ad5686_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca i32, align 4
  store %struct.ad5686_state* %0, %struct.ad5686_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.ad5686_state*, %struct.ad5686_state** %6, align 8
  %13 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.i2c_client* @to_i2c_client(i32 %14)
  store %struct.i2c_client* %15, %struct.i2c_client** %10, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @AD5686_CMD(i32 %16)
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @AD5686_ADDR(i32 %18)
  %20 = or i32 %17, %19
  %21 = load i32, i32* %9, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @cpu_to_be32(i32 %22)
  %24 = load %struct.ad5686_state*, %struct.ad5686_state** %6, align 8
  %25 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 %23, i32* %28, align 8
  %29 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %30 = load %struct.ad5686_state*, %struct.ad5686_state** %6, align 8
  %31 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = call i32 @i2c_master_send(%struct.i2c_client* %29, i32* %36, i32 3)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %4
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %5, align 4
  br label %51

42:                                               ; preds = %4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 3
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  br label %49

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %45
  %50 = phi i32 [ %47, %45 ], [ 0, %48 ]
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %49, %40
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local %struct.i2c_client* @to_i2c_client(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @AD5686_CMD(i32) #1

declare dso_local i32 @AD5686_ADDR(i32) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
