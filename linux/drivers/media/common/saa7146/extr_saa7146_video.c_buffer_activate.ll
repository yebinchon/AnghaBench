; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_video.c_buffer_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_video.c_buffer_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { %struct.saa7146_vv* }
%struct.saa7146_vv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.saa7146_buf = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@VIDEOBUF_ACTIVE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@BUFFER_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146_dev*, %struct.saa7146_buf*, %struct.saa7146_buf*)* @buffer_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buffer_activate(%struct.saa7146_dev* %0, %struct.saa7146_buf* %1, %struct.saa7146_buf* %2) #0 {
  %4 = alloca %struct.saa7146_dev*, align 8
  %5 = alloca %struct.saa7146_buf*, align 8
  %6 = alloca %struct.saa7146_buf*, align 8
  %7 = alloca %struct.saa7146_vv*, align 8
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %4, align 8
  store %struct.saa7146_buf* %1, %struct.saa7146_buf** %5, align 8
  store %struct.saa7146_buf* %2, %struct.saa7146_buf** %6, align 8
  %8 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %9 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %8, i32 0, i32 0
  %10 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  store %struct.saa7146_vv* %10, %struct.saa7146_vv** %7, align 8
  %11 = load i32, i32* @VIDEOBUF_ACTIVE, align 4
  %12 = load %struct.saa7146_buf*, %struct.saa7146_buf** %5, align 8
  %13 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 4
  %15 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %16 = load %struct.saa7146_buf*, %struct.saa7146_buf** %5, align 8
  %17 = load %struct.saa7146_buf*, %struct.saa7146_buf** %6, align 8
  %18 = call i32 @saa7146_set_capture(%struct.saa7146_dev* %15, %struct.saa7146_buf* %16, %struct.saa7146_buf* %17)
  %19 = load %struct.saa7146_vv*, %struct.saa7146_vv** %7, align 8
  %20 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* @jiffies, align 8
  %23 = load i64, i64* @BUFFER_TIMEOUT, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @mod_timer(i32* %21, i64 %24)
  ret i32 0
}

declare dso_local i32 @saa7146_set_capture(%struct.saa7146_dev*, %struct.saa7146_buf*, %struct.saa7146_buf*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
