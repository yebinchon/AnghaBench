; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_tcon.c_sun4i_tcon_connected_to_tcon_top.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_tcon.c_sun4i_tcon_connected_to_tcon_top.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@CONFIG_DRM_SUN8I_TCON_TOP = common dso_local global i32 0, align 4
@sun8i_tcon_top_of_table = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*)* @sun4i_tcon_connected_to_tcon_top to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_tcon_connected_to_tcon_top(%struct.device_node* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.device_node*, %struct.device_node** %2, align 8
  %6 = call %struct.device_node* @of_graph_get_remote_node(%struct.device_node* %5, i32 0, i32 -1)
  store %struct.device_node* %6, %struct.device_node** %3, align 8
  %7 = load %struct.device_node*, %struct.device_node** %3, align 8
  %8 = icmp ne %struct.device_node* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %1
  %10 = load i32, i32* @CONFIG_DRM_SUN8I_TCON_TOP, align 4
  %11 = call i64 @IS_ENABLED(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load i32, i32* @sun8i_tcon_top_of_table, align 4
  %15 = load %struct.device_node*, %struct.device_node** %3, align 8
  %16 = call i64 @of_match_node(i32 %14, %struct.device_node* %15)
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %13, %9
  %19 = phi i1 [ false, %9 ], [ %17, %13 ]
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %4, align 4
  %23 = load %struct.device_node*, %struct.device_node** %3, align 8
  %24 = call i32 @of_node_put(%struct.device_node* %23)
  br label %25

25:                                               ; preds = %18, %1
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local %struct.device_node* @of_graph_get_remote_node(%struct.device_node*, i32, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @of_match_node(i32, %struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
