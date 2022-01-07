; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-corsair.c_corsair_usage_to_gkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-corsair.c_corsair_usage_to_gkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @corsair_usage_to_gkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @corsair_usage_to_gkey(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp uge i32 %4, 208
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp ule i32 %7, 223
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = load i32, i32* %3, align 4
  %11 = sub i32 %10, 208
  %12 = add i32 %11, 1
  store i32 %12, i32* %2, align 4
  br label %24

13:                                               ; preds = %6, %1
  %14 = load i32, i32* %3, align 4
  %15 = icmp uge i32 %14, 232
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = icmp ule i32 %17, 233
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  %21 = sub i32 %20, 232
  %22 = add i32 %21, 17
  store i32 %22, i32* %2, align 4
  br label %24

23:                                               ; preds = %16, %13
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %19, %9
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
