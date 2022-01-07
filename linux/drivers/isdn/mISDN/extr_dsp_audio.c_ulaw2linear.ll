; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_dsp_audio.c_ulaw2linear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_dsp_audio.c_ulaw2linear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ulaw2linear.etab = internal global [8 x i16] [i16 0, i16 132, i16 396, i16 924, i16 1980, i16 4092, i16 8316, i16 16764], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i8)* @ulaw2linear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @ulaw2linear(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  store i8 %0, i8* %2, align 1
  %7 = load i8, i8* %2, align 1
  %8 = zext i8 %7 to i32
  %9 = sub nsw i32 255, %8
  %10 = trunc i32 %9 to i16
  store i16 %10, i16* %3, align 2
  %11 = load i16, i16* %3, align 2
  %12 = sext i16 %11 to i32
  %13 = and i32 %12, 112
  %14 = sdiv i32 %13, 16
  %15 = trunc i32 %14 to i16
  store i16 %15, i16* %4, align 2
  %16 = load i16, i16* %3, align 2
  %17 = sext i16 %16 to i32
  %18 = and i32 %17, 15
  %19 = trunc i32 %18 to i16
  store i16 %19, i16* %5, align 2
  %20 = load i16, i16* %5, align 2
  %21 = sext i16 %20 to i32
  %22 = load i16, i16* %4, align 2
  %23 = sext i16 %22 to i32
  %24 = add nsw i32 %23, 3
  %25 = shl i32 1, %24
  %26 = mul nsw i32 %21, %25
  %27 = trunc i32 %26 to i16
  store i16 %27, i16* %6, align 2
  %28 = load i16, i16* %4, align 2
  %29 = sext i16 %28 to i64
  %30 = getelementptr inbounds [8 x i16], [8 x i16]* @ulaw2linear.etab, i64 0, i64 %29
  %31 = load i16, i16* %30, align 2
  %32 = sext i16 %31 to i32
  %33 = load i16, i16* %6, align 2
  %34 = sext i16 %33 to i32
  %35 = add nsw i32 %34, %32
  %36 = trunc i32 %35 to i16
  store i16 %36, i16* %6, align 2
  %37 = load i16, i16* %3, align 2
  %38 = sext i16 %37 to i32
  %39 = and i32 %38, 128
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %1
  %42 = load i16, i16* %6, align 2
  %43 = sext i16 %42 to i32
  %44 = sub nsw i32 0, %43
  %45 = trunc i32 %44 to i16
  store i16 %45, i16* %6, align 2
  br label %46

46:                                               ; preds = %41, %1
  %47 = load i16, i16* %6, align 2
  ret i16 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
