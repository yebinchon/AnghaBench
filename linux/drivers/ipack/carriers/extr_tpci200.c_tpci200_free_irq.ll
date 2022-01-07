; ModuleID = '/home/carl/AnghaBench/linux/drivers/ipack/carriers/extr_tpci200.c_tpci200_free_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ipack/carriers/extr_tpci200.c_tpci200_free_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipack_device = type { i64 }
%struct.slot_irq = type { i32 }
%struct.tpci200_board = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.slot_irq* }

@EINVAL = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipack_device*)* @tpci200_free_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpci200_free_irq(%struct.ipack_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipack_device*, align 8
  %4 = alloca %struct.slot_irq*, align 8
  %5 = alloca %struct.tpci200_board*, align 8
  store %struct.ipack_device* %0, %struct.ipack_device** %3, align 8
  %6 = load %struct.ipack_device*, %struct.ipack_device** %3, align 8
  %7 = call %struct.tpci200_board* @check_slot(%struct.ipack_device* %6)
  store %struct.tpci200_board* %7, %struct.tpci200_board** %5, align 8
  %8 = load %struct.tpci200_board*, %struct.tpci200_board** %5, align 8
  %9 = icmp eq %struct.tpci200_board* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %69

13:                                               ; preds = %1
  %14 = load %struct.tpci200_board*, %struct.tpci200_board** %5, align 8
  %15 = getelementptr inbounds %struct.tpci200_board, %struct.tpci200_board* %14, i32 0, i32 0
  %16 = call i64 @mutex_lock_interruptible(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @ERESTARTSYS, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %69

21:                                               ; preds = %13
  %22 = load %struct.tpci200_board*, %struct.tpci200_board** %5, align 8
  %23 = getelementptr inbounds %struct.tpci200_board, %struct.tpci200_board* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load %struct.ipack_device*, %struct.ipack_device** %3, align 8
  %26 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.slot_irq*, %struct.slot_irq** %29, align 8
  %31 = icmp eq %struct.slot_irq* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = load %struct.tpci200_board*, %struct.tpci200_board** %5, align 8
  %34 = getelementptr inbounds %struct.tpci200_board, %struct.tpci200_board* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %69

38:                                               ; preds = %21
  %39 = load %struct.tpci200_board*, %struct.tpci200_board** %5, align 8
  %40 = load %struct.ipack_device*, %struct.ipack_device** %3, align 8
  %41 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @tpci200_disable_irq(%struct.tpci200_board* %39, i64 %42)
  %44 = load %struct.tpci200_board*, %struct.tpci200_board** %5, align 8
  %45 = getelementptr inbounds %struct.tpci200_board, %struct.tpci200_board* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load %struct.ipack_device*, %struct.ipack_device** %3, align 8
  %48 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load %struct.slot_irq*, %struct.slot_irq** %51, align 8
  store %struct.slot_irq* %52, %struct.slot_irq** %4, align 8
  %53 = load %struct.tpci200_board*, %struct.tpci200_board** %5, align 8
  %54 = getelementptr inbounds %struct.tpci200_board, %struct.tpci200_board* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load %struct.ipack_device*, %struct.ipack_device** %3, align 8
  %57 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load %struct.slot_irq*, %struct.slot_irq** %60, align 8
  %62 = call i32 @RCU_INIT_POINTER(%struct.slot_irq* %61, i32* null)
  %63 = call i32 (...) @synchronize_rcu()
  %64 = load %struct.slot_irq*, %struct.slot_irq** %4, align 8
  %65 = call i32 @kfree(%struct.slot_irq* %64)
  %66 = load %struct.tpci200_board*, %struct.tpci200_board** %5, align 8
  %67 = getelementptr inbounds %struct.tpci200_board, %struct.tpci200_board* %66, i32 0, i32 0
  %68 = call i32 @mutex_unlock(i32* %67)
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %38, %32, %18, %10
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.tpci200_board* @check_slot(%struct.ipack_device*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tpci200_disable_irq(%struct.tpci200_board*, i64) #1

declare dso_local i32 @RCU_INIT_POINTER(%struct.slot_irq*, i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @kfree(%struct.slot_irq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
