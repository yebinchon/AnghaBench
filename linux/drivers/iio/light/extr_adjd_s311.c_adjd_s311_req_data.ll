; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_adjd_s311.c_adjd_s311_req_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_adjd_s311.c_adjd_s311_req_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.adjd_s311_data = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ADJD_S311_CTRL = common dso_local global i32 0, align 4
@ADJD_S311_CTRL_GSSR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"adjd_s311_req_data() failed, data not ready\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @adjd_s311_req_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adjd_s311_req_data(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.adjd_s311_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %8 = call %struct.adjd_s311_data* @iio_priv(%struct.iio_dev* %7)
  store %struct.adjd_s311_data* %8, %struct.adjd_s311_data** %4, align 8
  store i32 10, i32* %5, align 4
  %9 = load %struct.adjd_s311_data*, %struct.adjd_s311_data** %4, align 8
  %10 = getelementptr inbounds %struct.adjd_s311_data, %struct.adjd_s311_data* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = load i32, i32* @ADJD_S311_CTRL, align 4
  %13 = load i32, i32* @ADJD_S311_CTRL_GSSR, align 4
  %14 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_3__* %11, i32 %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %54

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %40, %19
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %5, align 4
  %23 = icmp ne i32 %21, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %20
  %25 = load %struct.adjd_s311_data*, %struct.adjd_s311_data** %4, align 8
  %26 = getelementptr inbounds %struct.adjd_s311_data, %struct.adjd_s311_data* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load i32, i32* @ADJD_S311_CTRL, align 4
  %29 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_3__* %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %54

34:                                               ; preds = %24
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @ADJD_S311_CTRL_GSSR, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %42

40:                                               ; preds = %34
  %41 = call i32 @msleep(i32 20)
  br label %20

42:                                               ; preds = %39, %20
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load %struct.adjd_s311_data*, %struct.adjd_s311_data** %4, align 8
  %47 = getelementptr inbounds %struct.adjd_s311_data, %struct.adjd_s311_data* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %54

53:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %45, %32, %17
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.adjd_s311_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
