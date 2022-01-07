; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_opt3001.c_opt3001_read_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_opt3001.c_opt3001_read_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opt3001 = type { i32, i32 }

@OPT3001_MANUFACTURER_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to read register %02x\0A\00", align 1
@OPT3001_DEVICE_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Found %c%c OPT%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opt3001*)* @opt3001_read_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opt3001_read_id(%struct.opt3001* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.opt3001*, align 8
  %4 = alloca [2 x i8], align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.opt3001* %0, %struct.opt3001** %3, align 8
  %7 = load %struct.opt3001*, %struct.opt3001** %3, align 8
  %8 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @OPT3001_MANUFACTURER_ID, align 4
  %11 = call i32 @i2c_smbus_read_word_swapped(i32 %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.opt3001*, %struct.opt3001** %3, align 8
  %16 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @OPT3001_MANUFACTURER_ID, align 4
  %19 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %55

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  %23 = ashr i32 %22, 8
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  store i8 %24, i8* %25, align 1
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, 255
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 1
  store i8 %28, i8* %29, align 1
  %30 = load %struct.opt3001*, %struct.opt3001** %3, align 8
  %31 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @OPT3001_DEVICE_ID, align 4
  %34 = call i32 @i2c_smbus_read_word_swapped(i32 %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %21
  %38 = load %struct.opt3001*, %struct.opt3001** %3, align 8
  %39 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @OPT3001_DEVICE_ID, align 4
  %42 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %55

44:                                               ; preds = %21
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %5, align 4
  %46 = load %struct.opt3001*, %struct.opt3001** %3, align 8
  %47 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @dev_info(i32 %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8 signext %50, i8 signext %52, i32 %53)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %44, %37, %14
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @i2c_smbus_read_word_swapped(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i8 signext, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
