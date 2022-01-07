; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNinfineon.c_release_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNinfineon.c_release_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inf_hw = type { i32, %struct.inf_hw**, %struct.TYPE_7__*, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_5__, i32 (%struct.TYPE_8__*)* }
%struct.TYPE_5__ = type { i32 }

@card_lock = common dso_local global i32 0, align 4
@inf_cnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inf_hw*)* @release_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_card(%struct.inf_hw* %0) #0 {
  %2 = alloca %struct.inf_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.inf_hw* %0, %struct.inf_hw** %2, align 8
  %5 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %6 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %5, i32 0, i32 6
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @spin_lock_irqsave(i32* %6, i32 %7)
  %9 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %10 = call i32 @disable_hwirq(%struct.inf_hw* %9)
  %11 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %12 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %11, i32 0, i32 6
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @spin_unlock_irqrestore(i32* %12, i32 %13)
  %15 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %16 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %18, align 8
  %20 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %21 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = call i32 %19(%struct.TYPE_8__* %22)
  %24 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %25 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %28 = call i32 @free_irq(i32 %26, %struct.inf_hw* %27)
  %29 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %30 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = call i32 @mISDN_unregister_device(i32* %33)
  %35 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %36 = call i32 @release_io(%struct.inf_hw* %35)
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @write_lock_irqsave(i32* @card_lock, i32 %37)
  %39 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %40 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %39, i32 0, i32 3
  %41 = call i32 @list_del(i32* %40)
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @write_unlock_irqrestore(i32* @card_lock, i32 %42)
  %44 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %45 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %44, i32 0, i32 2
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %82 [
    i32 130, label %49
    i32 129, label %49
    i32 128, label %49
    i32 131, label %50
  ]

49:                                               ; preds = %1, %1, %1
  br label %91

50:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %78, %50
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %52, 3
  br i1 %53, label %54, label %81

54:                                               ; preds = %51
  %55 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %56 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %55, i32 0, i32 1
  %57 = load %struct.inf_hw**, %struct.inf_hw*** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.inf_hw*, %struct.inf_hw** %57, i64 %59
  %61 = load %struct.inf_hw*, %struct.inf_hw** %60, align 8
  %62 = icmp ne %struct.inf_hw* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %54
  %64 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %65 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %64, i32 0, i32 1
  %66 = load %struct.inf_hw**, %struct.inf_hw*** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.inf_hw*, %struct.inf_hw** %66, i64 %68
  %70 = load %struct.inf_hw*, %struct.inf_hw** %69, align 8
  call void @release_card(%struct.inf_hw* %70)
  br label %71

71:                                               ; preds = %63, %54
  %72 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %73 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %72, i32 0, i32 1
  %74 = load %struct.inf_hw**, %struct.inf_hw*** %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.inf_hw*, %struct.inf_hw** %74, i64 %76
  store %struct.inf_hw* null, %struct.inf_hw** %77, align 8
  br label %78

78:                                               ; preds = %71
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %4, align 4
  br label %51

81:                                               ; preds = %51
  br label %82

82:                                               ; preds = %1, %81
  %83 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %84 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @pci_disable_device(i32 %85)
  %87 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %88 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @pci_set_drvdata(i32 %89, i32* null)
  br label %91

91:                                               ; preds = %82, %49
  %92 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %93 = call i32 @kfree(%struct.inf_hw* %92)
  %94 = load i32, i32* @inf_cnt, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* @inf_cnt, align 4
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @disable_hwirq(%struct.inf_hw*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.inf_hw*) #1

declare dso_local i32 @mISDN_unregister_device(i32*) #1

declare dso_local i32 @release_io(%struct.inf_hw*) #1

declare dso_local i32 @write_lock_irqsave(i32*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @pci_disable_device(i32) #1

declare dso_local i32 @pci_set_drvdata(i32, i32*) #1

declare dso_local i32 @kfree(%struct.inf_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
