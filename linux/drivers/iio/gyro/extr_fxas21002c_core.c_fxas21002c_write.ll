; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_fxas21002c_core.c_fxas21002c_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_fxas21002c_core.c_fxas21002c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fxas21002c_data = type { i32, i32, i32* }

@FXAS21002C_MODE_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fxas21002c_data*, i32, i32)* @fxas21002c_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fxas21002c_write(%struct.fxas21002c_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.fxas21002c_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fxas21002c_data* %0, %struct.fxas21002c_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %4, align 8
  %10 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %4, align 8
  %13 = call i32 @fxas21002c_mode_get(%struct.fxas21002c_data* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %8, align 4
  br label %44

18:                                               ; preds = %3
  %19 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %4, align 8
  %20 = load i32, i32* @FXAS21002C_MODE_READY, align 4
  %21 = call i32 @fxas21002c_mode_set(%struct.fxas21002c_data* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %44

25:                                               ; preds = %18
  %26 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %4, align 8
  %27 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @regmap_field_write(i32 %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %44

38:                                               ; preds = %25
  %39 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %4, align 8
  %40 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %4, align 8
  %41 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @fxas21002c_mode_set(%struct.fxas21002c_data* %39, i32 %42)
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %38, %37, %24, %16
  %45 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %4, align 8
  %46 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load i32, i32* %8, align 4
  ret i32 %48
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fxas21002c_mode_get(%struct.fxas21002c_data*) #1

declare dso_local i32 @fxas21002c_mode_set(%struct.fxas21002c_data*, i32) #1

declare dso_local i32 @regmap_field_write(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
