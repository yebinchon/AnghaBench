; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_netjet.c_nj_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_netjet.c_nj_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiger_hw = type { i64, i32, i32, i32, i64, %struct.TYPE_9__*, %struct.TYPE_8__, i64, i32, i32 }
%struct.TYPE_9__ = type { %struct.tiger_hw*, %struct.tiger_hw*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 (%struct.TYPE_8__*)* }
%struct.TYPE_7__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@ISDN_P_NONE = common dso_local global i32 0, align 4
@NJ_DMA_SIZE = common dso_local global i32 0, align 4
@card_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tiger_hw*)* @nj_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nj_release(%struct.tiger_hw* %0) #0 {
  %2 = alloca %struct.tiger_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.tiger_hw* %0, %struct.tiger_hw** %2, align 8
  %5 = load %struct.tiger_hw*, %struct.tiger_hw** %2, align 8
  %6 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %5, i32 0, i32 7
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %48

9:                                                ; preds = %1
  %10 = load %struct.tiger_hw*, %struct.tiger_hw** %2, align 8
  %11 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %10, i32 0, i32 9
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @spin_lock_irqsave(i32* %11, i32 %12)
  %14 = load %struct.tiger_hw*, %struct.tiger_hw** %2, align 8
  %15 = call i32 @nj_disable_hwirq(%struct.tiger_hw* %14)
  %16 = load %struct.tiger_hw*, %struct.tiger_hw** %2, align 8
  %17 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %16, i32 0, i32 5
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i64 0
  %20 = load i32, i32* @ISDN_P_NONE, align 4
  %21 = call i32 @mode_tiger(%struct.TYPE_9__* %19, i32 %20)
  %22 = load %struct.tiger_hw*, %struct.tiger_hw** %2, align 8
  %23 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %22, i32 0, i32 5
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i64 1
  %26 = load i32, i32* @ISDN_P_NONE, align 4
  %27 = call i32 @mode_tiger(%struct.TYPE_9__* %25, i32 %26)
  %28 = load %struct.tiger_hw*, %struct.tiger_hw** %2, align 8
  %29 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %30, align 8
  %32 = load %struct.tiger_hw*, %struct.tiger_hw** %2, align 8
  %33 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %32, i32 0, i32 6
  %34 = call i32 %31(%struct.TYPE_8__* %33)
  %35 = load %struct.tiger_hw*, %struct.tiger_hw** %2, align 8
  %36 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %35, i32 0, i32 9
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i32 %37)
  %39 = load %struct.tiger_hw*, %struct.tiger_hw** %2, align 8
  %40 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.tiger_hw*, %struct.tiger_hw** %2, align 8
  %43 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %42, i32 0, i32 7
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @release_region(i32 %41, i64 %44)
  %46 = load %struct.tiger_hw*, %struct.tiger_hw** %2, align 8
  %47 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %46, i32 0, i32 7
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %9, %1
  %49 = load %struct.tiger_hw*, %struct.tiger_hw** %2, align 8
  %50 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.tiger_hw*, %struct.tiger_hw** %2, align 8
  %55 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.tiger_hw*, %struct.tiger_hw** %2, align 8
  %58 = call i32 @free_irq(i64 %56, %struct.tiger_hw* %57)
  br label %59

59:                                               ; preds = %53, %48
  %60 = load %struct.tiger_hw*, %struct.tiger_hw** %2, align 8
  %61 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %60, i32 0, i32 6
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %59
  %69 = load %struct.tiger_hw*, %struct.tiger_hw** %2, align 8
  %70 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %69, i32 0, i32 6
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = call i32 @mISDN_unregister_device(%struct.TYPE_10__* %72)
  br label %74

74:                                               ; preds = %68, %59
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %105, %74
  %76 = load i32, i32* %4, align 4
  %77 = icmp slt i32 %76, 2
  br i1 %77, label %78, label %108

78:                                               ; preds = %75
  %79 = load %struct.tiger_hw*, %struct.tiger_hw** %2, align 8
  %80 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %79, i32 0, i32 5
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 2
  %86 = call i32 @mISDN_freebchannel(i32* %85)
  %87 = load %struct.tiger_hw*, %struct.tiger_hw** %2, align 8
  %88 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %87, i32 0, i32 5
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load %struct.tiger_hw*, %struct.tiger_hw** %93, align 8
  %95 = call i32 @kfree(%struct.tiger_hw* %94)
  %96 = load %struct.tiger_hw*, %struct.tiger_hw** %2, align 8
  %97 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %96, i32 0, i32 5
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = load i32, i32* %4, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load %struct.tiger_hw*, %struct.tiger_hw** %102, align 8
  %104 = call i32 @kfree(%struct.tiger_hw* %103)
  br label %105

105:                                              ; preds = %78
  %106 = load i32, i32* %4, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %4, align 4
  br label %75

108:                                              ; preds = %75
  %109 = load %struct.tiger_hw*, %struct.tiger_hw** %2, align 8
  %110 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %125

113:                                              ; preds = %108
  %114 = load %struct.tiger_hw*, %struct.tiger_hw** %2, align 8
  %115 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @NJ_DMA_SIZE, align 4
  %118 = load %struct.tiger_hw*, %struct.tiger_hw** %2, align 8
  %119 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.tiger_hw*, %struct.tiger_hw** %2, align 8
  %122 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @pci_free_consistent(i32 %116, i32 %117, i64 %120, i32 %123)
  br label %125

125:                                              ; preds = %113, %108
  %126 = load i32, i32* %3, align 4
  %127 = call i32 @write_lock_irqsave(i32* @card_lock, i32 %126)
  %128 = load %struct.tiger_hw*, %struct.tiger_hw** %2, align 8
  %129 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %128, i32 0, i32 2
  %130 = call i32 @list_del(i32* %129)
  %131 = load i32, i32* %3, align 4
  %132 = call i32 @write_unlock_irqrestore(i32* @card_lock, i32 %131)
  %133 = load %struct.tiger_hw*, %struct.tiger_hw** %2, align 8
  %134 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @pci_clear_master(i32 %135)
  %137 = load %struct.tiger_hw*, %struct.tiger_hw** %2, align 8
  %138 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @pci_disable_device(i32 %139)
  %141 = load %struct.tiger_hw*, %struct.tiger_hw** %2, align 8
  %142 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @pci_set_drvdata(i32 %143, i32* null)
  %145 = load %struct.tiger_hw*, %struct.tiger_hw** %2, align 8
  %146 = call i32 @kfree(%struct.tiger_hw* %145)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @nj_disable_hwirq(%struct.tiger_hw*) #1

declare dso_local i32 @mode_tiger(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @release_region(i32, i64) #1

declare dso_local i32 @free_irq(i64, %struct.tiger_hw*) #1

declare dso_local i32 @mISDN_unregister_device(%struct.TYPE_10__*) #1

declare dso_local i32 @mISDN_freebchannel(i32*) #1

declare dso_local i32 @kfree(%struct.tiger_hw*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i64, i32) #1

declare dso_local i32 @write_lock_irqsave(i32*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @pci_clear_master(i32) #1

declare dso_local i32 @pci_disable_device(i32) #1

declare dso_local i32 @pci_set_drvdata(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
