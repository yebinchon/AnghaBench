; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_dma.h_FIRE_RING.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_dma.h_FIRE_RING.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_channel = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_channel*)* @FIRE_RING to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FIRE_RING(%struct.nouveau_channel* %0) #0 {
  %2 = alloca %struct.nouveau_channel*, align 8
  store %struct.nouveau_channel* %0, %struct.nouveau_channel** %2, align 8
  %3 = load %struct.nouveau_channel*, %struct.nouveau_channel** %2, align 8
  %4 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.nouveau_channel*, %struct.nouveau_channel** %2, align 8
  %8 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %6, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %59

13:                                               ; preds = %1
  %14 = load %struct.nouveau_channel*, %struct.nouveau_channel** %2, align 8
  %15 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.nouveau_channel*, %struct.nouveau_channel** %2, align 8
  %17 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %13
  %22 = load %struct.nouveau_channel*, %struct.nouveau_channel** %2, align 8
  %23 = load %struct.nouveau_channel*, %struct.nouveau_channel** %2, align 8
  %24 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.nouveau_channel*, %struct.nouveau_channel** %2, align 8
  %28 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 2
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %26, %32
  %34 = load %struct.nouveau_channel*, %struct.nouveau_channel** %2, align 8
  %35 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.nouveau_channel*, %struct.nouveau_channel** %2, align 8
  %39 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %37, %41
  %43 = shl i32 %42, 2
  %44 = call i32 @nv50_dma_push(%struct.nouveau_channel* %22, i64 %33, i32 %43)
  br label %51

45:                                               ; preds = %13
  %46 = load %struct.nouveau_channel*, %struct.nouveau_channel** %2, align 8
  %47 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @WRITE_PUT(i32 %49)
  br label %51

51:                                               ; preds = %45, %21
  %52 = load %struct.nouveau_channel*, %struct.nouveau_channel** %2, align 8
  %53 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.nouveau_channel*, %struct.nouveau_channel** %2, align 8
  %57 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  br label %59

59:                                               ; preds = %51, %12
  ret void
}

declare dso_local i32 @nv50_dma_push(%struct.nouveau_channel*, i64, i32) #1

declare dso_local i32 @WRITE_PUT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
