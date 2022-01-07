; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_fb.c_picolcd_fb_update_tile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_fb.c_picolcd_fb_update_tile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32)* @picolcd_fb_update_tile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @picolcd_fb_update_tile(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [64 x i32], align 16
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %11, align 4
  %21 = mul nsw i32 %20, 4
  %22 = load i32, i32* %10, align 4
  %23 = add nsw i32 %21, %22
  %24 = mul nsw i32 %23, 64
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %19, i64 %25
  store i32* %26, i32** %16, align 8
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %79

29:                                               ; preds = %5
  store i32 7, i32* %13, align 4
  br label %30

30:                                               ; preds = %75, %29
  %31 = load i32, i32* %13, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %78

33:                                               ; preds = %30
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %11, align 4
  %36 = mul nsw i32 %35, 256
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %10, align 4
  %40 = mul nsw i32 %39, 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %13, align 4
  %44 = mul nsw i32 %43, 32
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  store i32* %46, i32** %17, align 8
  store i32 0, i32* %12, align 4
  br label %47

47:                                               ; preds = %71, %33
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %48, 64
  br i1 %49, label %50, label %74

50:                                               ; preds = %47
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = load i32*, i32** %17, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sdiv i32 %57, 8
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %12, align 4
  %63 = srem i32 %62, 8
  %64 = ashr i32 %61, %63
  %65 = and i32 %64, 1
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %65
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %50
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %12, align 4
  br label %47

74:                                               ; preds = %47
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %13, align 4
  br label %30

78:                                               ; preds = %30
  br label %133

79:                                               ; preds = %5
  %80 = load i32, i32* %9, align 4
  %81 = icmp eq i32 %80, 8
  br i1 %81, label %82, label %130

82:                                               ; preds = %79
  store i32 7, i32* %13, align 4
  br label %83

83:                                               ; preds = %126, %82
  %84 = load i32, i32* %13, align 4
  %85 = icmp sge i32 %84, 0
  br i1 %85, label %86, label %129

86:                                               ; preds = %83
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* %11, align 4
  %89 = mul nsw i32 %88, 256
  %90 = load i32, i32* %10, align 4
  %91 = mul nsw i32 %90, 8
  %92 = add nsw i32 %89, %91
  %93 = load i32, i32* %13, align 4
  %94 = mul nsw i32 %93, 32
  %95 = add nsw i32 %92, %94
  %96 = mul nsw i32 %95, 8
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %87, i64 %97
  store i32* %98, i32** %18, align 8
  store i32 0, i32* %12, align 4
  br label %99

99:                                               ; preds = %122, %86
  %100 = load i32, i32* %12, align 4
  %101 = icmp slt i32 %100, 64
  br i1 %101, label %102, label %125

102:                                              ; preds = %99
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = shl i32 %106, 1
  store i32 %107, i32* %105, align 4
  %108 = load i32*, i32** %18, align 8
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, 128
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i32 1, i32 0
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %116
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %102
  %123 = load i32, i32* %12, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %12, align 4
  br label %99

125:                                              ; preds = %99
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %13, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %13, align 4
  br label %83

129:                                              ; preds = %83
  br label %132

130:                                              ; preds = %79
  %131 = call i32 @WARN_ON(i32 1)
  store i32 0, i32* %6, align 4
  br label %163

132:                                              ; preds = %129
  br label %133

133:                                              ; preds = %132, %78
  store i32 0, i32* %12, align 4
  br label %134

134:                                              ; preds = %158, %133
  %135 = load i32, i32* %12, align 4
  %136 = icmp slt i32 %135, 64
  br i1 %136, label %137, label %161

137:                                              ; preds = %134
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load i32*, i32** %16, align 8
  %143 = load i32, i32* %12, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %141, %146
  br i1 %147, label %148, label %157

148:                                              ; preds = %137
  store i32 1, i32* %14, align 4
  %149 = load i32, i32* %12, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load i32*, i32** %16, align 8
  %154 = load i32, i32* %12, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  store i32 %152, i32* %156, align 4
  br label %157

157:                                              ; preds = %148, %137
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %12, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %12, align 4
  br label %134

161:                                              ; preds = %134
  %162 = load i32, i32* %14, align 4
  store i32 %162, i32* %6, align 4
  br label %163

163:                                              ; preds = %161, %130
  %164 = load i32, i32* %6, align 4
  ret i32 %164
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
