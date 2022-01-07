; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_opt3001.c_opt3001_set_int_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_opt3001.c_opt3001_set_int_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opt3001 = type { i32, i32, i32 }

@OPT3001_CONFIGURATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to read register %02x\0A\00", align 1
@OPT3001_CONFIGURATION_CT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opt3001*, i32)* @opt3001_set_int_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opt3001_set_int_time(%struct.opt3001* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.opt3001*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.opt3001* %0, %struct.opt3001** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.opt3001*, %struct.opt3001** %4, align 8
  %9 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @OPT3001_CONFIGURATION, align 4
  %12 = call i32 @i2c_smbus_read_word_swapped(i32 %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.opt3001*, %struct.opt3001** %4, align 8
  %17 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @OPT3001_CONFIGURATION, align 4
  %20 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %48

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  switch i32 %24, label %38 [
    i32 128, label %25
    i32 129, label %32
  ]

25:                                               ; preds = %22
  %26 = load i32, i32* @OPT3001_CONFIGURATION_CT, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load %struct.opt3001*, %struct.opt3001** %4, align 8
  %31 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %30, i32 0, i32 0
  store i32 128, i32* %31, align 4
  br label %41

32:                                               ; preds = %22
  %33 = load i32, i32* @OPT3001_CONFIGURATION_CT, align 4
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load %struct.opt3001*, %struct.opt3001** %4, align 8
  %37 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %36, i32 0, i32 0
  store i32 129, i32* %37, align 4
  br label %41

38:                                               ; preds = %22
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %48

41:                                               ; preds = %32, %25
  %42 = load %struct.opt3001*, %struct.opt3001** %4, align 8
  %43 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @OPT3001_CONFIGURATION, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @i2c_smbus_write_word_swapped(i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %41, %38, %15
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @i2c_smbus_read_word_swapped(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @i2c_smbus_write_word_swapped(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
