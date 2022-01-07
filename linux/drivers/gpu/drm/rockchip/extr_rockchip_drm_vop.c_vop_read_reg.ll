; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_vop.c_vop_read_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_vop.c_vop_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop = type { i32 }
%struct.vop_reg = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop*, i32, %struct.vop_reg*)* @vop_read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vop_read_reg(%struct.vop* %0, i32 %1, %struct.vop_reg* %2) #0 {
  %4 = alloca %struct.vop*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vop_reg*, align 8
  store %struct.vop* %0, %struct.vop** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.vop_reg* %2, %struct.vop_reg** %6, align 8
  %7 = load %struct.vop*, %struct.vop** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.vop_reg*, %struct.vop_reg** %6, align 8
  %10 = getelementptr inbounds %struct.vop_reg, %struct.vop_reg* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %8, %11
  %13 = call i32 @vop_readl(%struct.vop* %7, i32 %12)
  %14 = load %struct.vop_reg*, %struct.vop_reg** %6, align 8
  %15 = getelementptr inbounds %struct.vop_reg, %struct.vop_reg* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = ashr i32 %13, %16
  %18 = load %struct.vop_reg*, %struct.vop_reg** %6, align 8
  %19 = getelementptr inbounds %struct.vop_reg, %struct.vop_reg* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %17, %20
  ret i32 %21
}

declare dso_local i32 @vop_readl(%struct.vop*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
