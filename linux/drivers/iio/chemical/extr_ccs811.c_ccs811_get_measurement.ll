; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_ccs811.c_ccs811_get_measurement.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_ccs811.c_ccs811_get_measurement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccs811_data = type { i32, i32 }

@CCS811_STATUS = common dso_local global i32 0, align 4
@CCS811_STATUS_DATA_READY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@CCS811_ALG_RESULT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccs811_data*)* @ccs811_get_measurement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccs811_get_measurement(%struct.ccs811_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccs811_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ccs811_data* %0, %struct.ccs811_data** %3, align 8
  store i32 11, i32* %5, align 4
  br label %6

6:                                                ; preds = %29, %1
  %7 = load i32, i32* %5, align 4
  %8 = add nsw i32 %7, -1
  store i32 %8, i32* %5, align 4
  %9 = icmp sgt i32 %7, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %6
  %11 = load %struct.ccs811_data*, %struct.ccs811_data** %3, align 8
  %12 = getelementptr inbounds %struct.ccs811_data, %struct.ccs811_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @CCS811_STATUS, align 4
  %15 = call i32 @i2c_smbus_read_byte_data(i32 %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %48

20:                                               ; preds = %10
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @CCS811_STATUS_DATA_READY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %20
  br label %31

29:                                               ; preds = %25
  %30 = call i32 @msleep(i32 100)
  br label %6

31:                                               ; preds = %28, %6
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @CCS811_STATUS_DATA_READY, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %48

39:                                               ; preds = %31
  %40 = load %struct.ccs811_data*, %struct.ccs811_data** %3, align 8
  %41 = getelementptr inbounds %struct.ccs811_data, %struct.ccs811_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @CCS811_ALG_RESULT_DATA, align 4
  %44 = load %struct.ccs811_data*, %struct.ccs811_data** %3, align 8
  %45 = getelementptr inbounds %struct.ccs811_data, %struct.ccs811_data* %44, i32 0, i32 0
  %46 = bitcast i32* %45 to i8*
  %47 = call i32 @i2c_smbus_read_i2c_block_data(i32 %42, i32 %43, i32 8, i8* %46)
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %39, %36, %18
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @i2c_smbus_read_i2c_block_data(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
