; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_zopt2201.c_zopt2201_set_resolution.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_zopt2201.c_zopt2201_set_resolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zopt2201_data = type { i32, i32, i32 }

@ZOPT2201_LS_MEAS_RATE = common dso_local global i32 0, align 4
@ZOPT2201_MEAS_RES_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zopt2201_data*, i32)* @zopt2201_set_resolution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zopt2201_set_resolution(%struct.zopt2201_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zopt2201_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.zopt2201_data* %0, %struct.zopt2201_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.zopt2201_data*, %struct.zopt2201_data** %4, align 8
  %8 = getelementptr inbounds %struct.zopt2201_data, %struct.zopt2201_data* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @ZOPT2201_LS_MEAS_RATE, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @ZOPT2201_MEAS_RES_SHIFT, align 4
  %13 = shl i32 %11, %12
  %14 = load %struct.zopt2201_data*, %struct.zopt2201_data** %4, align 8
  %15 = getelementptr inbounds %struct.zopt2201_data, %struct.zopt2201_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %13, %16
  %18 = call i32 @i2c_smbus_write_byte_data(i32 %9, i32 %10, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %27

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.zopt2201_data*, %struct.zopt2201_data** %4, align 8
  %26 = getelementptr inbounds %struct.zopt2201_data, %struct.zopt2201_data* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %23, %21
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
