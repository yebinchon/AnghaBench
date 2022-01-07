; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c___vb2_wait_for_done_vb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c___vb2_wait_for_done_vb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32, i64, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [45 x i8] c"another dup()ped fd is waiting for a buffer\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"streaming off, will not wait for buffers\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Queue in error state, will not wait for buffers\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"last buffer dequeued already, will not wait for buffers\0A\00", align 1
@EPIPE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"nonblocking and no buffers to dequeue, will not wait\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@wait_prepare = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"will sleep waiting for buffers\0A\00", align 1
@wait_finish = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"sleep was interrupted\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32)* @__vb2_wait_for_done_vb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__vb2_wait_for_done_vb(%struct.vb2_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %7

7:                                                ; preds = %96, %2
  %8 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %9 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %98

16:                                               ; preds = %7
  %17 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %18 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %98

25:                                               ; preds = %16
  %26 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %27 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %98

34:                                               ; preds = %25
  %35 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %36 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = call i32 @dprintk(i32 3, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  %41 = load i32, i32* @EPIPE, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %98

43:                                               ; preds = %34
  %44 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %45 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %44, i32 0, i32 3
  %46 = call i32 @list_empty(i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  br label %97

49:                                               ; preds = %43
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = call i32 @dprintk(i32 3, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  %54 = load i32, i32* @EAGAIN, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %98

56:                                               ; preds = %49
  %57 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %58 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %60 = load i32, i32* @wait_prepare, align 4
  %61 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %62 = call i32 @call_void_qop(%struct.vb2_queue* %59, i32 %60, %struct.vb2_queue* %61)
  %63 = call i32 @dprintk(i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %64 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %65 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %68 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %67, i32 0, i32 3
  %69 = call i32 @list_empty(i32* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %56
  %72 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %73 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %78 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br label %81

81:                                               ; preds = %76, %71, %56
  %82 = phi i1 [ true, %71 ], [ true, %56 ], [ %80, %76 ]
  %83 = zext i1 %82 to i32
  %84 = call i32 @wait_event_interruptible(i32 %66, i32 %83)
  store i32 %84, i32* %6, align 4
  %85 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %86 = load i32, i32* @wait_finish, align 4
  %87 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %88 = call i32 @call_void_qop(%struct.vb2_queue* %85, i32 %86, %struct.vb2_queue* %87)
  %89 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %90 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %89, i32 0, i32 0
  store i32 0, i32* %90, align 8
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %81
  %94 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %3, align 4
  br label %98

96:                                               ; preds = %81
  br label %7

97:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %93, %52, %39, %30, %21, %12
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @call_void_qop(%struct.vb2_queue*, i32, %struct.vb2_queue*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
