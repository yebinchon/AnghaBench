; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-dvb.c_vb2_dvb_start_feed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-dvb.c_vb2_dvb_start_feed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux_feed = type { %struct.dvb_demux* }
%struct.dvb_demux = type { %struct.TYPE_3__, %struct.vb2_dvb* }
%struct.TYPE_3__ = type { i32 }
%struct.vb2_dvb = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@dvb_fnc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_demux_feed*)* @vb2_dvb_start_feed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vb2_dvb_start_feed(%struct.dvb_demux_feed* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_demux_feed*, align 8
  %4 = alloca %struct.dvb_demux*, align 8
  %5 = alloca %struct.vb2_dvb*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_demux_feed* %0, %struct.dvb_demux_feed** %3, align 8
  %7 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %7, i32 0, i32 0
  %9 = load %struct.dvb_demux*, %struct.dvb_demux** %8, align 8
  store %struct.dvb_demux* %9, %struct.dvb_demux** %4, align 8
  %10 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %10, i32 0, i32 1
  %12 = load %struct.vb2_dvb*, %struct.vb2_dvb** %11, align 8
  store %struct.vb2_dvb* %12, %struct.vb2_dvb** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %14 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %63

21:                                               ; preds = %1
  %22 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %23 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %26 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %30 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %51, label %34

34:                                               ; preds = %21
  %35 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %36 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %35, i32 0, i32 3
  %37 = load i32, i32* @dvb_fnc, align 4
  %38 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %39 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %40 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @vb2_thread_start(%struct.TYPE_4__* %36, i32 %37, %struct.vb2_dvb* %38, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %34
  %46 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %47 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %45, %34
  br label %51

51:                                               ; preds = %50, %21
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %56 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %54, %51
  %59 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %60 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %59, i32 0, i32 1
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %58, %18
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vb2_thread_start(%struct.TYPE_4__*, i32, %struct.vb2_dvb*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
