; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_mode.c_copy_cursor_image.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_mode.c_copy_cursor_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { [4 x i32] }
%union.anon.0 = type { i64 }

@AST_MAX_HWC_WIDTH = common dso_local global i32 0, align 4
@AST_MAX_HWC_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32)* @copy_cursor_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_cursor_image(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x %union.anon], align 16
  %10 = alloca %union.anon, align 4
  %11 = alloca %union.anon.0, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %12, align 4
  %21 = load i32, i32* @AST_MAX_HWC_WIDTH, align 4
  %22 = shl i32 %21, 1
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %7, align 4
  %25 = shl i32 %24, 1
  %26 = sub nsw i32 %23, %25
  store i32 %26, i32* %14, align 4
  %27 = load i32*, i32** %5, align 8
  store i32* %27, i32** %15, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %14, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* @AST_MAX_HWC_HEIGHT, align 4
  %33 = load i32, i32* %8, align 4
  %34 = sub nsw i32 %32, %33
  %35 = load i32, i32* %13, align 4
  %36 = mul nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %31, i64 %37
  store i32* %38, i32** %16, align 8
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, 1
  store i32 %40, i32* %19, align 4
  %41 = load i32, i32* %7, align 4
  %42 = ashr i32 %41, 1
  store i32 %42, i32* %20, align 4
  store i32 0, i32* %18, align 4
  br label %43

43:                                               ; preds = %183, %4
  %44 = load i32, i32* %18, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %186

47:                                               ; preds = %43
  store i32 0, i32* %17, align 4
  br label %48

48:                                               ; preds = %124, %47
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* %20, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %127

52:                                               ; preds = %48
  %53 = load i32*, i32** %15, align 8
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, -252645136
  %56 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %9, i64 0, i64 0
  %57 = bitcast %union.anon* %56 to i32*
  store i32 %55, i32* %57, align 16
  %58 = load i32*, i32** %15, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, -252645136
  %62 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %9, i64 0, i64 1
  %63 = bitcast %union.anon* %62 to i32*
  store i32 %61, i32* %63, align 16
  %64 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %9, i64 0, i64 0
  %65 = bitcast %union.anon* %64 to [4 x i32]*
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %65, i64 0, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %9, i64 0, i64 0
  %69 = bitcast %union.anon* %68 to [4 x i32]*
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i64 0, i64 0
  %71 = load i32, i32* %70, align 16
  %72 = ashr i32 %71, 4
  %73 = or i32 %67, %72
  %74 = bitcast %union.anon* %10 to [4 x i32]*
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %74, i64 0, i64 0
  store i32 %73, i32* %75, align 4
  %76 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %9, i64 0, i64 0
  %77 = bitcast %union.anon* %76 to [4 x i32]*
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %77, i64 0, i64 3
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %9, i64 0, i64 0
  %81 = bitcast %union.anon* %80 to [4 x i32]*
  %82 = getelementptr inbounds [4 x i32], [4 x i32]* %81, i64 0, i64 2
  %83 = load i32, i32* %82, align 8
  %84 = ashr i32 %83, 4
  %85 = or i32 %79, %84
  %86 = bitcast %union.anon* %10 to [4 x i32]*
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %86, i64 0, i64 1
  store i32 %85, i32* %87, align 4
  %88 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %9, i64 0, i64 1
  %89 = bitcast %union.anon* %88 to [4 x i32]*
  %90 = getelementptr inbounds [4 x i32], [4 x i32]* %89, i64 0, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %9, i64 0, i64 1
  %93 = bitcast %union.anon* %92 to [4 x i32]*
  %94 = getelementptr inbounds [4 x i32], [4 x i32]* %93, i64 0, i64 0
  %95 = load i32, i32* %94, align 16
  %96 = ashr i32 %95, 4
  %97 = or i32 %91, %96
  %98 = bitcast %union.anon* %10 to [4 x i32]*
  %99 = getelementptr inbounds [4 x i32], [4 x i32]* %98, i64 0, i64 2
  store i32 %97, i32* %99, align 4
  %100 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %9, i64 0, i64 1
  %101 = bitcast %union.anon* %100 to [4 x i32]*
  %102 = getelementptr inbounds [4 x i32], [4 x i32]* %101, i64 0, i64 3
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %9, i64 0, i64 1
  %105 = bitcast %union.anon* %104 to [4 x i32]*
  %106 = getelementptr inbounds [4 x i32], [4 x i32]* %105, i64 0, i64 2
  %107 = load i32, i32* %106, align 8
  %108 = ashr i32 %107, 4
  %109 = or i32 %103, %108
  %110 = bitcast %union.anon* %10 to [4 x i32]*
  %111 = getelementptr inbounds [4 x i32], [4 x i32]* %110, i64 0, i64 3
  store i32 %109, i32* %111, align 4
  %112 = bitcast %union.anon* %10 to i32*
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %16, align 8
  %115 = call i32 @writel(i32 %113, i32* %114)
  %116 = bitcast %union.anon* %10 to i32*
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %12, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %12, align 4
  %120 = load i32*, i32** %16, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 4
  store i32* %121, i32** %16, align 8
  %122 = load i32*, i32** %15, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 8
  store i32* %123, i32** %15, align 8
  br label %124

