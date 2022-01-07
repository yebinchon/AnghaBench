; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ad714x-i2c.c_ad714x_i2c_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ad714x-i2c.c_ad714x_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad714x_chip = type { i8**, i32 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"I2C write error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad714x_chip*, i16, i16)* @ad714x_i2c_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad714x_i2c_write(%struct.ad714x_chip* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ad714x_chip*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca i32, align 4
  store %struct.ad714x_chip* %0, %struct.ad714x_chip** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  %10 = load %struct.ad714x_chip*, %struct.ad714x_chip** %5, align 8
  %11 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.i2c_client* @to_i2c_client(i32 %12)
  store %struct.i2c_client* %13, %struct.i2c_client** %8, align 8
  %14 = load i16, i16* %6, align 2
  %15 = call i8* @cpu_to_be16(i16 zeroext %14)
  %16 = load %struct.ad714x_chip*, %struct.ad714x_chip** %5, align 8
  %17 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %16, i32 0, i32 0
  %18 = load i8**, i8*** %17, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  store i8* %15, i8** %19, align 8
  %20 = load i16, i16* %7, align 2
  %21 = call i8* @cpu_to_be16(i16 zeroext %20)
  %22 = load %struct.ad714x_chip*, %struct.ad714x_chip** %5, align 8
  %23 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %22, i32 0, i32 0
  %24 = load i8**, i8*** %23, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  store i8* %21, i8** %25, align 8
  %26 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %27 = load %struct.ad714x_chip*, %struct.ad714x_chip** %5, align 8
  %28 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %27, i32 0, i32 0
  %29 = load i8**, i8*** %28, align 8
  %30 = bitcast i8** %29 to i32*
  %31 = call i32 @i2c_master_send(%struct.i2c_client* %26, i32* %30, i32 16)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %3
  %38 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %44

43:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %37
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.i2c_client* @to_i2c_client(i32) #1

declare dso_local i8* @cpu_to_be16(i16 zeroext) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
