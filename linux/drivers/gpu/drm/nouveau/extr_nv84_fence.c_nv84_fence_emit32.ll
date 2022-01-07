; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nv84_fence.c_nv84_fence_emit32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nv84_fence.c_nv84_fence_emit32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_channel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NV11_SUBCHAN_DMA_SEMAPHORE = common dso_local global i32 0, align 4
@NV84_SUBCHAN_SEMAPHORE_ADDRESS_HIGH = common dso_local global i32 0, align 4
@NV84_SUBCHAN_SEMAPHORE_TRIGGER_WRITE_LONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_channel*, i32, i32)* @nv84_fence_emit32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv84_fence_emit32(%struct.nouveau_channel* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nouveau_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nouveau_channel* %0, %struct.nouveau_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %9 = call i32 @RING_SPACE(%struct.nouveau_channel* %8, i32 8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %43

12:                                               ; preds = %3
  %13 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %14 = load i32, i32* @NV11_SUBCHAN_DMA_SEMAPHORE, align 4
  %15 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %13, i32 0, i32 %14, i32 1)
  %16 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %17 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %18 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @OUT_RING(%struct.nouveau_channel* %16, i32 %20)
  %22 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %23 = load i32, i32* @NV84_SUBCHAN_SEMAPHORE_ADDRESS_HIGH, align 4
  %24 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %22, i32 0, i32 %23, i32 5)
  %25 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @upper_32_bits(i32 %26)
  %28 = call i32 @OUT_RING(%struct.nouveau_channel* %25, i32 %27)
  %29 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @lower_32_bits(i32 %30)
  %32 = call i32 @OUT_RING(%struct.nouveau_channel* %29, i32 %31)
  %33 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @OUT_RING(%struct.nouveau_channel* %33, i32 %34)
  %36 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %37 = load i32, i32* @NV84_SUBCHAN_SEMAPHORE_TRIGGER_WRITE_LONG, align 4
  %38 = call i32 @OUT_RING(%struct.nouveau_channel* %36, i32 %37)
  %39 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %40 = call i32 @OUT_RING(%struct.nouveau_channel* %39, i32 0)
  %41 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %42 = call i32 @FIRE_RING(%struct.nouveau_channel* %41)
  br label %43

43:                                               ; preds = %12, %3
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local i32 @RING_SPACE(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @BEGIN_NV04(%struct.nouveau_channel*, i32, i32, i32) #1

declare dso_local i32 @OUT_RING(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @FIRE_RING(%struct.nouveau_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
