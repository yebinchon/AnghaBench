; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-multitouch.c_mt_compute_timestamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-multitouch.c_mt_compute_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt_application = type { i64, i32, i64, i64 }

@jiffies = common dso_local global i64 0, align 8
@MAX_TIMESTAMP_INTERVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt_application*, i64)* @mt_compute_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt_compute_timestamp(%struct.mt_application* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mt_application*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.mt_application* %0, %struct.mt_application** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.mt_application*, %struct.mt_application** %4, align 8
  %10 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = sub nsw i64 %8, %11
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* @jiffies, align 8
  %14 = load %struct.mt_application*, %struct.mt_application** %4, align 8
  %15 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %13, %16
  %18 = call i64 @jiffies_to_usecs(i64 %17)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* @jiffies, align 8
  %20 = load %struct.mt_application*, %struct.mt_application** %4, align 8
  %21 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %20, i32 0, i32 3
  store i64 %19, i64* %21, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load %struct.mt_application*, %struct.mt_application** %4, align 8
  %26 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = add nsw i64 %28, %27
  store i64 %29, i64* %6, align 8
  br label %30

30:                                               ; preds = %24, %2
  %31 = load i64, i64* %6, align 8
  %32 = mul nsw i64 %31, 100
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @MAX_TIMESTAMP_INTERVAL, align 8
  %35 = icmp ugt i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %45

37:                                               ; preds = %30
  %38 = load %struct.mt_application*, %struct.mt_application** %4, align 8
  %39 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %6, align 8
  %43 = add nsw i64 %41, %42
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %37, %36
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @jiffies_to_usecs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
