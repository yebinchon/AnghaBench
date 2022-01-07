; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_tcm-sita.c_l2r_t2b.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_tcm-sita.c_l2r_t2b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i64 0, align 8
@mask = common dso_local global i64* null, align 8
@BITS_PER_LONG = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i64, i64*, i64, i64*, i64, i64)* @l2r_t2b to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2r_t2b(i64 %0, i64 %1, i64 %2, i64 %3, i64* %4, i64 %5, i64* %6, i64 %7, i64 %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store i64 %0, i64* %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i64* %4, i64** %14, align 8
  store i64 %5, i64* %15, align 8
  store i64* %6, i64** %16, align 8
  store i64 %7, i64* %17, align 8
  store i64 %8, i64* %18, align 8
  store i32 0, i32* %21, align 4
  %25 = load i64, i64* @PAGE_SIZE, align 8
  %26 = load i64, i64* %15, align 8
  %27 = udiv i64 %25, %26
  store i64 %27, i64* %22, align 8
  %28 = load i64, i64* %13, align 8
  %29 = icmp ugt i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %9
  %31 = load i64, i64* %13, align 8
  %32 = load i64, i64* %15, align 8
  %33 = udiv i64 %31, %32
  br label %35

34:                                               ; preds = %9
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi i64 [ %33, %30 ], [ 0, %34 ]
  store i64 %36, i64* %23, align 8
  %37 = load i64, i64* %23, align 8
  store i64 %37, i64* %24, align 8
  %38 = load i64, i64* %13, align 8
  %39 = icmp ugt i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %44

41:                                               ; preds = %35
  %42 = load i64, i64* %12, align 8
  %43 = sub i64 %42, 1
  br label %44

44:                                               ; preds = %41, %40
  %45 = phi i64 [ 0, %40 ], [ %43, %41 ]
  store i64 %45, i64* %12, align 8
  br label %46

46:                                               ; preds = %162, %83, %67, %44
  %47 = load i64, i64* %24, align 8
  %48 = load i64, i64* %17, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %163

50:                                               ; preds = %46
  %51 = load i64*, i64** %16, align 8
  %52 = load i64, i64* %17, align 8
  %53 = load i64, i64* %24, align 8
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* %12, align 8
  %56 = call i64 @bitmap_find_next_zero_area(i64* %51, i64 %52, i64 %53, i64 %54, i64 %55)
  %57 = load i64*, i64** %14, align 8
  store i64 %56, i64* %57, align 8
  %58 = load i64, i64* %23, align 8
  %59 = icmp ugt i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %50
  %61 = load i64*, i64** %14, align 8
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %22, align 8
  %64 = urem i64 %62, %63
  %65 = load i64, i64* %23, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load i64*, i64** %14, align 8
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %22, align 8
  %71 = call i64 @ALIGN(i64 %69, i64 %70)
  %72 = load i64, i64* %23, align 8
  %73 = add i64 %71, %72
  store i64 %73, i64* %24, align 8
  br label %46

74:                                               ; preds = %60, %50
  %75 = load i64*, i64** %14, align 8
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %18, align 8
  %78 = urem i64 %76, %77
  %79 = load i64, i64* %10, align 8
  %80 = add i64 %78, %79
  %81 = load i64, i64* %18, align 8
  %82 = icmp ugt i64 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %74
  %84 = load i64*, i64** %14, align 8
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %18, align 8
  %87 = call i64 @ALIGN(i64 %85, i64 %86)
  %88 = load i64, i64* %23, align 8
  %89 = add i64 %87, %88
  store i64 %89, i64* %24, align 8
  br label %46

90:                                               ; preds = %74
  %91 = load i64*, i64** %14, align 8
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %18, align 8
  %94 = load i64, i64* %11, align 8
  %95 = mul i64 %93, %94
  %96 = add i64 %92, %95
  %97 = load i64, i64* %17, align 8
  %98 = icmp ugt i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  br label %163

100:                                              ; preds = %90
  %101 = load i64*, i64** @mask, align 8
  %102 = load i64, i64* %18, align 8
  %103 = call i32 @bitmap_clear(i64* %101, i32 0, i64 %102)
  %104 = load i64*, i64** @mask, align 8
  %105 = load i64*, i64** %14, align 8
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @BITS_PER_LONG, align 8
  %108 = urem i64 %106, %107
  %109 = load i64, i64* %10, align 8
  %110 = call i32 @bitmap_set(i64* %104, i64 %108, i64 %109)
  store i32 1, i32* %21, align 4
  store i32 1, i32* %19, align 4
  br label %111

111:                                              ; preds = %139, %100
  %112 = load i32, i32* %19, align 4
  %113 = sext i32 %112 to i64
  %114 = load i64, i64* %11, align 8
  %115 = icmp ult i64 %113, %114
  br i1 %115, label %116, label %142

116:                                              ; preds = %111
  %117 = load i64*, i64** %14, align 8
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @BITS_PER_LONG, align 8
  %120 = udiv i64 %118, %119
  %121 = load i32, i32* %19, align 4
  %122 = mul nsw i32 %121, 8
  %123 = sext i32 %122 to i64
  %124 = add i64 %120, %123
  store i64 %124, i64* %20, align 8
  %125 = load i64*, i64** %16, align 8
  %126 = load i64, i64* %20, align 8
  %127 = getelementptr inbounds i64, i64* %125, i64 %126
  %128 = load i64*, i64** @mask, align 8
  %129 = load i64*, i64** %14, align 8
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @BITS_PER_LONG, align 8
  %132 = urem i64 %130, %131
  %133 = load i64, i64* %10, align 8
  %134 = add i64 %132, %133
  %135 = call i64 @bitmap_intersects(i64* %127, i64* %128, i64 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %116
  store i32 0, i32* %21, align 4
  br label %142

138:                                              ; preds = %116
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %19, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %19, align 4
  br label %111

142:                                              ; preds = %137, %111
  %143 = load i32, i32* %21, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  br label %163

146:                                              ; preds = %142
  %147 = load i64, i64* %23, align 8
  %148 = icmp ugt i64 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %146
  %150 = load i64*, i64** %14, align 8
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* %22, align 8
  %153 = call i64 @ALIGN(i64 %151, i64 %152)
  %154 = load i64, i64* %23, align 8
  %155 = add i64 %153, %154
  store i64 %155, i64* %24, align 8
  br label %162

156:                                              ; preds = %146
  %157 = load i64*, i64** %14, align 8
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* %12, align 8
  %160 = add i64 %158, %159
  %161 = add i64 %160, 1
  store i64 %161, i64* %24, align 8
  br label %162

162:                                              ; preds = %156, %149
  br label %46

163:                                              ; preds = %145, %99, %46
  %164 = load i32, i32* %21, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %186

166:                                              ; preds = %163
  store i32 0, i32* %19, align 4
  %167 = load i64*, i64** %14, align 8
  %168 = load i64, i64* %167, align 8
  store i64 %168, i64* %20, align 8
  br label %169

169:                                              ; preds = %179, %166
  %170 = load i32, i32* %19, align 4
  %171 = sext i32 %170 to i64
  %172 = load i64, i64* %11, align 8
  %173 = icmp ult i64 %171, %172
  br i1 %173, label %174, label %185

174:                                              ; preds = %169
  %175 = load i64*, i64** %16, align 8
  %176 = load i64, i64* %20, align 8
  %177 = load i64, i64* %10, align 8
  %178 = call i32 @bitmap_set(i64* %175, i64 %176, i64 %177)
  br label %179

179:                                              ; preds = %174
  %180 = load i32, i32* %19, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %19, align 4
  %182 = load i64, i64* %18, align 8
  %183 = load i64, i64* %20, align 8
  %184 = add i64 %183, %182
  store i64 %184, i64* %20, align 8
  br label %169

185:                                              ; preds = %169
  br label %186

186:                                              ; preds = %185, %163
  %187 = load i32, i32* %21, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %186
  br label %193

190:                                              ; preds = %186
  %191 = load i32, i32* @ENOMEM, align 4
  %192 = sub nsw i32 0, %191
  br label %193

193:                                              ; preds = %190, %189
  %194 = phi i32 [ 0, %189 ], [ %192, %190 ]
  ret i32 %194
}

declare dso_local i64 @bitmap_find_next_zero_area(i64*, i64, i64, i64, i64) #1

declare dso_local i64 @ALIGN(i64, i64) #1

declare dso_local i32 @bitmap_clear(i64*, i32, i64) #1

declare dso_local i32 @bitmap_set(i64*, i64, i64) #1

declare dso_local i64 @bitmap_intersects(i64*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
