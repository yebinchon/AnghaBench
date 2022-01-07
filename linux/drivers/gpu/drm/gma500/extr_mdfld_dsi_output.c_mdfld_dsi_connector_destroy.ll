; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_output.c_mdfld_dsi_connector_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_output.c_mdfld_dsi_connector_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.mdfld_dsi_connector = type { %struct.mdfld_dsi_pkg_sender* }
%struct.mdfld_dsi_pkg_sender = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*)* @mdfld_dsi_connector_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdfld_dsi_connector_destroy(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.mdfld_dsi_connector*, align 8
  %4 = alloca %struct.mdfld_dsi_pkg_sender*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %5 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %6 = call %struct.mdfld_dsi_connector* @mdfld_dsi_connector(%struct.drm_connector* %5)
  store %struct.mdfld_dsi_connector* %6, %struct.mdfld_dsi_connector** %3, align 8
  %7 = load %struct.mdfld_dsi_connector*, %struct.mdfld_dsi_connector** %3, align 8
  %8 = icmp ne %struct.mdfld_dsi_connector* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %22

10:                                               ; preds = %1
  %11 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %12 = call i32 @drm_connector_unregister(%struct.drm_connector* %11)
  %13 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %14 = call i32 @drm_connector_cleanup(%struct.drm_connector* %13)
  %15 = load %struct.mdfld_dsi_connector*, %struct.mdfld_dsi_connector** %3, align 8
  %16 = getelementptr inbounds %struct.mdfld_dsi_connector, %struct.mdfld_dsi_connector* %15, i32 0, i32 0
  %17 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %16, align 8
  store %struct.mdfld_dsi_pkg_sender* %17, %struct.mdfld_dsi_pkg_sender** %4, align 8
  %18 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %4, align 8
  %19 = call i32 @mdfld_dsi_pkg_sender_destroy(%struct.mdfld_dsi_pkg_sender* %18)
  %20 = load %struct.mdfld_dsi_connector*, %struct.mdfld_dsi_connector** %3, align 8
  %21 = call i32 @kfree(%struct.mdfld_dsi_connector* %20)
  br label %22

22:                                               ; preds = %10, %9
  ret void
}

declare dso_local %struct.mdfld_dsi_connector* @mdfld_dsi_connector(%struct.drm_connector*) #1

declare dso_local i32 @drm_connector_unregister(%struct.drm_connector*) #1

declare dso_local i32 @drm_connector_cleanup(%struct.drm_connector*) #1

declare dso_local i32 @mdfld_dsi_pkg_sender_destroy(%struct.mdfld_dsi_pkg_sender*) #1

declare dso_local i32 @kfree(%struct.mdfld_dsi_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
