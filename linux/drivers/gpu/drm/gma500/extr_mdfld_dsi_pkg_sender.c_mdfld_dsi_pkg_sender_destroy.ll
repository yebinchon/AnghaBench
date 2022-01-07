; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_pkg_sender.c_mdfld_dsi_pkg_sender_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_pkg_sender.c_mdfld_dsi_pkg_sender_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdfld_dsi_pkg_sender = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdfld_dsi_pkg_sender_destroy(%struct.mdfld_dsi_pkg_sender* %0) #0 {
  %2 = alloca %struct.mdfld_dsi_pkg_sender*, align 8
  store %struct.mdfld_dsi_pkg_sender* %0, %struct.mdfld_dsi_pkg_sender** %2, align 8
  %3 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %2, align 8
  %4 = icmp ne %struct.mdfld_dsi_pkg_sender* %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %2, align 8
  %7 = call i64 @IS_ERR(%struct.mdfld_dsi_pkg_sender* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5, %1
  br label %13

10:                                               ; preds = %5
  %11 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %2, align 8
  %12 = call i32 @kfree(%struct.mdfld_dsi_pkg_sender* %11)
  br label %13

13:                                               ; preds = %10, %9
  ret void
}

declare dso_local i64 @IS_ERR(%struct.mdfld_dsi_pkg_sender*) #1

declare dso_local i32 @kfree(%struct.mdfld_dsi_pkg_sender*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
