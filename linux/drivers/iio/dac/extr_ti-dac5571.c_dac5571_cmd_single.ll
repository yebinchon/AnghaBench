; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ti-dac5571.c_dac5571_cmd_single.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ti-dac5571.c_dac5571_cmd_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dac5571_data = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dac5571_data*, i32, i32)* @dac5571_cmd_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dac5571_cmd_single(%struct.dac5571_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dac5571_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dac5571_data* %0, %struct.dac5571_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.dac5571_data*, %struct.dac5571_data** %5, align 8
  %10 = getelementptr inbounds %struct.dac5571_data, %struct.dac5571_data* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 12, %13
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = shl i32 %15, %16
  %18 = load %struct.dac5571_data*, %struct.dac5571_data** %5, align 8
  %19 = getelementptr inbounds %struct.dac5571_data, %struct.dac5571_data* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 %17, i32* %21, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = sub i32 8, %23
  %25 = lshr i32 %22, %24
  %26 = load %struct.dac5571_data*, %struct.dac5571_data** %5, align 8
  %27 = getelementptr inbounds %struct.dac5571_data, %struct.dac5571_data* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 %25, i32* %29, align 4
  %30 = load %struct.dac5571_data*, %struct.dac5571_data** %5, align 8
  %31 = getelementptr inbounds %struct.dac5571_data, %struct.dac5571_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.dac5571_data*, %struct.dac5571_data** %5, align 8
  %34 = getelementptr inbounds %struct.dac5571_data, %struct.dac5571_data* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @i2c_master_send(i32 %32, i32* %35, i32 2)
  %37 = icmp ne i32 %36, 2
  br i1 %37, label %38, label %41

38:                                               ; preds = %3
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %42

41:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %38
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @i2c_master_send(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
