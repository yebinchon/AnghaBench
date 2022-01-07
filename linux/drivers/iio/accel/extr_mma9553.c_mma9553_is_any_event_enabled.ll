; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9553.c_mma9553_is_any_event_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9553.c_mma9553_is_any_event_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mma9553_data = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mma9553_data*, i32, i32)* @mma9553_is_any_event_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mma9553_is_any_event_enabled(%struct.mma9553_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mma9553_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mma9553_data* %0, %struct.mma9553_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %56, %3
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.mma9553_data*, %struct.mma9553_data** %5, align 8
  %12 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %59

15:                                               ; preds = %9
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %15
  %19 = load %struct.mma9553_data*, %struct.mma9553_data** %5, align 8
  %20 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %18
  %32 = load %struct.mma9553_data*, %struct.mma9553_data** %5, align 8
  %33 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %31, %18, %15
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %41
  %45 = load %struct.mma9553_data*, %struct.mma9553_data** %5, align 8
  %46 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44, %31
  store i32 1, i32* %4, align 4
  br label %60

55:                                               ; preds = %44, %41
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %9

59:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %54
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
