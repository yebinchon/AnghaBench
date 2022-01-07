; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c_vb2_core_expbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c_vb2_core_expbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i64, i32, i32, %struct.vb2_buffer**, %struct.TYPE_2__* }
%struct.vb2_buffer = type { i32, %struct.vb2_plane* }
%struct.vb2_plane = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.dma_buf = type { i32 }

@VB2_MEMORY_MMAP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"queue is not currently set up for mmap\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"queue does not support DMA buffer exporting\0A\00", align 1
@O_CLOEXEC = common dso_local global i32 0, align 4
@O_ACCMODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"queue does support only O_CLOEXEC and access mode flags\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"invalid buffer type\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"buffer index out of range\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"buffer plane out of range\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"expbuf: file io in progress\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@get_dmabuf = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"failed to export buffer %d, plane %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"buffer %d, plane %d failed to export (%d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"buffer %d, plane %d exported as %d descriptor\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vb2_core_expbuf(%struct.vb2_queue* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vb2_queue*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.vb2_buffer*, align 8
  %15 = alloca %struct.vb2_plane*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.dma_buf*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.vb2_buffer* null, %struct.vb2_buffer** %14, align 8
  %18 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  %19 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @VB2_MEMORY_MMAP, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %6
  %24 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %144

27:                                               ; preds = %6
  %28 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  %29 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %28, i32 0, i32 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %27
  %35 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  br label %144

38:                                               ; preds = %27
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @O_CLOEXEC, align 4
  %41 = load i32, i32* @O_ACCMODE, align 4
  %42 = or i32 %40, %41
  %43 = xor i32 %42, -1
  %44 = and i32 %39, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %7, align 4
  br label %144

50:                                               ; preds = %38
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  %53 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %51, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %7, align 4
  br label %144

60:                                               ; preds = %50
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  %63 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = icmp uge i32 %61, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %7, align 4
  br label %144

70:                                               ; preds = %60
  %71 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  %72 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %71, i32 0, i32 3
  %73 = load %struct.vb2_buffer**, %struct.vb2_buffer*** %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.vb2_buffer*, %struct.vb2_buffer** %73, i64 %75
  %77 = load %struct.vb2_buffer*, %struct.vb2_buffer** %76, align 8
  store %struct.vb2_buffer* %77, %struct.vb2_buffer** %14, align 8
  %78 = load i32, i32* %12, align 4
  %79 = load %struct.vb2_buffer*, %struct.vb2_buffer** %14, align 8
  %80 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp uge i32 %78, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %70
  %84 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %7, align 4
  br label %144

87:                                               ; preds = %70
  %88 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  %89 = call i64 @vb2_fileio_is_active(%struct.vb2_queue* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %93 = load i32, i32* @EBUSY, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %7, align 4
  br label %144

95:                                               ; preds = %87
  %96 = load %struct.vb2_buffer*, %struct.vb2_buffer** %14, align 8
  %97 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %96, i32 0, i32 1
  %98 = load %struct.vb2_plane*, %struct.vb2_plane** %97, align 8
  %99 = load i32, i32* %12, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %98, i64 %100
  store %struct.vb2_plane* %101, %struct.vb2_plane** %15, align 8
  %102 = load %struct.vb2_buffer*, %struct.vb2_buffer** %14, align 8
  %103 = load i32, i32* @get_dmabuf, align 4
  %104 = load %struct.vb2_plane*, %struct.vb2_plane** %15, align 8
  %105 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* @O_ACCMODE, align 4
  %109 = and i32 %107, %108
  %110 = call %struct.dma_buf* @call_ptr_memop(%struct.vb2_buffer* %102, i32 %103, i32 %106, i32 %109)
  store %struct.dma_buf* %110, %struct.dma_buf** %17, align 8
  %111 = load %struct.dma_buf*, %struct.dma_buf** %17, align 8
  %112 = call i64 @IS_ERR_OR_NULL(%struct.dma_buf* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %95
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* %12, align 4
  %117 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %115, i32 %116)
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %7, align 4
  br label %144

120:                                              ; preds = %95
  %121 = load %struct.dma_buf*, %struct.dma_buf** %17, align 8
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* @O_ACCMODE, align 4
  %124 = xor i32 %123, -1
  %125 = and i32 %122, %124
  %126 = call i32 @dma_buf_fd(%struct.dma_buf* %121, i32 %125)
  store i32 %126, i32* %16, align 4
  %127 = load i32, i32* %16, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %120
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* %16, align 4
  %133 = call i32 (i32, i8*, ...) @dprintk(i32 3, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i32 %130, i32 %131, i32 %132)
  %134 = load %struct.dma_buf*, %struct.dma_buf** %17, align 8
  %135 = call i32 @dma_buf_put(%struct.dma_buf* %134)
  %136 = load i32, i32* %16, align 4
  store i32 %136, i32* %7, align 4
  br label %144

137:                                              ; preds = %120
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* %16, align 4
  %141 = call i32 (i32, i8*, ...) @dprintk(i32 3, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0), i32 %138, i32 %139, i32 %140)
  %142 = load i32, i32* %16, align 4
  %143 = load i32*, i32** %9, align 8
  store i32 %142, i32* %143, align 4
  store i32 0, i32* %7, align 4
  br label %144

144:                                              ; preds = %137, %129, %114, %91, %83, %66, %56, %46, %34, %23
  %145 = load i32, i32* %7, align 4
  ret i32 %145
}

declare dso_local i32 @dprintk(i32, i8*, ...) #1

declare dso_local i64 @vb2_fileio_is_active(%struct.vb2_queue*) #1

declare dso_local %struct.dma_buf* @call_ptr_memop(%struct.vb2_buffer*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.dma_buf*) #1

declare dso_local i32 @dma_buf_fd(%struct.dma_buf*, i32) #1

declare dso_local i32 @dma_buf_put(%struct.dma_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
