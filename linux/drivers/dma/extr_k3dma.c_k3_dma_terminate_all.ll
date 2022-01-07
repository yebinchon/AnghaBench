; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_k3dma.c_k3_dma_terminate_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_k3dma.c_k3_dma_terminate_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.k3_dma_chan = type { %struct.TYPE_8__, %struct.k3_dma_phy*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.k3_dma_phy = type { i32*, %struct.TYPE_7__*, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.k3_dma_dev = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@head = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"vchan %p: terminate all\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @k3_dma_terminate_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @k3_dma_terminate_all(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.k3_dma_chan*, align 8
  %4 = alloca %struct.k3_dma_dev*, align 8
  %5 = alloca %struct.k3_dma_phy*, align 8
  %6 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %7 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %8 = call %struct.k3_dma_chan* @to_k3_chan(%struct.dma_chan* %7)
  store %struct.k3_dma_chan* %8, %struct.k3_dma_chan** %3, align 8
  %9 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %10 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.k3_dma_dev* @to_k3_dma(i32 %11)
  store %struct.k3_dma_dev* %12, %struct.k3_dma_dev** %4, align 8
  %13 = load %struct.k3_dma_chan*, %struct.k3_dma_chan** %3, align 8
  %14 = getelementptr inbounds %struct.k3_dma_chan, %struct.k3_dma_chan* %13, i32 0, i32 1
  %15 = load %struct.k3_dma_phy*, %struct.k3_dma_phy** %14, align 8
  store %struct.k3_dma_phy* %15, %struct.k3_dma_phy** %5, align 8
  %16 = load i32, i32* @head, align 4
  %17 = call i32 @LIST_HEAD(i32 %16)
  %18 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %4, align 8
  %19 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.k3_dma_chan*, %struct.k3_dma_chan** %3, align 8
  %23 = getelementptr inbounds %struct.k3_dma_chan, %struct.k3_dma_chan* %22, i32 0, i32 0
  %24 = call i32 @dev_dbg(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %23)
  %25 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %4, align 8
  %26 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %25, i32 0, i32 0
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load %struct.k3_dma_chan*, %struct.k3_dma_chan** %3, align 8
  %29 = getelementptr inbounds %struct.k3_dma_chan, %struct.k3_dma_chan* %28, i32 0, i32 2
  %30 = call i32 @list_del_init(i32* %29)
  %31 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %4, align 8
  %32 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock(i32* %32)
  %34 = load %struct.k3_dma_chan*, %struct.k3_dma_chan** %3, align 8
  %35 = getelementptr inbounds %struct.k3_dma_chan, %struct.k3_dma_chan* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.k3_dma_chan*, %struct.k3_dma_chan** %3, align 8
  %40 = getelementptr inbounds %struct.k3_dma_chan, %struct.k3_dma_chan* %39, i32 0, i32 0
  %41 = call i32 @vchan_get_all_descriptors(%struct.TYPE_8__* %40, i32* @head)
  %42 = load %struct.k3_dma_phy*, %struct.k3_dma_phy** %5, align 8
  %43 = icmp ne %struct.k3_dma_phy* %42, null
  br i1 %43, label %44, label %67

44:                                               ; preds = %1
  %45 = load %struct.k3_dma_phy*, %struct.k3_dma_phy** %5, align 8
  %46 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %4, align 8
  %47 = call i32 @k3_dma_terminate_chan(%struct.k3_dma_phy* %45, %struct.k3_dma_dev* %46)
  %48 = load %struct.k3_dma_chan*, %struct.k3_dma_chan** %3, align 8
  %49 = getelementptr inbounds %struct.k3_dma_chan, %struct.k3_dma_chan* %48, i32 0, i32 1
  store %struct.k3_dma_phy* null, %struct.k3_dma_phy** %49, align 8
  %50 = load %struct.k3_dma_phy*, %struct.k3_dma_phy** %5, align 8
  %51 = getelementptr inbounds %struct.k3_dma_phy, %struct.k3_dma_phy* %50, i32 0, i32 2
  store i32* null, i32** %51, align 8
  %52 = load %struct.k3_dma_phy*, %struct.k3_dma_phy** %5, align 8
  %53 = getelementptr inbounds %struct.k3_dma_phy, %struct.k3_dma_phy* %52, i32 0, i32 1
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = icmp ne %struct.TYPE_7__* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %44
  %57 = load %struct.k3_dma_phy*, %struct.k3_dma_phy** %5, align 8
  %58 = getelementptr inbounds %struct.k3_dma_phy, %struct.k3_dma_phy* %57, i32 0, i32 1
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = call i32 @vchan_terminate_vdesc(i32* %60)
  %62 = load %struct.k3_dma_phy*, %struct.k3_dma_phy** %5, align 8
  %63 = getelementptr inbounds %struct.k3_dma_phy, %struct.k3_dma_phy* %62, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %63, align 8
  br label %64

64:                                               ; preds = %56, %44
  %65 = load %struct.k3_dma_phy*, %struct.k3_dma_phy** %5, align 8
  %66 = getelementptr inbounds %struct.k3_dma_phy, %struct.k3_dma_phy* %65, i32 0, i32 0
  store i32* null, i32** %66, align 8
  br label %67

67:                                               ; preds = %64, %1
  %68 = load %struct.k3_dma_chan*, %struct.k3_dma_chan** %3, align 8
  %69 = getelementptr inbounds %struct.k3_dma_chan, %struct.k3_dma_chan* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  %73 = load %struct.k3_dma_chan*, %struct.k3_dma_chan** %3, align 8
  %74 = getelementptr inbounds %struct.k3_dma_chan, %struct.k3_dma_chan* %73, i32 0, i32 0
  %75 = call i32 @vchan_dma_desc_free_list(%struct.TYPE_8__* %74, i32* @head)
  ret i32 0
}

declare dso_local %struct.k3_dma_chan* @to_k3_chan(%struct.dma_chan*) #1

declare dso_local %struct.k3_dma_dev* @to_k3_dma(i32) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, %struct.TYPE_8__*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @vchan_get_all_descriptors(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @k3_dma_terminate_chan(%struct.k3_dma_phy*, %struct.k3_dma_dev*) #1

declare dso_local i32 @vchan_terminate_vdesc(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vchan_dma_desc_free_list(%struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
