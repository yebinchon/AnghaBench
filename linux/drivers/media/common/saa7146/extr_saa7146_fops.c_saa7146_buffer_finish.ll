; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_fops.c_saa7146_buffer_finish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_fops.c_saa7146_buffer_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { i32 }
%struct.saa7146_dmaqueue = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"dev:%p, dmaq:%p, state:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"q->curr:%p\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"aiii. no current buffer\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @saa7146_buffer_finish(%struct.saa7146_dev* %0, %struct.saa7146_dmaqueue* %1, i32 %2) #0 {
  %4 = alloca %struct.saa7146_dev*, align 8
  %5 = alloca %struct.saa7146_dmaqueue*, align 8
  %6 = alloca i32, align 4
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %4, align 8
  store %struct.saa7146_dmaqueue* %1, %struct.saa7146_dmaqueue** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %8 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %7, i32 0, i32 0
  %9 = call i32 @assert_spin_locked(i32* %8)
  %10 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %11 = load %struct.saa7146_dmaqueue*, %struct.saa7146_dmaqueue** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 (i8*, ...) @DEB_EE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.saa7146_dev* %10, %struct.saa7146_dmaqueue* %11, i32 %12)
  %14 = load %struct.saa7146_dmaqueue*, %struct.saa7146_dmaqueue** %5, align 8
  %15 = getelementptr inbounds %struct.saa7146_dmaqueue, %struct.saa7146_dmaqueue* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = call i32 (i8*, ...) @DEB_EE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_4__* %16)
  %18 = load %struct.saa7146_dmaqueue*, %struct.saa7146_dmaqueue** %5, align 8
  %19 = getelementptr inbounds %struct.saa7146_dmaqueue, %struct.saa7146_dmaqueue* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.saa7146_dmaqueue*, %struct.saa7146_dmaqueue** %5, align 8
  %26 = getelementptr inbounds %struct.saa7146_dmaqueue, %struct.saa7146_dmaqueue* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = icmp eq %struct.TYPE_4__* null, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = call i32 @DEB_D(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %52

31:                                               ; preds = %3
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.saa7146_dmaqueue*, %struct.saa7146_dmaqueue** %5, align 8
  %34 = getelementptr inbounds %struct.saa7146_dmaqueue, %struct.saa7146_dmaqueue* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 %32, i32* %37, align 4
  %38 = call i32 (...) @ktime_get_ns()
  %39 = load %struct.saa7146_dmaqueue*, %struct.saa7146_dmaqueue** %5, align 8
  %40 = getelementptr inbounds %struct.saa7146_dmaqueue, %struct.saa7146_dmaqueue* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  store i32 %38, i32* %43, align 4
  %44 = load %struct.saa7146_dmaqueue*, %struct.saa7146_dmaqueue** %5, align 8
  %45 = getelementptr inbounds %struct.saa7146_dmaqueue, %struct.saa7146_dmaqueue* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = call i32 @wake_up(i32* %48)
  %50 = load %struct.saa7146_dmaqueue*, %struct.saa7146_dmaqueue** %5, align 8
  %51 = getelementptr inbounds %struct.saa7146_dmaqueue, %struct.saa7146_dmaqueue* %50, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %51, align 8
  br label %52

52:                                               ; preds = %31, %29
  ret void
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @DEB_EE(i8*, ...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @DEB_D(i8*) #1

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
