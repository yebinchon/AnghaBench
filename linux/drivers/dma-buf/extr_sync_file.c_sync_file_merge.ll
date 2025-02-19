; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_sync_file.c_sync_file_merge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_sync_file.c_sync_file_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sync_file = type { i32, i32 }
%struct.dma_fence = type { i64, i32, i32 }

@INT_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sync_file* (i8*, %struct.sync_file*, %struct.sync_file*)* @sync_file_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sync_file* @sync_file_merge(i8* %0, %struct.sync_file* %1, %struct.sync_file* %2) #0 {
  %4 = alloca %struct.sync_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sync_file*, align 8
  %7 = alloca %struct.sync_file*, align 8
  %8 = alloca %struct.sync_file*, align 8
  %9 = alloca %struct.dma_fence**, align 8
  %10 = alloca %struct.dma_fence**, align 8
  %11 = alloca %struct.dma_fence**, align 8
  %12 = alloca %struct.dma_fence**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.dma_fence*, align 8
  %20 = alloca %struct.dma_fence*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.sync_file* %1, %struct.sync_file** %6, align 8
  store %struct.sync_file* %2, %struct.sync_file** %7, align 8
  %21 = call %struct.sync_file* (...) @sync_file_alloc()
  store %struct.sync_file* %21, %struct.sync_file** %8, align 8
  %22 = load %struct.sync_file*, %struct.sync_file** %8, align 8
  %23 = icmp ne %struct.sync_file* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store %struct.sync_file* null, %struct.sync_file** %4, align 8
  br label %205

25:                                               ; preds = %3
  %26 = load %struct.sync_file*, %struct.sync_file** %6, align 8
  %27 = call %struct.dma_fence** @get_fences(%struct.sync_file* %26, i32* %17)
  store %struct.dma_fence** %27, %struct.dma_fence*** %11, align 8
  %28 = load %struct.sync_file*, %struct.sync_file** %7, align 8
  %29 = call %struct.dma_fence** @get_fences(%struct.sync_file* %28, i32* %18)
  store %struct.dma_fence** %29, %struct.dma_fence*** %12, align 8
  %30 = load i32, i32* %17, align 4
  %31 = load i32, i32* @INT_MAX, align 4
  %32 = load i32, i32* %18, align 4
  %33 = sub nsw i32 %31, %32
  %34 = icmp sgt i32 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  store %struct.sync_file* null, %struct.sync_file** %4, align 8
  br label %205

36:                                               ; preds = %25
  %37 = load i32, i32* %17, align 4
  %38 = load i32, i32* %18, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %16, align 4
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.dma_fence** @kcalloc(i32 %40, i32 8, i32 %41)
  store %struct.dma_fence** %42, %struct.dma_fence*** %9, align 8
  %43 = load %struct.dma_fence**, %struct.dma_fence*** %9, align 8
  %44 = icmp ne %struct.dma_fence** %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %36
  br label %200

46:                                               ; preds = %36
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %47

47:                                               ; preds = %121, %46
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %17, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %18, align 4
  %54 = icmp slt i32 %52, %53
  br label %55

55:                                               ; preds = %51, %47
  %56 = phi i1 [ false, %47 ], [ %54, %51 ]
  br i1 %56, label %57, label %122

57:                                               ; preds = %55
  %58 = load %struct.dma_fence**, %struct.dma_fence*** %11, align 8
  %59 = load i32, i32* %14, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %58, i64 %60
  %62 = load %struct.dma_fence*, %struct.dma_fence** %61, align 8
  store %struct.dma_fence* %62, %struct.dma_fence** %19, align 8
  %63 = load %struct.dma_fence**, %struct.dma_fence*** %12, align 8
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %63, i64 %65
  %67 = load %struct.dma_fence*, %struct.dma_fence** %66, align 8
  store %struct.dma_fence* %67, %struct.dma_fence** %20, align 8
  %68 = load %struct.dma_fence*, %struct.dma_fence** %19, align 8
  %69 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.dma_fence*, %struct.dma_fence** %20, align 8
  %72 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp slt i64 %70, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %57
  %76 = load %struct.dma_fence**, %struct.dma_fence*** %9, align 8
  %77 = load %struct.dma_fence*, %struct.dma_fence** %19, align 8
  %78 = call i32 @add_fence(%struct.dma_fence** %76, i32* %13, %struct.dma_fence* %77)
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %14, align 4
  br label %121

