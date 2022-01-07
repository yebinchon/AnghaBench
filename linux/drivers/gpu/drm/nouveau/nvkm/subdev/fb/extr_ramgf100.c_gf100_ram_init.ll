; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgf100.c_gf100_ram_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgf100.c_gf100_ram_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ram = type { i32 }
%struct.gf100_ram = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@gf100_ram_init.train0 = internal constant [12 x i32] [i32 0, i32 255, i32 85, i32 170, i32 51, i32 204, i32 0, i32 255, i32 255, i32 0, i32 255, i32 0], align 16
@gf100_ram_init.train1 = internal constant [12 x i32] [i32 0, i32 -1, i32 1431655765, i32 -1431655766, i32 858993459, i32 -858993460, i32 -252645136, i32 252645135, i32 16711935, i32 -16711936, i32 65535, i32 -65536], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gf100_ram_init(%struct.nvkm_ram* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_ram*, align 8
  %4 = alloca %struct.gf100_ram*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  store %struct.nvkm_ram* %0, %struct.nvkm_ram** %3, align 8
  %7 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %8 = call %struct.gf100_ram* @gf100_ram(%struct.nvkm_ram* %7)
  store %struct.gf100_ram* %8, %struct.gf100_ram** %4, align 8
  %9 = load %struct.gf100_ram*, %struct.gf100_ram** %4, align 8
  %10 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  store %struct.nvkm_device* %15, %struct.nvkm_device** %5, align 8
  %16 = load %struct.gf100_ram*, %struct.gf100_ram** %4, align 8
  %17 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %21 [
    i32 128, label %20
  ]

20:                                               ; preds = %1
  br label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %101

22:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %97, %22
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 48
  br i1 %25, label %26, label %100

26:                                               ; preds = %23
  %27 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = shl i32 %28, 8
  %30 = or i32 0, %29
  %31 = call i32 @nvkm_wr32(%struct.nvkm_device* %27, i32 1112424, i32 %30)
  %32 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = shl i32 %33, 8
  %35 = or i32 0, %34
  %36 = call i32 @nvkm_wr32(%struct.nvkm_device* %32, i32 1112428, i32 %35)
  %37 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = srem i32 %38, 12
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [12 x i32], [12 x i32]* @gf100_ram_init.train0, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = or i32 256, %42
  %44 = call i32 @nvkm_wr32(%struct.nvkm_device* %37, i32 1112352, i32 %43)
  %45 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = srem i32 %46, 12
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [12 x i32], [12 x i32]* @gf100_ram_init.train0, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = or i32 256, %50
  %52 = call i32 @nvkm_wr32(%struct.nvkm_device* %45, i32 1112356, i32 %51)
  %53 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = srem i32 %54, 12
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [12 x i32], [12 x i32]* @gf100_ram_init.train1, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @nvkm_wr32(%struct.nvkm_device* %53, i32 1112344, i32 %58)
  %60 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = srem i32 %61, 12
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [12 x i32], [12 x i32]* @gf100_ram_init.train1, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @nvkm_wr32(%struct.nvkm_device* %60, i32 1112348, i32 %65)
  %67 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = srem i32 %68, 12
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [12 x i32], [12 x i32]* @gf100_ram_init.train0, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = or i32 0, %72
  %74 = call i32 @nvkm_wr32(%struct.nvkm_device* %67, i32 1112352, i32 %73)
  %75 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = srem i32 %76, 12
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [12 x i32], [12 x i32]* @gf100_ram_init.train0, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = or i32 0, %80
  %82 = call i32 @nvkm_wr32(%struct.nvkm_device* %75, i32 1112356, i32 %81)
  %83 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %84 = load i32, i32* %6, align 4
  %85 = srem i32 %84, 12
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [12 x i32], [12 x i32]* @gf100_ram_init.train1, i64 0, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @nvkm_wr32(%struct.nvkm_device* %83, i32 1112344, i32 %88)
  %90 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %91 = load i32, i32* %6, align 4
  %92 = srem i32 %91, 12
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [12 x i32], [12 x i32]* @gf100_ram_init.train1, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @nvkm_wr32(%struct.nvkm_device* %90, i32 1112348, i32 %95)
  br label %97

97:                                               ; preds = %26
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %6, align 4
  br label %23

100:                                              ; preds = %23
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %100, %21
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local %struct.gf100_ram* @gf100_ram(%struct.nvkm_ram*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
