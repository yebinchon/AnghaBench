; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_isl29018.c_isl29018_read_lux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_isl29018.c_isl29018_read_lux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isl29018_chip = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@ISL29018_CMD1_OPMODE_ALS_ONCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isl29018_chip*, i32*)* @isl29018_read_lux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl29018_read_lux(%struct.isl29018_chip* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isl29018_chip*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.isl29018_chip* %0, %struct.isl29018_chip** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.isl29018_chip*, %struct.isl29018_chip** %4, align 8
  %9 = load i32, i32* @ISL29018_CMD1_OPMODE_ALS_ONCE, align 4
  %10 = call i32 @isl29018_read_sensor_input(%struct.isl29018_chip* %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %43

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.isl29018_chip*, %struct.isl29018_chip** %4, align 8
  %18 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %16, %20
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.isl29018_chip*, %struct.isl29018_chip** %4, align 8
  %24 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %22, %26
  %28 = sdiv i32 %27, 1000000
  %29 = add nsw i32 %21, %28
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.isl29018_chip*, %struct.isl29018_chip** %4, align 8
  %32 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = mul i32 %30, %33
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.isl29018_chip*, %struct.isl29018_chip** %4, align 8
  %37 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = mul i32 %35, %38
  %40 = udiv i32 %39, 1000000
  %41 = add i32 %34, %40
  %42 = load i32*, i32** %5, align 8
  store i32 %41, i32* %42, align 4
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %15, %13
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @isl29018_read_sensor_input(%struct.isl29018_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
