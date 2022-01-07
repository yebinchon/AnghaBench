; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_dvo.c_sti_dvo_connector_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_dvo.c_sti_dvo_connector_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.sti_dvo_connector = type { %struct.sti_dvo* }
%struct.sti_dvo = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @sti_dvo_connector_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_dvo_connector_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.sti_dvo_connector*, align 8
  %5 = alloca %struct.sti_dvo*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %6 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %7 = call %struct.sti_dvo_connector* @to_sti_dvo_connector(%struct.drm_connector* %6)
  store %struct.sti_dvo_connector* %7, %struct.sti_dvo_connector** %4, align 8
  %8 = load %struct.sti_dvo_connector*, %struct.sti_dvo_connector** %4, align 8
  %9 = getelementptr inbounds %struct.sti_dvo_connector, %struct.sti_dvo_connector* %8, i32 0, i32 0
  %10 = load %struct.sti_dvo*, %struct.sti_dvo** %9, align 8
  store %struct.sti_dvo* %10, %struct.sti_dvo** %5, align 8
  %11 = load %struct.sti_dvo*, %struct.sti_dvo** %5, align 8
  %12 = getelementptr inbounds %struct.sti_dvo, %struct.sti_dvo* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.sti_dvo*, %struct.sti_dvo** %5, align 8
  %17 = getelementptr inbounds %struct.sti_dvo, %struct.sti_dvo* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @drm_panel_get_modes(i64 %18)
  store i32 %19, i32* %2, align 4
  br label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %15
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local %struct.sti_dvo_connector* @to_sti_dvo_connector(%struct.drm_connector*) #1

declare dso_local i32 @drm_panel_get_modes(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
