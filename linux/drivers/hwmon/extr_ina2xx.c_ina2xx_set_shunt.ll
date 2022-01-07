; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ina2xx.c_ina2xx_set_shunt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ina2xx.c_ina2xx_set_shunt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ina2xx_data = type { i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ina2xx_data*, i64)* @ina2xx_set_shunt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ina2xx_set_shunt(%struct.ina2xx_data* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ina2xx_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ina2xx_data* %0, %struct.ina2xx_data** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.ina2xx_data*, %struct.ina2xx_data** %4, align 8
  %8 = getelementptr inbounds %struct.ina2xx_data, %struct.ina2xx_data* %7, i32 0, i32 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i8* @DIV_ROUND_CLOSEST(i32 1000000000, i64 %11)
  %13 = ptrtoint i8* %12 to i32
  store i32 %13, i32* %6, align 4
  %14 = load i64, i64* %5, align 8
  %15 = icmp sle i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load i64, i64* %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = icmp sgt i64 %17, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %16, %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %51

24:                                               ; preds = %16
  %25 = load %struct.ina2xx_data*, %struct.ina2xx_data** %4, align 8
  %26 = getelementptr inbounds %struct.ina2xx_data, %struct.ina2xx_data* %25, i32 0, i32 3
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.ina2xx_data*, %struct.ina2xx_data** %4, align 8
  %30 = getelementptr inbounds %struct.ina2xx_data, %struct.ina2xx_data* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i64, i64* %5, align 8
  %33 = call i8* @DIV_ROUND_CLOSEST(i32 %31, i64 %32)
  %34 = ptrtoint i8* %33 to i32
  %35 = load %struct.ina2xx_data*, %struct.ina2xx_data** %4, align 8
  %36 = getelementptr inbounds %struct.ina2xx_data, %struct.ina2xx_data* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load %struct.ina2xx_data*, %struct.ina2xx_data** %4, align 8
  %38 = getelementptr inbounds %struct.ina2xx_data, %struct.ina2xx_data* %37, i32 0, i32 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ina2xx_data*, %struct.ina2xx_data** %4, align 8
  %43 = getelementptr inbounds %struct.ina2xx_data, %struct.ina2xx_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = mul nsw i32 %41, %44
  %46 = load %struct.ina2xx_data*, %struct.ina2xx_data** %4, align 8
  %47 = getelementptr inbounds %struct.ina2xx_data, %struct.ina2xx_data* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.ina2xx_data*, %struct.ina2xx_data** %4, align 8
  %49 = getelementptr inbounds %struct.ina2xx_data, %struct.ina2xx_data* %48, i32 0, i32 3
  %50 = call i32 @mutex_unlock(i32* %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %24, %21
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i8* @DIV_ROUND_CLOSEST(i32, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
