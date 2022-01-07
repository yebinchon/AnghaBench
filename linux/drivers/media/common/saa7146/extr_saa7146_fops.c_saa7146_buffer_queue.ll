; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_fops.c_saa7146_buffer_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_fops.c_saa7146_buffer_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { i32 }
%struct.saa7146_dmaqueue = type { i32, %struct.saa7146_buf* }
%struct.saa7146_buf = type { %struct.TYPE_2__, i32 (%struct.saa7146_dev*, %struct.saa7146_buf*, i32*)* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"dev:%p, dmaq:%p, buf:%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"immediately activating buffer %p\0A\00", align 1
@VIDEOBUF_QUEUED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"adding buffer %p to queue. (active buffer present)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7146_buffer_queue(%struct.saa7146_dev* %0, %struct.saa7146_dmaqueue* %1, %struct.saa7146_buf* %2) #0 {
  %4 = alloca %struct.saa7146_dev*, align 8
  %5 = alloca %struct.saa7146_dmaqueue*, align 8
  %6 = alloca %struct.saa7146_buf*, align 8
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %4, align 8
  store %struct.saa7146_dmaqueue* %1, %struct.saa7146_dmaqueue** %5, align 8
  store %struct.saa7146_buf* %2, %struct.saa7146_buf** %6, align 8
  %7 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %8 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %7, i32 0, i32 0
  %9 = call i32 @assert_spin_locked(i32* %8)
  %10 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %11 = load %struct.saa7146_dmaqueue*, %struct.saa7146_dmaqueue** %5, align 8
  %12 = load %struct.saa7146_buf*, %struct.saa7146_buf** %6, align 8
  %13 = call i32 @DEB_EE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.saa7146_dev* %10, %struct.saa7146_dmaqueue* %11, %struct.saa7146_buf* %12)
  %14 = load %struct.saa7146_dmaqueue*, %struct.saa7146_dmaqueue** %5, align 8
  %15 = icmp ne %struct.saa7146_dmaqueue* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.saa7146_dmaqueue*, %struct.saa7146_dmaqueue** %5, align 8
  %20 = getelementptr inbounds %struct.saa7146_dmaqueue, %struct.saa7146_dmaqueue* %19, i32 0, i32 1
  %21 = load %struct.saa7146_buf*, %struct.saa7146_buf** %20, align 8
  %22 = icmp eq %struct.saa7146_buf* null, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %3
  %24 = load %struct.saa7146_buf*, %struct.saa7146_buf** %6, align 8
  %25 = load %struct.saa7146_dmaqueue*, %struct.saa7146_dmaqueue** %5, align 8
  %26 = getelementptr inbounds %struct.saa7146_dmaqueue, %struct.saa7146_dmaqueue* %25, i32 0, i32 1
  store %struct.saa7146_buf* %24, %struct.saa7146_buf** %26, align 8
  %27 = load %struct.saa7146_buf*, %struct.saa7146_buf** %6, align 8
  %28 = call i32 @DEB_D(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %struct.saa7146_buf* %27)
  %29 = load %struct.saa7146_buf*, %struct.saa7146_buf** %6, align 8
  %30 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %29, i32 0, i32 1
  %31 = load i32 (%struct.saa7146_dev*, %struct.saa7146_buf*, i32*)*, i32 (%struct.saa7146_dev*, %struct.saa7146_buf*, i32*)** %30, align 8
  %32 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %33 = load %struct.saa7146_buf*, %struct.saa7146_buf** %6, align 8
  %34 = call i32 %31(%struct.saa7146_dev* %32, %struct.saa7146_buf* %33, i32* null)
  br label %48

35:                                               ; preds = %3
  %36 = load %struct.saa7146_buf*, %struct.saa7146_buf** %6, align 8
  %37 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load %struct.saa7146_dmaqueue*, %struct.saa7146_dmaqueue** %5, align 8
  %40 = getelementptr inbounds %struct.saa7146_dmaqueue, %struct.saa7146_dmaqueue* %39, i32 0, i32 0
  %41 = call i32 @list_add_tail(i32* %38, i32* %40)
  %42 = load i32, i32* @VIDEOBUF_QUEUED, align 4
  %43 = load %struct.saa7146_buf*, %struct.saa7146_buf** %6, align 8
  %44 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load %struct.saa7146_buf*, %struct.saa7146_buf** %6, align 8
  %47 = call i32 @DEB_D(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), %struct.saa7146_buf* %46)
  br label %48

48:                                               ; preds = %35, %23
  ret i32 0
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @DEB_EE(i8*, %struct.saa7146_dev*, %struct.saa7146_dmaqueue*, %struct.saa7146_buf*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @DEB_D(i8*, %struct.saa7146_buf*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
