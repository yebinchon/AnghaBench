; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon.c_extcon_get_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon.c_extcon_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extcon_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @extcon_get_state(%struct.extcon_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.extcon_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.extcon_dev* %0, %struct.extcon_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.extcon_dev*, %struct.extcon_dev** %4, align 8
  %10 = icmp ne %struct.extcon_dev* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %35

14:                                               ; preds = %2
  %15 = load %struct.extcon_dev*, %struct.extcon_dev** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @find_cable_index_by_id(%struct.extcon_dev* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %35

22:                                               ; preds = %14
  %23 = load %struct.extcon_dev*, %struct.extcon_dev** %4, align 8
  %24 = getelementptr inbounds %struct.extcon_dev, %struct.extcon_dev* %23, i32 0, i32 0
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.extcon_dev*, %struct.extcon_dev** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @is_extcon_attached(%struct.extcon_dev* %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.extcon_dev*, %struct.extcon_dev** %4, align 8
  %31 = getelementptr inbounds %struct.extcon_dev, %struct.extcon_dev* %30, i32 0, i32 0
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %22, %20, %11
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @find_cable_index_by_id(%struct.extcon_dev*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @is_extcon_attached(%struct.extcon_dev*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