81:                                               ; preds = %57
  %82 = load %struct.dma_fence*, %struct.dma_fence** %19, align 8
  %83 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.dma_fence*, %struct.dma_fence** %20, align 8
  %86 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp sgt i64 %84, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %81
  %90 = load %struct.dma_fence**, %struct.dma_fence*** %9, align 8
  %91 = load %struct.dma_fence*, %struct.dma_fence** %20, align 8
  %92 = call i32 @add_fence(%struct.dma_fence** %90, i32* %13, %struct.dma_fence* %91)
  %93 = load i32, i32* %15, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %15, align 4
  br label %120

95:                                               ; preds = %81
  %96 = load %struct.dma_fence*, %struct.dma_fence** %19, align 8
  %97 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.dma_fence*, %struct.dma_fence** %20, align 8
  %100 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.dma_fence*, %struct.dma_fence** %19, align 8
  %103 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @__dma_fence_is_later(i32 %98, i32 %101, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %95
  %108 = load %struct.dma_fence**, %struct.dma_fence*** %9, align 8
  %109 = load %struct.dma_fence*, %struct.dma_fence** %19, align 8
  %110 = call i32 @add_fence(%struct.dma_fence** %108, i32* %13, %struct.dma_fence* %109)
  br label %115

111:                                              ; preds = %95
  %112 = load %struct.dma_fence**, %struct.dma_fence*** %9, align 8
  %113 = load %struct.dma_fence*, %struct.dma_fence** %20, align 8
  %114 = call i32 @add_fence(%struct.dma_fence** %112, i32* %13, %struct.dma_fence* %113)
  br label %115

115:                                              ; preds = %111, %107
  %116 = load i32, i32* %14, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %15, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %15, align 4
  br label %120

120:                                              ; preds = %115, %89
  br label %121

121:                                              ; preds = %120, %75
  br label %47

122:                                              ; preds = %55
  br label %123

123:                                              ; preds = %135, %122
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* %17, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %138

127:                                              ; preds = %123
  %128 = load %struct.dma_fence**, %struct.dma_fence*** %9, align 8
  %129 = load %struct.dma_fence**, %struct.dma_fence*** %11, align 8
  %130 = load i32, i32* %14, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %129, i64 %131
  %133 = load %struct.dma_fence*, %struct.dma_fence** %132, align 8
  %134 = call i32 @add_fence(%struct.dma_fence** %128, i32* %13, %struct.dma_fence* %133)
  br label %135

135:                                              ; preds = %127
  %136 = load i32, i32* %14, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %14, align 4
  br label %123

138:                                              ; preds = %123
  br label %139

139:                                              ; preds = %151, %138
  %140 = load i32, i32* %15, align 4
  %141 = load i32, i32* %18, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %154

143:                                              ; preds = %139
  %144 = load %struct.dma_fence**, %struct.dma_fence*** %9, align 8
  %145 = load %struct.dma_fence**, %struct.dma_fence*** %12, align 8
  %146 = load i32, i32* %15, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %145, i64 %147
  %149 = load %struct.dma_fence*, %struct.dma_fence** %148, align 8
  %150 = call i32 @add_fence(%struct.dma_fence** %144, i32* %13, %struct.dma_fence* %149)
  br label %151

151:                                              ; preds = %143
  %152 = load i32, i32* %15, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %15, align 4
  br label %139

154:                                              ; preds = %139
  %155 = load i32, i32* %13, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %167

157:                                              ; preds = %154
  %158 = load %struct.dma_fence**, %struct.dma_fence*** %11, align 8
  %159 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %158, i64 0
  %160 = load %struct.dma_fence*, %struct.dma_fence** %159, align 8
  %161 = call %struct.dma_fence* @dma_fence_get(%struct.dma_fence* %160)
  %162 = load %struct.dma_fence**, %struct.dma_fence*** %9, align 8
  %163 = load i32, i32* %13, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %13, align 4
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %162, i64 %165
  store %struct.dma_fence* %161, %struct.dma_fence** %166, align 8
  br label %167

167:                                              ; preds = %157, %154
  %168 = load i32, i32* %16, align 4
  %169 = load i32, i32* %13, align 4
  %170 = icmp sgt i32 %168, %169
  br i1 %170, label %171, label %184

171:                                              ; preds = %167
  %172 = load %struct.dma_fence**, %struct.dma_fence*** %9, align 8
  %173 = load i32, i32* %13, align 4
  %174 = sext i32 %173 to i64
  %175 = mul i64 %174, 8
  %176 = trunc i64 %175 to i32
  %177 = load i32, i32* @GFP_KERNEL, align 4
  %178 = call %struct.dma_fence** @krealloc(%struct.dma_fence** %172, i32 %176, i32 %177)
  store %struct.dma_fence** %178, %struct.dma_fence*** %10, align 8
  %179 = load %struct.dma_fence**, %struct.dma_fence*** %10, align 8
  %180 = icmp ne %struct.dma_fence** %179, null
  br i1 %180, label %182, label %181

181:                                              ; preds = %171
  br label %200

182:                                              ; preds = %171
  %183 = load %struct.dma_fence**, %struct.dma_fence*** %10, align 8
  store %struct.dma_fence** %183, %struct.dma_fence*** %9, align 8
  br label %184

184:                                              ; preds = %182, %167
  %185 = load %struct.sync_file*, %struct.sync_file** %8, align 8
  %186 = load %struct.dma_fence**, %struct.dma_fence*** %9, align 8
  %187 = load i32, i32* %13, align 4
  %188 = call i64 @sync_file_set_fence(%struct.sync_file* %185, %struct.dma_fence** %186, i32 %187)
  %189 = icmp slt i64 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %184
  %191 = load %struct.dma_fence**, %struct.dma_fence*** %9, align 8
  %192 = call i32 @kfree(%struct.dma_fence** %191)
  br label %200

193:                                              ; preds = %184
  %194 = load %struct.sync_file*, %struct.sync_file** %8, align 8
  %195 = getelementptr inbounds %struct.sync_file, %struct.sync_file* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load i8*, i8** %5, align 8
  %198 = call i32 @strlcpy(i32 %196, i8* %197, i32 4)
  %199 = load %struct.sync_file*, %struct.sync_file** %8, align 8
  store %struct.sync_file* %199, %struct.sync_file** %4, align 8
  br label %205

200:                                              ; preds = %190, %181, %45
  %201 = load %struct.sync_file*, %struct.sync_file** %8, align 8
  %202 = getelementptr inbounds %struct.sync_file, %struct.sync_file* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @fput(i32 %203)
  store %struct.sync_file* null, %struct.sync_file** %4, align 8
  br label %205

205:                                              ; preds = %200, %193, %35, %24
  %206 = load %struct.sync_file*, %struct.sync_file** %4, align 8
  ret %struct.sync_file* %206
}

declare dso_local %struct.sync_file* @sync_file_alloc(...) #1

declare dso_local %struct.dma_fence** @get_fences(%struct.sync_file*, i32*) #1

declare dso_local %struct.dma_fence** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @add_fence(%struct.dma_fence**, i32*, %struct.dma_fence*) #1

declare dso_local i64 @__dma_fence_is_later(i32, i32, i32) #1

declare dso_local %struct.dma_fence* @dma_fence_get(%struct.dma_fence*) #1

declare dso_local %struct.dma_fence** @krealloc(%struct.dma_fence**, i32, i32) #1

declare dso_local i64 @sync_file_set_fence(%struct.sync_file*, %struct.dma_fence**, i32) #1

declare dso_local i32 @kfree(%struct.dma_fence**) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @fput(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
