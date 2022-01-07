; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_drv.c_adv7511_wait_for_edid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_drv.c_adv7511_wait_for_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv7511 = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adv7511*, i32)* @adv7511_wait_for_edid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7511_wait_for_edid(%struct.adv7511* %0, i32 %1) #0 {
  %3 = alloca %struct.adv7511*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.adv7511* %0, %struct.adv7511** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %7 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %14 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %17 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @msecs_to_jiffies(i32 %19)
  %21 = call i32 @wait_event_interruptible_timeout(i32 %15, i64 %18, i32 %20)
  store i32 %21, i32* %5, align 4
  br label %44

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %40, %22
  %24 = load i32, i32* %4, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %23
  %27 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %28 = call i32 @adv7511_irq_process(%struct.adv7511* %27, i32 0)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %43

32:                                               ; preds = %26
  %33 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %34 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %43

38:                                               ; preds = %32
  %39 = call i32 @msleep(i32 25)
  br label %40

40:                                               ; preds = %38
  %41 = load i32, i32* %4, align 4
  %42 = sub nsw i32 %41, 25
  store i32 %42, i32* %4, align 4
  br label %23

43:                                               ; preds = %37, %31, %23
  br label %44

44:                                               ; preds = %43, %12
  %45 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %46 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %53

50:                                               ; preds = %44
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  br label %53

53:                                               ; preds = %50, %49
  %54 = phi i32 [ 0, %49 ], [ %52, %50 ]
  ret i32 %54
}

declare dso_local i32 @wait_event_interruptible_timeout(i32, i64, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @adv7511_irq_process(%struct.adv7511*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
