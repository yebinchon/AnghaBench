; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2772.c_tsl2772_device_id_verif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2772.c_tsl2772_device_id_verif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRITON_ID = common dso_local global i32 0, align 4
@HALIBUT_ID = common dso_local global i32 0, align 4
@SWORDFISH_ID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @tsl2772_device_id_verif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsl2772_device_id_verif(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %25 [
    i32 133, label %7
    i32 131, label %7
    i32 129, label %7
    i32 137, label %13
    i32 135, label %13
    i32 132, label %19
    i32 130, label %19
    i32 136, label %19
    i32 128, label %19
    i32 134, label %19
    i32 138, label %19
  ]

7:                                                ; preds = %2, %2, %2
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %8, 240
  %10 = load i32, i32* @TRITON_ID, align 4
  %11 = icmp eq i32 %9, %10
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %3, align 4
  br label %28

13:                                               ; preds = %2, %2
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 240
  %16 = load i32, i32* @HALIBUT_ID, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %3, align 4
  br label %28

19:                                               ; preds = %2, %2, %2, %2, %2, %2
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, 240
  %22 = load i32, i32* @SWORDFISH_ID, align 4
  %23 = icmp eq i32 %21, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %3, align 4
  br label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %25, %19, %13, %7
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
