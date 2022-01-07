; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gp102.c_gp102_gr_zbc_clear_stencil.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gp102.c_gp102_gr_zbc_clear_stencil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_gr = type { %struct.TYPE_5__*, %struct.TYPE_8__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gf100_gr*, i32)* @gp102_gr_zbc_clear_stencil to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gp102_gr_zbc_clear_stencil(%struct.gf100_gr* %0, i32 %1) #0 {
  %3 = alloca %struct.gf100_gr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gf100_gr* %0, %struct.gf100_gr** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %9 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  store %struct.nvkm_device* %13, %struct.nvkm_device** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = mul nsw i32 %16, 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %19 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %2
  %28 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 4292956, %29
  %31 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %32 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @nvkm_wr32(%struct.nvkm_device* %28, i32 %30, i32 %38)
  br label %40

40:                                               ; preds = %27, %2
  %41 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sdiv i32 %42, 4
  %44 = mul nsw i32 %43, 4
  %45 = add nsw i32 4293016, %44
  %46 = load i32, i32* %6, align 4
  %47 = srem i32 %46, 4
  %48 = mul nsw i32 %47, 7
  %49 = shl i32 127, %48
  %50 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %51 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = srem i32 %58, 4
  %60 = mul nsw i32 %59, 7
  %61 = shl i32 %57, %60
  %62 = call i32 @nvkm_mask(%struct.nvkm_device* %41, i32 %45, i32 %49, i32 %61)
  ret void
}

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
