; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_dma.c_nv50_dma_push.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_dma.c_nv50_dma_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_channel = type { %struct.TYPE_12__, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.nouveau_bo* }
%struct.nouveau_bo = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.nvif_user }
%struct.nvif_user = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.nvif_user*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv50_dma_push(%struct.nouveau_channel* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nouveau_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvif_user*, align 8
  %8 = alloca %struct.nouveau_bo*, align 8
  %9 = alloca i32, align 4
  store %struct.nouveau_channel* %0, %struct.nouveau_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %11 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %10, i32 0, i32 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store %struct.nvif_user* %15, %struct.nvif_user** %7, align 8
  %16 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %17 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load %struct.nouveau_bo*, %struct.nouveau_bo** %18, align 8
  store %struct.nouveau_bo* %19, %struct.nouveau_bo** %8, align 8
  %20 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %21 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = mul nsw i32 %23, 2
  %25 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %26 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %24, %28
  store i32 %29, i32* %9, align 4
  %30 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %31 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %33, 1
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load %struct.nouveau_bo*, %struct.nouveau_bo** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @lower_32_bits(i32 %40)
  %42 = call i32 @nouveau_bo_wr32(%struct.nouveau_bo* %37, i32 %38, i32 %41)
  %43 = load %struct.nouveau_bo*, %struct.nouveau_bo** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @upper_32_bits(i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = shl i32 %48, 8
  %50 = or i32 %47, %49
  %51 = call i32 @nouveau_bo_wr32(%struct.nouveau_bo* %43, i32 %44, i32 %50)
  %52 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %53 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  %57 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %58 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %56, %60
  %62 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %63 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  %65 = call i32 (...) @mb()
  %66 = load %struct.nouveau_bo*, %struct.nouveau_bo** %8, align 8
  %67 = call i32 @nouveau_bo_rd32(%struct.nouveau_bo* %66, i32 0)
  %68 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %69 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %68, i32 0, i32 2
  %70 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %71 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @nvif_wr32(i32* %69, i32 140, i32 %73)
  %75 = load %struct.nvif_user*, %struct.nvif_user** %7, align 8
  %76 = getelementptr inbounds %struct.nvif_user, %struct.nvif_user* %75, i32 0, i32 0
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = icmp ne %struct.TYPE_11__* %77, null
  br i1 %78, label %79, label %97

79:                                               ; preds = %3
  %80 = load %struct.nvif_user*, %struct.nvif_user** %7, align 8
  %81 = getelementptr inbounds %struct.nvif_user, %struct.nvif_user* %80, i32 0, i32 0
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i32 (%struct.nvif_user*, i32)*, i32 (%struct.nvif_user*, i32)** %83, align 8
  %85 = icmp ne i32 (%struct.nvif_user*, i32)* %84, null
  br i1 %85, label %86, label %97

86:                                               ; preds = %79
  %87 = load %struct.nvif_user*, %struct.nvif_user** %7, align 8
  %88 = getelementptr inbounds %struct.nvif_user, %struct.nvif_user* %87, i32 0, i32 0
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i32 (%struct.nvif_user*, i32)*, i32 (%struct.nvif_user*, i32)** %90, align 8
  %92 = load %struct.nvif_user*, %struct.nvif_user** %7, align 8
  %93 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %94 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 %91(%struct.nvif_user* %92, i32 %95)
  br label %97

97:                                               ; preds = %86, %79, %3
  %98 = load %struct.nouveau_channel*, %struct.nouveau_channel** %4, align 8
  %99 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %100, align 8
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @nouveau_bo_wr32(%struct.nouveau_bo*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @nouveau_bo_rd32(%struct.nouveau_bo*, i32) #1

declare dso_local i32 @nvif_wr32(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
