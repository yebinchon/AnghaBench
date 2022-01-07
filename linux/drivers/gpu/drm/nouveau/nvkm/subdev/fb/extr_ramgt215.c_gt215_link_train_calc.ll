; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgt215.c_gt215_link_train_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgt215.c_gt215_link_train_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gt215_ltrain = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.gt215_ltrain*)* @gt215_link_train_calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gt215_link_train_calc(i32* %0, %struct.gt215_ltrain* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.gt215_ltrain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [8 x i32], align 16
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.gt215_ltrain* %1, %struct.gt215_ltrain** %4, align 8
  %12 = bitcast [4 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 16, i1 false)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %105, %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 8
  br i1 %15, label %16, label %108

16:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %41, %16
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 64
  br i1 %19, label %20, label %44

20:                                               ; preds = %17
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, -2147483648
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  br label %41

29:                                               ; preds = %20
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = shl i32 257, %35
  %37 = and i32 %34, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %44

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %28
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %17

44:                                               ; preds = %39, %17
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %45, 64
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %181

48:                                               ; preds = %44
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %77, %48
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 64
  br i1 %53, label %54, label %80

54:                                               ; preds = %51
  %55 = load i32*, i32** %3, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, -2147483648
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %54
  br label %77

63:                                               ; preds = %54
  %64 = load i32*, i32** %3, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %5, align 4
  %70 = shl i32 257, %69
  %71 = and i32 %68, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %63
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %7, align 4
  br label %80

76:                                               ; preds = %63
  br label %77

77:                                               ; preds = %76, %62
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %51

80:                                               ; preds = %73, %51
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %6, align 4
  %83 = sub nsw i32 %81, %82
  %84 = ashr i32 %83, 1
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %84, %85
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %88
  store i32 %86, i32* %89, align 4
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, 240
  %95 = ashr i32 %94, 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 48
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %80
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %5, align 4
  br label %13

108:                                              ; preds = %13
  store i32 0, i32* %5, align 4
  br label %109

109:                                              ; preds = %127, %108
  %110 = load i32, i32* %5, align 4
  %111 = icmp slt i32 %110, 4
  br i1 %111, label %112, label %130

112:                                              ; preds = %109
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %11, align 4
  %118 = icmp sgt i32 %116, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %112
  %120 = load i32, i32* %5, align 4
  %121 = add nsw i32 %120, 3
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %123
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %11, align 4
  br label %126

126:                                              ; preds = %119, %112
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %5, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %5, align 4
  br label %109

130:                                              ; preds = %109
  %131 = load %struct.gt215_ltrain*, %struct.gt215_ltrain** %4, align 8
  %132 = getelementptr inbounds %struct.gt215_ltrain, %struct.gt215_ltrain* %131, i32 0, i32 0
  store i32 0, i32* %132, align 4
  store i32 0, i32* %5, align 4
  br label %133

133:                                              ; preds = %170, %130
  %134 = load i32, i32* %5, align 4
  %135 = icmp slt i32 %134, 8
  br i1 %135, label %136, label %173

136:                                              ; preds = %133
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %10, align 4
  %142 = shl i32 %141, 4
  %143 = call i32 @max(i32 %140, i32 %142)
  %144 = load i32, i32* %5, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %145
  store i32 %143, i32* %146, align 4
  %147 = load i32, i32* %5, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %10, align 4
  %152 = shl i32 %151, 4
  %153 = or i32 %152, 15
  %154 = call i32 @min(i32 %150, i32 %153)
  %155 = load i32, i32* %5, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %156
  store i32 %154, i32* %157, align 4
  %158 = load i32, i32* %5, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = and i32 %161, 15
  %163 = load i32, i32* %5, align 4
  %164 = shl i32 %163, 2
  %165 = shl i32 %162, %164
  %166 = load %struct.gt215_ltrain*, %struct.gt215_ltrain** %4, align 8
  %167 = getelementptr inbounds %struct.gt215_ltrain, %struct.gt215_ltrain* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %168, %165
  store i32 %169, i32* %167, align 4
  br label %170

170:                                              ; preds = %136
  %171 = load i32, i32* %5, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %5, align 4
  br label %133

173:                                              ; preds = %133
  %174 = load i32, i32* %10, align 4
  %175 = mul nsw i32 %174, 257
  %176 = or i32 33554432, %175
  %177 = load %struct.gt215_ltrain*, %struct.gt215_ltrain** %4, align 8
  %178 = getelementptr inbounds %struct.gt215_ltrain, %struct.gt215_ltrain* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 4
  %179 = load %struct.gt215_ltrain*, %struct.gt215_ltrain** %4, align 8
  %180 = getelementptr inbounds %struct.gt215_ltrain, %struct.gt215_ltrain* %179, i32 0, i32 2
  store i32 0, i32* %180, align 4
  br label %181

181:                                              ; preds = %173, %47
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @max(i32, i32) #2

declare dso_local i32 @min(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
