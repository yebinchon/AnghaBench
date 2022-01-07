; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_vbi.c_vbi_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_vbi.c_vbi_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_fh = type { i32, %struct.saa7146_dev* }
%struct.saa7146_dev = type { i32, %struct.saa7146_vv* }
%struct.saa7146_vv = type { i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.file = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"dev:%p, fh:%p\0A\00", align 1
@MC1 = common dso_local global i32 0, align 4
@MASK_29 = common dso_local global i32 0, align 4
@MASK_28 = common dso_local global i32 0, align 4
@MASK_20 = common dso_local global i32 0, align 4
@VIDEOBUF_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7146_fh*, %struct.file*)* @vbi_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vbi_stop(%struct.saa7146_fh* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.saa7146_fh*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.saa7146_dev*, align 8
  %6 = alloca %struct.saa7146_vv*, align 8
  %7 = alloca i64, align 8
  store %struct.saa7146_fh* %0, %struct.saa7146_fh** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %9 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %8, i32 0, i32 1
  %10 = load %struct.saa7146_dev*, %struct.saa7146_dev** %9, align 8
  store %struct.saa7146_dev* %10, %struct.saa7146_dev** %5, align 8
  %11 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %12 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %11, i32 0, i32 1
  %13 = load %struct.saa7146_vv*, %struct.saa7146_vv** %12, align 8
  store %struct.saa7146_vv* %13, %struct.saa7146_vv** %6, align 8
  %14 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %15 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %16 = call i32 @DEB_VBI(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.saa7146_dev* %14, %struct.saa7146_fh* %15)
  %17 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %18 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %17, i32 0, i32 0
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %22 = load i32, i32* @MC1, align 4
  %23 = load i32, i32* @MASK_29, align 4
  %24 = call i32 @saa7146_write(%struct.saa7146_dev* %21, i32 %22, i32 %23)
  %25 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %26 = load i32, i32* @MASK_28, align 4
  %27 = call i32 @SAA7146_IER_DISABLE(%struct.saa7146_dev* %25, i32 %26)
  %28 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %29 = load i32, i32* @MC1, align 4
  %30 = load i32, i32* @MASK_20, align 4
  %31 = call i32 @saa7146_write(%struct.saa7146_dev* %28, i32 %29, i32 %30)
  %32 = load %struct.saa7146_vv*, %struct.saa7146_vv** %6, align 8
  %33 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %2
  %38 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %39 = load %struct.saa7146_vv*, %struct.saa7146_vv** %6, align 8
  %40 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %39, i32 0, i32 1
  %41 = load i32, i32* @VIDEOBUF_DONE, align 4
  %42 = call i32 @saa7146_buffer_finish(%struct.saa7146_dev* %38, %struct.TYPE_2__* %40, i32 %41)
  br label %43

43:                                               ; preds = %37, %2
  %44 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %45 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %44, i32 0, i32 0
  %46 = call i32 @videobuf_queue_cancel(i32* %45)
  %47 = load %struct.saa7146_vv*, %struct.saa7146_vv** %6, align 8
  %48 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %47, i32 0, i32 2
  store i32* null, i32** %48, align 8
  %49 = load %struct.saa7146_vv*, %struct.saa7146_vv** %6, align 8
  %50 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @del_timer(i32* %51)
  %53 = load %struct.saa7146_vv*, %struct.saa7146_vv** %6, align 8
  %54 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %53, i32 0, i32 0
  %55 = call i32 @del_timer(i32* %54)
  %56 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %57 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %56, i32 0, i32 0
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  ret void
}

declare dso_local i32 @DEB_VBI(i8*, %struct.saa7146_dev*, %struct.saa7146_fh*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @saa7146_write(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @SAA7146_IER_DISABLE(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @saa7146_buffer_finish(%struct.saa7146_dev*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @videobuf_queue_cancel(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
