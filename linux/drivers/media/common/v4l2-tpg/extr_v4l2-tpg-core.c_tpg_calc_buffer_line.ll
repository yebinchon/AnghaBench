; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_tpg_calc_buffer_line.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_tpg_calc_buffer_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpg_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpg_data*, i32, i32)* @tpg_calc_buffer_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpg_calc_buffer_line(%struct.tpg_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tpg_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tpg_data* %0, %struct.tpg_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %9 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = zext i32 %12 to i64
  %14 = add nsw i64 %13, %11
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %47 [
    i32 128, label %17
    i32 129, label %32
  ]

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %23 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sdiv i32 %24, 2
  %26 = load i32, i32* %6, align 4
  %27 = udiv i32 %26, 2
  %28 = add i32 %25, %27
  store i32 %28, i32* %4, align 4
  br label %49

29:                                               ; preds = %17
  %30 = load i32, i32* %6, align 4
  %31 = udiv i32 %30, 2
  store i32 %31, i32* %4, align 4
  br label %49

32:                                               ; preds = %3
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, 1
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* %6, align 4
  %38 = udiv i32 %37, 2
  store i32 %38, i32* %4, align 4
  br label %49

39:                                               ; preds = %32
  %40 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %41 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sdiv i32 %42, 2
  %44 = load i32, i32* %6, align 4
  %45 = udiv i32 %44, 2
  %46 = add i32 %43, %45
  store i32 %46, i32* %4, align 4
  br label %49

47:                                               ; preds = %3
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %39, %36, %29, %21
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
