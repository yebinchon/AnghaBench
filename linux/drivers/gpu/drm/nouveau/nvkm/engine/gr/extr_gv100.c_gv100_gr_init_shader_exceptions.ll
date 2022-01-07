; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gv100.c_gv100_gr_init_shader_exceptions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gv100.c_gv100_gr_init_shader_exceptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_gr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gf100_gr*, i32, i32)* @gv100_gr_init_shader_exceptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gv100_gr_init_shader_exceptions(%struct.gf100_gr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gf100_gr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_device*, align 8
  %8 = alloca i32, align 4
  store %struct.gf100_gr* %0, %struct.gf100_gr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %10 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  store %struct.nvkm_device* %14, %struct.nvkm_device** %7, align 8
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %38, %3
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 256
  br i1 %17, label %18, label %41

18:                                               ; preds = %15
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 1832, %22
  %24 = call i32 @TPC_UNIT(i32 %20, i32 %21, i32 %23)
  %25 = call i32 @nvkm_wr32(%struct.nvkm_device* %19, i32 %24, i32 8776548)
  %26 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @TPC_UNIT(i32 %27, i32 %28, i32 1552)
  %30 = call i32 @nvkm_wr32(%struct.nvkm_device* %26, i32 %29, i32 1)
  %31 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 1836, %34
  %36 = call i32 @TPC_UNIT(i32 %32, i32 %33, i32 %35)
  %37 = call i32 @nvkm_wr32(%struct.nvkm_device* %31, i32 %36, i32 4)
  br label %38

38:                                               ; preds = %18
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 128
  store i32 %40, i32* %8, align 4
  br label %15

41:                                               ; preds = %15
  ret void
}

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @TPC_UNIT(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
