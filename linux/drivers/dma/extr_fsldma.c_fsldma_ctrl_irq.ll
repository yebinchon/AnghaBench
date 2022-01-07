; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsldma.c_fsldma_ctrl_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsldma.c_fsldma_ctrl_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsldma_device = type { i32, i32, %struct.fsldma_chan**, i32 }
%struct.fsldma_chan = type { i32 }

@FSL_DMA_BIG_ENDIAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"IRQ: gsr 0x%.8x\0A\00", align 1
@FSL_DMA_MAX_CHANS_PER_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"IRQ: chan %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fsldma_ctrl_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsldma_ctrl_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fsldma_device*, align 8
  %6 = alloca %struct.fsldma_chan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.fsldma_device*
  store %struct.fsldma_device* %12, %struct.fsldma_device** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.fsldma_device*, %struct.fsldma_device** %5, align 8
  %14 = getelementptr inbounds %struct.fsldma_device, %struct.fsldma_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @FSL_DMA_BIG_ENDIAN, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.fsldma_device*, %struct.fsldma_device** %5, align 8
  %21 = getelementptr inbounds %struct.fsldma_device, %struct.fsldma_device* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @in_be32(i32 %22)
  br label %29

24:                                               ; preds = %2
  %25 = load %struct.fsldma_device*, %struct.fsldma_device** %5, align 8
  %26 = getelementptr inbounds %struct.fsldma_device, %struct.fsldma_device* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @in_le32(i32 %27)
  br label %29

29:                                               ; preds = %24, %19
  %30 = phi i32 [ %23, %19 ], [ %28, %24 ]
  store i32 %30, i32* %8, align 4
  store i32 -16777216, i32* %9, align 4
  %31 = load %struct.fsldma_device*, %struct.fsldma_device** %5, align 8
  %32 = getelementptr inbounds %struct.fsldma_device, %struct.fsldma_device* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @dev_dbg(i32 %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %76, %29
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @FSL_DMA_MAX_CHANS_PER_DEVICE, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %79

40:                                               ; preds = %36
  %41 = load %struct.fsldma_device*, %struct.fsldma_device** %5, align 8
  %42 = getelementptr inbounds %struct.fsldma_device, %struct.fsldma_device* %41, i32 0, i32 2
  %43 = load %struct.fsldma_chan**, %struct.fsldma_chan*** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.fsldma_chan*, %struct.fsldma_chan** %43, i64 %45
  %47 = load %struct.fsldma_chan*, %struct.fsldma_chan** %46, align 8
  store %struct.fsldma_chan* %47, %struct.fsldma_chan** %6, align 8
  %48 = load %struct.fsldma_chan*, %struct.fsldma_chan** %6, align 8
  %49 = icmp ne %struct.fsldma_chan* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %40
  br label %76

51:                                               ; preds = %40
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %51
  %57 = load %struct.fsldma_device*, %struct.fsldma_device** %5, align 8
  %58 = getelementptr inbounds %struct.fsldma_device, %struct.fsldma_device* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.fsldma_chan*, %struct.fsldma_chan** %6, align 8
  %61 = getelementptr inbounds %struct.fsldma_chan, %struct.fsldma_chan* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dev_dbg(i32 %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %3, align 4
  %65 = load %struct.fsldma_chan*, %struct.fsldma_chan** %6, align 8
  %66 = call i32 @fsldma_chan_irq(i32 %64, %struct.fsldma_chan* %65)
  %67 = load i32, i32* %7, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %56, %51
  %70 = load i32, i32* %9, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %8, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = ashr i32 %74, 8
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %69, %50
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %36

79:                                               ; preds = %36
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @IRQ_RETVAL(i32 %80)
  ret i32 %81
}

declare dso_local i32 @in_be32(i32) #1

declare dso_local i32 @in_le32(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @fsldma_chan_irq(i32, %struct.fsldma_chan*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
