; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_output.h_mdfld_dsi_get_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_output.h_mdfld_dsi_get_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdfld_dsi_config = type { i32 }
%struct.mdfld_dsi_connector = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mdfld_dsi_config* (%struct.mdfld_dsi_connector*)* @mdfld_dsi_get_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mdfld_dsi_config* @mdfld_dsi_get_config(%struct.mdfld_dsi_connector* %0) #0 {
  %2 = alloca %struct.mdfld_dsi_config*, align 8
  %3 = alloca %struct.mdfld_dsi_connector*, align 8
  store %struct.mdfld_dsi_connector* %0, %struct.mdfld_dsi_connector** %3, align 8
  %4 = load %struct.mdfld_dsi_connector*, %struct.mdfld_dsi_connector** %3, align 8
  %5 = icmp ne %struct.mdfld_dsi_connector* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store %struct.mdfld_dsi_config* null, %struct.mdfld_dsi_config** %2, align 8
  br label %12

7:                                                ; preds = %1
  %8 = load %struct.mdfld_dsi_connector*, %struct.mdfld_dsi_connector** %3, align 8
  %9 = getelementptr inbounds %struct.mdfld_dsi_connector, %struct.mdfld_dsi_connector* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.mdfld_dsi_config*
  store %struct.mdfld_dsi_config* %11, %struct.mdfld_dsi_config** %2, align 8
  br label %12

12:                                               ; preds = %7, %6
  %13 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %2, align 8
  ret %struct.mdfld_dsi_config* %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
