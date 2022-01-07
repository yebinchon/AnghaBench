; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gf100.c_gf100_fifo_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gf100.c_gf100_fifo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fifo = type { i32 }
%struct.gf100_fifo = type { i32, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_fifo*)* @gf100_fifo_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gf100_fifo_init(%struct.nvkm_fifo* %0) #0 {
  %2 = alloca %struct.nvkm_fifo*, align 8
  %3 = alloca %struct.gf100_fifo*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca i32, align 4
  store %struct.nvkm_fifo* %0, %struct.nvkm_fifo** %2, align 8
  %6 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %2, align 8
  %7 = call %struct.gf100_fifo* @gf100_fifo(%struct.nvkm_fifo* %6)
  store %struct.gf100_fifo* %7, %struct.gf100_fifo** %3, align 8
  %8 = load %struct.gf100_fifo*, %struct.gf100_fifo** %3, align 8
  %9 = getelementptr inbounds %struct.gf100_fifo, %struct.gf100_fifo* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  store %struct.nvkm_device* %13, %struct.nvkm_device** %4, align 8
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %15 = load %struct.gf100_fifo*, %struct.gf100_fifo** %3, align 8
  %16 = getelementptr inbounds %struct.gf100_fifo, %struct.gf100_fifo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = shl i32 1, %17
  %19 = sub nsw i32 %18, 1
  %20 = call i32 @nvkm_wr32(%struct.nvkm_device* %14, i32 516, i32 %19)
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %22 = load %struct.gf100_fifo*, %struct.gf100_fifo** %3, align 8
  %23 = getelementptr inbounds %struct.gf100_fifo, %struct.gf100_fifo* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = shl i32 1, %24
  %26 = sub nsw i32 %25, 1
  %27 = call i32 @nvkm_wr32(%struct.nvkm_device* %21, i32 8708, i32 %26)
  %28 = load %struct.gf100_fifo*, %struct.gf100_fifo** %3, align 8
  %29 = getelementptr inbounds %struct.gf100_fifo, %struct.gf100_fifo* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sge i32 %30, 3
  br i1 %31, label %32, label %45

32:                                               ; preds = %1
  %33 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %34 = call i32 @nvkm_wr32(%struct.nvkm_device* %33, i32 8712, i32 -2)
  %35 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %36 = call i32 @nvkm_wr32(%struct.nvkm_device* %35, i32 8716, i32 -3)
  %37 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %38 = call i32 @nvkm_wr32(%struct.nvkm_device* %37, i32 8720, i32 -3)
  %39 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %40 = call i32 @nvkm_wr32(%struct.nvkm_device* %39, i32 8724, i32 -3)
  %41 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %42 = call i32 @nvkm_wr32(%struct.nvkm_device* %41, i32 8728, i32 -5)
  %43 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %44 = call i32 @nvkm_wr32(%struct.nvkm_device* %43, i32 8732, i32 -3)
  br label %45

45:                                               ; preds = %32, %1
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %68, %45
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.gf100_fifo*, %struct.gf100_fifo** %3, align 8
  %49 = getelementptr inbounds %struct.gf100_fifo, %struct.gf100_fifo* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %71

52:                                               ; preds = %46
  %53 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = mul nsw i32 %54, 8192
  %56 = add nsw i32 262460, %55
  %57 = call i32 @nvkm_mask(%struct.nvkm_device* %53, i32 %56, i32 268435712, i32 0)
  %58 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = mul nsw i32 %59, 8192
  %61 = add nsw i32 262408, %60
  %62 = call i32 @nvkm_wr32(%struct.nvkm_device* %58, i32 %61, i32 -1)
  %63 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = mul nsw i32 %64, 8192
  %66 = add nsw i32 262412, %65
  %67 = call i32 @nvkm_wr32(%struct.nvkm_device* %63, i32 %66, i32 -257)
  br label %68

68:                                               ; preds = %52
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %46

71:                                               ; preds = %46
  %72 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %73 = call i32 @nvkm_mask(%struct.nvkm_device* %72, i32 8704, i32 1, i32 1)
  %74 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %75 = load %struct.gf100_fifo*, %struct.gf100_fifo** %3, align 8
  %76 = getelementptr inbounds %struct.gf100_fifo, %struct.gf100_fifo* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = ashr i32 %80, 12
  %82 = or i32 268435456, %81
  %83 = call i32 @nvkm_wr32(%struct.nvkm_device* %74, i32 8788, i32 %82)
  %84 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %85 = call i32 @nvkm_wr32(%struct.nvkm_device* %84, i32 8448, i32 -1)
  %86 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %87 = call i32 @nvkm_wr32(%struct.nvkm_device* %86, i32 8512, i32 2147483647)
  %88 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %89 = call i32 @nvkm_wr32(%struct.nvkm_device* %88, i32 9768, i32 1)
  ret void
}

declare dso_local %struct.gf100_fifo* @gf100_fifo(%struct.nvkm_fifo*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
