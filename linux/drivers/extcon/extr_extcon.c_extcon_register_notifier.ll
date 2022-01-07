; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon.c_extcon_register_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon.c_extcon_register_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extcon_dev = type { i32, i32* }
%struct.notifier_block = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @extcon_register_notifier(%struct.extcon_dev* %0, i32 %1, %struct.notifier_block* %2) #0 {
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
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = load %struct.extcon_dev*, %struct.extcon_dev** %5, align 8
  %14 = icmp ne %struct.extcon_dev* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.notifier_block*, %struct.notifier_block** %7, align 8
  %17 = icmp ne %struct.notifier_block* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15, %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %47

21:                                               ; preds = %15
  %22 = load %struct.extcon_dev*, %struct.extcon_dev** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @find_cable_index_by_id(%struct.extcon_dev* %22, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %4, align 4
  br label %47

29:                                               ; preds = %21
  %30 = load %struct.extcon_dev*, %struct.extcon_dev** %5, align 8
  %31 = getelementptr inbounds %struct.extcon_dev, %struct.extcon_dev* %30, i32 0, i32 0
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.extcon_dev*, %struct.extcon_dev** %5, align 8
  %35 = getelementptr inbounds %struct.extcon_dev, %struct.extcon_dev* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load %struct.notifier_block*, %struct.notifier_block** %7, align 8
  %41 = call i32 @raw_notifier_chain_register(i32* %39, %struct.notifier_block* %40)
  store i32 %41, i32* %9, align 4
  %42 = load %struct.extcon_dev*, %struct.extcon_dev** %5, align 8
  %43 = getelementptr inbounds %struct.extcon_dev, %struct.extcon_dev* %42, i32 0, i32 0
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %29, %27, %18
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @find_cable_index_by_id(%struct.extcon_dev*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @raw_notifier_chain_register(i32*, %struct.notifier_block*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
