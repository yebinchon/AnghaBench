; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gt215.c_prog_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gt215.c_prog_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gt215_clk = type { %struct.TYPE_4__, %struct.gt215_clk_info* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.gt215_clk_info = type { i32 }

@nv_clk_src_host = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gt215_clk*)* @prog_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prog_host(%struct.gt215_clk* %0) #0 {
  %2 = alloca %struct.gt215_clk*, align 8
  %3 = alloca %struct.gt215_clk_info*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca i32, align 4
  store %struct.gt215_clk* %0, %struct.gt215_clk** %2, align 8
  %6 = load %struct.gt215_clk*, %struct.gt215_clk** %2, align 8
  %7 = getelementptr inbounds %struct.gt215_clk, %struct.gt215_clk* %6, i32 0, i32 1
  %8 = load %struct.gt215_clk_info*, %struct.gt215_clk_info** %7, align 8
  %9 = load i64, i64* @nv_clk_src_host, align 8
  %10 = getelementptr inbounds %struct.gt215_clk_info, %struct.gt215_clk_info* %8, i64 %9
  store %struct.gt215_clk_info* %10, %struct.gt215_clk_info** %3, align 8
  %11 = load %struct.gt215_clk*, %struct.gt215_clk** %2, align 8
  %12 = getelementptr inbounds %struct.gt215_clk, %struct.gt215_clk* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  store %struct.nvkm_device* %15, %struct.nvkm_device** %4, align 8
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %17 = call i32 @nvkm_rd32(%struct.nvkm_device* %16, i32 49216)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.gt215_clk_info*, %struct.gt215_clk_info** %3, align 8
  %19 = getelementptr inbounds %struct.gt215_clk_info, %struct.gt215_clk_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %46 [
    i32 129, label %21
    i32 128, label %33
  ]

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 805306368
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, 536870912
  %29 = call i32 @nvkm_wr32(%struct.nvkm_device* %26, i32 49216, i32 %28)
  %30 = load %struct.gt215_clk*, %struct.gt215_clk** %2, align 8
  %31 = call i32 @disable_clk_src(%struct.gt215_clk* %30, i32 16788)
  br label %32

32:                                               ; preds = %25, %21
  br label %47

33:                                               ; preds = %1
  %34 = load %struct.gt215_clk*, %struct.gt215_clk** %2, align 8
  %35 = load i64, i64* @nv_clk_src_host, align 8
  %36 = call i32 @prog_clk(%struct.gt215_clk* %34, i32 29, i64 %35)
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, 805306368
  %39 = icmp sge i32 %38, 536870912
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %42, -805306369
  %44 = call i32 @nvkm_wr32(%struct.nvkm_device* %41, i32 49216, i32 %43)
  br label %45

45:                                               ; preds = %40, %33
  br label %47

46:                                               ; preds = %1
  br label %47

47:                                               ; preds = %46, %45, %32
  %48 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %49 = call i32 @nvkm_wr32(%struct.nvkm_device* %48, i32 49220, i32 62)
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @disable_clk_src(%struct.gt215_clk*, i32) #1

declare dso_local i32 @prog_clk(%struct.gt215_clk*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
