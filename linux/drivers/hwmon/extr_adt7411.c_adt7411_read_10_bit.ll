; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7411.c_adt7411_read_10_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7411.c_adt7411_read_10_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.adt7411_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32, i32)* @adt7411_read_10_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adt7411_read_10_bit(%struct.i2c_client* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.adt7411_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %13 = call %struct.adt7411_data* @i2c_get_clientdata(%struct.i2c_client* %12)
  store %struct.adt7411_data* %13, %struct.adt7411_data** %9, align 8
  %14 = load %struct.adt7411_data*, %struct.adt7411_data** %9, align 8
  %15 = getelementptr inbounds %struct.adt7411_data, %struct.adt7411_data* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %17, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %39

23:                                               ; preds = %4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %8, align 4
  %26 = ashr i32 %24, %25
  %27 = and i32 %26, 3
  store i32 %27, i32* %11, align 4
  %28 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %23
  %34 = load i32, i32* %10, align 4
  %35 = shl i32 %34, 2
  %36 = load i32, i32* %11, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %33, %23
  br label %39

39:                                               ; preds = %38, %22
  %40 = load %struct.adt7411_data*, %struct.adt7411_data** %9, align 8
  %41 = getelementptr inbounds %struct.adt7411_data, %struct.adt7411_data* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load i32, i32* %10, align 4
  ret i32 %43
}

declare dso_local %struct.adt7411_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
