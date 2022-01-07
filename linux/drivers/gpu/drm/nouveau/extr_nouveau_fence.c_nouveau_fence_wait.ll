; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_fence.c_nouveau_fence_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_fence.c_nouveau_fence_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_fence = type { i32 }

@HZ = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_fence_wait(%struct.nouveau_fence* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_fence*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.nouveau_fence* %0, %struct.nouveau_fence** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load %struct.nouveau_fence*, %struct.nouveau_fence** %5, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @nouveau_fence_wait_busy(%struct.nouveau_fence* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  br label %34

15:                                               ; preds = %3
  %16 = load %struct.nouveau_fence*, %struct.nouveau_fence** %5, align 8
  %17 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %16, i32 0, i32 0
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @HZ, align 4
  %20 = mul nsw i32 15, %19
  %21 = call i64 @dma_fence_wait_timeout(i32* %17, i32 %18, i32 %20)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load i64, i64* %8, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %4, align 4
  br label %34

27:                                               ; preds = %15
  %28 = load i64, i64* %8, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %34

33:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %30, %24, %11
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @nouveau_fence_wait_busy(%struct.nouveau_fence*, i32) #1

declare dso_local i64 @dma_fence_wait_timeout(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
