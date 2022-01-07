; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_int_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_int_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_engine = type { %struct.sdma_channel*, i64 }
%struct.sdma_channel = type { i32, %struct.TYPE_2__, %struct.sdma_desc* }
%struct.TYPE_2__ = type { i32 }
%struct.sdma_desc = type { i32 }

@SDMA_H_INTR = common dso_local global i64 0, align 8
@IMX_DMA_SG_LOOP = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sdma_int_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_int_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sdma_engine*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sdma_channel*, align 8
  %9 = alloca %struct.sdma_desc*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.sdma_engine*
  store %struct.sdma_engine* %11, %struct.sdma_engine** %5, align 8
  %12 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %13 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SDMA_H_INTR, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i64 @readl_relaxed(i64 %16)
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %20 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SDMA_H_INTR, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel_relaxed(i64 %18, i64 %23)
  %25 = load i64, i64* %6, align 8
  %26 = and i64 %25, -2
  store i64 %26, i64* %6, align 8
  br label %27

27:                                               ; preds = %68, %2
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %75

30:                                               ; preds = %27
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @fls(i64 %31)
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  %34 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %35 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %34, i32 0, i32 0
  %36 = load %struct.sdma_channel*, %struct.sdma_channel** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %36, i64 %38
  store %struct.sdma_channel* %39, %struct.sdma_channel** %8, align 8
  %40 = load %struct.sdma_channel*, %struct.sdma_channel** %8, align 8
  %41 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @spin_lock(i32* %42)
  %44 = load %struct.sdma_channel*, %struct.sdma_channel** %8, align 8
  %45 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %44, i32 0, i32 2
  %46 = load %struct.sdma_desc*, %struct.sdma_desc** %45, align 8
  store %struct.sdma_desc* %46, %struct.sdma_desc** %9, align 8
  %47 = load %struct.sdma_desc*, %struct.sdma_desc** %9, align 8
  %48 = icmp ne %struct.sdma_desc* %47, null
  br i1 %48, label %49, label %68

49:                                               ; preds = %30
  %50 = load %struct.sdma_channel*, %struct.sdma_channel** %8, align 8
  %51 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @IMX_DMA_SG_LOOP, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load %struct.sdma_channel*, %struct.sdma_channel** %8, align 8
  %58 = call i32 @sdma_update_channel_loop(%struct.sdma_channel* %57)
  br label %67

59:                                               ; preds = %49
  %60 = load %struct.sdma_channel*, %struct.sdma_channel** %8, align 8
  %61 = call i32 @mxc_sdma_handle_channel_normal(%struct.sdma_channel* %60)
  %62 = load %struct.sdma_desc*, %struct.sdma_desc** %9, align 8
  %63 = getelementptr inbounds %struct.sdma_desc, %struct.sdma_desc* %62, i32 0, i32 0
  %64 = call i32 @vchan_cookie_complete(i32* %63)
  %65 = load %struct.sdma_channel*, %struct.sdma_channel** %8, align 8
  %66 = call i32 @sdma_start_desc(%struct.sdma_channel* %65)
  br label %67

67:                                               ; preds = %59, %56
  br label %68

68:                                               ; preds = %67, %30
  %69 = load %struct.sdma_channel*, %struct.sdma_channel** %8, align 8
  %70 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = call i32 @spin_unlock(i32* %71)
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @__clear_bit(i32 %73, i64* %6)
  br label %27

75:                                               ; preds = %27
  %76 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %76
}

declare dso_local i64 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i64, i64) #1

declare dso_local i32 @fls(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @sdma_update_channel_loop(%struct.sdma_channel*) #1

declare dso_local i32 @mxc_sdma_handle_channel_normal(%struct.sdma_channel*) #1

declare dso_local i32 @vchan_cookie_complete(i32*) #1

declare dso_local i32 @sdma_start_desc(%struct.sdma_channel*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__clear_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
