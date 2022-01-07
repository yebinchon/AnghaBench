; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_gem.c_v3d_reset_by_bridge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_gem.c_v3d_reset_by_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v3d_dev = type { i32 }

@V3D_TOP_GR_BRIDGE_REVISION = common dso_local global i32 0, align 4
@V3D_TOP_GR_BRIDGE_MAJOR = common dso_local global i32 0, align 4
@V3D_TOP_GR_BRIDGE_SW_INIT_0 = common dso_local global i32 0, align 4
@V3D_TOP_GR_BRIDGE_SW_INIT_0_V3D_CLK_108_SW_INIT = common dso_local global i32 0, align 4
@V3D_HUB_AXICFG = common dso_local global i32 0, align 4
@V3D_HUB_AXICFG_MAX_LEN_MASK = common dso_local global i32 0, align 4
@V3D_TOP_GR_BRIDGE_SW_INIT_1 = common dso_local global i32 0, align 4
@V3D_TOP_GR_BRIDGE_SW_INIT_1_V3D_CLK_108_SW_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v3d_dev*)* @v3d_reset_by_bridge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v3d_reset_by_bridge(%struct.v3d_dev* %0) #0 {
  %2 = alloca %struct.v3d_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.v3d_dev* %0, %struct.v3d_dev** %2, align 8
  %4 = load i32, i32* @V3D_TOP_GR_BRIDGE_REVISION, align 4
  %5 = call i32 @V3D_BRIDGE_READ(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @V3D_TOP_GR_BRIDGE_MAJOR, align 4
  %8 = call i32 @V3D_GET_FIELD(i32 %6, i32 %7)
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load i32, i32* @V3D_TOP_GR_BRIDGE_SW_INIT_0, align 4
  %12 = load i32, i32* @V3D_TOP_GR_BRIDGE_SW_INIT_0_V3D_CLK_108_SW_INIT, align 4
  %13 = call i32 @V3D_BRIDGE_WRITE(i32 %11, i32 %12)
  %14 = load i32, i32* @V3D_TOP_GR_BRIDGE_SW_INIT_0, align 4
  %15 = call i32 @V3D_BRIDGE_WRITE(i32 %14, i32 0)
  %16 = load i32, i32* @V3D_HUB_AXICFG, align 4
  %17 = load i32, i32* @V3D_HUB_AXICFG_MAX_LEN_MASK, align 4
  %18 = call i32 @V3D_WRITE(i32 %16, i32 %17)
  br label %31

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @V3D_TOP_GR_BRIDGE_MAJOR, align 4
  %22 = call i32 @V3D_GET_FIELD(i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 7
  %24 = zext i1 %23 to i32
  %25 = call i32 @WARN_ON_ONCE(i32 %24)
  %26 = load i32, i32* @V3D_TOP_GR_BRIDGE_SW_INIT_1, align 4
  %27 = load i32, i32* @V3D_TOP_GR_BRIDGE_SW_INIT_1_V3D_CLK_108_SW_INIT, align 4
  %28 = call i32 @V3D_BRIDGE_WRITE(i32 %26, i32 %27)
  %29 = load i32, i32* @V3D_TOP_GR_BRIDGE_SW_INIT_1, align 4
  %30 = call i32 @V3D_BRIDGE_WRITE(i32 %29, i32 0)
  br label %31

31:                                               ; preds = %19, %10
  ret void
}

declare dso_local i32 @V3D_BRIDGE_READ(i32) #1

declare dso_local i32 @V3D_GET_FIELD(i32, i32) #1

declare dso_local i32 @V3D_BRIDGE_WRITE(i32, i32) #1

declare dso_local i32 @V3D_WRITE(i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
