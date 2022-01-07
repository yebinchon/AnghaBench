; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2563.c_tsl2563_adjust_gainlevel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2563.c_tsl2563_adjust_gainlevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsl2563_chip = type { %struct.TYPE_2__*, %struct.i2c_client* }
%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.i2c_client = type { i32 }

@TSL2563_CMD = common dso_local global i32 0, align 4
@TSL2563_REG_TIMING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tsl2563_chip*, i64)* @tsl2563_adjust_gainlevel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsl2563_adjust_gainlevel(%struct.tsl2563_chip* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tsl2563_chip*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.i2c_client*, align 8
  store %struct.tsl2563_chip* %0, %struct.tsl2563_chip** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %4, align 8
  %8 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %7, i32 0, i32 1
  %9 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  store %struct.i2c_client* %9, %struct.i2c_client** %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %4, align 8
  %12 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %10, %15
  br i1 %16, label %25, label %17

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %4, align 8
  %20 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %18, %23
  br i1 %24, label %25, label %59

25:                                               ; preds = %17, %2
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %4, align 8
  %28 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %26, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %4, align 8
  %35 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 1
  store %struct.TYPE_2__* %37, %struct.TYPE_2__** %35, align 8
  br label %43

38:                                               ; preds = %25
  %39 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %4, align 8
  %40 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 -1
  store %struct.TYPE_2__* %42, %struct.TYPE_2__** %40, align 8
  br label %43

43:                                               ; preds = %38, %33
  %44 = phi %struct.TYPE_2__* [ %36, %33 ], [ %41, %38 ]
  %45 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %46 = load i32, i32* @TSL2563_CMD, align 4
  %47 = load i32, i32* @TSL2563_REG_TIMING, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %4, align 8
  %50 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %45, i32 %48, i32 %53)
  %55 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %4, align 8
  %56 = call i32 @tsl2563_wait_adc(%struct.tsl2563_chip* %55)
  %57 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %4, align 8
  %58 = call i32 @tsl2563_wait_adc(%struct.tsl2563_chip* %57)
  store i32 1, i32* %3, align 4
  br label %60

59:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %43
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @tsl2563_wait_adc(%struct.tsl2563_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
