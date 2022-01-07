; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/hsu/extr_hsu.c_hsu_dma_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/hsu/extr_hsu.c_hsu_dma_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsu_dma_chip = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i16, %struct.hsu_dma_chan* }
%struct.hsu_dma_chan = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@HSU_CH_SR = common dso_local global i32 0, align 4
@HSU_CH_SR_DESCE_ANY = common dso_local global i32 0, align 4
@HSU_CH_SR_CDESC_ANY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@HSU_CH_SR_DESCTO_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hsu_dma_get_status(%struct.hsu_dma_chip* %0, i16 zeroext %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hsu_dma_chip*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32*, align 8
  %8 = alloca %struct.hsu_dma_chan*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.hsu_dma_chip* %0, %struct.hsu_dma_chip** %5, align 8
  store i16 %1, i16* %6, align 2
  store i32* %2, i32** %7, align 8
  %11 = load i16, i16* %6, align 2
  %12 = zext i16 %11 to i32
  %13 = load %struct.hsu_dma_chip*, %struct.hsu_dma_chip** %5, align 8
  %14 = getelementptr inbounds %struct.hsu_dma_chip, %struct.hsu_dma_chip* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i16, i16* %16, align 8
  %18 = zext i16 %17 to i32
  %19 = icmp sge i32 %12, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %74

23:                                               ; preds = %3
  %24 = load %struct.hsu_dma_chip*, %struct.hsu_dma_chip** %5, align 8
  %25 = getelementptr inbounds %struct.hsu_dma_chip, %struct.hsu_dma_chip* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load %struct.hsu_dma_chan*, %struct.hsu_dma_chan** %27, align 8
  %29 = load i16, i16* %6, align 2
  %30 = zext i16 %29 to i64
  %31 = getelementptr inbounds %struct.hsu_dma_chan, %struct.hsu_dma_chan* %28, i64 %30
  store %struct.hsu_dma_chan* %31, %struct.hsu_dma_chan** %8, align 8
  %32 = load %struct.hsu_dma_chan*, %struct.hsu_dma_chan** %8, align 8
  %33 = getelementptr inbounds %struct.hsu_dma_chan, %struct.hsu_dma_chan* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.hsu_dma_chan*, %struct.hsu_dma_chan** %8, align 8
  %38 = load i32, i32* @HSU_CH_SR, align 4
  %39 = call i32 @hsu_chan_readl(%struct.hsu_dma_chan* %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load %struct.hsu_dma_chan*, %struct.hsu_dma_chan** %8, align 8
  %41 = getelementptr inbounds %struct.hsu_dma_chan, %struct.hsu_dma_chan* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load i32, i32* @HSU_CH_SR_DESCE_ANY, align 4
  %46 = load i32, i32* @HSU_CH_SR_CDESC_ANY, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %10, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %23
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %74

56:                                               ; preds = %23
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @HSU_CH_SR_DESCTO_ANY, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = call i32 @udelay(i32 2)
  br label %63

63:                                               ; preds = %61, %56
  %64 = load i32, i32* @HSU_CH_SR_DESCTO_ANY, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %10, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32*, i32** %7, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 0, i32 1
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %63, %53, %20
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hsu_chan_readl(%struct.hsu_dma_chan*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
