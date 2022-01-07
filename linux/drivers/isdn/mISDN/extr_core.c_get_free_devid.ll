; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_core.c_get_free_devid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_core.c_get_free_devid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_DEVICE_ID = common dso_local global i64 0, align 8
@device_ids = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_free_devid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_free_devid() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  store i64 0, i64* %2, align 8
  br label %3

3:                                                ; preds = %13, %0
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @MAX_DEVICE_ID, align 8
  %6 = icmp sle i64 %4, %5
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = load i64, i64* %2, align 8
  %9 = call i32 @test_and_set_bit(i64 %8, i32* @device_ids)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  br label %16

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %12
  %14 = load i64, i64* %2, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* %2, align 8
  br label %3

16:                                               ; preds = %11, %3
  %17 = load i64, i64* %2, align 8
  %18 = load i64, i64* @MAX_DEVICE_ID, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %1, align 4
  br label %26

23:                                               ; preds = %16
  %24 = load i64, i64* %2, align 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %1, align 4
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

declare dso_local i32 @test_and_set_bit(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
