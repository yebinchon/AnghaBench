; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_t5403.c_t5403_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_t5403.c_t5403_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t5403_data = type { i32, i32 }

@T5403_COMMAND = common dso_local global i32 0, align 4
@T5403_MODE_SHIFT = common dso_local global i32 0, align 4
@T5403_PT = common dso_local global i32 0, align 4
@T5403_SCO = common dso_local global i32 0, align 4
@t5403_pressure_conv_ms = common dso_local global i32* null, align 8
@T5403_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.t5403_data*, i32)* @t5403_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t5403_read(%struct.t5403_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.t5403_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.t5403_data* %0, %struct.t5403_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 3, i32* %6, align 4
  %8 = load %struct.t5403_data*, %struct.t5403_data** %4, align 8
  %9 = getelementptr inbounds %struct.t5403_data, %struct.t5403_data* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @T5403_COMMAND, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.t5403_data*, %struct.t5403_data** %4, align 8
  %16 = getelementptr inbounds %struct.t5403_data, %struct.t5403_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @T5403_MODE_SHIFT, align 4
  %19 = shl i32 %17, %18
  br label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @T5403_PT, align 4
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi i32 [ %19, %14 ], [ %21, %20 ]
  %24 = load i32, i32* @T5403_SCO, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @i2c_smbus_write_byte_data(i32 %10, i32 %11, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %54

31:                                               ; preds = %22
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i32*, i32** @t5403_pressure_conv_ms, align 8
  %36 = load %struct.t5403_data*, %struct.t5403_data** %4, align 8
  %37 = getelementptr inbounds %struct.t5403_data, %struct.t5403_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %35, i64 %39
  %41 = load i32, i32* %40, align 4
  br label %43

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42, %34
  %44 = phi i32 [ %41, %34 ], [ 2, %42 ]
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @msleep(i32 %47)
  %49 = load %struct.t5403_data*, %struct.t5403_data** %4, align 8
  %50 = getelementptr inbounds %struct.t5403_data, %struct.t5403_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @T5403_DATA, align 4
  %53 = call i32 @i2c_smbus_read_word_data(i32 %51, i32 %52)
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %43, %29
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @i2c_smbus_read_word_data(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
