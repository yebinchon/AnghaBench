; ModuleID = '/home/carl/AnghaBench/linux/drivers/ipack/carriers/extr_tpci200.c_tpci200_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ipack/carriers/extr_tpci200.c_tpci200_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpci200_board = type { i32, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.slot_irq = type { i32 }

@TPCI200_SLOT_INT_MASK = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@TPCI200_NB_SLOT = common dso_local global i32 0, align 4
@TPCI200_A_INT0 = common dso_local global i32 0, align 4
@TPCI200_A_INT1 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"No registered ISR for slot [%d:%d]!. IRQ will be disabled.\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tpci200_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpci200_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tpci200_board*, align 8
  %7 = alloca %struct.slot_irq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.tpci200_board*
  store %struct.tpci200_board* %12, %struct.tpci200_board** %6, align 8
  %13 = load %struct.tpci200_board*, %struct.tpci200_board** %6, align 8
  %14 = getelementptr inbounds %struct.tpci200_board, %struct.tpci200_board* %13, i32 0, i32 1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = call i32 @ioread16(i32* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @TPCI200_SLOT_INT_MASK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @IRQ_NONE, align 4
  store i32 %25, i32* %3, align 4
  br label %81

26:                                               ; preds = %2
  %27 = call i32 (...) @rcu_read_lock()
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %75, %26
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @TPCI200_NB_SLOT, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %78

32:                                               ; preds = %28
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @TPCI200_A_INT0, align 4
  %35 = load i32, i32* @TPCI200_A_INT1, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %10, align 4
  %38 = mul nsw i32 2, %37
  %39 = shl i32 %36, %38
  %40 = and i32 %33, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %32
  br label %75

43:                                               ; preds = %32
  %44 = load %struct.tpci200_board*, %struct.tpci200_board** %6, align 8
  %45 = getelementptr inbounds %struct.tpci200_board, %struct.tpci200_board* %44, i32 0, i32 2
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.slot_irq* @rcu_dereference(i32 %51)
  store %struct.slot_irq* %52, %struct.slot_irq** %7, align 8
  %53 = load %struct.slot_irq*, %struct.slot_irq** %7, align 8
  %54 = call i32 @tpci200_slot_irq(%struct.slot_irq* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %43
  %60 = load %struct.tpci200_board*, %struct.tpci200_board** %6, align 8
  %61 = getelementptr inbounds %struct.tpci200_board, %struct.tpci200_board* %60, i32 0, i32 1
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load %struct.tpci200_board*, %struct.tpci200_board** %6, align 8
  %67 = getelementptr inbounds %struct.tpci200_board, %struct.tpci200_board* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @dev_info(i32* %65, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %69)
  %71 = load %struct.tpci200_board*, %struct.tpci200_board** %6, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @tpci200_disable_irq(%struct.tpci200_board* %71, i32 %72)
  br label %74

74:                                               ; preds = %59, %43
  br label %75

75:                                               ; preds = %74, %42
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %28

78:                                               ; preds = %28
  %79 = call i32 (...) @rcu_read_unlock()
  %80 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %78, %24
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @ioread16(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.slot_irq* @rcu_dereference(i32) #1

declare dso_local i32 @tpci200_slot_irq(%struct.slot_irq*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @tpci200_disable_irq(%struct.tpci200_board*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
