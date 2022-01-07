; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis.c_adis_self_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis.c_adis_self_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adis = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Failed to initiate self test: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adis*)* @adis_self_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis_self_test(%struct.adis* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adis*, align 8
  %4 = alloca i32, align 4
  store %struct.adis* %0, %struct.adis** %3, align 8
  %5 = load %struct.adis*, %struct.adis** %3, align 8
  %6 = load %struct.adis*, %struct.adis** %3, align 8
  %7 = getelementptr inbounds %struct.adis, %struct.adis* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.adis*, %struct.adis** %3, align 8
  %12 = getelementptr inbounds %struct.adis, %struct.adis* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @adis_write_reg_16(%struct.adis* %5, i32 %10, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load %struct.adis*, %struct.adis** %3, align 8
  %21 = getelementptr inbounds %struct.adis, %struct.adis* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %52

27:                                               ; preds = %1
  %28 = load %struct.adis*, %struct.adis** %3, align 8
  %29 = getelementptr inbounds %struct.adis, %struct.adis* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @msleep(i32 %32)
  %34 = load %struct.adis*, %struct.adis** %3, align 8
  %35 = call i32 @adis_check_status(%struct.adis* %34)
  store i32 %35, i32* %4, align 4
  %36 = load %struct.adis*, %struct.adis** %3, align 8
  %37 = getelementptr inbounds %struct.adis, %struct.adis* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %27
  %43 = load %struct.adis*, %struct.adis** %3, align 8
  %44 = load %struct.adis*, %struct.adis** %3, align 8
  %45 = getelementptr inbounds %struct.adis, %struct.adis* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @adis_write_reg_16(%struct.adis* %43, i32 %48, i32 0)
  br label %50

50:                                               ; preds = %42, %27
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %19
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @adis_write_reg_16(%struct.adis*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @adis_check_status(%struct.adis*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
