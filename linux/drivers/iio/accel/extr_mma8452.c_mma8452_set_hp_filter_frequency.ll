; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma8452.c_mma8452_set_hp_filter_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma8452.c_mma8452_set_hp_filter_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mma8452_data = type { i32 }

@MMA8452_HP_FILTER_CUTOFF = common dso_local global i32 0, align 4
@MMA8452_HP_FILTER_CUTOFF_SEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mma8452_data*, i32, i32)* @mma8452_set_hp_filter_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mma8452_set_hp_filter_frequency(%struct.mma8452_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mma8452_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mma8452_data* %0, %struct.mma8452_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mma8452_data*, %struct.mma8452_data** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @mma8452_get_hp_filter_index(%struct.mma8452_data* %10, i32 %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %40

18:                                               ; preds = %3
  %19 = load %struct.mma8452_data*, %struct.mma8452_data** %5, align 8
  %20 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MMA8452_HP_FILTER_CUTOFF, align 4
  %23 = call i32 @i2c_smbus_read_byte_data(i32 %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %4, align 4
  br label %40

28:                                               ; preds = %18
  %29 = load i32, i32* @MMA8452_HP_FILTER_CUTOFF_SEL_MASK, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %9, align 4
  %36 = load %struct.mma8452_data*, %struct.mma8452_data** %5, align 8
  %37 = load i32, i32* @MMA8452_HP_FILTER_CUTOFF, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @mma8452_change_config(%struct.mma8452_data* %36, i32 %37, i32 %38)
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %28, %26, %16
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @mma8452_get_hp_filter_index(%struct.mma8452_data*, i32, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local i32 @mma8452_change_config(%struct.mma8452_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
