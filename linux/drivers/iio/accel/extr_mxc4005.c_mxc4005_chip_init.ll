; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mxc4005.c_mxc4005_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mxc4005.c_mxc4005_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxc4005_data = type { i32, i32 }

@MXC4005_REG_DEVICE_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"failed to read chip id\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"MXC4005 chip id %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxc4005_data*)* @mxc4005_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxc4005_chip_init(%struct.mxc4005_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mxc4005_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mxc4005_data* %0, %struct.mxc4005_data** %3, align 8
  %6 = load %struct.mxc4005_data*, %struct.mxc4005_data** %3, align 8
  %7 = getelementptr inbounds %struct.mxc4005_data, %struct.mxc4005_data* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MXC4005_REG_DEVICE_ID, align 4
  %10 = call i32 @regmap_read(i32 %8, i32 %9, i32* %5)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.mxc4005_data*, %struct.mxc4005_data** %3, align 8
  %15 = getelementptr inbounds %struct.mxc4005_data, %struct.mxc4005_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %25

19:                                               ; preds = %1
  %20 = load %struct.mxc4005_data*, %struct.mxc4005_data** %3, align 8
  %21 = getelementptr inbounds %struct.mxc4005_data, %struct.mxc4005_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @dev_dbg(i32 %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %19, %13
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
