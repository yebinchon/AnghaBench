; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_simple_kms_helper.c_drm_simple_display_pipe_attach_bridge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_simple_kms_helper.c_drm_simple_display_pipe_attach_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_simple_display_pipe = type { i32 }
%struct.drm_bridge = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_simple_display_pipe_attach_bridge(%struct.drm_simple_display_pipe* %0, %struct.drm_bridge* %1) #0 {
  %3 = alloca %struct.drm_simple_display_pipe*, align 8
  %4 = alloca %struct.drm_bridge*, align 8
  store %struct.drm_simple_display_pipe* %0, %struct.drm_simple_display_pipe** %3, align 8
  store %struct.drm_bridge* %1, %struct.drm_bridge** %4, align 8
  %5 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %3, align 8
  %6 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %5, i32 0, i32 0
  %7 = load %struct.drm_bridge*, %struct.drm_bridge** %4, align 8
  %8 = call i32 @drm_bridge_attach(i32* %6, %struct.drm_bridge* %7, i32* null)
  ret i32 %8
}

declare dso_local i32 @drm_bridge_attach(i32*, %struct.drm_bridge*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
