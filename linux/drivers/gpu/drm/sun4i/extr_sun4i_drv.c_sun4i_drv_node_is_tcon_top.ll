; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_drv.c_sun4i_drv_node_is_tcon_top.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_drv.c_sun4i_drv_node_is_tcon_top.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@CONFIG_DRM_SUN8I_TCON_TOP = common dso_local global i32 0, align 4
@sun8i_tcon_top_of_table = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*)* @sun4i_drv_node_is_tcon_top to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_drv_node_is_tcon_top(%struct.device_node* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  store %struct.device_node* %0, %struct.device_node** %2, align 8
  %3 = load i32, i32* @CONFIG_DRM_SUN8I_TCON_TOP, align 4
  %4 = call i64 @IS_ENABLED(i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load i32, i32* @sun8i_tcon_top_of_table, align 4
  %8 = load %struct.device_node*, %struct.device_node** %2, align 8
  %9 = call i32 @of_match_node(i32 %7, %struct.device_node* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = xor i1 %11, true
  br label %13

13:                                               ; preds = %6, %1
  %14 = phi i1 [ false, %1 ], [ %12, %6 ]
  %15 = zext i1 %14 to i32
  ret i32 %15
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @of_match_node(i32, %struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
