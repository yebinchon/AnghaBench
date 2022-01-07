; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_tsys01.c_tsys01_read_prom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_tsys01.c_tsys01_read_prom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.tsys01_dev = type { i32 (i32, i64, i32*)*, i32*, i32 }

@TSYS01_PROM_WORDS_NB = common dso_local global i32 0, align 4
@TSYS01_PROM_READ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"0x%04x \00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"prom crc check error\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"PROM coefficients : %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @tsys01_read_prom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsys01_read_prom(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tsys01_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %12 = call %struct.tsys01_dev* @iio_priv(%struct.iio_dev* %11)
  store %struct.tsys01_dev* %12, %struct.tsys01_dev** %6, align 8
  %13 = load i32, i32* @TSYS01_PROM_WORDS_NB, align 4
  %14 = mul nsw i32 7, %13
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  store i8* %18, i8** %9, align 8
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %60, %1
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @TSYS01_PROM_WORDS_NB, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %63

23:                                               ; preds = %19
  %24 = load %struct.tsys01_dev*, %struct.tsys01_dev** %6, align 8
  %25 = getelementptr inbounds %struct.tsys01_dev, %struct.tsys01_dev* %24, i32 0, i32 0
  %26 = load i32 (i32, i64, i32*)*, i32 (i32, i64, i32*)** %25, align 8
  %27 = load %struct.tsys01_dev*, %struct.tsys01_dev** %6, align 8
  %28 = getelementptr inbounds %struct.tsys01_dev, %struct.tsys01_dev* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i64, i64* @TSYS01_PROM_READ, align 8
  %31 = load i32, i32* %4, align 4
  %32 = shl i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %30, %33
  %35 = load %struct.tsys01_dev*, %struct.tsys01_dev** %6, align 8
  %36 = getelementptr inbounds %struct.tsys01_dev, %struct.tsys01_dev* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = call i32 %26(i32 %29, i64 %34, i32* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %23
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %80

46:                                               ; preds = %23
  %47 = load i8*, i8** %9, align 8
  %48 = load %struct.tsys01_dev*, %struct.tsys01_dev** %6, align 8
  %49 = getelementptr inbounds %struct.tsys01_dev, %struct.tsys01_dev* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @sprintf(i8* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i8*, i8** %9, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8* %59, i8** %9, align 8
  br label %60

60:                                               ; preds = %46
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %19

63:                                               ; preds = %19
  %64 = load %struct.tsys01_dev*, %struct.tsys01_dev** %6, align 8
  %65 = getelementptr inbounds %struct.tsys01_dev, %struct.tsys01_dev* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @tsys01_crc_valid(i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %63
  %70 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %71 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %70, i32 0, i32 0
  %72 = call i32 @dev_err(i32* %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* @ENODEV, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %80

75:                                               ; preds = %63
  %76 = load i8*, i8** %9, align 8
  store i8 0, i8* %76, align 1
  %77 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %78 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %77, i32 0, i32 0
  %79 = call i32 @dev_info(i32* %78, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %18)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %80

80:                                               ; preds = %75, %69, %44
  %81 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %81)
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.tsys01_dev* @iio_priv(%struct.iio_dev*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @tsys01_crc_valid(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
