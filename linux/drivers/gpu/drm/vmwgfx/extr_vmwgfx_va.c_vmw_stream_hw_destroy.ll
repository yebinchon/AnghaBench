; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_va.c_vmw_stream_hw_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_va.c_vmw_stream_hw_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_resource = type { %struct.vmw_private* }
%struct.vmw_private = type { i32 }
%struct.vmw_stream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmw_resource*)* @vmw_stream_hw_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmw_stream_hw_destroy(%struct.vmw_resource* %0) #0 {
  %2 = alloca %struct.vmw_resource*, align 8
  %3 = alloca %struct.vmw_private*, align 8
  %4 = alloca %struct.vmw_stream*, align 8
  %5 = alloca i32, align 4
  store %struct.vmw_resource* %0, %struct.vmw_resource** %2, align 8
  %6 = load %struct.vmw_resource*, %struct.vmw_resource** %2, align 8
  %7 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %6, i32 0, i32 0
  %8 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  store %struct.vmw_private* %8, %struct.vmw_private** %3, align 8
  %9 = load %struct.vmw_resource*, %struct.vmw_resource** %2, align 8
  %10 = call %struct.vmw_stream* @vmw_stream(%struct.vmw_resource* %9)
  store %struct.vmw_stream* %10, %struct.vmw_stream** %4, align 8
  %11 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %12 = load %struct.vmw_stream*, %struct.vmw_stream** %4, align 8
  %13 = getelementptr inbounds %struct.vmw_stream, %struct.vmw_stream* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @vmw_overlay_unref(%struct.vmw_private* %11, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON_ONCE(i32 %18)
  ret void
}

declare dso_local %struct.vmw_stream* @vmw_stream(%struct.vmw_resource*) #1

declare dso_local i32 @vmw_overlay_unref(%struct.vmw_private*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
