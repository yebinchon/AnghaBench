; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_ms5611_core.c_ms5611_find_osr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_ms5611_core.c_ms5611_find_osr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ms5611_osr = type { i16 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ms5611_osr* (i32, %struct.ms5611_osr*, i64)* @ms5611_find_osr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ms5611_osr* @ms5611_find_osr(i32 %0, %struct.ms5611_osr* %1, i64 %2) #0 {
  %4 = alloca %struct.ms5611_osr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ms5611_osr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.ms5611_osr* %1, %struct.ms5611_osr** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %28, %3
  %10 = load i32, i32* %8, align 4
  %11 = zext i32 %10 to i64
  %12 = load i64, i64* %7, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %9
  %15 = load i32, i32* %5, align 4
  %16 = trunc i32 %15 to i16
  %17 = zext i16 %16 to i32
  %18 = load %struct.ms5611_osr*, %struct.ms5611_osr** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ms5611_osr, %struct.ms5611_osr* %18, i64 %20
  %22 = getelementptr inbounds %struct.ms5611_osr, %struct.ms5611_osr* %21, i32 0, i32 0
  %23 = load i16, i16* %22, align 2
  %24 = zext i16 %23 to i32
  %25 = icmp eq i32 %17, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  br label %31

27:                                               ; preds = %14
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %8, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %8, align 4
  br label %9

31:                                               ; preds = %26, %9
  %32 = load i32, i32* %8, align 4
  %33 = zext i32 %32 to i64
  %34 = load i64, i64* %7, align 8
  %35 = icmp uge i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store %struct.ms5611_osr* null, %struct.ms5611_osr** %4, align 8
  br label %42

37:                                               ; preds = %31
  %38 = load %struct.ms5611_osr*, %struct.ms5611_osr** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.ms5611_osr, %struct.ms5611_osr* %38, i64 %40
  store %struct.ms5611_osr* %41, %struct.ms5611_osr** %4, align 8
  br label %42

42:                                               ; preds = %37, %36
  %43 = load %struct.ms5611_osr*, %struct.ms5611_osr** %4, align 8
  ret %struct.ms5611_osr* %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
