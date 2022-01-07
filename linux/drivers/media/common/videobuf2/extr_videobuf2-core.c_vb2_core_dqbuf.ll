; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c_vb2_core_dqbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c_vb2_core_dqbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.vb2_buffer = type { i32, i32, i32*, %struct.TYPE_3__, i32, i64 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"returning done buffer\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"returning done buffer with errors\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"invalid buffer state\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@buf_finish = common dso_local global i32 0, align 4
@fill_user_buffer = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"dqbuf of buffer %d, with state %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vb2_core_dqbuf(%struct.vb2_queue* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vb2_queue*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vb2_buffer*, align 8
  %11 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.vb2_buffer* null, %struct.vb2_buffer** %10, align 8
  %12 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @__vb2_get_done_vb(%struct.vb2_queue* %12, %struct.vb2_buffer** %10, i8* %13, i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %5, align 4
  br label %101

20:                                               ; preds = %4
  %21 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %22 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %28 [
    i32 129, label %24
    i32 128, label %26
  ]

24:                                               ; preds = %20
  %25 = call i32 (i32, i8*, ...) @dprintk(i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %32

26:                                               ; preds = %20
  %27 = call i32 (i32, i8*, ...) @dprintk(i32 3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %32

28:                                               ; preds = %20
  %29 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %101

32:                                               ; preds = %26, %24
  %33 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %34 = load i32, i32* @buf_finish, align 4
  %35 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %36 = call i32 @call_void_vb_qop(%struct.vb2_buffer* %33, i32 %34, %struct.vb2_buffer* %35)
  %37 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %38 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %37, i32 0, i32 5
  store i64 0, i64* %38, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %32
  %42 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %43 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %7, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %41, %32
  %47 = load i8*, i8** %8, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %51 = load i32, i32* @fill_user_buffer, align 4
  %52 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @call_void_bufop(%struct.vb2_queue* %50, i32 %51, %struct.vb2_buffer* %52, i8* %53)
  br label %55

55:                                               ; preds = %49, %46
  %56 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %57 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %56, i32 0, i32 4
  %58 = call i32 @list_del(i32* %57)
  %59 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %60 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %60, align 4
  %63 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %64 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %65 = call i32 @trace_vb2_dqbuf(%struct.vb2_queue* %63, %struct.vb2_buffer* %64)
  %66 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %67 = call i32 @__vb2_dqbuf(%struct.vb2_buffer* %66)
  %68 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %69 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @WARN_ON(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %55
  %75 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %76 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %75, i32 0, i32 3
  %77 = call i32 @media_request_object_unbind(%struct.TYPE_3__* %76)
  %78 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %79 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %78, i32 0, i32 3
  %80 = call i32 @media_request_object_put(%struct.TYPE_3__* %79)
  br label %81

81:                                               ; preds = %74, %55
  %82 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %83 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %88 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @media_request_put(i32* %89)
  br label %91

91:                                               ; preds = %86, %81
  %92 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %93 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %92, i32 0, i32 2
  store i32* null, i32** %93, align 8
  %94 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %95 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %98 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (i32, i8*, ...) @dprintk(i32 2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %96, i32 %99)
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %91, %28, %18
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @__vb2_get_done_vb(%struct.vb2_queue*, %struct.vb2_buffer**, i8*, i32) #1

declare dso_local i32 @dprintk(i32, i8*, ...) #1

declare dso_local i32 @call_void_vb_qop(%struct.vb2_buffer*, i32, %struct.vb2_buffer*) #1

declare dso_local i32 @call_void_bufop(%struct.vb2_queue*, i32, %struct.vb2_buffer*, i8*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @trace_vb2_dqbuf(%struct.vb2_queue*, %struct.vb2_buffer*) #1

declare dso_local i32 @__vb2_dqbuf(%struct.vb2_buffer*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @media_request_object_unbind(%struct.TYPE_3__*) #1

declare dso_local i32 @media_request_object_put(%struct.TYPE_3__*) #1

declare dso_local i32 @media_request_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
