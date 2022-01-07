; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_ovl_set_vid_color_conv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_ovl_set_vid_color_conv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispc_device = type { i32 }

@OMAP_DSS_GFX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dispc_device*, i32, i32)* @dispc_ovl_set_vid_color_conv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispc_ovl_set_vid_color_conv(%struct.dispc_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dispc_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dispc_device* %0, %struct.dispc_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @OMAP_DSS_GFX, align 4
  %10 = icmp eq i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.dispc_device*, %struct.dispc_device** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @DISPC_OVL_ATTRIBUTES(i32 %14)
  %16 = call i32 @dispc_read_reg(%struct.dispc_device* %13, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @FLD_MOD(i32 %17, i32 %18, i32 9, i32 9)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.dispc_device*, %struct.dispc_device** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @DISPC_OVL_ATTRIBUTES(i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @dispc_write_reg(%struct.dispc_device* %20, i32 %22, i32 %23)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dispc_read_reg(%struct.dispc_device*, i32) #1

declare dso_local i32 @DISPC_OVL_ATTRIBUTES(i32) #1

declare dso_local i32 @FLD_MOD(i32, i32, i32, i32) #1

declare dso_local i32 @dispc_write_reg(%struct.dispc_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
