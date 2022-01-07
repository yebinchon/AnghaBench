; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c___vb2_buf_mem_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c___vb2_buf_mem_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32, %struct.TYPE_2__*, %struct.vb2_queue* }
%struct.TYPE_2__ = type { i64, i32* }
%struct.vb2_queue = type { i32, i32, i32, i32, i64* }

@ENOMEM = common dso_local global i32 0, align 4
@alloc = common dso_local global i32 0, align 4
@put = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*)* @__vb2_buf_mem_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__vb2_buf_mem_alloc(%struct.vb2_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vb2_buffer*, align 8
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %3, align 8
  %9 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %10 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %9, i32 0, i32 2
  %11 = load %struct.vb2_queue*, %struct.vb2_queue** %10, align 8
  store %struct.vb2_queue* %11, %struct.vb2_queue** %4, align 8
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %92, %1
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %17 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %95

20:                                               ; preds = %14
  %21 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %22 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @PAGE_ALIGN(i64 %28)
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %32 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ult i64 %30, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %20
  br label %96

41:                                               ; preds = %20
  %42 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %43 = load i32, i32* @alloc, align 4
  %44 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %45 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %44, i32 0, i32 4
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  br label %58

53:                                               ; preds = %41
  %54 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %55 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  br label %58

58:                                               ; preds = %53, %52
  %59 = phi i64 [ %50, %52 ], [ %57, %53 ]
  %60 = trunc i64 %59 to i32
  %61 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %62 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %66 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %69 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i8* @call_ptr_memop(%struct.vb2_buffer* %42, i32 %43, i32 %60, i32 %63, i64 %64, i32 %67, i32 %70)
  store i8* %71, i8** %5, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = call i64 @IS_ERR_OR_NULL(i8* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %58
  %76 = load i8*, i8** %5, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i8*, i8** %5, align 8
  %80 = call i32 @PTR_ERR(i8* %79)
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %78, %75
  br label %96

82:                                               ; preds = %58
  %83 = load i8*, i8** %5, align 8
  %84 = bitcast i8* %83 to i32*
  %85 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %86 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  store i32* %84, i32** %91, align 8
  br label %92

92:                                               ; preds = %82
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %14

95:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %126

96:                                               ; preds = %81, %40
  br label %97

97:                                               ; preds = %121, %96
  %98 = load i32, i32* %6, align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %124

100:                                              ; preds = %97
  %101 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %102 = load i32, i32* @put, align 4
  %103 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %104 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %103, i32 0, i32 1
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @call_void_memop(%struct.vb2_buffer* %101, i32 %102, i32* %111)
  %113 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %114 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %113, i32 0, i32 1
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sub nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  store i32* null, i32** %120, align 8
  br label %121

121:                                              ; preds = %100
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %6, align 4
  br label %97

124:                                              ; preds = %97
  %125 = load i32, i32* %7, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %124, %95
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i8* @call_ptr_memop(%struct.vb2_buffer*, i32, i32, i32, i64, i32, i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @call_void_memop(%struct.vb2_buffer*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
