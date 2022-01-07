; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-arizona.c_arizona_micdet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-arizona.c_arizona_micdet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arizona_extcon_info = type { %struct.TYPE_5__, i32, i32, %struct.TYPE_5__, %struct.arizona* }
%struct.TYPE_5__ = type { i32 }
%struct.arizona = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@system_power_efficient_wq = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @arizona_micdet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arizona_micdet(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.arizona_extcon_info*, align 8
  %6 = alloca %struct.arizona*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.arizona_extcon_info*
  store %struct.arizona_extcon_info* %9, %struct.arizona_extcon_info** %5, align 8
  %10 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %5, align 8
  %11 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %10, i32 0, i32 4
  %12 = load %struct.arizona*, %struct.arizona** %11, align 8
  store %struct.arizona* %12, %struct.arizona** %6, align 8
  %13 = load %struct.arizona*, %struct.arizona** %6, align 8
  %14 = getelementptr inbounds %struct.arizona, %struct.arizona* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %5, align 8
  %18 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %17, i32 0, i32 0
  %19 = call i32 @cancel_delayed_work_sync(%struct.TYPE_5__* %18)
  %20 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %5, align 8
  %21 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %20, i32 0, i32 3
  %22 = call i32 @cancel_delayed_work_sync(%struct.TYPE_5__* %21)
  %23 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %5, align 8
  %24 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %23, i32 0, i32 1
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %5, align 8
  %27 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %30, %2
  %32 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %5, align 8
  %33 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %32, i32 0, i32 1
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load i32, i32* @system_power_efficient_wq, align 4
  %39 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %5, align 8
  %40 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %39, i32 0, i32 0
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @msecs_to_jiffies(i32 %41)
  %43 = call i32 @queue_delayed_work(i32 %38, %struct.TYPE_5__* %40, i32 %42)
  br label %49

44:                                               ; preds = %31
  %45 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %5, align 8
  %46 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = call i32 @arizona_micd_detect(i32* %47)
  br label %49

49:                                               ; preds = %44, %37
  %50 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %50
}

declare dso_local i32 @cancel_delayed_work_sync(%struct.TYPE_5__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @queue_delayed_work(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @arizona_micd_detect(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
