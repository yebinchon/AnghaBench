; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_mxc_sdma_handle_channel_normal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_mxc_sdma_handle_channel_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_channel = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64, %struct.sdma_buffer_descriptor* }
%struct.sdma_buffer_descriptor = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }

@BD_DONE = common dso_local global i32 0, align 4
@BD_RROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@DMA_ERROR = common dso_local global i32 0, align 4
@DMA_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdma_channel*)* @mxc_sdma_handle_channel_normal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxc_sdma_handle_channel_normal(%struct.sdma_channel* %0) #0 {
  %2 = alloca %struct.sdma_channel*, align 8
  %3 = alloca %struct.sdma_channel*, align 8
  %4 = alloca %struct.sdma_buffer_descriptor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sdma_channel* %0, %struct.sdma_channel** %2, align 8
  %7 = load %struct.sdma_channel*, %struct.sdma_channel** %2, align 8
  store %struct.sdma_channel* %7, %struct.sdma_channel** %3, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %9 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  store i64 0, i64* %11, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %52, %1
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %15 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %13, %18
  br i1 %19, label %20, label %55

20:                                               ; preds = %12
  %21 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %22 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load %struct.sdma_buffer_descriptor*, %struct.sdma_buffer_descriptor** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.sdma_buffer_descriptor, %struct.sdma_buffer_descriptor* %25, i64 %27
  store %struct.sdma_buffer_descriptor* %28, %struct.sdma_buffer_descriptor** %4, align 8
  %29 = load %struct.sdma_buffer_descriptor*, %struct.sdma_buffer_descriptor** %4, align 8
  %30 = getelementptr inbounds %struct.sdma_buffer_descriptor, %struct.sdma_buffer_descriptor* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @BD_DONE, align 4
  %34 = load i32, i32* @BD_RROR, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %20
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %38, %20
  %42 = load %struct.sdma_buffer_descriptor*, %struct.sdma_buffer_descriptor** %4, align 8
  %43 = getelementptr inbounds %struct.sdma_buffer_descriptor, %struct.sdma_buffer_descriptor* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %47 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, %45
  store i64 %51, i64* %49, align 8
  br label %52

52:                                               ; preds = %41
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %12

55:                                               ; preds = %12
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, i32* @DMA_ERROR, align 4
  %60 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %61 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  br label %66

62:                                               ; preds = %55
  %63 = load i32, i32* @DMA_COMPLETE, align 4
  %64 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %65 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %62, %58
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
