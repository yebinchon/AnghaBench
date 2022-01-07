; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_zpa2326.c_zpa2326_wait_oneshot_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_zpa2326.c_zpa2326_wait_oneshot_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.zpa2326_private = type { i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"waiting for one shot completion interrupt\00", align 1
@ZPA2326_CONVERSION_JIFFIES = common dso_local global i32 0, align 4
@ZPA2326_INT_SOURCE_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"no one shot interrupt occurred (%ld)\00", align 1
@ETIME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"wait for one shot interrupt cancelled\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.zpa2326_private*)* @zpa2326_wait_oneshot_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zpa2326_wait_oneshot_completion(%struct.iio_dev* %0, %struct.zpa2326_private* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.zpa2326_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store %struct.zpa2326_private* %1, %struct.zpa2326_private** %5, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %9 = call i32 @zpa2326_dbg(%struct.iio_dev* %8, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.zpa2326_private*, %struct.zpa2326_private** %5, align 8
  %11 = getelementptr inbounds %struct.zpa2326_private, %struct.zpa2326_private* %10, i32 0, i32 2
  %12 = load i32, i32* @ZPA2326_CONVERSION_JIFFIES, align 4
  %13 = call i64 @wait_for_completion_interruptible_timeout(i32* %11, i32 %12)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.zpa2326_private*, %struct.zpa2326_private** %5, align 8
  %18 = getelementptr inbounds %struct.zpa2326_private, %struct.zpa2326_private* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %3, align 4
  br label %39

20:                                               ; preds = %2
  %21 = load %struct.zpa2326_private*, %struct.zpa2326_private** %5, align 8
  %22 = getelementptr inbounds %struct.zpa2326_private, %struct.zpa2326_private* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ZPA2326_INT_SOURCE_REG, align 4
  %25 = call i32 @regmap_read(i32 %23, i32 %24, i32* %6)
  %26 = load i64, i64* %7, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %20
  %29 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 (%struct.iio_dev*, i8*, ...) @zpa2326_warn(%struct.iio_dev* %29, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %30)
  %32 = load i32, i32* @ETIME, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %39

34:                                               ; preds = %20
  %35 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %36 = call i32 (%struct.iio_dev*, i8*, ...) @zpa2326_warn(%struct.iio_dev* %35, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* @ERESTARTSYS, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %34, %28, %16
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @zpa2326_dbg(%struct.iio_dev*, i8*) #1

declare dso_local i64 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @zpa2326_warn(%struct.iio_dev*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
