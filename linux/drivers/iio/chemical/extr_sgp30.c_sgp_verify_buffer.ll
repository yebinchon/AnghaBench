; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_sgp30.c_sgp_verify_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_sgp30.c_sgp_verify_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sgp_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%union.sgp_reading = type { i32 }

@SGP_WORD_LEN = common dso_local global i64 0, align 8
@SGP_CRC8_LEN = common dso_local global i64 0, align 8
@sgp_crc8_table = common dso_local global i32 0, align 4
@SGP_CRC8_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"CRC error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sgp_data*, %union.sgp_reading*, i64)* @sgp_verify_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sgp_verify_buffer(%struct.sgp_data* %0, %union.sgp_reading* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sgp_data*, align 8
  %6 = alloca %union.sgp_reading*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.sgp_data* %0, %struct.sgp_data** %5, align 8
  store %union.sgp_reading* %1, %union.sgp_reading** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @SGP_WORD_LEN, align 8
  %14 = load i64, i64* @SGP_CRC8_LEN, align 8
  %15 = add i64 %13, %14
  %16 = mul i64 %12, %15
  store i64 %16, i64* %8, align 8
  %17 = load %union.sgp_reading*, %union.sgp_reading** %6, align 8
  %18 = bitcast %union.sgp_reading* %17 to i32*
  store i32* %18, i32** %11, align 8
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %51, %3
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* %8, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %59

24:                                               ; preds = %19
  %25 = load i32, i32* @sgp_crc8_table, align 4
  %26 = load i32*, i32** %11, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i64, i64* @SGP_WORD_LEN, align 8
  %31 = load i32, i32* @SGP_CRC8_INIT, align 4
  %32 = call i32 @crc8(i32 %25, i32* %29, i64 %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* @SGP_WORD_LEN, align 8
  %38 = add i64 %36, %37
  %39 = getelementptr inbounds i32, i32* %34, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %33, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %24
  %43 = load %struct.sgp_data*, %struct.sgp_data** %5, align 8
  %44 = getelementptr inbounds %struct.sgp_data, %struct.sgp_data* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %60

50:                                               ; preds = %24
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* @SGP_WORD_LEN, align 8
  %53 = load i64, i64* @SGP_CRC8_LEN, align 8
  %54 = add i64 %52, %53
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = add i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %9, align 4
  br label %19

59:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %42
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @crc8(i32, i32*, i64, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
