; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_dma.c_nv50_dma_push_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_dma.c_nv50_dma_push_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_channel = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64, i64 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_channel*, i32)* @nv50_dma_push_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_dma_push_wait(%struct.nouveau_channel* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nouveau_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.nouveau_channel* %0, %struct.nouveau_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %9

9:                                                ; preds = %66, %2
  %10 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %11 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %67

16:                                               ; preds = %9
  %17 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %18 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %17, i32 0, i32 1
  %19 = call i64 @nvif_rd32(i32* %18, i32 136)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i64, i64* %8, align 8
  store i64 %24, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %25

25:                                               ; preds = %23, %16
  %26 = load i64, i64* %6, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %6, align 8
  %28 = and i64 %27, 255
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = call i32 @udelay(i32 1)
  %32 = load i64, i64* %6, align 8
  %33 = icmp sgt i64 %32, 100000
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %68

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %25
  %39 = load i64, i64* %8, align 8
  %40 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %41 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %39, %43
  %45 = trunc i64 %44 to i32
  %46 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %47 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %50 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp sle i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %38
  %55 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %56 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %60 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %58
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %61, align 8
  br label %66

66:                                               ; preds = %54, %38
  br label %9

67:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %34
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i64 @nvif_rd32(i32*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
