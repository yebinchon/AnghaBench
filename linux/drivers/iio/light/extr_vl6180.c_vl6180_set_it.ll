; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_vl6180.c_vl6180_set_it.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_vl6180.c_vl6180_set_it.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vl6180_data = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@VL6180_ALS_IT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vl6180_data*, i32, i32)* @vl6180_set_it to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vl6180_set_it(%struct.vl6180_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vl6180_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vl6180_data* %0, %struct.vl6180_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = add nsw i32 %10, 500
  %12 = sdiv i32 %11, 1000
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %9, align 4
  %20 = icmp sgt i32 %19, 512
  br i1 %20, label %21, label %24

21:                                               ; preds = %18, %15, %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %55

24:                                               ; preds = %18
  %25 = load %struct.vl6180_data*, %struct.vl6180_data** %5, align 8
  %26 = getelementptr inbounds %struct.vl6180_data, %struct.vl6180_data* %25, i32 0, i32 1
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.vl6180_data*, %struct.vl6180_data** %5, align 8
  %29 = call i32 @vl6180_hold(%struct.vl6180_data* %28, i32 1)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %48

33:                                               ; preds = %24
  %34 = load %struct.vl6180_data*, %struct.vl6180_data** %5, align 8
  %35 = getelementptr inbounds %struct.vl6180_data, %struct.vl6180_data* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @VL6180_ALS_IT, align 4
  %38 = load i32, i32* %9, align 4
  %39 = sub nsw i32 %38, 1
  %40 = call i32 @vl6180_write_word(i32 %36, i32 %37, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %33
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.vl6180_data*, %struct.vl6180_data** %5, align 8
  %46 = getelementptr inbounds %struct.vl6180_data, %struct.vl6180_data* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %43, %33
  br label %48

48:                                               ; preds = %47, %32
  %49 = load %struct.vl6180_data*, %struct.vl6180_data** %5, align 8
  %50 = call i32 @vl6180_hold(%struct.vl6180_data* %49, i32 0)
  %51 = load %struct.vl6180_data*, %struct.vl6180_data** %5, align 8
  %52 = getelementptr inbounds %struct.vl6180_data, %struct.vl6180_data* %51, i32 0, i32 1
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %48, %21
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vl6180_hold(%struct.vl6180_data*, i32) #1

declare dso_local i32 @vl6180_write_word(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
