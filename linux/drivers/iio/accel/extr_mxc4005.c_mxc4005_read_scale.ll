; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mxc4005.c_mxc4005_read_scale.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mxc4005.c_mxc4005_read_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.mxc4005_data = type { i32, i32 }

@MXC4005_REG_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to read reg_control\0A\00", align 1
@MXC4005_CONTROL_FSR_SHIFT = common dso_local global i32 0, align 4
@mxc4005_scale_table = common dso_local global %struct.TYPE_3__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxc4005_data*)* @mxc4005_read_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxc4005_read_scale(%struct.mxc4005_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mxc4005_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mxc4005_data* %0, %struct.mxc4005_data** %3, align 8
  %7 = load %struct.mxc4005_data*, %struct.mxc4005_data** %3, align 8
  %8 = getelementptr inbounds %struct.mxc4005_data, %struct.mxc4005_data* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @MXC4005_REG_CONTROL, align 4
  %11 = call i32 @regmap_read(i32 %9, i32 %10, i32* %4)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.mxc4005_data*, %struct.mxc4005_data** %3, align 8
  %16 = getelementptr inbounds %struct.mxc4005_data, %struct.mxc4005_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %41

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @MXC4005_CONTROL_FSR_SHIFT, align 4
  %23 = lshr i32 %21, %22
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mxc4005_scale_table, align 8
  %29 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %28)
  %30 = icmp sge i32 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26, %20
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %41

34:                                               ; preds = %26
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mxc4005_scale_table, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %34, %31, %14
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
