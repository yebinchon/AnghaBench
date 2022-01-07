; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon.c_extcon_unregister_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon.c_extcon_unregister_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extcon_dev = type { i32, i32* }
%struct.notifier_block = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @extcon_unregister_notifier(%struct.extcon_dev* %0, i32 %1, %struct.notifier_block* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.extcon_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.notifier_block*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.extcon_dev* %0, %struct.extcon_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.notifier_block* %2, %struct.notifier_block** %7, align 8
  %11 = load %struct.extcon_dev*, %struct.extcon_dev** %5, align 8
  %12 = icmp ne %struct.extcon_dev* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.notifier_block*, %struct.notifier_block** %7, align 8
  %15 = icmp ne %struct.notifier_block* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13, %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %45

19:                                               ; preds = %13
  %20 = load %struct.extcon_dev*, %struct.extcon_dev** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @find_cable_index_by_id(%struct.extcon_dev* %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %4, align 4
  br label %45

27:                                               ; preds = %19
  %28 = load %struct.extcon_dev*, %struct.extcon_dev** %5, align 8
  %29 = getelementptr inbounds %struct.extcon_dev, %struct.extcon_dev* %28, i32 0, i32 0
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.extcon_dev*, %struct.extcon_dev** %5, align 8
  %33 = getelementptr inbounds %struct.extcon_dev, %struct.extcon_dev* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load %struct.notifier_block*, %struct.notifier_block** %7, align 8
  %39 = call i32 @raw_notifier_chain_unregister(i32* %37, %struct.notifier_block* %38)
  store i32 %39, i32* %9, align 4
  %40 = load %struct.extcon_dev*, %struct.extcon_dev** %5, align 8
  %41 = getelementptr inbounds %struct.extcon_dev, %struct.extcon_dev* %40, i32 0, i32 0
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %27, %25, %16
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @find_cable_index_by_id(%struct.extcon_dev*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @raw_notifier_chain_unregister(i32*, %struct.notifier_block*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
