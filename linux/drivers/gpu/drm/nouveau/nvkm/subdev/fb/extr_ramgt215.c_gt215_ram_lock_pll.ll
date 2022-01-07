; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgt215.c_gt215_ram_lock_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgt215.c_gt215_ram_lock_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gt215_ramfuc = type { i32 }
%struct.gt215_clk_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gt215_ramfuc*, %struct.gt215_clk_info*)* @gt215_ram_lock_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gt215_ram_lock_pll(%struct.gt215_ramfuc* %0, %struct.gt215_clk_info* %1) #0 {
  %3 = alloca %struct.gt215_ramfuc*, align 8
  %4 = alloca %struct.gt215_clk_info*, align 8
  store %struct.gt215_ramfuc* %0, %struct.gt215_ramfuc** %3, align 8
  store %struct.gt215_clk_info* %1, %struct.gt215_clk_info** %4, align 8
  %5 = load %struct.gt215_ramfuc*, %struct.gt215_ramfuc** %3, align 8
  %6 = load %struct.gt215_clk_info*, %struct.gt215_clk_info** %4, align 8
  %7 = getelementptr inbounds %struct.gt215_clk_info, %struct.gt215_clk_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @ram_wr32(%struct.gt215_ramfuc* %5, i32 16388, i32 %8)
  %10 = load %struct.gt215_ramfuc*, %struct.gt215_ramfuc** %3, align 8
  %11 = call i32 @ram_mask(%struct.gt215_ramfuc* %10, i32 16384, i32 1, i32 1)
  %12 = load %struct.gt215_ramfuc*, %struct.gt215_ramfuc** %3, align 8
  %13 = call i32 @ram_mask(%struct.gt215_ramfuc* %12, i32 16384, i32 16, i32 0)
  %14 = load %struct.gt215_ramfuc*, %struct.gt215_ramfuc** %3, align 8
  %15 = call i32 @ram_wait(%struct.gt215_ramfuc* %14, i32 16384, i32 131072, i32 131072, i32 64000)
  %16 = load %struct.gt215_ramfuc*, %struct.gt215_ramfuc** %3, align 8
  %17 = call i32 @ram_mask(%struct.gt215_ramfuc* %16, i32 16384, i32 16, i32 16)
  ret void
}

declare dso_local i32 @ram_wr32(%struct.gt215_ramfuc*, i32, i32) #1

declare dso_local i32 @ram_mask(%struct.gt215_ramfuc*, i32, i32, i32) #1

declare dso_local i32 @ram_wait(%struct.gt215_ramfuc*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
