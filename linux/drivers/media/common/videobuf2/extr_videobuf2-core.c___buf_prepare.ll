; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c___buf_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c___buf_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32, i32, i32, i32, %struct.TYPE_2__*, %struct.vb2_queue* }
%struct.TYPE_2__ = type { i32 }
%struct.vb2_queue = type { i32, i64, i64 }

@.str = private unnamed_addr constant [31 x i8] c"fatal error occurred on queue\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@buf_out_validate = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"buffer validation failed\0A\00", align 1
@VB2_BUF_STATE_PREPARING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Invalid queue type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"buffer preparation failed: %d\0A\00", align 1
@prepare = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*)* @__buf_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__buf_prepare(%struct.vb2_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vb2_buffer*, align 8
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %3, align 8
  %8 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %9 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %8, i32 0, i32 5
  %10 = load %struct.vb2_queue*, %struct.vb2_queue** %9, align 8
  store %struct.vb2_queue* %10, %struct.vb2_queue** %4, align 8
  %11 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %12 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %5, align 4
  %14 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %15 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %108

22:                                               ; preds = %1
  %23 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %24 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %108

28:                                               ; preds = %22
  %29 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %30 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @WARN_ON(i32 %31)
  %33 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %34 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %28
  %38 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %39 = load i32, i32* @buf_out_validate, align 4
  %40 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %41 = call i32 @call_vb_qop(%struct.vb2_buffer* %38, i32 %39, %struct.vb2_buffer* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %2, align 4
  br label %108

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47, %28
  %49 = load i32, i32* @VB2_BUF_STATE_PREPARING, align 4
  %50 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %51 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %53 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %64 [
    i32 129, label %55
    i32 128, label %58
    i32 130, label %61
  ]

55:                                               ; preds = %48
  %56 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %57 = call i32 @__prepare_mmap(%struct.vb2_buffer* %56)
  store i32 %57, i32* %7, align 4
  br label %68

58:                                               ; preds = %48
  %59 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %60 = call i32 @__prepare_userptr(%struct.vb2_buffer* %59)
  store i32 %60, i32* %7, align 4
  br label %68

61:                                               ; preds = %48
  %62 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %63 = call i32 @__prepare_dmabuf(%struct.vb2_buffer* %62)
  store i32 %63, i32* %7, align 4
  br label %68

64:                                               ; preds = %48
  %65 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %64, %61, %58, %55
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load i32, i32* %7, align 4
  %73 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %76 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %2, align 4
  br label %108

78:                                               ; preds = %68
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %97, %78
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %82 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = icmp ult i32 %80, %83
  br i1 %84, label %85, label %100

85:                                               ; preds = %79
  %86 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %87 = load i32, i32* @prepare, align 4
  %88 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %89 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %88, i32 0, i32 4
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @call_void_memop(%struct.vb2_buffer* %86, i32 %87, i32 %95)
  br label %97

97:                                               ; preds = %85
  %98 = load i32, i32* %6, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %6, align 4
  br label %79

100:                                              ; preds = %79
  %101 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %102 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %101, i32 0, i32 2
  store i32 1, i32* %102, align 8
  %103 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %104 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %103, i32 0, i32 1
  store i32 1, i32* %104, align 4
  %105 = load i32, i32* %5, align 4
  %106 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %107 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %100, %71, %44, %27, %18
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @dprintk(i32, i8*, ...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @call_vb_qop(%struct.vb2_buffer*, i32, %struct.vb2_buffer*) #1

declare dso_local i32 @__prepare_mmap(%struct.vb2_buffer*) #1

declare dso_local i32 @__prepare_userptr(%struct.vb2_buffer*) #1

declare dso_local i32 @__prepare_dmabuf(%struct.vb2_buffer*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @call_void_memop(%struct.vb2_buffer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
