; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_rfd77402.c_rfd77402_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_rfd77402.c_rfd77402_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfd77402_data = type { i32 }

@RFD77402_CMD_R = common dso_local global i32 0, align 4
@RFD77402_CMD_VALID = common dso_local global i32 0, align 4
@RFD77402_STATUS_R = common dso_local global i32 0, align 4
@RFD77402_STATUS_PM_MASK = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rfd77402_data*, i32, i32)* @rfd77402_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfd77402_set_state(%struct.rfd77402_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rfd77402_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rfd77402_data* %0, %struct.rfd77402_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.rfd77402_data*, %struct.rfd77402_data** %5, align 8
  %10 = getelementptr inbounds %struct.rfd77402_data, %struct.rfd77402_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @RFD77402_CMD_R, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @RFD77402_CMD_VALID, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @i2c_smbus_write_byte_data(i32 %11, i32 %12, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %4, align 4
  br label %42

21:                                               ; preds = %3
  %22 = call i32 @usleep_range(i32 10000, i32 20000)
  %23 = load %struct.rfd77402_data*, %struct.rfd77402_data** %5, align 8
  %24 = getelementptr inbounds %struct.rfd77402_data, %struct.rfd77402_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @RFD77402_STATUS_R, align 4
  %27 = call i32 @i2c_smbus_read_word_data(i32 %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %4, align 4
  br label %42

32:                                               ; preds = %21
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @RFD77402_STATUS_PM_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %42

41:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %38, %30, %19
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @i2c_smbus_read_word_data(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
