; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_rack-meter.c_rackmeter_calc_sample.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_rack-meter.c_rackmeter_calc_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rackmeter = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rackmeter*, i32)* @rackmeter_calc_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rackmeter_calc_sample(%struct.rackmeter* %0, i32 %1) #0 {
  %3 = alloca %struct.rackmeter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rackmeter* %0, %struct.rackmeter** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %25, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 16
  br i1 %9, label %10, label %28

10:                                               ; preds = %7
  %11 = load i32, i32* %6, align 4
  %12 = ashr i32 %11, 1
  store i32 %12, i32* %6, align 4
  %13 = load %struct.rackmeter*, %struct.rackmeter** %3, align 8
  %14 = getelementptr inbounds %struct.rackmeter, %struct.rackmeter* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp sge i32 %19, 128
  %21 = zext i1 %20 to i32
  %22 = shl i32 %21, 15
  %23 = load i32, i32* %6, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %10
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %7

28:                                               ; preds = %7
  %29 = load i32, i32* %6, align 4
  %30 = shl i32 %29, 17
  %31 = load i32, i32* %6, align 4
  %32 = ashr i32 %31, 15
  %33 = or i32 %30, %32
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
