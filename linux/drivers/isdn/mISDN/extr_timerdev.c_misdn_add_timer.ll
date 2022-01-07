; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_timerdev.c_misdn_add_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_timerdev.c_misdn_add_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mISDNtimerdev = type { i32, i64, i32, i32, i32 }
%struct.mISDNtimer = type { i32, %struct.TYPE_3__, i32, %struct.mISDNtimerdev* }
%struct.TYPE_3__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dev_expire_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mISDNtimerdev*, i32)* @misdn_add_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @misdn_add_timer(%struct.mISDNtimerdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mISDNtimerdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mISDNtimer*, align 8
  store %struct.mISDNtimerdev* %0, %struct.mISDNtimerdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load %struct.mISDNtimerdev*, %struct.mISDNtimerdev** %4, align 8
  %12 = getelementptr inbounds %struct.mISDNtimerdev, %struct.mISDNtimerdev* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.mISDNtimerdev*, %struct.mISDNtimerdev** %4, align 8
  %14 = getelementptr inbounds %struct.mISDNtimerdev, %struct.mISDNtimerdev* %13, i32 0, i32 4
  %15 = call i32 @wake_up_interruptible(i32* %14)
  store i32 0, i32* %6, align 4
  br label %71

16:                                               ; preds = %2
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.mISDNtimer* @kzalloc(i32 32, i32 %17)
  store %struct.mISDNtimer* %18, %struct.mISDNtimer** %7, align 8
  %19 = load %struct.mISDNtimer*, %struct.mISDNtimer** %7, align 8
  %20 = icmp ne %struct.mISDNtimer* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %73

24:                                               ; preds = %16
  %25 = load %struct.mISDNtimerdev*, %struct.mISDNtimerdev** %4, align 8
  %26 = load %struct.mISDNtimer*, %struct.mISDNtimer** %7, align 8
  %27 = getelementptr inbounds %struct.mISDNtimer, %struct.mISDNtimer* %26, i32 0, i32 3
  store %struct.mISDNtimerdev* %25, %struct.mISDNtimerdev** %27, align 8
  %28 = load %struct.mISDNtimer*, %struct.mISDNtimer** %7, align 8
  %29 = getelementptr inbounds %struct.mISDNtimer, %struct.mISDNtimer* %28, i32 0, i32 1
  %30 = load i32, i32* @dev_expire_timer, align 4
  %31 = call i32 @timer_setup(%struct.TYPE_3__* %29, i32 %30, i32 0)
  %32 = load %struct.mISDNtimerdev*, %struct.mISDNtimerdev** %4, align 8
  %33 = getelementptr inbounds %struct.mISDNtimerdev, %struct.mISDNtimerdev* %32, i32 0, i32 2
  %34 = call i32 @spin_lock_irq(i32* %33)
  %35 = load %struct.mISDNtimerdev*, %struct.mISDNtimerdev** %4, align 8
  %36 = getelementptr inbounds %struct.mISDNtimerdev, %struct.mISDNtimerdev* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %36, align 8
  %39 = trunc i64 %37 to i32
  %40 = load %struct.mISDNtimer*, %struct.mISDNtimer** %7, align 8
  %41 = getelementptr inbounds %struct.mISDNtimer, %struct.mISDNtimer* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  store i32 %39, i32* %6, align 4
  %42 = load %struct.mISDNtimerdev*, %struct.mISDNtimerdev** %4, align 8
  %43 = getelementptr inbounds %struct.mISDNtimerdev, %struct.mISDNtimerdev* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %24
  %47 = load %struct.mISDNtimerdev*, %struct.mISDNtimerdev** %4, align 8
  %48 = getelementptr inbounds %struct.mISDNtimerdev, %struct.mISDNtimerdev* %47, i32 0, i32 1
  store i64 1, i64* %48, align 8
  br label %49

49:                                               ; preds = %46, %24
  %50 = load %struct.mISDNtimer*, %struct.mISDNtimer** %7, align 8
  %51 = getelementptr inbounds %struct.mISDNtimer, %struct.mISDNtimer* %50, i32 0, i32 2
  %52 = load %struct.mISDNtimerdev*, %struct.mISDNtimerdev** %4, align 8
  %53 = getelementptr inbounds %struct.mISDNtimerdev, %struct.mISDNtimerdev* %52, i32 0, i32 3
  %54 = call i32 @list_add_tail(i32* %51, i32* %53)
  %55 = load i64, i64* @jiffies, align 8
  %56 = load i32, i32* @HZ, align 4
  %57 = load i32, i32* %5, align 4
  %58 = mul nsw i32 %56, %57
  %59 = sdiv i32 %58, 1000
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %55, %60
  %62 = load %struct.mISDNtimer*, %struct.mISDNtimer** %7, align 8
  %63 = getelementptr inbounds %struct.mISDNtimer, %struct.mISDNtimer* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i64 %61, i64* %64, align 8
  %65 = load %struct.mISDNtimer*, %struct.mISDNtimer** %7, align 8
  %66 = getelementptr inbounds %struct.mISDNtimer, %struct.mISDNtimer* %65, i32 0, i32 1
  %67 = call i32 @add_timer(%struct.TYPE_3__* %66)
  %68 = load %struct.mISDNtimerdev*, %struct.mISDNtimerdev** %4, align 8
  %69 = getelementptr inbounds %struct.mISDNtimerdev, %struct.mISDNtimerdev* %68, i32 0, i32 2
  %70 = call i32 @spin_unlock_irq(i32* %69)
  br label %71

71:                                               ; preds = %49, %10
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %21
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local %struct.mISDNtimer* @kzalloc(i32, i32) #1

declare dso_local i32 @timer_setup(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
