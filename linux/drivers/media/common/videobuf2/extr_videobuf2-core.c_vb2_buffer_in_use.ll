; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c_vb2_buffer_in_use.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c_vb2_buffer_in_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.vb2_buffer = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@num_users = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vb2_buffer_in_use(%struct.vb2_queue* %0, %struct.vb2_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca %struct.vb2_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %4, align 8
  store %struct.vb2_buffer* %1, %struct.vb2_buffer** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %33, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.vb2_buffer*, %struct.vb2_buffer** %5, align 8
  %11 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ult i32 %9, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %8
  %15 = load %struct.vb2_buffer*, %struct.vb2_buffer** %5, align 8
  %16 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %14
  %26 = load %struct.vb2_buffer*, %struct.vb2_buffer** %5, align 8
  %27 = load i32, i32* @num_users, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @call_memop(%struct.vb2_buffer* %26, i32 %27, i8* %28)
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %37

32:                                               ; preds = %25, %14
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %6, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %8

36:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %31
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @call_memop(%struct.vb2_buffer*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
