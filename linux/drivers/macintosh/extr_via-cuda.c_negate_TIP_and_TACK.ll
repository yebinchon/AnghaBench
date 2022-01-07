; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_via-cuda.c_negate_TIP_and_TACK.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_via-cuda.c_negate_TIP_and_TACK.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mcu_is_egret = common dso_local global i64 0, align 8
@EGRET_TACK_ASSERTED_DELAY = common dso_local global i32 0, align 4
@via = common dso_local global i32* null, align 8
@B = common dso_local global i64 0, align 8
@TIP = common dso_local global i32 0, align 4
@TACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @negate_TIP_and_TACK to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @negate_TIP_and_TACK() #0 {
  %1 = load i64, i64* @mcu_is_egret, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %19

3:                                                ; preds = %0
  %4 = load i32, i32* @EGRET_TACK_ASSERTED_DELAY, align 4
  %5 = call i32 @udelay(i32 %4)
  %6 = load i32*, i32** @via, align 8
  %7 = load i64, i64* @B, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = load i32*, i32** @via, align 8
  %10 = load i64, i64* @B, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = call i32 @in_8(i32* %11)
  %13 = load i32, i32* @TIP, align 4
  %14 = load i32, i32* @TACK, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = and i32 %12, %16
  %18 = call i32 @out_8(i32* %8, i32 %17)
  br label %32

19:                                               ; preds = %0
  %20 = load i32*, i32** @via, align 8
  %21 = load i64, i64* @B, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32*, i32** @via, align 8
  %24 = load i64, i64* @B, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = call i32 @in_8(i32* %25)
  %27 = load i32, i32* @TIP, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @TACK, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @out_8(i32* %22, i32 %30)
  br label %32

32:                                               ; preds = %19, %3
  ret void
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @out_8(i32*, i32) #1

declare dso_local i32 @in_8(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
