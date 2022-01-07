; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dmatest.c_dmatest_init_dsts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dmatest.c_dmatest_init_dsts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATTERN_OVERWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32, i32, i32, i32)* @dmatest_init_dsts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmatest_init_dsts(i32** %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32** %0, i32*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  br label %13

13:                                               ; preds = %70, %5
  %14 = load i32**, i32*** %6, align 8
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %12, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %73

17:                                               ; preds = %13
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %30, %17
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @gen_dst_value(i32 %23, i32 %24)
  %26 = load i32*, i32** %12, align 8
  %27 = load i32, i32* %11, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 %25, i32* %29, align 4
  br label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %11, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %11, align 4
  br label %18

33:                                               ; preds = %18
  br label %34

34:                                               ; preds = %50, %33
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = add i32 %36, %37
  %39 = icmp ult i32 %35, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %34
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @gen_dst_value(i32 %41, i32 %42)
  %44 = load i32, i32* @PATTERN_OVERWRITE, align 4
  %45 = or i32 %43, %44
  %46 = load i32*, i32** %12, align 8
  %47 = load i32, i32* %11, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %45, i32* %49, align 4
  br label %50

50:                                               ; preds = %40
  %51 = load i32, i32* %11, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %11, align 4
  br label %34

53:                                               ; preds = %34
  br label %54

54:                                               ; preds = %66, %53
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @gen_dst_value(i32 %59, i32 %60)
  %62 = load i32*, i32** %12, align 8
  %63 = load i32, i32* %11, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %61, i32* %65, align 4
  br label %66

66:                                               ; preds = %58
  %67 = load i32, i32* %11, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %11, align 4
  br label %54

69:                                               ; preds = %54
  br label %70

70:                                               ; preds = %69
  %71 = load i32**, i32*** %6, align 8
  %72 = getelementptr inbounds i32*, i32** %71, i32 1
  store i32** %72, i32*** %6, align 8
  br label %13

73:                                               ; preds = %13
  ret void
}

declare dso_local i32 @gen_dst_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
