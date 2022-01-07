; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_mpl3115.c_mpl3115_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_mpl3115.c_mpl3115_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpl3115_data = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@MPL3115_CTRL_REG1 = common dso_local global i32 0, align 4
@MPL3115_CTRL_OST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"data not ready\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpl3115_data*)* @mpl3115_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpl3115_request(%struct.mpl3115_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mpl3115_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mpl3115_data* %0, %struct.mpl3115_data** %3, align 8
  store i32 15, i32* %5, align 4
  %6 = load %struct.mpl3115_data*, %struct.mpl3115_data** %3, align 8
  %7 = getelementptr inbounds %struct.mpl3115_data, %struct.mpl3115_data* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = load i32, i32* @MPL3115_CTRL_REG1, align 4
  %10 = load %struct.mpl3115_data*, %struct.mpl3115_data** %3, align 8
  %11 = getelementptr inbounds %struct.mpl3115_data, %struct.mpl3115_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @MPL3115_CTRL_OST, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_3__* %8, i32 %9, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %55

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %41, %20
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %5, align 4
  %24 = icmp sgt i32 %22, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %21
  %26 = load %struct.mpl3115_data*, %struct.mpl3115_data** %3, align 8
  %27 = getelementptr inbounds %struct.mpl3115_data, %struct.mpl3115_data* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load i32, i32* @MPL3115_CTRL_REG1, align 4
  %30 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_3__* %28, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %55

35:                                               ; preds = %25
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @MPL3115_CTRL_OST, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %43

41:                                               ; preds = %35
  %42 = call i32 @msleep(i32 20)
  br label %21

43:                                               ; preds = %40, %21
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load %struct.mpl3115_data*, %struct.mpl3115_data** %3, align 8
  %48 = getelementptr inbounds %struct.mpl3115_data, %struct.mpl3115_data* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %55

54:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %46, %33, %18
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

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
