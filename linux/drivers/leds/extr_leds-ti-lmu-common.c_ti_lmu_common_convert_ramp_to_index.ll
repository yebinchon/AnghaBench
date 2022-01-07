; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ti-lmu-common.c_ti_lmu_common_convert_ramp_to_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ti-lmu-common.c_ti_lmu_common_convert_ramp_to_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ramp_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ti_lmu_common_convert_ramp_to_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_lmu_common_convert_ramp_to_index(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32*, i32** @ramp_table, align 8
  %7 = call i32 @ARRAY_SIZE(i32* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32*, i32** @ramp_table, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ule i32 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %85

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32*, i32** @ramp_table, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp ugt i32 %15, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load i32, i32* %4, align 4
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %2, align 4
  br label %85

26:                                               ; preds = %14
  store i32 1, i32* %5, align 4
  br label %27

27:                                               ; preds = %81, %26
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %84

31:                                               ; preds = %27
  %32 = load i32, i32* %3, align 4
  %33 = load i32*, i32** @ramp_table, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %32, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %85

41:                                               ; preds = %31
  %42 = load i32, i32* %3, align 4
  %43 = load i32*, i32** @ramp_table, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp ugt i32 %42, %48
  br i1 %49, label %50, label %80

50:                                               ; preds = %41
  %51 = load i32, i32* %3, align 4
  %52 = load i32*, i32** @ramp_table, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp ult i32 %51, %56
  br i1 %57, label %58, label %80

58:                                               ; preds = %50
  %59 = load i32, i32* %3, align 4
  %60 = load i32*, i32** @ramp_table, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = sub i32 %59, %65
  %67 = load i32*, i32** @ramp_table, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %3, align 4
  %73 = sub i32 %71, %72
  %74 = icmp ult i32 %66, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %58
  %76 = load i32, i32* %5, align 4
  %77 = sub nsw i32 %76, 1
  store i32 %77, i32* %2, align 4
  br label %85

78:                                               ; preds = %58
  %79 = load i32, i32* %5, align 4
  store i32 %79, i32* %2, align 4
  br label %85

80:                                               ; preds = %50, %41
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %27

84:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %78, %75, %39, %23, %13
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
