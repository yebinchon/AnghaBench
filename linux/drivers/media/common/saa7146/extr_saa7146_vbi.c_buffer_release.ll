; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_vbi.c_buffer_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_vbi.c_buffer_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { %struct.file* }
%struct.file = type { %struct.saa7146_fh* }
%struct.saa7146_fh = type { %struct.saa7146_dev* }
%struct.saa7146_dev = type { i32 }
%struct.videobuf_buffer = type { i32 }
%struct.saa7146_buf = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"vb:%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.videobuf_queue*, %struct.videobuf_buffer*)* @buffer_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @buffer_release(%struct.videobuf_queue* %0, %struct.videobuf_buffer* %1) #0 {
  %3 = alloca %struct.videobuf_queue*, align 8
  %4 = alloca %struct.videobuf_buffer*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.saa7146_fh*, align 8
  %7 = alloca %struct.saa7146_dev*, align 8
  %8 = alloca %struct.saa7146_buf*, align 8
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %3, align 8
  store %struct.videobuf_buffer* %1, %struct.videobuf_buffer** %4, align 8
  %9 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %10 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %9, i32 0, i32 0
  %11 = load %struct.file*, %struct.file** %10, align 8
  store %struct.file* %11, %struct.file** %5, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load %struct.saa7146_fh*, %struct.saa7146_fh** %13, align 8
  store %struct.saa7146_fh* %14, %struct.saa7146_fh** %6, align 8
  %15 = load %struct.saa7146_fh*, %struct.saa7146_fh** %6, align 8
  %16 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %15, i32 0, i32 0
  %17 = load %struct.saa7146_dev*, %struct.saa7146_dev** %16, align 8
  store %struct.saa7146_dev* %17, %struct.saa7146_dev** %7, align 8
  %18 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %4, align 8
  %19 = bitcast %struct.videobuf_buffer* %18 to %struct.saa7146_buf*
  store %struct.saa7146_buf* %19, %struct.saa7146_buf** %8, align 8
  %20 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %4, align 8
  %21 = call i32 @DEB_VBI(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.videobuf_buffer* %20)
  %22 = load %struct.saa7146_dev*, %struct.saa7146_dev** %7, align 8
  %23 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %24 = load %struct.saa7146_buf*, %struct.saa7146_buf** %8, align 8
  %25 = call i32 @saa7146_dma_free(%struct.saa7146_dev* %22, %struct.videobuf_queue* %23, %struct.saa7146_buf* %24)
  ret void
}

declare dso_local i32 @DEB_VBI(i8*, %struct.videobuf_buffer*) #1

declare dso_local i32 @saa7146_dma_free(%struct.saa7146_dev*, %struct.videobuf_queue*, %struct.saa7146_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
