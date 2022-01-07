; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c_vb2_get_unmapped_area.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c_vb2_get_unmapped_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i64, %struct.vb2_buffer** }
%struct.vb2_buffer = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@VB2_MEMORY_MMAP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"queue is not currently set up for mmap\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vb2_get_unmapped_area(%struct.vb2_queue* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.vb2_queue*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.vb2_buffer*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* @PAGE_SHIFT, align 8
  %20 = shl i64 %18, %19
  store i64 %20, i64* %12, align 8
  %21 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %22 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @VB2_MEMORY_MMAP, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %5
  %27 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %28 = load i64, i64* @EINVAL, align 8
  %29 = sub i64 0, %28
  store i64 %29, i64* %6, align 8
  br label %60

30:                                               ; preds = %5
  %31 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %32 = load i64, i64* %12, align 8
  %33 = call i32 @__find_plane_by_offset(%struct.vb2_queue* %31, i64 %32, i32* %14, i32* %15)
  store i32 %33, i32* %17, align 4
  %34 = load i32, i32* %17, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* %17, align 4
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %6, align 8
  br label %60

39:                                               ; preds = %30
  %40 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %41 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %40, i32 0, i32 1
  %42 = load %struct.vb2_buffer**, %struct.vb2_buffer*** %41, align 8
  %43 = load i32, i32* %14, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.vb2_buffer*, %struct.vb2_buffer** %42, i64 %44
  %46 = load %struct.vb2_buffer*, %struct.vb2_buffer** %45, align 8
  store %struct.vb2_buffer* %46, %struct.vb2_buffer** %13, align 8
  %47 = load %struct.vb2_buffer*, %struct.vb2_buffer** %13, align 8
  %48 = load i32, i32* %15, align 4
  %49 = call i8* @vb2_plane_vaddr(%struct.vb2_buffer* %47, i32 %48)
  store i8* %49, i8** %16, align 8
  %50 = load i8*, i8** %16, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %39
  %53 = load i8*, i8** %16, align 8
  %54 = ptrtoint i8* %53 to i64
  br label %58

55:                                               ; preds = %39
  %56 = load i64, i64* @EINVAL, align 8
  %57 = sub i64 0, %56
  br label %58

58:                                               ; preds = %55, %52
  %59 = phi i64 [ %54, %52 ], [ %57, %55 ]
  store i64 %59, i64* %6, align 8
  br label %60

60:                                               ; preds = %58, %36, %26
  %61 = load i64, i64* %6, align 8
  ret i64 %61
}

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @__find_plane_by_offset(%struct.vb2_queue*, i64, i32*, i32*) #1

declare dso_local i8* @vb2_plane_vaddr(%struct.vb2_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
