; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_vbi.c_buffer_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_vbi.c_buffer_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { %struct.file* }
%struct.file = type { %struct.saa7146_fh* }
%struct.saa7146_fh = type { %struct.saa7146_dev* }
%struct.saa7146_dev = type { i32 }
%struct.videobuf_buffer = type { i32 }
%struct.saa7146_buf = type { i32, %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { i64, i32, i32, i64, i32, i32, i32 }
%struct.videobuf_dmabuf = type { i32, i32 }

@vbi_pixel_to_capture = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"vb:%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"size mismatch\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VIDEOBUF_NEEDS_INIT = common dso_local global i64 0, align 8
@VIDEOBUF_PREPARED = common dso_local global i64 0, align 8
@buffer_activate = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"error out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videobuf_queue*, %struct.videobuf_buffer*, i32)* @buffer_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buffer_prepare(%struct.videobuf_queue* %0, %struct.videobuf_buffer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.videobuf_queue*, align 8
  %6 = alloca %struct.videobuf_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.saa7146_fh*, align 8
  %10 = alloca %struct.saa7146_dev*, align 8
  %11 = alloca %struct.saa7146_buf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.videobuf_dmabuf*, align 8
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %5, align 8
  store %struct.videobuf_buffer* %1, %struct.videobuf_buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.videobuf_queue*, %struct.videobuf_queue** %5, align 8
  %18 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %17, i32 0, i32 0
  %19 = load %struct.file*, %struct.file** %18, align 8
  store %struct.file* %19, %struct.file** %8, align 8
  %20 = load %struct.file*, %struct.file** %8, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 0
  %22 = load %struct.saa7146_fh*, %struct.saa7146_fh** %21, align 8
  store %struct.saa7146_fh* %22, %struct.saa7146_fh** %9, align 8
  %23 = load %struct.saa7146_fh*, %struct.saa7146_fh** %9, align 8
  %24 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %23, i32 0, i32 0
  %25 = load %struct.saa7146_dev*, %struct.saa7146_dev** %24, align 8
  store %struct.saa7146_dev* %25, %struct.saa7146_dev** %10, align 8
  %26 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %27 = bitcast %struct.videobuf_buffer* %26 to %struct.saa7146_buf*
  store %struct.saa7146_buf* %27, %struct.saa7146_buf** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 32, i32* %13, align 4
  %28 = load i32, i32* @vbi_pixel_to_capture, align 4
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %14, align 4
  %31 = mul nsw i32 %29, %30
  store i32 %31, i32* %15, align 4
  %32 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %33 = call i32 (i8*, ...) @DEB_VBI(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.videobuf_buffer* %32)
  %34 = load %struct.saa7146_buf*, %struct.saa7146_buf** %11, align 8
  %35 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 0, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %3
  %40 = load %struct.saa7146_buf*, %struct.saa7146_buf** %11, align 8
  %41 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %15, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = call i32 (i8*, ...) @DEB_VBI(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %147

50:                                               ; preds = %39, %3
  %51 = load %struct.saa7146_buf*, %struct.saa7146_buf** %11, align 8
  %52 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load %struct.saa7146_dev*, %struct.saa7146_dev** %10, align 8
  %59 = load %struct.videobuf_queue*, %struct.videobuf_queue** %5, align 8
  %60 = load %struct.saa7146_buf*, %struct.saa7146_buf** %11, align 8
  %61 = call i32 @saa7146_dma_free(%struct.saa7146_dev* %58, %struct.videobuf_queue* %59, %struct.saa7146_buf* %60)
  br label %62

62:                                               ; preds = %57, %50
  %63 = load i64, i64* @VIDEOBUF_NEEDS_INIT, align 8
  %64 = load %struct.saa7146_buf*, %struct.saa7146_buf** %11, align 8
  %65 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %63, %67
  br i1 %68, label %69, label %132

69:                                               ; preds = %62
  %70 = load %struct.saa7146_buf*, %struct.saa7146_buf** %11, align 8
  %71 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %70, i32 0, i32 1
  %72 = call %struct.videobuf_dmabuf* @videobuf_to_dma(%struct.TYPE_3__* %71)
  store %struct.videobuf_dmabuf* %72, %struct.videobuf_dmabuf** %16, align 8
  %73 = load i32, i32* %14, align 4
  %74 = load %struct.saa7146_buf*, %struct.saa7146_buf** %11, align 8
  %75 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 4
  store i32 %73, i32* %76, align 8
  %77 = load i32, i32* %13, align 4
  %78 = load %struct.saa7146_buf*, %struct.saa7146_buf** %11, align 8
  %79 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 5
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* %15, align 4
  %82 = load %struct.saa7146_buf*, %struct.saa7146_buf** %11, align 8
  %83 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  store i32 %81, i32* %84, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.saa7146_buf*, %struct.saa7146_buf** %11, align 8
  %87 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 6
  store i32 %85, i32* %88, align 8
  %89 = load %struct.saa7146_dev*, %struct.saa7146_dev** %10, align 8
  %90 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.saa7146_buf*, %struct.saa7146_buf** %11, align 8
  %93 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  %96 = call i32 @saa7146_pgtable_free(i32 %91, i32* %95)
  %97 = load %struct.saa7146_dev*, %struct.saa7146_dev** %10, align 8
  %98 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.saa7146_buf*, %struct.saa7146_buf** %11, align 8
  %101 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 2
  %104 = call i32 @saa7146_pgtable_alloc(i32 %99, i32* %103)
  %105 = load %struct.videobuf_queue*, %struct.videobuf_queue** %5, align 8
  %106 = load %struct.saa7146_buf*, %struct.saa7146_buf** %11, align 8
  %107 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %106, i32 0, i32 1
  %108 = call i32 @videobuf_iolock(%struct.videobuf_queue* %105, %struct.TYPE_3__* %107, i32* null)
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %69
  br label %140

112:                                              ; preds = %69
  %113 = load %struct.saa7146_dev*, %struct.saa7146_dev** %10, align 8
  %114 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.saa7146_buf*, %struct.saa7146_buf** %11, align 8
  %117 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 2
  %120 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %16, align 8
  %121 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %16, align 8
  %124 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @saa7146_pgtable_build_single(i32 %115, i32* %119, i32 %122, i32 %125)
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %12, align 4
  %128 = icmp ne i32 0, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %112
  %130 = load i32, i32* %12, align 4
  store i32 %130, i32* %4, align 4
  br label %147

131:                                              ; preds = %112
  br label %132

132:                                              ; preds = %131, %62
  %133 = load i64, i64* @VIDEOBUF_PREPARED, align 8
  %134 = load %struct.saa7146_buf*, %struct.saa7146_buf** %11, align 8
  %135 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 3
  store i64 %133, i64* %136, align 8
  %137 = load i32, i32* @buffer_activate, align 4
  %138 = load %struct.saa7146_buf*, %struct.saa7146_buf** %11, align 8
  %139 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  store i32 0, i32* %4, align 4
  br label %147

140:                                              ; preds = %111
  %141 = call i32 (i8*, ...) @DEB_VBI(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %142 = load %struct.saa7146_dev*, %struct.saa7146_dev** %10, align 8
  %143 = load %struct.videobuf_queue*, %struct.videobuf_queue** %5, align 8
  %144 = load %struct.saa7146_buf*, %struct.saa7146_buf** %11, align 8
  %145 = call i32 @saa7146_dma_free(%struct.saa7146_dev* %142, %struct.videobuf_queue* %143, %struct.saa7146_buf* %144)
  %146 = load i32, i32* %12, align 4
  store i32 %146, i32* %4, align 4
  br label %147

147:                                              ; preds = %140, %132, %129, %46
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i32 @DEB_VBI(i8*, ...) #1

declare dso_local i32 @saa7146_dma_free(%struct.saa7146_dev*, %struct.videobuf_queue*, %struct.saa7146_buf*) #1

declare dso_local %struct.videobuf_dmabuf* @videobuf_to_dma(%struct.TYPE_3__*) #1

declare dso_local i32 @saa7146_pgtable_free(i32, i32*) #1

declare dso_local i32 @saa7146_pgtable_alloc(i32, i32*) #1

declare dso_local i32 @videobuf_iolock(%struct.videobuf_queue*, %struct.TYPE_3__*, i32*) #1

declare dso_local i32 @saa7146_pgtable_build_single(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
