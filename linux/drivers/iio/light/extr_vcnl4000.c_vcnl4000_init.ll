; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_vcnl4000.c_vcnl4000_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_vcnl4000.c_vcnl4000_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcnl4000_data = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@VCNL4000_PROD_REV = common dso_local global i32 0, align 4
@VCNL4000 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"wrong device id, use vcnl4000\00", align 1
@VCNL4010 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"wrong device id, use vcnl4010/4020\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcnl4000_data*)* @vcnl4000_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcnl4000_init(%struct.vcnl4000_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vcnl4000_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vcnl4000_data* %0, %struct.vcnl4000_data** %3, align 8
  %6 = load %struct.vcnl4000_data*, %struct.vcnl4000_data** %3, align 8
  %7 = getelementptr inbounds %struct.vcnl4000_data, %struct.vcnl4000_data* %6, i32 0, i32 3
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = load i32, i32* @VCNL4000_PROD_REV, align 4
  %10 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_2__* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %58

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = ashr i32 %16, 4
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %45 [
    i32 129, label %19
    i32 128, label %32
  ]

19:                                               ; preds = %15
  %20 = load %struct.vcnl4000_data*, %struct.vcnl4000_data** %3, align 8
  %21 = getelementptr inbounds %struct.vcnl4000_data, %struct.vcnl4000_data* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @VCNL4000, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load %struct.vcnl4000_data*, %struct.vcnl4000_data** %3, align 8
  %27 = getelementptr inbounds %struct.vcnl4000_data, %struct.vcnl4000_data* %26, i32 0, i32 3
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @dev_warn(i32* %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %25, %19
  br label %48

32:                                               ; preds = %15
  %33 = load %struct.vcnl4000_data*, %struct.vcnl4000_data** %3, align 8
  %34 = getelementptr inbounds %struct.vcnl4000_data, %struct.vcnl4000_data* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @VCNL4010, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load %struct.vcnl4000_data*, %struct.vcnl4000_data** %3, align 8
  %40 = getelementptr inbounds %struct.vcnl4000_data, %struct.vcnl4000_data* %39, i32 0, i32 3
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @dev_warn(i32* %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %38, %32
  br label %48

45:                                               ; preds = %15
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %58

48:                                               ; preds = %44, %31
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %49, 15
  %51 = load %struct.vcnl4000_data*, %struct.vcnl4000_data** %3, align 8
  %52 = getelementptr inbounds %struct.vcnl4000_data, %struct.vcnl4000_data* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.vcnl4000_data*, %struct.vcnl4000_data** %3, align 8
  %54 = getelementptr inbounds %struct.vcnl4000_data, %struct.vcnl4000_data* %53, i32 0, i32 1
  store i32 250000, i32* %54, align 4
  %55 = load %struct.vcnl4000_data*, %struct.vcnl4000_data** %3, align 8
  %56 = getelementptr inbounds %struct.vcnl4000_data, %struct.vcnl4000_data* %55, i32 0, i32 2
  %57 = call i32 @mutex_init(i32* %56)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %48, %45, %13
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
