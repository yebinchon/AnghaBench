; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_mode_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_mode_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.sii8620 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_bridge*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @sii8620_mode_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sii8620_mode_fixup(%struct.drm_bridge* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_bridge*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.sii8620*, align 8
  store %struct.drm_bridge* %0, %struct.drm_bridge** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %8 = load %struct.drm_bridge*, %struct.drm_bridge** %4, align 8
  %9 = call %struct.sii8620* @bridge_to_sii8620(%struct.drm_bridge* %8)
  store %struct.sii8620* %9, %struct.sii8620** %7, align 8
  %10 = load %struct.sii8620*, %struct.sii8620** %7, align 8
  %11 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.sii8620*, %struct.sii8620** %7, align 8
  %14 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %15 = call i32 @sii8620_is_packing_required(%struct.sii8620* %13, %struct.drm_display_mode* %14)
  %16 = load %struct.sii8620*, %struct.sii8620** %7, align 8
  %17 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.sii8620*, %struct.sii8620** %7, align 8
  %19 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %18, i32 0, i32 0
  %20 = call i32 @mutex_unlock(i32* %19)
  ret i32 1
}

declare dso_local %struct.sii8620* @bridge_to_sii8620(%struct.drm_bridge*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sii8620_is_packing_required(%struct.sii8620*, %struct.drm_display_mode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
