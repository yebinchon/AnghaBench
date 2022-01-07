; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bma180.c_bma180_chip_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bma180.c_bma180_chip_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bma180_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BMA180_CTRL_REG0 = common dso_local global i32 0, align 4
@BMA180_DIS_WAKE_UP = common dso_local global i32 0, align 4
@BMA180_OFFSET_LSB1 = common dso_local global i32 0, align 4
@BMA180_SMP_SKIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to config the chip\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bma180_data*)* @bma180_chip_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bma180_chip_config(%struct.bma180_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bma180_data*, align 8
  %4 = alloca i32, align 4
  store %struct.bma180_data* %0, %struct.bma180_data** %3, align 8
  %5 = load %struct.bma180_data*, %struct.bma180_data** %3, align 8
  %6 = call i32 @bma180_chip_init(%struct.bma180_data* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %45

10:                                               ; preds = %1
  %11 = load %struct.bma180_data*, %struct.bma180_data** %3, align 8
  %12 = load i32, i32* @BMA180_CTRL_REG0, align 4
  %13 = load i32, i32* @BMA180_DIS_WAKE_UP, align 4
  %14 = call i32 @bma180_set_bits(%struct.bma180_data* %11, i32 %12, i32 %13, i32 1)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %45

18:                                               ; preds = %10
  %19 = load %struct.bma180_data*, %struct.bma180_data** %3, align 8
  %20 = call i32 @bma180_set_ee_writing_state(%struct.bma180_data* %19, i32 1)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %45

24:                                               ; preds = %18
  %25 = load %struct.bma180_data*, %struct.bma180_data** %3, align 8
  %26 = load i32, i32* @BMA180_OFFSET_LSB1, align 4
  %27 = load i32, i32* @BMA180_SMP_SKIP, align 4
  %28 = call i32 @bma180_set_bits(%struct.bma180_data* %25, i32 %26, i32 %27, i32 1)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %45

32:                                               ; preds = %24
  %33 = load %struct.bma180_data*, %struct.bma180_data** %3, align 8
  %34 = call i32 @bma180_set_bw(%struct.bma180_data* %33, i32 20)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %45

38:                                               ; preds = %32
  %39 = load %struct.bma180_data*, %struct.bma180_data** %3, align 8
  %40 = call i32 @bma180_set_scale(%struct.bma180_data* %39, i32 2452)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %45

44:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %52

45:                                               ; preds = %43, %37, %31, %23, %17, %9
  %46 = load %struct.bma180_data*, %struct.bma180_data** %3, align 8
  %47 = getelementptr inbounds %struct.bma180_data, %struct.bma180_data* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %45, %44
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @bma180_chip_init(%struct.bma180_data*) #1

declare dso_local i32 @bma180_set_bits(%struct.bma180_data*, i32, i32, i32) #1

declare dso_local i32 @bma180_set_ee_writing_state(%struct.bma180_data*, i32) #1

declare dso_local i32 @bma180_set_bw(%struct.bma180_data*, i32) #1

declare dso_local i32 @bma180_set_scale(%struct.bma180_data*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
