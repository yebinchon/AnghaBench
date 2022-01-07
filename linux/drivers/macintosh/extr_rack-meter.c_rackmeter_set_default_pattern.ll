; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_rack-meter.c_rackmeter_set_default_pattern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_rack-meter.c_rackmeter_set_default_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rackmeter = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rackmeter*)* @rackmeter_set_default_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rackmeter_set_default_pattern(%struct.rackmeter* %0) #0 {
  %2 = alloca %struct.rackmeter*, align 8
  %3 = alloca i32, align 4
  store %struct.rackmeter* %0, %struct.rackmeter** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %32, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 16
  br i1 %6, label %7, label %35

7:                                                ; preds = %4
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 8
  br i1 %9, label %10, label %20

10:                                               ; preds = %7
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, 1
  %13 = mul nsw i32 %12, 255
  %14 = load %struct.rackmeter*, %struct.rackmeter** %2, align 8
  %15 = getelementptr inbounds %struct.rackmeter, %struct.rackmeter* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  store i32 %13, i32* %19, align 4
  br label %31

20:                                               ; preds = %7
  %21 = load i32, i32* %3, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %22, 1
  %24 = mul nsw i32 %23, 255
  %25 = load %struct.rackmeter*, %struct.rackmeter** %2, align 8
  %26 = getelementptr inbounds %struct.rackmeter, %struct.rackmeter* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 %24, i32* %30, align 4
  br label %31

31:                                               ; preds = %20, %10
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %4

35:                                               ; preds = %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
