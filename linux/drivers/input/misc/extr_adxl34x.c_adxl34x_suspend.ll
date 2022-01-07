; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_adxl34x.c_adxl34x_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_adxl34x.c_adxl34x_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adxl34x = type { i32, i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adxl34x_suspend(%struct.adxl34x* %0) #0 {
  %2 = alloca %struct.adxl34x*, align 8
  store %struct.adxl34x* %0, %struct.adxl34x** %2, align 8
  %3 = load %struct.adxl34x*, %struct.adxl34x** %2, align 8
  %4 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %3, i32 0, i32 1
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.adxl34x*, %struct.adxl34x** %2, align 8
  %7 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %1
  %11 = load %struct.adxl34x*, %struct.adxl34x** %2, align 8
  %12 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %10
  %16 = load %struct.adxl34x*, %struct.adxl34x** %2, align 8
  %17 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.adxl34x*, %struct.adxl34x** %2, align 8
  %22 = call i32 @__adxl34x_disable(%struct.adxl34x* %21)
  br label %23

23:                                               ; preds = %20, %15, %10, %1
  %24 = load %struct.adxl34x*, %struct.adxl34x** %2, align 8
  %25 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.adxl34x*, %struct.adxl34x** %2, align 8
  %27 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %26, i32 0, i32 1
  %28 = call i32 @mutex_unlock(i32* %27)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__adxl34x_disable(%struct.adxl34x*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
