; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c_vb2_thread_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c_vb2_thread_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { %struct.vb2_threadio_data*, i32, i32 }
%struct.vb2_threadio_data = type { i32*, i8*, i32 }

@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"file io: vb2_init_fileio result: %d\0A\00", align 1
@vb2_thread = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"vb2-%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vb2_thread_start(%struct.vb2_queue* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vb2_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.vb2_threadio_data*, align 8
  %11 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %13 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %12, i32 0, i32 0
  %14 = load %struct.vb2_threadio_data*, %struct.vb2_threadio_data** %13, align 8
  %15 = icmp ne %struct.vb2_threadio_data* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %93

19:                                               ; preds = %4
  %20 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %21 = call i64 @vb2_is_busy(%struct.vb2_queue* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %93

26:                                               ; preds = %19
  %27 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %28 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @WARN_ON(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %93

35:                                               ; preds = %26
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.vb2_threadio_data* @kzalloc(i32 24, i32 %36)
  store %struct.vb2_threadio_data* %37, %struct.vb2_threadio_data** %10, align 8
  %38 = load %struct.vb2_threadio_data*, %struct.vb2_threadio_data** %10, align 8
  %39 = icmp eq %struct.vb2_threadio_data* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %93

43:                                               ; preds = %35
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.vb2_threadio_data*, %struct.vb2_threadio_data** %10, align 8
  %46 = getelementptr inbounds %struct.vb2_threadio_data, %struct.vb2_threadio_data* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load %struct.vb2_threadio_data*, %struct.vb2_threadio_data** %10, align 8
  %49 = getelementptr inbounds %struct.vb2_threadio_data, %struct.vb2_threadio_data* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %51 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %52 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i32 @__vb2_init_fileio(%struct.vb2_queue* %50, i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @dprintk(i32 3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %43
  br label %89

63:                                               ; preds = %43
  %64 = load %struct.vb2_threadio_data*, %struct.vb2_threadio_data** %10, align 8
  %65 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %66 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %65, i32 0, i32 0
  store %struct.vb2_threadio_data* %64, %struct.vb2_threadio_data** %66, align 8
  %67 = load i32, i32* @vb2_thread, align 4
  %68 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = call i32* @kthread_run(i32 %67, %struct.vb2_queue* %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %69)
  %71 = load %struct.vb2_threadio_data*, %struct.vb2_threadio_data** %10, align 8
  %72 = getelementptr inbounds %struct.vb2_threadio_data, %struct.vb2_threadio_data* %71, i32 0, i32 0
  store i32* %70, i32** %72, align 8
  %73 = load %struct.vb2_threadio_data*, %struct.vb2_threadio_data** %10, align 8
  %74 = getelementptr inbounds %struct.vb2_threadio_data, %struct.vb2_threadio_data* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = call i64 @IS_ERR(i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %63
  %79 = load %struct.vb2_threadio_data*, %struct.vb2_threadio_data** %10, align 8
  %80 = getelementptr inbounds %struct.vb2_threadio_data, %struct.vb2_threadio_data* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @PTR_ERR(i32* %81)
  store i32 %82, i32* %11, align 4
  %83 = load %struct.vb2_threadio_data*, %struct.vb2_threadio_data** %10, align 8
  %84 = getelementptr inbounds %struct.vb2_threadio_data, %struct.vb2_threadio_data* %83, i32 0, i32 0
  store i32* null, i32** %84, align 8
  br label %86

85:                                               ; preds = %63
  store i32 0, i32* %5, align 4
  br label %93

86:                                               ; preds = %78
  %87 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %88 = call i32 @__vb2_cleanup_fileio(%struct.vb2_queue* %87)
  br label %89

89:                                               ; preds = %86, %62
  %90 = load %struct.vb2_threadio_data*, %struct.vb2_threadio_data** %10, align 8
  %91 = call i32 @kfree(%struct.vb2_threadio_data* %90)
  %92 = load i32, i32* %11, align 4
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %89, %85, %40, %32, %23, %16
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i64 @vb2_is_busy(%struct.vb2_queue*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.vb2_threadio_data* @kzalloc(i32, i32) #1

declare dso_local i32 @__vb2_init_fileio(%struct.vb2_queue*, i32) #1

declare dso_local i32 @dprintk(i32, i8*, i32) #1

declare dso_local i32* @kthread_run(i32, %struct.vb2_queue*, i8*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @__vb2_cleanup_fileio(%struct.vb2_queue*) #1

declare dso_local i32 @kfree(%struct.vb2_threadio_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
