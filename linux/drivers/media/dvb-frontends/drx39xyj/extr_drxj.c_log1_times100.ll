; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_log1_times100.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_log1_times100.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@log1_times100.scale = internal constant i32 15, align 4
@log1_times100.index_width = internal constant i32 5, align 4
@log1_times100.log2lut = internal constant [33 x i32] [i32 0, i32 290941, i32 573196, i32 847269, i32 1113620, i32 1372674, i32 1624818, i32 1870412, i32 2109788, i32 2343253, i32 2571091, i32 2793569, i32 3010931, i32 3223408, i32 3431216, i32 3634553, i32 3833610, i32 4028562, i32 4219576, i32 4406807, i32 4590402, i32 4770499, i32 4947231, i32 5120719, i32 5291081, i32 5458428, i32 5622864, i32 5784489, i32 5943398, i32 6099680, i32 6253421, i32 6404702, i32 6553600], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @log1_times100 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log1_times100(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %89

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, -65536
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %12
  store i32 15, i32* %7, align 4
  br label %17

17:                                               ; preds = %28, %16
  %18 = load i32, i32* %7, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, 32768
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %31

25:                                               ; preds = %20
  %26 = load i32, i32* %3, align 4
  %27 = shl i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %7, align 4
  br label %17

31:                                               ; preds = %24, %17
  br label %48

32:                                               ; preds = %12
  store i32 15, i32* %7, align 4
  br label %33

33:                                               ; preds = %44, %32
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 31
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load i32, i32* %3, align 4
  %38 = and i32 %37, -65536
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %47

41:                                               ; preds = %36
  %42 = load i32, i32* %3, align 4
  %43 = ashr i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %33

47:                                               ; preds = %40, %33
  br label %48

48:                                               ; preds = %47, %31
  %49 = load i32, i32* %7, align 4
  %50 = mul nsw i32 %49, 6553600
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %3, align 4
  %52 = and i32 %51, 32767
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = ashr i32 %53, 10
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %3, align 4
  %56 = and i32 %55, 1023
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [33 x i32], [33 x i32]* @log1_times100.log2lut, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [33 x i32], [33 x i32]* @log1_times100.log2lut, i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [33 x i32], [33 x i32]* @log1_times100.log2lut, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %66, %70
  %72 = mul nsw i32 %61, %71
  %73 = ashr i32 %72, 10
  %74 = add nsw i32 %60, %73
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = sdiv i32 %77, 108853
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = ashr i32 %79, 1
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %5, align 4
  %82 = and i32 %81, 1
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %48
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %84, %48
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %87, %11
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
