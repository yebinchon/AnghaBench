; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_isl29018.c_in_illuminance_scale_available_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_isl29018.c_in_illuminance_scale_available_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32 }
%struct.isl29018_chip = type { i64, i32 }

@isl29018_scales = common dso_local global %struct.TYPE_3__** null, align 8
@.str = private unnamed_addr constant [9 x i8] c"%d.%06d \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @in_illuminance_scale_available_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in_illuminance_scale_available_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.isl29018_chip*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %11)
  store %struct.iio_dev* %12, %struct.iio_dev** %7, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %14 = call %struct.isl29018_chip* @iio_priv(%struct.iio_dev* %13)
  store %struct.isl29018_chip* %14, %struct.isl29018_chip** %8, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.isl29018_chip*, %struct.isl29018_chip** %8, align 8
  %16 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock(i32* %16)
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %60, %3
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @isl29018_scales, align 8
  %21 = load %struct.isl29018_chip*, %struct.isl29018_chip** %8, align 8
  %22 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %20, i64 %23
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %25)
  %27 = icmp ult i32 %19, %26
  br i1 %27, label %28, label %63

28:                                               ; preds = %18
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @isl29018_scales, align 8
  %34 = load %struct.isl29018_chip*, %struct.isl29018_chip** %8, align 8
  %35 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %33, i64 %36
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @isl29018_scales, align 8
  %45 = load %struct.isl29018_chip*, %struct.isl29018_chip** %8, align 8
  %46 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %44, i64 %47
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @sprintf(i8* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %54)
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %28
  %61 = load i32, i32* %9, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %18

63:                                               ; preds = %18
  %64 = load %struct.isl29018_chip*, %struct.isl29018_chip** %8, align 8
  %65 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %64, i32 0, i32 1
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i8*, i8** %6, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  store i8 10, i8* %71, align 1
  %72 = load i32, i32* %10, align 4
  ret i32 %72
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.isl29018_chip* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i64 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
