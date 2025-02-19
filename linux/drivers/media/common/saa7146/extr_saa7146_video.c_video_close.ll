; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_video.c_video_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_video.c_video_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { %struct.saa7146_vv* }
%struct.saa7146_vv = type { i32 }
%struct.file = type { %struct.saa7146_fh* }
%struct.saa7146_fh = type { %struct.videobuf_queue }
%struct.videobuf_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7146_dev*, %struct.file*)* @video_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @video_close(%struct.saa7146_dev* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.saa7146_dev*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.saa7146_fh*, align 8
  %6 = alloca %struct.saa7146_vv*, align 8
  %7 = alloca %struct.videobuf_queue*, align 8
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.saa7146_fh*, %struct.saa7146_fh** %9, align 8
  store %struct.saa7146_fh* %10, %struct.saa7146_fh** %5, align 8
  %11 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %12 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %11, i32 0, i32 0
  %13 = load %struct.saa7146_vv*, %struct.saa7146_vv** %12, align 8
  store %struct.saa7146_vv* %13, %struct.saa7146_vv** %6, align 8
  %14 = load %struct.saa7146_fh*, %struct.saa7146_fh** %5, align 8
  %15 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %14, i32 0, i32 0
  store %struct.videobuf_queue* %15, %struct.videobuf_queue** %7, align 8
  %16 = load %struct.saa7146_fh*, %struct.saa7146_fh** %5, align 8
  %17 = call i64 @IS_CAPTURE_ACTIVE(%struct.saa7146_fh* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.saa7146_fh*, %struct.saa7146_fh** %5, align 8
  %21 = load %struct.file*, %struct.file** %4, align 8
  %22 = call i32 @video_end(%struct.saa7146_fh* %20, %struct.file* %21)
  br label %31

23:                                               ; preds = %2
  %24 = load %struct.saa7146_fh*, %struct.saa7146_fh** %5, align 8
  %25 = call i64 @IS_OVERLAY_ACTIVE(%struct.saa7146_fh* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct.saa7146_fh*, %struct.saa7146_fh** %5, align 8
  %29 = call i32 @saa7146_stop_preview(%struct.saa7146_fh* %28)
  br label %30

30:                                               ; preds = %27, %23
  br label %31

31:                                               ; preds = %30, %19
  %32 = load %struct.videobuf_queue*, %struct.videobuf_queue** %7, align 8
  %33 = call i32 @videobuf_stop(%struct.videobuf_queue* %32)
  ret void
}

declare dso_local i64 @IS_CAPTURE_ACTIVE(%struct.saa7146_fh*) #1

declare dso_local i32 @video_end(%struct.saa7146_fh*, %struct.file*) #1

declare dso_local i64 @IS_OVERLAY_ACTIVE(%struct.saa7146_fh*) #1

declare dso_local i32 @saa7146_stop_preview(%struct.saa7146_fh*) #1

declare dso_local i32 @videobuf_stop(%struct.videobuf_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
