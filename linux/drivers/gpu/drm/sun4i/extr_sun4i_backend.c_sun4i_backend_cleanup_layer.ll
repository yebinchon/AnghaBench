; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_backend.c_sun4i_backend_cleanup_layer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_backend.c_sun4i_backend_cleanup_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_backend = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SUN4I_BACKEND_ATTCTL_REG0_LAY_VDOEN = common dso_local global i32 0, align 4
@SUN4I_BACKEND_ATTCTL_REG0_LAY_YUVEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sun4i_backend_cleanup_layer(%struct.sun4i_backend* %0, i32 %1) #0 {
  %3 = alloca %struct.sun4i_backend*, align 8
  %4 = alloca i32, align 4
  store %struct.sun4i_backend* %0, %struct.sun4i_backend** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.sun4i_backend*, %struct.sun4i_backend** %3, align 8
  %6 = getelementptr inbounds %struct.sun4i_backend, %struct.sun4i_backend* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @SUN4I_BACKEND_ATTCTL_REG0(i32 %9)
  %11 = load i32, i32* @SUN4I_BACKEND_ATTCTL_REG0_LAY_VDOEN, align 4
  %12 = load i32, i32* @SUN4I_BACKEND_ATTCTL_REG0_LAY_YUVEN, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @regmap_update_bits(i32 %8, i32 %10, i32 %13, i32 0)
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @SUN4I_BACKEND_ATTCTL_REG0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
