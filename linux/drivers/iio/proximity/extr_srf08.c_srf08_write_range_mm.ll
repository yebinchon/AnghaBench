; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_srf08.c_srf08_write_range_mm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_srf08.c_srf08_write_range_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srf08_data = type { i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SRF08_WRITE_RANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"write_range - err: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.srf08_data*, i32)* @srf08_write_range_mm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srf08_write_range_mm(%struct.srf08_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.srf08_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.srf08_data* %0, %struct.srf08_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.srf08_data*, %struct.srf08_data** %4, align 8
  %11 = getelementptr inbounds %struct.srf08_data, %struct.srf08_data* %10, i32 0, i32 2
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %12, %struct.i2c_client** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = udiv i32 %13, 43
  %15 = sub i32 %14, 1
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = urem i32 %16, 43
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = icmp sgt i32 %24, 255
  br i1 %25, label %26, label %29

26:                                               ; preds = %23, %20, %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %56

29:                                               ; preds = %23
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %9, align 4
  %31 = load %struct.srf08_data*, %struct.srf08_data** %4, align 8
  %32 = getelementptr inbounds %struct.srf08_data, %struct.srf08_data* %31, i32 0, i32 1
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %35 = load i32, i32* @SRF08_WRITE_RANGE, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %34, i32 %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %29
  %41 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 0
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load %struct.srf08_data*, %struct.srf08_data** %4, align 8
  %46 = getelementptr inbounds %struct.srf08_data, %struct.srf08_data* %45, i32 0, i32 1
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %56

49:                                               ; preds = %29
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.srf08_data*, %struct.srf08_data** %4, align 8
  %52 = getelementptr inbounds %struct.srf08_data, %struct.srf08_data* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.srf08_data*, %struct.srf08_data** %4, align 8
  %54 = getelementptr inbounds %struct.srf08_data, %struct.srf08_data* %53, i32 0, i32 1
  %55 = call i32 @mutex_unlock(i32* %54)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %49, %40, %26
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
