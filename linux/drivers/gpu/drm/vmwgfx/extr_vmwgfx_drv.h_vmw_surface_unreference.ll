; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_drv.h_vmw_surface_unreference.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_drv.h_vmw_surface_unreference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_surface = type { %struct.vmw_resource }
%struct.vmw_resource = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmw_surface**)* @vmw_surface_unreference to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmw_surface_unreference(%struct.vmw_surface** %0) #0 {
  %2 = alloca %struct.vmw_surface**, align 8
  %3 = alloca %struct.vmw_surface*, align 8
  %4 = alloca %struct.vmw_resource*, align 8
  store %struct.vmw_surface** %0, %struct.vmw_surface*** %2, align 8
  %5 = load %struct.vmw_surface**, %struct.vmw_surface*** %2, align 8
  %6 = load %struct.vmw_surface*, %struct.vmw_surface** %5, align 8
  store %struct.vmw_surface* %6, %struct.vmw_surface** %3, align 8
  %7 = load %struct.vmw_surface*, %struct.vmw_surface** %3, align 8
  %8 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %7, i32 0, i32 0
  store %struct.vmw_resource* %8, %struct.vmw_resource** %4, align 8
  %9 = load %struct.vmw_surface**, %struct.vmw_surface*** %2, align 8
  store %struct.vmw_surface* null, %struct.vmw_surface** %9, align 8
  %10 = call i32 @vmw_resource_unreference(%struct.vmw_resource** %4)
  ret void
}

declare dso_local i32 @vmw_resource_unreference(%struct.vmw_resource**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
