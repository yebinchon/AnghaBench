; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_umc8672.c_umc_set_speeds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_umc8672.c_umc_set_speeds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@speedtab = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [46 x i8] c"umc8672: drive speeds [0 to 11]: %d %d %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*)* @umc_set_speeds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umc_set_speeds(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64* %0, i64** %2, align 8
  %5 = call i32 @outb_p(i32 90, i32 264)
  %6 = load i32**, i32*** @speedtab, align 8
  %7 = getelementptr inbounds i32*, i32** %6, i64 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i64*, i64** %2, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 2
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds i32, i32* %8, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = load i32**, i32*** @speedtab, align 8
  %15 = getelementptr inbounds i32*, i32** %14, i64 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i64*, i64** %2, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 3
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 4
  %23 = or i32 %13, %22
  %24 = call i32 @out_umc(i32 215, i32 %23)
  %25 = load i32**, i32*** @speedtab, align 8
  %26 = getelementptr inbounds i32*, i32** %25, i64 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64*, i64** %2, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32**, i32*** @speedtab, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64*, i64** %2, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 1
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 4
  %42 = or i32 %32, %41
  %43 = call i32 @out_umc(i32 214, i32 %42)
  store i32 0, i32* %4, align 4
  store i32 3, i32* %3, align 4
  br label %44

44:                                               ; preds = %61, %1
  %45 = load i32, i32* %3, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %44
  %48 = load i32, i32* %4, align 4
  %49 = shl i32 %48, 2
  %50 = load i32**, i32*** @speedtab, align 8
  %51 = getelementptr inbounds i32*, i32** %50, i64 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i64*, i64** %2, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i32, i32* %52, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %49, %59
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %47
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %3, align 4
  br label %44

64:                                               ; preds = %44
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @out_umc(i32 220, i32 %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %97, %64
  %68 = load i32, i32* %3, align 4
  %69 = icmp slt i32 %68, 4
  br i1 %69, label %70, label %100

70:                                               ; preds = %67
  %71 = load i32, i32* %3, align 4
  %72 = add nsw i32 208, %71
  %73 = load i32**, i32*** @speedtab, align 8
  %74 = getelementptr inbounds i32*, i32** %73, i64 2
  %75 = load i32*, i32** %74, align 8
  %76 = load i64*, i64** %2, align 8
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i32, i32* %75, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @out_umc(i32 %72, i32 %82)
  %84 = load i32, i32* %3, align 4
  %85 = add nsw i32 216, %84
  %86 = load i32**, i32*** @speedtab, align 8
  %87 = getelementptr inbounds i32*, i32** %86, i64 2
  %88 = load i32*, i32** %87, align 8
  %89 = load i64*, i64** %2, align 8
  %90 = load i32, i32* %3, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds i32, i32* %88, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @out_umc(i32 %85, i32 %95)
  br label %97

97:                                               ; preds = %70
  %98 = load i32, i32* %3, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %3, align 4
  br label %67

100:                                              ; preds = %67
  %101 = call i32 @outb_p(i32 165, i32 264)
  %102 = load i64*, i64** %2, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64*, i64** %2, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64*, i64** %2, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 2
  %110 = load i64, i64* %109, align 8
  %111 = load i64*, i64** %2, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 3
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %104, i64 %107, i64 %110, i64 %113)
  ret void
}

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @out_umc(i32, i32) #1

declare dso_local i32 @printk(i8*, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
