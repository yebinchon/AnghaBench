; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c_vb2_buffer_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c_vb2_buffer_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i64, i32, %struct.TYPE_5__, i32, i64, %struct.TYPE_4__*, i32, i32, %struct.vb2_queue* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.vb2_queue = type { i32, i32, i32, i32 }

@VB2_BUF_STATE_ACTIVE = common dso_local global i64 0, align 8
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"done processing on buffer %d, state: %d\0A\00", align 1
@finish = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vb2_buffer_done(%struct.vb2_buffer* %0, i32 %1) #0 {
  %3 = alloca %struct.vb2_buffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vb2_queue*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %9 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %8, i32 0, i32 8
  %10 = load %struct.vb2_queue*, %struct.vb2_queue** %9, align 8
  store %struct.vb2_queue* %10, %struct.vb2_queue** %5, align 8
  %11 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %12 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @VB2_BUF_STATE_ACTIVE, align 8
  %15 = icmp ne i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %124

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 128
  br label %31

31:                                               ; preds = %28, %24, %20
  %32 = phi i1 [ false, %24 ], [ false, %20 ], [ %30, %28 ]
  %33 = zext i1 %32 to i32
  %34 = call i64 @WARN_ON(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %36, %31
  %39 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %40 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @dprintk(i32 4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 128
  br i1 %45, label %46, label %71

46:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %65, %46
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %50 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp ult i32 %48, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %47
  %54 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %55 = load i32, i32* @finish, align 4
  %56 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %57 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %56, i32 0, i32 5
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @call_void_memop(%struct.vb2_buffer* %54, i32 %55, i32 %63)
  br label %65

65:                                               ; preds = %53
  %66 = load i32, i32* %7, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %47

68:                                               ; preds = %47
  %69 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %70 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %69, i32 0, i32 4
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %68, %38
  %72 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %73 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %72, i32 0, i32 1
  %74 = load i64, i64* %6, align 8
  %75 = call i32 @spin_lock_irqsave(i32* %73, i64 %74)
  %76 = load i32, i32* %4, align 4
  %77 = icmp eq i32 %76, 128
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %80 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %79, i32 0, i32 0
  store i64 128, i64* %80, align 8
  br label %91

81:                                               ; preds = %71
  %82 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %83 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %82, i32 0, i32 3
  %84 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %85 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %84, i32 0, i32 3
  %86 = call i32 @list_add_tail(i32* %83, i32* %85)
  %87 = load i32, i32* %4, align 4
  %88 = zext i32 %87 to i64
  %89 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %90 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  br label %91

91:                                               ; preds = %81, %78
  %92 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %93 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %92, i32 0, i32 2
  %94 = call i32 @atomic_dec(i32* %93)
  %95 = load i32, i32* %4, align 4
  %96 = icmp ne i32 %95, 128
  br i1 %96, label %97, label %110

97:                                               ; preds = %91
  %98 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %99 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %97
  %104 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %105 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %104, i32 0, i32 2
  %106 = call i32 @media_request_object_unbind(%struct.TYPE_5__* %105)
  %107 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %108 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %107, i32 0, i32 2
  %109 = call i32 @media_request_object_put(%struct.TYPE_5__* %108)
  br label %110

110:                                              ; preds = %103, %97, %91
  %111 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %112 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %111, i32 0, i32 1
  %113 = load i64, i64* %6, align 8
  %114 = call i32 @spin_unlock_irqrestore(i32* %112, i64 %113)
  %115 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %116 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %117 = call i32 @trace_vb2_buf_done(%struct.vb2_queue* %115, %struct.vb2_buffer* %116)
  %118 = load i32, i32* %4, align 4
  switch i32 %118, label %120 [
    i32 128, label %119
  ]

119:                                              ; preds = %110
  br label %124

120:                                              ; preds = %110
  %121 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %122 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %121, i32 0, i32 0
  %123 = call i32 @wake_up(i32* %122)
  br label %124

124:                                              ; preds = %19, %119, %120
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dprintk(i32, i8*, i32, i32) #1

declare dso_local i32 @call_void_memop(%struct.vb2_buffer*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @media_request_object_unbind(%struct.TYPE_5__*) #1

declare dso_local i32 @media_request_object_put(%struct.TYPE_5__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @trace_vb2_buf_done(%struct.vb2_queue*, %struct.vb2_buffer*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
