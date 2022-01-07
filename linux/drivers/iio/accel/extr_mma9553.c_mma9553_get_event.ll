; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9553.c_mma9553_get_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9553.c_mma9553_get_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mma9553_event = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.mma9553_data = type { i32, %struct.mma9553_event* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mma9553_event* (%struct.mma9553_data*, i32, i32, i32)* @mma9553_get_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mma9553_event* @mma9553_get_event(%struct.mma9553_data* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mma9553_event*, align 8
  %6 = alloca %struct.mma9553_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mma9553_data* %0, %struct.mma9553_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %64, %4
  %12 = load i32, i32* %10, align 4
  %13 = load %struct.mma9553_data*, %struct.mma9553_data** %6, align 8
  %14 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %67

17:                                               ; preds = %11
  %18 = load %struct.mma9553_data*, %struct.mma9553_data** %6, align 8
  %19 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %18, i32 0, i32 1
  %20 = load %struct.mma9553_event*, %struct.mma9553_event** %19, align 8
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.mma9553_event, %struct.mma9553_event* %20, i64 %22
  %24 = getelementptr inbounds %struct.mma9553_event, %struct.mma9553_event* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %63

30:                                               ; preds = %17
  %31 = load %struct.mma9553_data*, %struct.mma9553_data** %6, align 8
  %32 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %31, i32 0, i32 1
  %33 = load %struct.mma9553_event*, %struct.mma9553_event** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.mma9553_event, %struct.mma9553_event* %33, i64 %35
  %37 = getelementptr inbounds %struct.mma9553_event, %struct.mma9553_event* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %30
  %44 = load %struct.mma9553_data*, %struct.mma9553_data** %6, align 8
  %45 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %44, i32 0, i32 1
  %46 = load %struct.mma9553_event*, %struct.mma9553_event** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.mma9553_event, %struct.mma9553_event* %46, i64 %48
  %50 = getelementptr inbounds %struct.mma9553_event, %struct.mma9553_event* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %43
  %57 = load %struct.mma9553_data*, %struct.mma9553_data** %6, align 8
  %58 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %57, i32 0, i32 1
  %59 = load %struct.mma9553_event*, %struct.mma9553_event** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.mma9553_event, %struct.mma9553_event* %59, i64 %61
  store %struct.mma9553_event* %62, %struct.mma9553_event** %5, align 8
  br label %68

63:                                               ; preds = %43, %30, %17
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %11

67:                                               ; preds = %11
  store %struct.mma9553_event* null, %struct.mma9553_event** %5, align 8
  br label %68

68:                                               ; preds = %67, %56
  %69 = load %struct.mma9553_event*, %struct.mma9553_event** %5, align 8
  ret %struct.mma9553_event* %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
