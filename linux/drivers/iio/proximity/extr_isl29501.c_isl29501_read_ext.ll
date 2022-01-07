; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_isl29501.c_isl29501_read_ext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_isl29501.c_isl29501_read_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.isl29501_private = type { i32 }

@REG_PHASE_EXP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i64, %struct.iio_chan_spec*, i8*)* @isl29501_read_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl29501_read_ext(%struct.iio_dev* %0, i64 %1, %struct.iio_chan_spec* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.isl29501_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.iio_chan_spec* %2, %struct.iio_chan_spec** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %18 = call %struct.isl29501_private* @iio_priv(%struct.iio_dev* %17)
  store %struct.isl29501_private* %18, %struct.isl29501_private** %10, align 8
  %19 = load i64, i64* %7, align 8
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  switch i32 %21, label %52 [
    i32 129, label %22
    i32 128, label %22
    i32 131, label %32
    i32 130, label %32
    i32 133, label %32
    i32 132, label %32
  ]

22:                                               ; preds = %4, %4
  %23 = load %struct.isl29501_private*, %struct.isl29501_private** %10, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @isl29501_register_read(%struct.isl29501_private* %23, i32 %24, i32* %14)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %5, align 4
  br label %59

30:                                               ; preds = %22
  %31 = load i32, i32* %14, align 4
  store i32 %31, i32* %13, align 4
  br label %55

32:                                               ; preds = %4, %4, %4, %4
  %33 = load %struct.isl29501_private*, %struct.isl29501_private** %10, align 8
  %34 = load i32, i32* @REG_PHASE_EXP, align 4
  %35 = call i32 @isl29501_register_read(%struct.isl29501_private* %33, i32 %34, i32* %16)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %5, align 4
  br label %59

40:                                               ; preds = %32
  %41 = load %struct.isl29501_private*, %struct.isl29501_private** %10, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @isl29501_register_read(%struct.isl29501_private* %41, i32 %42, i32* %15)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %5, align 4
  br label %59

48:                                               ; preds = %40
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* %16, align 4
  %51 = shl i32 %49, %50
  store i32 %51, i32* %13, align 4
  br label %55

52:                                               ; preds = %4
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %59

55:                                               ; preds = %48, %30
  %56 = load i8*, i8** %9, align 8
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @sprintf(i8* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %57)
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %55, %52, %46, %38, %28
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local %struct.isl29501_private* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @isl29501_register_read(%struct.isl29501_private*, i32, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
