; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gf100.c_gf100_fifo_intr_engine_unit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gf100.c_gf100_fifo_intr_engine_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_fifo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"ENGINE %d %d %01x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gf100_fifo*, i32)* @gf100_fifo_intr_engine_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gf100_fifo_intr_engine_unit(%struct.gf100_fifo* %0, i32 %1) #0 {
  %3 = alloca %struct.gf100_fifo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_subdev*, align 8
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gf100_fifo* %0, %struct.gf100_fifo** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.gf100_fifo*, %struct.gf100_fifo** %3, align 8
  %12 = getelementptr inbounds %struct.gf100_fifo, %struct.gf100_fifo* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.nvkm_subdev* %14, %struct.nvkm_subdev** %5, align 8
  %15 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %16 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %15, i32 0, i32 0
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %16, align 8
  store %struct.nvkm_device* %17, %struct.nvkm_device** %6, align 8
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %19 = load i32, i32* %4, align 4
  %20 = mul nsw i32 %19, 4
  %21 = add nsw i32 9640, %20
  %22 = call i32 @nvkm_rd32(%struct.nvkm_device* %18, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %24 = call i32 @nvkm_rd32(%struct.nvkm_device* %23, i32 9768)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %26 = load i32, i32* %4, align 4
  %27 = mul nsw i32 %26, 4
  %28 = add nsw i32 9640, %27
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @nvkm_wr32(%struct.nvkm_device* %25, i32 %28, i32 %29)
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %63, %2
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 8
  br i1 %33, label %34, label %66

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %9, align 4
  %37 = mul nsw i32 %36, 4
  %38 = ashr i32 %35, %37
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = and i32 %41, 1
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %34
  %45 = load %struct.gf100_fifo*, %struct.gf100_fifo** %3, align 8
  %46 = getelementptr inbounds %struct.gf100_fifo, %struct.gf100_fifo* %45, i32 0, i32 0
  %47 = call i32 @nvkm_fifo_uevent(%struct.TYPE_4__* %46)
  %48 = load i32, i32* %10, align 4
  %49 = and i32 %48, -2
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %44, %34
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @nvkm_error(%struct.nvkm_subdev* %54, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56, i32 %57)
  %59 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @nvkm_mask(%struct.nvkm_device* %59, i32 9768, i32 %60, i32 0)
  br label %62

62:                                               ; preds = %53, %50
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %31

66:                                               ; preds = %31
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_fifo_uevent(%struct.TYPE_4__*) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32, i32, i32) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
