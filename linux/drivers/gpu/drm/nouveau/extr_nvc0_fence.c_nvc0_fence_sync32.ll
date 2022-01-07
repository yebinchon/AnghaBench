; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nvc0_fence.c_nvc0_fence_sync32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nvc0_fence.c_nvc0_fence_sync32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_channel = type { i32 }

@NV84_SUBCHAN_SEMAPHORE_ADDRESS_HIGH = common dso_local global i32 0, align 4
@NV84_SUBCHAN_SEMAPHORE_TRIGGER_ACQUIRE_GEQUAL = common dso_local global i32 0, align 4
@NVC0_SUBCHAN_SEMAPHORE_TRIGGER_YIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_channel*, i32, i32)* @nvc0_fence_sync32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvc0_fence_sync32(%struct.nouveau_channel* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nouveau_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nouveau_channel* %0, %struct.nouveau_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %9 = call i32 @RING_SPACE(%struct.nouveau_channel* %8, i32 5)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %3
  %13 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %14 = load i32, i32* @NV84_SUBCHAN_SEMAPHORE_ADDRESS_HIGH, align 4
  %15 = call i32 @BEGIN_NVC0(%struct.nouveau_channel* %13, i32 0, i32 %14, i32 4)
  %16 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @upper_32_bits(i32 %17)
  %19 = call i32 @OUT_RING(%struct.nouveau_channel* %16, i32 %18)
  %20 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @lower_32_bits(i32 %21)
  %23 = call i32 @OUT_RING(%struct.nouveau_channel* %20, i32 %22)
  %24 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @OUT_RING(%struct.nouveau_channel* %24, i32 %25)
  %27 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %28 = load i32, i32* @NV84_SUBCHAN_SEMAPHORE_TRIGGER_ACQUIRE_GEQUAL, align 4
  %29 = load i32, i32* @NVC0_SUBCHAN_SEMAPHORE_TRIGGER_YIELD, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @OUT_RING(%struct.nouveau_channel* %27, i32 %30)
  %32 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %33 = call i32 @FIRE_RING(%struct.nouveau_channel* %32)
  br label %34

34:                                               ; preds = %12, %3
  %35 = load i32, i32* %7, align 4
  ret i32 %35
}

declare dso_local i32 @RING_SPACE(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @BEGIN_NVC0(%struct.nouveau_channel*, i32, i32, i32) #1

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
