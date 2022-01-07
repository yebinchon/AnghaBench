; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_update_channel_loop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_update_channel_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_channel = type { i32, %struct.TYPE_6__, %struct.sdma_desc* }
%struct.TYPE_6__ = type { i32 }
%struct.sdma_desc = type { i64, i64, i32, %struct.TYPE_5__, i32, i32, %struct.sdma_buffer_descriptor* }
%struct.TYPE_5__ = type { i32 }
%struct.sdma_buffer_descriptor = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@BD_DONE = common dso_local global i32 0, align 4
@BD_RROR = common dso_local global i32 0, align 4
@DMA_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdma_channel*)* @sdma_update_channel_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_update_channel_loop(%struct.sdma_channel* %0) #0 {
  %2 = alloca %struct.sdma_channel*, align 8
  %3 = alloca %struct.sdma_buffer_descriptor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sdma_desc*, align 8
  store %struct.sdma_channel* %0, %struct.sdma_channel** %2, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.sdma_channel*, %struct.sdma_channel** %2, align 8
  %8 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  br label %10

10:                                               ; preds = %108, %1
  %11 = load %struct.sdma_channel*, %struct.sdma_channel** %2, align 8
  %12 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %11, i32 0, i32 2
  %13 = load %struct.sdma_desc*, %struct.sdma_desc** %12, align 8
  %14 = icmp ne %struct.sdma_desc* %13, null
  br i1 %14, label %15, label %109

15:                                               ; preds = %10
  %16 = load %struct.sdma_channel*, %struct.sdma_channel** %2, align 8
  %17 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %16, i32 0, i32 2
  %18 = load %struct.sdma_desc*, %struct.sdma_desc** %17, align 8
  store %struct.sdma_desc* %18, %struct.sdma_desc** %6, align 8
  %19 = load %struct.sdma_desc*, %struct.sdma_desc** %6, align 8
  %20 = getelementptr inbounds %struct.sdma_desc, %struct.sdma_desc* %19, i32 0, i32 6
  %21 = load %struct.sdma_buffer_descriptor*, %struct.sdma_buffer_descriptor** %20, align 8
  %22 = load %struct.sdma_desc*, %struct.sdma_desc** %6, align 8
  %23 = getelementptr inbounds %struct.sdma_desc, %struct.sdma_desc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.sdma_buffer_descriptor, %struct.sdma_buffer_descriptor* %21, i64 %24
  store %struct.sdma_buffer_descriptor* %25, %struct.sdma_buffer_descriptor** %3, align 8
  %26 = load %struct.sdma_buffer_descriptor*, %struct.sdma_buffer_descriptor** %3, align 8
  %27 = getelementptr inbounds %struct.sdma_buffer_descriptor, %struct.sdma_buffer_descriptor* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @BD_DONE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %15
  br label %109

34:                                               ; preds = %15
  %35 = load %struct.sdma_buffer_descriptor*, %struct.sdma_buffer_descriptor** %3, align 8
  %36 = getelementptr inbounds %struct.sdma_buffer_descriptor, %struct.sdma_buffer_descriptor* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @BD_RROR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %34
  %43 = load i32, i32* @BD_RROR, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.sdma_buffer_descriptor*, %struct.sdma_buffer_descriptor** %3, align 8
  %46 = getelementptr inbounds %struct.sdma_buffer_descriptor, %struct.sdma_buffer_descriptor* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %44
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* @DMA_ERROR, align 4
  %51 = load %struct.sdma_channel*, %struct.sdma_channel** %2, align 8
  %52 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %42, %34
  %56 = load %struct.sdma_buffer_descriptor*, %struct.sdma_buffer_descriptor** %3, align 8
  %57 = getelementptr inbounds %struct.sdma_buffer_descriptor, %struct.sdma_buffer_descriptor* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.sdma_desc*, %struct.sdma_desc** %6, align 8
  %61 = getelementptr inbounds %struct.sdma_desc, %struct.sdma_desc* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @BD_DONE, align 4
  %63 = load %struct.sdma_buffer_descriptor*, %struct.sdma_buffer_descriptor** %3, align 8
  %64 = getelementptr inbounds %struct.sdma_buffer_descriptor, %struct.sdma_buffer_descriptor* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %62
  store i32 %67, i32* %65, align 4
  %68 = load %struct.sdma_desc*, %struct.sdma_desc** %6, align 8
  %69 = getelementptr inbounds %struct.sdma_desc, %struct.sdma_desc* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.sdma_buffer_descriptor*, %struct.sdma_buffer_descriptor** %3, align 8
  %72 = getelementptr inbounds %struct.sdma_buffer_descriptor, %struct.sdma_buffer_descriptor* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 4
  %74 = load %struct.sdma_desc*, %struct.sdma_desc** %6, align 8
  %75 = getelementptr inbounds %struct.sdma_desc, %struct.sdma_desc* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.sdma_desc*, %struct.sdma_desc** %6, align 8
  %78 = getelementptr inbounds %struct.sdma_desc, %struct.sdma_desc* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load %struct.sdma_desc*, %struct.sdma_desc** %6, align 8
  %80 = getelementptr inbounds %struct.sdma_desc, %struct.sdma_desc* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = add i64 %81, 1
  %83 = load %struct.sdma_desc*, %struct.sdma_desc** %6, align 8
  %84 = getelementptr inbounds %struct.sdma_desc, %struct.sdma_desc* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = urem i64 %82, %86
  %88 = load %struct.sdma_desc*, %struct.sdma_desc** %6, align 8
  %89 = getelementptr inbounds %struct.sdma_desc, %struct.sdma_desc* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.sdma_channel*, %struct.sdma_channel** %2, align 8
  %91 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = call i32 @spin_unlock(i32* %92)
  %94 = load %struct.sdma_desc*, %struct.sdma_desc** %6, align 8
  %95 = getelementptr inbounds %struct.sdma_desc, %struct.sdma_desc* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = call i32 @dmaengine_desc_get_callback_invoke(i32* %96, i32* null)
  %98 = load %struct.sdma_channel*, %struct.sdma_channel** %2, align 8
  %99 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = call i32 @spin_lock(i32* %100)
  %102 = load i32, i32* %4, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %55
  %105 = load i32, i32* %5, align 4
  %106 = load %struct.sdma_channel*, %struct.sdma_channel** %2, align 8
  %107 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  br label %108

108:                                              ; preds = %104, %55
  br label %10

109:                                              ; preds = %33, %10
  ret void
}

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dmaengine_desc_get_callback_invoke(i32*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
