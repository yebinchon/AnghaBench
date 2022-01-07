; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis.c_adis_initial_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis.c_adis_initial_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adis = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Self-test failed, trying reset.\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Second self-test failed, giving up.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adis_initial_startup(%struct.adis* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adis*, align 8
  %4 = alloca i32, align 4
  store %struct.adis* %0, %struct.adis** %3, align 8
  %5 = load %struct.adis*, %struct.adis** %3, align 8
  %6 = call i32 @adis_self_test(%struct.adis* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %35

9:                                                ; preds = %1
  %10 = load %struct.adis*, %struct.adis** %3, align 8
  %11 = getelementptr inbounds %struct.adis, %struct.adis* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = call i32 @dev_err(i32* %13, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.adis*, %struct.adis** %3, align 8
  %16 = call i32 @adis_reset(%struct.adis* %15)
  %17 = load %struct.adis*, %struct.adis** %3, align 8
  %18 = getelementptr inbounds %struct.adis, %struct.adis* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @msleep(i32 %21)
  %23 = load %struct.adis*, %struct.adis** %3, align 8
  %24 = call i32 @adis_self_test(%struct.adis* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %9
  %28 = load %struct.adis*, %struct.adis** %3, align 8
  %29 = getelementptr inbounds %struct.adis, %struct.adis* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %36

34:                                               ; preds = %9
  br label %35

35:                                               ; preds = %34, %1
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %27
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @adis_self_test(%struct.adis*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @adis_reset(%struct.adis*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
