; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_math.c_intlog2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_math.c_intlog2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@logtable = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intlog2(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp eq i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 @WARN_ON(i32 1)
  store i32 0, i32* %2, align 4
  br label %55

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @fls(i32 %16)
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = sub i32 31, %20
  %22 = shl i32 %19, %21
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = lshr i32 %23, 23
  %25 = and i32 %24, 255
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, 8388607
  %28 = load i32*, i32** @logtable, align 8
  %29 = load i32, i32* %5, align 4
  %30 = add i32 %29, 1
  %31 = and i32 %30, 255
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** @logtable, align 8
  %36 = load i32, i32* %5, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %34, %39
  %41 = and i32 %40, 65535
  %42 = mul i32 %27, %41
  %43 = lshr i32 %42, 15
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %4, align 4
  %45 = shl i32 %44, 24
  %46 = load i32*, i32** @logtable, align 8
  %47 = load i32, i32* %5, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 8
  %52 = add i32 %45, %51
  %53 = load i32, i32* %7, align 4
  %54 = add i32 %52, %53
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %15, %13
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @fls(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
