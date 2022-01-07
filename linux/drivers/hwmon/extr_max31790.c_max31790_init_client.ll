; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max31790.c_max31790_init_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max31790.c_max31790_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.max31790_data = type { i32*, i32* }

@NR_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.max31790_data*)* @max31790_init_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max31790_init_client(%struct.i2c_client* %0, %struct.max31790_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.max31790_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.max31790_data* %1, %struct.max31790_data** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %45, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @NR_CHANNEL, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %48

12:                                               ; preds = %8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @MAX31790_REG_FAN_CONFIG(i32 %14)
  %16 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %13, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %49

21:                                               ; preds = %12
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.max31790_data*, %struct.max31790_data** %5, align 8
  %24 = getelementptr inbounds %struct.max31790_data, %struct.max31790_data* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 %22, i32* %28, align 4
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @MAX31790_REG_FAN_DYNAMICS(i32 %30)
  %32 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %29, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %21
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %49

37:                                               ; preds = %21
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.max31790_data*, %struct.max31790_data** %5, align 8
  %40 = getelementptr inbounds %struct.max31790_data, %struct.max31790_data* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %38, i32* %44, align 4
  br label %45

45:                                               ; preds = %37
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %8

48:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %35, %19
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @MAX31790_REG_FAN_CONFIG(i32) #1

declare dso_local i32 @MAX31790_REG_FAN_DYNAMICS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
