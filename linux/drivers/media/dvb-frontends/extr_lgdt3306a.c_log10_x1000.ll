; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3306a.c_log10_x1000.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3306a.c_log10_x1000.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@valx_x10 = common dso_local global i32* null, align 8
@log10x_x1000 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @log10_x1000 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log10_x1000(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp sle i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 -1000000, i32* %2, align 4
  br label %126

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, 10
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %126

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 10
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  br label %20

20:                                               ; preds = %23, %19
  %21 = load i32, i32* %3, align 4
  %22 = icmp slt i32 %21, 10
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i32, i32* %3, align 4
  %25 = mul nsw i32 %24, 10
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %7, align 4
  br label %20

28:                                               ; preds = %20
  br label %39

29:                                               ; preds = %16
  br label %30

30:                                               ; preds = %33, %29
  %31 = load i32, i32* %3, align 4
  %32 = icmp sge i32 %31, 100
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i32, i32* %3, align 4
  %35 = sdiv i32 %34, 10
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %30

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %28
  %40 = load i32, i32* %7, align 4
  %41 = mul nsw i32 %40, 1000
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %3, align 4
  %43 = icmp eq i32 %42, 10
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %2, align 4
  br label %126

46:                                               ; preds = %39
  store i32 1, i32* %8, align 4
  br label %47

47:                                               ; preds = %62, %46
  %48 = load i32, i32* %8, align 4
  %49 = load i32*, i32** @valx_x10, align 8
  %50 = call i32 @ARRAY_SIZE(i32* %49)
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %47
  %53 = load i32*, i32** @valx_x10, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %3, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %65

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %47

65:                                               ; preds = %60, %47
  %66 = load i32, i32* %8, align 4
  %67 = load i32*, i32** @valx_x10, align 8
  %68 = call i32 @ARRAY_SIZE(i32* %67)
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %65
  %71 = load i32, i32* %7, align 4
  %72 = load i32*, i32** @log10x_x1000, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %71, %77
  store i32 %78, i32* %2, align 4
  br label %126

79:                                               ; preds = %65
  %80 = load i32, i32* %3, align 4
  %81 = load i32*, i32** @valx_x10, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %80, %86
  store i32 %87, i32* %4, align 4
  %88 = load i32*, i32** @valx_x10, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** @valx_x10, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %92, %98
  store i32 %99, i32* %5, align 4
  %100 = load i32*, i32** @log10x_x1000, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** @log10x_x1000, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = sub nsw i32 %104, %110
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %7, align 4
  %113 = load i32*, i32** @log10x_x1000, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sub nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %112, %118
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* %6, align 4
  %122 = mul nsw i32 %120, %121
  %123 = load i32, i32* %5, align 4
  %124 = sdiv i32 %122, %123
  %125 = add nsw i32 %119, %124
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %79, %70, %44, %15, %11
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
