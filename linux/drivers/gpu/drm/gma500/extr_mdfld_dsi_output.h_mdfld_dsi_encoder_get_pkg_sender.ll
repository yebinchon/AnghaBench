; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_output.h_mdfld_dsi_encoder_get_pkg_sender.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_output.h_mdfld_dsi_encoder_get_pkg_sender.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdfld_dsi_encoder = type { i32 }
%struct.mdfld_dsi_config = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.mdfld_dsi_encoder*)* @mdfld_dsi_encoder_get_pkg_sender to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mdfld_dsi_encoder_get_pkg_sender(%struct.mdfld_dsi_encoder* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mdfld_dsi_encoder*, align 8
  %4 = alloca %struct.mdfld_dsi_config*, align 8
  store %struct.mdfld_dsi_encoder* %0, %struct.mdfld_dsi_encoder** %3, align 8
  %5 = load %struct.mdfld_dsi_encoder*, %struct.mdfld_dsi_encoder** %3, align 8
  %6 = call %struct.mdfld_dsi_config* @mdfld_dsi_encoder_get_config(%struct.mdfld_dsi_encoder* %5)
  store %struct.mdfld_dsi_config* %6, %struct.mdfld_dsi_config** %4, align 8
  %7 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %4, align 8
  %8 = icmp ne %struct.mdfld_dsi_config* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %13

10:                                               ; preds = %1
  %11 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %4, align 8
  %12 = call i8* @mdfld_dsi_get_pkg_sender(%struct.mdfld_dsi_config* %11)
  store i8* %12, i8** %2, align 8
  br label %13

13:                                               ; preds = %10, %9
  %14 = load i8*, i8** %2, align 8
  ret i8* %14
}

declare dso_local %struct.mdfld_dsi_config* @mdfld_dsi_encoder_get_config(%struct.mdfld_dsi_encoder*) #1

declare dso_local i8* @mdfld_dsi_get_pkg_sender(%struct.mdfld_dsi_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
