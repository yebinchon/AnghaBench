; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ad714x-i2c.c_ad714x_i2c_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ad714x-i2c.c_ad714x_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad714x_chip = type { i32*, i32 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"I2C read error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad714x_chip*, i16, i16*, i64)* @ad714x_i2c_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad714x_i2c_read(%struct.ad714x_chip* %0, i16 zeroext %1, i16* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ad714x_chip*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ad714x_chip* %0, %struct.ad714x_chip** %6, align 8
  store i16 %1, i16* %7, align 2
  store i16* %2, i16** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.ad714x_chip*, %struct.ad714x_chip** %6, align 8
  %14 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.i2c_client* @to_i2c_client(i32 %15)
  store %struct.i2c_client* %16, %struct.i2c_client** %10, align 8
  %17 = load i16, i16* %7, align 2
  %18 = call i32 @cpu_to_be16(i16 zeroext %17)
  %19 = load %struct.ad714x_chip*, %struct.ad714x_chip** %6, align 8
  %20 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %18, i32* %22, align 4
  %23 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %24 = load %struct.ad714x_chip*, %struct.ad714x_chip** %6, align 8
  %25 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @i2c_master_send(%struct.i2c_client* %23, i32* %26, i32 4)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %4
  %31 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %32 = load %struct.ad714x_chip*, %struct.ad714x_chip** %6, align 8
  %33 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %9, align 8
  %36 = mul i64 %35, 4
  %37 = call i32 @i2c_master_recv(%struct.i2c_client* %31, i32* %34, i64 %36)
  store i32 %37, i32* %12, align 4
  br label %38

38:                                               ; preds = %30, %4
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 0
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %5, align 4
  br label %73

50:                                               ; preds = %38
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %69, %50
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %9, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %72

56:                                               ; preds = %51
  %57 = load %struct.ad714x_chip*, %struct.ad714x_chip** %6, align 8
  %58 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call zeroext i16 @be16_to_cpu(i32 %63)
  %65 = load i16*, i16** %8, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i16, i16* %65, i64 %67
  store i16 %64, i16* %68, align 2
  br label %69

69:                                               ; preds = %56
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %11, align 4
  br label %51

72:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %44
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local %struct.i2c_client* @to_i2c_client(i32) #1

declare dso_local i32 @cpu_to_be16(i16 zeroext) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i32*, i32) #1

declare dso_local i32 @i2c_master_recv(%struct.i2c_client*, i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local zeroext i16 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
