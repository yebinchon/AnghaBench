; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c___find_plane_by_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c___find_plane_by_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32, %struct.vb2_buffer** }
%struct.vb2_buffer = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i64, i32*, i32*)* @__find_plane_by_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__find_plane_by_offset(%struct.vb2_queue* %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vb2_queue*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.vb2_buffer*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %55, %4
  %14 = load i32, i32* %11, align 4
  %15 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %16 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %58

19:                                               ; preds = %13
  %20 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %21 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %20, i32 0, i32 1
  %22 = load %struct.vb2_buffer**, %struct.vb2_buffer*** %21, align 8
  %23 = load i32, i32* %11, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.vb2_buffer*, %struct.vb2_buffer** %22, i64 %24
  %26 = load %struct.vb2_buffer*, %struct.vb2_buffer** %25, align 8
  store %struct.vb2_buffer* %26, %struct.vb2_buffer** %10, align 8
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %51, %19
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %30 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ult i32 %28, %31
  br i1 %32, label %33, label %54

33:                                               ; preds = %27
  %34 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %35 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i32, i32* %12, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %33
  %46 = load i32, i32* %11, align 4
  %47 = load i32*, i32** %8, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32*, i32** %9, align 8
  store i32 %48, i32* %49, align 4
  store i32 0, i32* %5, align 4
  br label %61

50:                                               ; preds = %33
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %12, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %12, align 4
  br label %27

54:                                               ; preds = %27
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %11, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %11, align 4
  br label %13

58:                                               ; preds = %13
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %58, %45
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
