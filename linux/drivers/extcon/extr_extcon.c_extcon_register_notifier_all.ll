; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon.c_extcon_register_notifier_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon.c_extcon_register_notifier_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extcon_dev = type { i32, i32 }
%struct.notifier_block = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @extcon_register_notifier_all(%struct.extcon_dev* %0, %struct.notifier_block* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.extcon_dev*, align 8
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.extcon_dev* %0, %struct.extcon_dev** %4, align 8
  store %struct.notifier_block* %1, %struct.notifier_block** %5, align 8
  %8 = load %struct.extcon_dev*, %struct.extcon_dev** %4, align 8
  %9 = icmp ne %struct.extcon_dev* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.notifier_block*, %struct.notifier_block** %5, align 8
  %12 = icmp ne %struct.notifier_block* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %30

16:                                               ; preds = %10
  %17 = load %struct.extcon_dev*, %struct.extcon_dev** %4, align 8
  %18 = getelementptr inbounds %struct.extcon_dev, %struct.extcon_dev* %17, i32 0, i32 0
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.extcon_dev*, %struct.extcon_dev** %4, align 8
  %22 = getelementptr inbounds %struct.extcon_dev, %struct.extcon_dev* %21, i32 0, i32 1
  %23 = load %struct.notifier_block*, %struct.notifier_block** %5, align 8
  %24 = call i32 @raw_notifier_chain_register(i32* %22, %struct.notifier_block* %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.extcon_dev*, %struct.extcon_dev** %4, align 8
  %26 = getelementptr inbounds %struct.extcon_dev, %struct.extcon_dev* %25, i32 0, i32 0
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %16, %13
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @raw_notifier_chain_register(i32*, %struct.notifier_block*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
