; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_l1oip_codec.c_l1oip_4bit_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_l1oip_codec.c_l1oip_4bit_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@table_dec = common dso_local global i32* null, align 8
@table_com = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@ulaw_to_4bit = common dso_local global i32* null, align 8
@alaw_to_4bit = common dso_local global i32* null, align 8
@_4bit_to_ulaw = common dso_local global i32* null, align 8
@_4bit_to_alaw = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @l1oip_4bit_alloc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32*, i32** @table_dec, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %124

11:                                               ; preds = %1
  %12 = call i32* @vzalloc(i32 65536)
  store i32* %12, i32** @table_com, align 8
  %13 = call i32* @vzalloc(i32 512)
  store i32* %13, i32** @table_dec, align 8
  %14 = load i32*, i32** @table_com, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32*, i32** @table_dec, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16, %11
  %20 = call i32 (...) @l1oip_4bit_free()
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %124

23:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %70, %23
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 256
  br i1 %26, label %27, label %73

27:                                               ; preds = %24
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i32*, i32** @ulaw_to_4bit, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  br label %42

36:                                               ; preds = %27
  %37 = load i32*, i32** @alaw_to_4bit, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %36, %30
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %46, %42
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 256
  br i1 %45, label %46, label %70

46:                                               ; preds = %43
  %47 = load i32, i32* %6, align 4
  %48 = shl i32 %47, 4
  %49 = load i32*, i32** @table_com, align 8
  %50 = load i32, i32* %4, align 4
  %51 = shl i32 %50, 8
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %49, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %48
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32*, i32** @table_com, align 8
  %60 = load i32, i32* %5, align 4
  %61 = shl i32 %60, 8
  %62 = load i32, i32* %4, align 4
  %63 = or i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %59, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %58
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %43

70:                                               ; preds = %43
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %24

73:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %120, %73
  %75 = load i32, i32* %4, align 4
  %76 = icmp slt i32 %75, 16
  br i1 %76, label %77, label %123

77:                                               ; preds = %74
  %78 = load i32, i32* %3, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load i32*, i32** @_4bit_to_ulaw, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %7, align 4
  br label %92

86:                                               ; preds = %77
  %87 = load i32*, i32** @_4bit_to_alaw, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %86, %80
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %96, %92
  %94 = load i32, i32* %5, align 4
  %95 = icmp slt i32 %94, 16
  br i1 %95, label %96, label %120

96:                                               ; preds = %93
  %97 = load i32, i32* %7, align 4
  %98 = shl i32 %97, 8
  %99 = load i32*, i32** @table_dec, align 8
  %100 = load i32, i32* %4, align 4
  %101 = shl i32 %100, 4
  %102 = load i32, i32* %5, align 4
  %103 = or i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %99, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %98
  store i32 %107, i32* %105, align 4
  %108 = load i32, i32* %7, align 4
  %109 = load i32*, i32** @table_dec, align 8
  %110 = load i32, i32* %5, align 4
  %111 = shl i32 %110, 4
  %112 = load i32, i32* %4, align 4
  %113 = or i32 %111, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %109, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %108
  store i32 %117, i32* %115, align 4
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %5, align 4
  br label %93

120:                                              ; preds = %93
  %121 = load i32, i32* %4, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %4, align 4
  br label %74

123:                                              ; preds = %74
  store i32 0, i32* %2, align 4
  br label %124

124:                                              ; preds = %123, %19, %10
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i32* @vzalloc(i32) #1

declare dso_local i32 @l1oip_4bit_free(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
