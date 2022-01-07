; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/amplifiers/extr_ad8366.c_ad8366_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/amplifiers/extr_ad8366.c_ad8366_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, i32 }
%struct.ad8366_state = type { i32, i8*, i32 }

@.str = private unnamed_addr constant [18 x i8] c"write failed (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i8, i8)* @ad8366_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad8366_write(%struct.iio_dev* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %struct.ad8366_state*, align 8
  %8 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %9 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %10 = call %struct.ad8366_state* @iio_priv(%struct.iio_dev* %9)
  store %struct.ad8366_state* %10, %struct.ad8366_state** %7, align 8
  %11 = load %struct.ad8366_state*, %struct.ad8366_state** %7, align 8
  %12 = getelementptr inbounds %struct.ad8366_state, %struct.ad8366_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %63 [
    i32 130, label %14
    i32 129, label %45
    i32 128, label %54
  ]

14:                                               ; preds = %3
  %15 = load i8, i8* %5, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, 63
  %18 = trunc i32 %17 to i8
  %19 = call zeroext i8 @bitrev8(i8 zeroext %18)
  store i8 %19, i8* %5, align 1
  %20 = load i8, i8* %6, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, 63
  %23 = trunc i32 %22 to i8
  %24 = call zeroext i8 @bitrev8(i8 zeroext %23)
  store i8 %24, i8* %6, align 1
  %25 = load i8, i8* %6, align 1
  %26 = zext i8 %25 to i32
  %27 = ashr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = load %struct.ad8366_state*, %struct.ad8366_state** %7, align 8
  %30 = getelementptr inbounds %struct.ad8366_state, %struct.ad8366_state* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  store i8 %28, i8* %32, align 1
  %33 = load i8, i8* %6, align 1
  %34 = zext i8 %33 to i32
  %35 = shl i32 %34, 4
  %36 = load i8, i8* %5, align 1
  %37 = zext i8 %36 to i32
  %38 = ashr i32 %37, 2
  %39 = or i32 %35, %38
  %40 = trunc i32 %39 to i8
  %41 = load %struct.ad8366_state*, %struct.ad8366_state** %7, align 8
  %42 = getelementptr inbounds %struct.ad8366_state, %struct.ad8366_state* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  store i8 %40, i8* %44, align 1
  br label %63

45:                                               ; preds = %3
  %46 = load i8, i8* %5, align 1
  %47 = zext i8 %46 to i32
  %48 = and i32 %47, 31
  %49 = trunc i32 %48 to i8
  %50 = load %struct.ad8366_state*, %struct.ad8366_state** %7, align 8
  %51 = getelementptr inbounds %struct.ad8366_state, %struct.ad8366_state* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  store i8 %49, i8* %53, align 1
  br label %63

54:                                               ; preds = %3
  %55 = load i8, i8* %5, align 1
  %56 = zext i8 %55 to i32
  %57 = and i32 %56, 63
  %58 = trunc i32 %57 to i8
  %59 = load %struct.ad8366_state*, %struct.ad8366_state** %7, align 8
  %60 = getelementptr inbounds %struct.ad8366_state, %struct.ad8366_state* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  store i8 %58, i8* %62, align 1
  br label %63

63:                                               ; preds = %3, %54, %45, %14
  %64 = load %struct.ad8366_state*, %struct.ad8366_state** %7, align 8
  %65 = getelementptr inbounds %struct.ad8366_state, %struct.ad8366_state* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.ad8366_state*, %struct.ad8366_state** %7, align 8
  %68 = getelementptr inbounds %struct.ad8366_state, %struct.ad8366_state* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %71 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @spi_write(i32 %66, i8* %69, i32 %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %63
  %77 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %78 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %77, i32 0, i32 0
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @dev_err(i32* %78, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %76, %63
  %82 = load i32, i32* %8, align 4
  ret i32 %82
}

declare dso_local %struct.ad8366_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local zeroext i8 @bitrev8(i8 zeroext) #1

declare dso_local i32 @spi_write(i32, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
