; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fence.c_vmw_fence_obj_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fence.c_vmw_fence_obj_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_fence_obj = type { i32 }
%struct.vmw_private = type { i32 }
%struct.TYPE_2__ = type { %struct.vmw_private* }

@SVGA_SYNC_GENERIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmw_fence_obj_flush(%struct.vmw_fence_obj* %0) #0 {
  %2 = alloca %struct.vmw_fence_obj*, align 8
  %3 = alloca %struct.vmw_private*, align 8
  store %struct.vmw_fence_obj* %0, %struct.vmw_fence_obj** %2, align 8
  %4 = load %struct.vmw_fence_obj*, %struct.vmw_fence_obj** %2, align 8
  %5 = call %struct.TYPE_2__* @fman_from_fence(%struct.vmw_fence_obj* %4)
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  store %struct.vmw_private* %7, %struct.vmw_private** %3, align 8
  %8 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %9 = load i32, i32* @SVGA_SYNC_GENERIC, align 4
  %10 = call i32 @vmw_fifo_ping_host(%struct.vmw_private* %8, i32 %9)
  ret void
}

declare dso_local %struct.TYPE_2__* @fman_from_fence(%struct.vmw_fence_obj*) #1

declare dso_local i32 @vmw_fifo_ping_host(%struct.vmw_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
