; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_sun4i-dma.c_sun4i_dma_terminate_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_sun4i-dma.c_sun4i_dma_terminate_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.sun4i_dma_dev = type { i32 }
%struct.sun4i_dma_vchan = type { %struct.TYPE_3__, %struct.sun4i_dma_pchan*, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.sun4i_dma_pchan = type { i64, i64 }

@head = common dso_local global i32 0, align 4
@SUN4I_DDMA_CFG_REG = common dso_local global i64 0, align 8
@SUN4I_NDMA_CFG_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @sun4i_dma_terminate_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_dma_terminate_all(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.sun4i_dma_dev*, align 8
  %4 = alloca %struct.sun4i_dma_vchan*, align 8
  %5 = alloca %struct.sun4i_dma_pchan*, align 8
  %6 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %7 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %8 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.sun4i_dma_dev* @to_sun4i_dma_dev(i32 %9)
  store %struct.sun4i_dma_dev* %10, %struct.sun4i_dma_dev** %3, align 8
  %11 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %12 = call %struct.sun4i_dma_vchan* @to_sun4i_dma_vchan(%struct.dma_chan* %11)
  store %struct.sun4i_dma_vchan* %12, %struct.sun4i_dma_vchan** %4, align 8
  %13 = load %struct.sun4i_dma_vchan*, %struct.sun4i_dma_vchan** %4, align 8
  %14 = getelementptr inbounds %struct.sun4i_dma_vchan, %struct.sun4i_dma_vchan* %13, i32 0, i32 1
  %15 = load %struct.sun4i_dma_pchan*, %struct.sun4i_dma_pchan** %14, align 8
  store %struct.sun4i_dma_pchan* %15, %struct.sun4i_dma_pchan** %5, align 8
  %16 = load i32, i32* @head, align 4
  %17 = call i32 @LIST_HEAD(i32 %16)
  %18 = load %struct.sun4i_dma_vchan*, %struct.sun4i_dma_vchan** %4, align 8
  %19 = getelementptr inbounds %struct.sun4i_dma_vchan, %struct.sun4i_dma_vchan* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.sun4i_dma_vchan*, %struct.sun4i_dma_vchan** %4, align 8
  %24 = getelementptr inbounds %struct.sun4i_dma_vchan, %struct.sun4i_dma_vchan* %23, i32 0, i32 0
  %25 = call i32 @vchan_get_all_descriptors(%struct.TYPE_3__* %24, i32* @head)
  %26 = load %struct.sun4i_dma_vchan*, %struct.sun4i_dma_vchan** %4, align 8
  %27 = getelementptr inbounds %struct.sun4i_dma_vchan, %struct.sun4i_dma_vchan* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load %struct.sun4i_dma_pchan*, %struct.sun4i_dma_pchan** %5, align 8
  %32 = icmp ne %struct.sun4i_dma_pchan* %31, null
  br i1 %32, label %33, label %59

33:                                               ; preds = %1
  %34 = load %struct.sun4i_dma_pchan*, %struct.sun4i_dma_pchan** %5, align 8
  %35 = getelementptr inbounds %struct.sun4i_dma_pchan, %struct.sun4i_dma_pchan* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load %struct.sun4i_dma_pchan*, %struct.sun4i_dma_pchan** %5, align 8
  %40 = getelementptr inbounds %struct.sun4i_dma_pchan, %struct.sun4i_dma_pchan* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SUN4I_DDMA_CFG_REG, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i32 0, i64 %43)
  br label %52

45:                                               ; preds = %33
  %46 = load %struct.sun4i_dma_pchan*, %struct.sun4i_dma_pchan** %5, align 8
  %47 = getelementptr inbounds %struct.sun4i_dma_pchan, %struct.sun4i_dma_pchan* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SUN4I_NDMA_CFG_REG, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writel(i32 0, i64 %50)
  br label %52

52:                                               ; preds = %45, %38
  %53 = load %struct.sun4i_dma_dev*, %struct.sun4i_dma_dev** %3, align 8
  %54 = load %struct.sun4i_dma_pchan*, %struct.sun4i_dma_pchan** %5, align 8
  %55 = call i32 @set_pchan_interrupt(%struct.sun4i_dma_dev* %53, %struct.sun4i_dma_pchan* %54, i32 0, i32 0)
  %56 = load %struct.sun4i_dma_dev*, %struct.sun4i_dma_dev** %3, align 8
  %57 = load %struct.sun4i_dma_pchan*, %struct.sun4i_dma_pchan** %5, align 8
  %58 = call i32 @release_pchan(%struct.sun4i_dma_dev* %56, %struct.sun4i_dma_pchan* %57)
  br label %59

59:                                               ; preds = %52, %1
  %60 = load %struct.sun4i_dma_vchan*, %struct.sun4i_dma_vchan** %4, align 8
  %61 = getelementptr inbounds %struct.sun4i_dma_vchan, %struct.sun4i_dma_vchan* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @spin_lock_irqsave(i32* %62, i64 %63)
  %65 = load %struct.sun4i_dma_vchan*, %struct.sun4i_dma_vchan** %4, align 8
  %66 = getelementptr inbounds %struct.sun4i_dma_vchan, %struct.sun4i_dma_vchan* %65, i32 0, i32 0
  %67 = call i32 @vchan_dma_desc_free_list(%struct.TYPE_3__* %66, i32* @head)
  %68 = load %struct.sun4i_dma_vchan*, %struct.sun4i_dma_vchan** %4, align 8
  %69 = getelementptr inbounds %struct.sun4i_dma_vchan, %struct.sun4i_dma_vchan* %68, i32 0, i32 2
  store i32* null, i32** %69, align 8
  %70 = load %struct.sun4i_dma_vchan*, %struct.sun4i_dma_vchan** %4, align 8
  %71 = getelementptr inbounds %struct.sun4i_dma_vchan, %struct.sun4i_dma_vchan* %70, i32 0, i32 1
  store %struct.sun4i_dma_pchan* null, %struct.sun4i_dma_pchan** %71, align 8
  %72 = load %struct.sun4i_dma_vchan*, %struct.sun4i_dma_vchan** %4, align 8
  %73 = getelementptr inbounds %struct.sun4i_dma_vchan, %struct.sun4i_dma_vchan* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i64, i64* %6, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  ret i32 0
}

declare dso_local %struct.sun4i_dma_dev* @to_sun4i_dma_dev(i32) #1

declare dso_local %struct.sun4i_dma_vchan* @to_sun4i_dma_vchan(%struct.dma_chan*) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @vchan_get_all_descriptors(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @set_pchan_interrupt(%struct.sun4i_dma_dev*, %struct.sun4i_dma_pchan*, i32, i32) #1

declare dso_local i32 @release_pchan(%struct.sun4i_dma_dev*, %struct.sun4i_dma_pchan*) #1

declare dso_local i32 @vchan_dma_desc_free_list(%struct.TYPE_3__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
