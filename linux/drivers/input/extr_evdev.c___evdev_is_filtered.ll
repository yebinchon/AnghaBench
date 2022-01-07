; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_evdev.c___evdev_is_filtered.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_evdev.c___evdev_is_filtered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdev_client = type { i64** }

@EV_SYN = common dso_local global i32 0, align 4
@EV_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evdev_client*, i32, i32)* @__evdev_is_filtered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__evdev_is_filtered(%struct.evdev_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.evdev_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  store %struct.evdev_client* %0, %struct.evdev_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @EV_SYN, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @EV_CNT, align 4
  %16 = icmp uge i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %3
  store i32 0, i32* %4, align 4
  br label %62

18:                                               ; preds = %13
  %19 = load %struct.evdev_client*, %struct.evdev_client** %5, align 8
  %20 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %19, i32 0, i32 0
  %21 = load i64**, i64*** %20, align 8
  %22 = getelementptr inbounds i64*, i64** %21, i64 0
  %23 = load i64*, i64** %22, align 8
  store i64* %23, i64** %8, align 8
  %24 = load i64*, i64** %8, align 8
  %25 = icmp ne i64* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load i32, i32* %6, align 4
  %28 = load i64*, i64** %8, align 8
  %29 = call i32 @test_bit(i32 %27, i64* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i32 1, i32* %4, align 4
  br label %62

32:                                               ; preds = %26, %18
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @evdev_get_mask_cnt(i32 %33)
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = load i64, i64* %9, align 8
  %41 = icmp uge i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37, %32
  store i32 0, i32* %4, align 4
  br label %62

43:                                               ; preds = %37
  %44 = load %struct.evdev_client*, %struct.evdev_client** %5, align 8
  %45 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %44, i32 0, i32 0
  %46 = load i64**, i64*** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i64*, i64** %46, i64 %48
  %50 = load i64*, i64** %49, align 8
  store i64* %50, i64** %8, align 8
  %51 = load i64*, i64** %8, align 8
  %52 = icmp ne i64* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %43
  %54 = load i32, i32* %7, align 4
  %55 = load i64*, i64** %8, align 8
  %56 = call i32 @test_bit(i32 %54, i64* %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br label %59

59:                                               ; preds = %53, %43
  %60 = phi i1 [ false, %43 ], [ %58, %53 ]
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %59, %42, %31, %17
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @test_bit(i32, i64*) #1

declare dso_local i64 @evdev_get_mask_cnt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
