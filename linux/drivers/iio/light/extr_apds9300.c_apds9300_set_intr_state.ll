; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_apds9300.c_apds9300_set_intr_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_apds9300.c_apds9300_set_intr_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apds9300_data = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@APDS9300_INTR_ENABLE = common dso_local global i32 0, align 4
@APDS9300_THRESH_INTR = common dso_local global i32 0, align 4
@APDS9300_INTERRUPT = common dso_local global i32 0, align 4
@APDS9300_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to set interrupt state %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apds9300_data*, i32)* @apds9300_set_intr_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apds9300_set_intr_state(%struct.apds9300_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.apds9300_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.apds9300_data* %0, %struct.apds9300_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.apds9300_data*, %struct.apds9300_data** %4, align 8
  %9 = getelementptr inbounds %struct.apds9300_data, %struct.apds9300_data* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EBUSY, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %47

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* @APDS9300_INTR_ENABLE, align 4
  %20 = load i32, i32* @APDS9300_THRESH_INTR, align 4
  %21 = or i32 %19, %20
  br label %23

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi i32 [ %21, %18 ], [ 0, %22 ]
  store i32 %24, i32* %7, align 4
  %25 = load %struct.apds9300_data*, %struct.apds9300_data** %4, align 8
  %26 = getelementptr inbounds %struct.apds9300_data, %struct.apds9300_data* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* @APDS9300_INTERRUPT, align 4
  %29 = load i32, i32* @APDS9300_CMD, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_2__* %27, i32 %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %23
  %36 = load %struct.apds9300_data*, %struct.apds9300_data** %4, align 8
  %37 = getelementptr inbounds %struct.apds9300_data, %struct.apds9300_data* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %47

43:                                               ; preds = %23
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.apds9300_data*, %struct.apds9300_data** %4, align 8
  %46 = getelementptr inbounds %struct.apds9300_data, %struct.apds9300_data* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %35, %12
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
