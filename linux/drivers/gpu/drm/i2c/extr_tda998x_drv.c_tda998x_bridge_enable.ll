; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_tda998x_bridge_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_tda998x_bridge_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32 }
%struct.tda998x_priv = type { i32, i32, i32, i32 }

@REG_ENA_VP_0 = common dso_local global i32 0, align 4
@REG_ENA_VP_1 = common dso_local global i32 0, align 4
@REG_ENA_VP_2 = common dso_local global i32 0, align 4
@REG_VIP_CNTRL_0 = common dso_local global i32 0, align 4
@REG_VIP_CNTRL_1 = common dso_local global i32 0, align 4
@REG_VIP_CNTRL_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_bridge*)* @tda998x_bridge_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tda998x_bridge_enable(%struct.drm_bridge* %0) #0 {
  %2 = alloca %struct.drm_bridge*, align 8
  %3 = alloca %struct.tda998x_priv*, align 8
  store %struct.drm_bridge* %0, %struct.drm_bridge** %2, align 8
  %4 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %5 = call %struct.tda998x_priv* @bridge_to_tda998x_priv(%struct.drm_bridge* %4)
  store %struct.tda998x_priv* %5, %struct.tda998x_priv** %3, align 8
  %6 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %7 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %40, label %10

10:                                               ; preds = %1
  %11 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %12 = load i32, i32* @REG_ENA_VP_0, align 4
  %13 = call i32 @reg_write(%struct.tda998x_priv* %11, i32 %12, i32 255)
  %14 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %15 = load i32, i32* @REG_ENA_VP_1, align 4
  %16 = call i32 @reg_write(%struct.tda998x_priv* %14, i32 %15, i32 255)
  %17 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %18 = load i32, i32* @REG_ENA_VP_2, align 4
  %19 = call i32 @reg_write(%struct.tda998x_priv* %17, i32 %18, i32 255)
  %20 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %21 = load i32, i32* @REG_VIP_CNTRL_0, align 4
  %22 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %23 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @reg_write(%struct.tda998x_priv* %20, i32 %21, i32 %24)
  %26 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %27 = load i32, i32* @REG_VIP_CNTRL_1, align 4
  %28 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %29 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @reg_write(%struct.tda998x_priv* %26, i32 %27, i32 %30)
  %32 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %33 = load i32, i32* @REG_VIP_CNTRL_2, align 4
  %34 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %35 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @reg_write(%struct.tda998x_priv* %32, i32 %33, i32 %36)
  %38 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %39 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  br label %40

40:                                               ; preds = %10, %1
  ret void
}

declare dso_local %struct.tda998x_priv* @bridge_to_tda998x_priv(%struct.drm_bridge*) #1

declare dso_local i32 @reg_write(%struct.tda998x_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