124:                                              ; preds = %52
  %125 = load i32, i32* %17, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %17, align 4
  br label %48

127:                                              ; preds = %48
  store i32 0, i32* %17, align 4
  br label %128

128:                                              ; preds = %175, %127
  %129 = load i32, i32* %17, align 4
  %130 = load i32, i32* %19, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %178

132:                                              ; preds = %128
  %133 = load i32*, i32** %15, align 8
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, -252645136
  %136 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %9, i64 0, i64 0
  %137 = bitcast %union.anon* %136 to i32*
  store i32 %135, i32* %137, align 16
  %138 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %9, i64 0, i64 0
  %139 = bitcast %union.anon* %138 to [4 x i32]*
  %140 = getelementptr inbounds [4 x i32], [4 x i32]* %139, i64 0, i64 1
  %141 = load i32, i32* %140, align 4
  %142 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %9, i64 0, i64 0
  %143 = bitcast %union.anon* %142 to [4 x i32]*
  %144 = getelementptr inbounds [4 x i32], [4 x i32]* %143, i64 0, i64 0
  %145 = load i32, i32* %144, align 16
  %146 = ashr i32 %145, 4
  %147 = or i32 %141, %146
  %148 = bitcast %union.anon.0* %11 to [2 x i32]*
  %149 = getelementptr inbounds [2 x i32], [2 x i32]* %148, i64 0, i64 0
  store i32 %147, i32* %149, align 8
  %150 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %9, i64 0, i64 0
  %151 = bitcast %union.anon* %150 to [4 x i32]*
  %152 = getelementptr inbounds [4 x i32], [4 x i32]* %151, i64 0, i64 3
  %153 = load i32, i32* %152, align 4
  %154 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %9, i64 0, i64 0
  %155 = bitcast %union.anon* %154 to [4 x i32]*
  %156 = getelementptr inbounds [4 x i32], [4 x i32]* %155, i64 0, i64 2
  %157 = load i32, i32* %156, align 8
  %158 = ashr i32 %157, 4
  %159 = or i32 %153, %158
  %160 = bitcast %union.anon.0* %11 to [2 x i32]*
  %161 = getelementptr inbounds [2 x i32], [2 x i32]* %160, i64 0, i64 1
  store i32 %159, i32* %161, align 4
  %162 = bitcast %union.anon.0* %11 to i64*
  %163 = load i64, i64* %162, align 8
  %164 = load i32*, i32** %16, align 8
  %165 = call i32 @writew(i64 %163, i32* %164)
  %166 = bitcast %union.anon.0* %11 to i64*
  %167 = load i64, i64* %166, align 8
  %168 = trunc i64 %167 to i32
  %169 = load i32, i32* %12, align 4
  %170 = add nsw i32 %169, %168
  store i32 %170, i32* %12, align 4
  %171 = load i32*, i32** %16, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 2
  store i32* %172, i32** %16, align 8
  %173 = load i32*, i32** %15, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 4
  store i32* %174, i32** %15, align 8
  br label %175

175:                                              ; preds = %132
  %176 = load i32, i32* %17, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %17, align 4
  br label %128

178:                                              ; preds = %128
  %179 = load i32, i32* %14, align 4
  %180 = load i32*, i32** %16, align 8
  %181 = sext i32 %179 to i64
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  store i32* %182, i32** %16, align 8
  br label %183

183:                                              ; preds = %178
  %184 = load i32, i32* %18, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %18, align 4
  br label %43

186:                                              ; preds = %43
  %187 = load i32, i32* %12, align 4
  ret i32 %187
}

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @writew(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
