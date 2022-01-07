; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_dsp_audio.c_alaw2linear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_dsp_audio.c_alaw2linear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AMI_MASK = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i8)* @alaw2linear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @alaw2linear(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8 %0, i8* %2, align 1
  %5 = load i8, i8* @AMI_MASK, align 1
  %6 = zext i8 %5 to i32
  %7 = load i8, i8* %2, align 1
  %8 = zext i8 %7 to i32
  %9 = xor i32 %8, %6
  %10 = trunc i32 %9 to i8
  store i8 %10, i8* %2, align 1
  %11 = load i8, i8* %2, align 1
  %12 = zext i8 %11 to i32
  %13 = and i32 %12, 15
  %14 = shl i32 %13, 4
  %15 = add nsw i32 %14, 8
  store i32 %15, i32* %3, align 4
  %16 = load i8, i8* %2, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, 112
  %19 = ashr i32 %18, 4
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 256
  %25 = load i32, i32* %4, align 4
  %26 = sub nsw i32 %25, 1
  %27 = shl i32 %24, %26
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %22, %1
  %29 = load i8, i8* %2, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %30, 128
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %3, align 4
  br label %38

35:                                               ; preds = %28
  %36 = load i32, i32* %3, align 4
  %37 = sub nsw i32 0, %36
  br label %38

38:                                               ; preds = %35, %33
  %39 = phi i32 [ %34, %33 ], [ %37, %35 ]
  %40 = trunc i32 %39 to i16
  ret i16 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
