; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_inkern.c_iio_channel_read_max.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_inkern.c_iio_channel_read_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_channel = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_channel*, i32*, i32*, i32*, i32)* @iio_channel_read_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iio_channel_read_max(%struct.iio_channel* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_channel*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iio_channel* %0, %struct.iio_channel** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32*, i32** %9, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store i32* %12, i32** %9, align 8
  br label %19

19:                                               ; preds = %18, %5
  %20 = load %struct.iio_channel*, %struct.iio_channel** %7, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @iio_channel_read_avail(%struct.iio_channel* %20, i32** %13, i32* %21, i32* %14, i32 %22)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  switch i32 %24, label %86 [
    i32 129, label %25
    i32 130, label %43
  ]

25:                                               ; preds = %19
  %26 = load i32*, i32** %10, align 8
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %33 [
    i32 128, label %28
  ]

28:                                               ; preds = %25
  %29 = load i32*, i32** %13, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %8, align 8
  store i32 %31, i32* %32, align 4
  br label %42

33:                                               ; preds = %25
  %34 = load i32*, i32** %13, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %8, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** %13, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 5
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %9, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %33, %28
  store i32 0, i32* %6, align 4
  br label %88

43:                                               ; preds = %19
  %44 = load i32, i32* %14, align 4
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %88

49:                                               ; preds = %43
  %50 = load i32*, i32** %10, align 8
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %82 [
    i32 128, label %52
  ]

52:                                               ; preds = %49
  %53 = load i32*, i32** %13, align 8
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %14, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %8, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %80, %52
  %61 = load i32, i32* %14, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %60
  %64 = load i32*, i32** %13, align 8
  %65 = load i32, i32* %14, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %70, align 4
  %72 = icmp sgt i32 %69, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %63
  %74 = load i32*, i32** %13, align 8
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %8, align 8
  store i32 %78, i32* %79, align 4
  br label %80

80:                                               ; preds = %73, %63
  br label %60

81:                                               ; preds = %60
  br label %85

82:                                               ; preds = %49
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %6, align 4
  br label %88

85:                                               ; preds = %81
  store i32 0, i32* %6, align 4
  br label %88

86:                                               ; preds = %19
  %87 = load i32, i32* %15, align 4
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %86, %85, %82, %46, %42
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local i32 @iio_channel_read_avail(%struct.iio_channel*, i32**, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
