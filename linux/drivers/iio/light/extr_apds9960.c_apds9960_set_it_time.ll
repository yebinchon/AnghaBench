; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_apds9960.c_apds9960_set_it_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_apds9960.c_apds9960_set_it_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apds9960_data = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@apds9960_int_time = common dso_local global i32** null, align 8
@APDS9960_REG_ATIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apds9960_data*, i32)* @apds9960_set_it_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apds9960_set_it_time(%struct.apds9960_data* %0, i32 %1) #0 {
  %3 = alloca %struct.apds9960_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.apds9960_data* %0, %struct.apds9960_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %51, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32**, i32*** @apds9960_int_time, align 8
  %12 = call i32 @ARRAY_SIZE(i32** %11)
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %54

14:                                               ; preds = %9
  %15 = load i32**, i32*** @apds9960_int_time, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32*, i32** %15, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %50

24:                                               ; preds = %14
  %25 = load %struct.apds9960_data*, %struct.apds9960_data** %3, align 8
  %26 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %25, i32 0, i32 1
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.apds9960_data*, %struct.apds9960_data** %3, align 8
  %29 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @APDS9960_REG_ATIME, align 4
  %32 = load i32**, i32*** @apds9960_int_time, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @regmap_write(i32 %30, i32 %31, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %24
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.apds9960_data*, %struct.apds9960_data** %3, align 8
  %45 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %42, %24
  %47 = load %struct.apds9960_data*, %struct.apds9960_data** %3, align 8
  %48 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %47, i32 0, i32 1
  %49 = call i32 @mutex_unlock(i32* %48)
  br label %54

50:                                               ; preds = %14
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %9

54:                                               ; preds = %46, %9
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
