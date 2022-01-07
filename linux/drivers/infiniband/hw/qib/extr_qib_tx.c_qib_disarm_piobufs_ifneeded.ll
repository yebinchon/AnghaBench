; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_tx.c_qib_disarm_piobufs_ifneeded.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_tx.c_qib_disarm_piobufs_ifneeded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_ctxtdata = type { i32, i32, i32, i32, i32*, %struct.qib_devdata* }
%struct.qib_devdata = type { i32, i32 (i32, i32)*, i32 }

@_QIB_EVENT_DISARM_BUFS_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_disarm_piobufs_ifneeded(%struct.qib_ctxtdata* %0) #0 {
  %2 = alloca %struct.qib_ctxtdata*, align 8
  %3 = alloca %struct.qib_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.qib_ctxtdata* %0, %struct.qib_ctxtdata** %2, align 8
  %7 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %2, align 8
  %8 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %7, i32 0, i32 5
  %9 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  store %struct.qib_devdata* %9, %struct.qib_devdata** %3, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %2, align 8
  %11 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %2, align 8
  %14 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = add i32 %12, %15
  store i32 %16, i32* %5, align 4
  %17 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %2, align 8
  %18 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %47

21:                                               ; preds = %1
  %22 = load i32, i32* @_QIB_EVENT_DISARM_BUFS_BIT, align 4
  %23 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %2, align 8
  %24 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %23, i32 0, i32 4
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = call i32 @clear_bit(i32 %22, i32* %26)
  store i32 1, i32* %4, align 4
  br label %28

28:                                               ; preds = %43, %21
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %2, align 8
  %31 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %28
  %35 = load i32, i32* @_QIB_EVENT_DISARM_BUFS_BIT, align 4
  %36 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %2, align 8
  %37 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %36, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = call i32 @clear_bit(i32 %35, i32* %41)
  br label %43

43:                                               ; preds = %34
  %44 = load i32, i32* %4, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %28

46:                                               ; preds = %28
  br label %47

47:                                               ; preds = %46, %1
  %48 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %49 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %48, i32 0, i32 0
  %50 = call i32 @spin_lock_irq(i32* %49)
  %51 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %2, align 8
  %52 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %78, %47
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %81

58:                                               ; preds = %54
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %61 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @__test_and_clear_bit(i32 %59, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %58
  %66 = load i32, i32* %6, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %6, align 4
  %68 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %69 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %68, i32 0, i32 1
  %70 = load i32 (i32, i32)*, i32 (i32, i32)** %69, align 8
  %71 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %2, align 8
  %72 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @QIB_SENDCTRL_DISARM_BUF(i32 %74)
  %76 = call i32 %70(i32 %73, i32 %75)
  br label %77

77:                                               ; preds = %65, %58
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %4, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %4, align 4
  br label %54

81:                                               ; preds = %54
  %82 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %83 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %82, i32 0, i32 0
  %84 = call i32 @spin_unlock_irq(i32* %83)
  ret i32 0
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @__test_and_clear_bit(i32, i32) #1

declare dso_local i32 @QIB_SENDCTRL_DISARM_BUF(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
