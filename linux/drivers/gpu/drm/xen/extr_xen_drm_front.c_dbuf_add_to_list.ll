; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front.c_dbuf_add_to_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front.c_dbuf_add_to_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_drm_front_info = type { i32 }
%struct.xen_drm_front_dbuf = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xen_drm_front_info*, %struct.xen_drm_front_dbuf*, i32)* @dbuf_add_to_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dbuf_add_to_list(%struct.xen_drm_front_info* %0, %struct.xen_drm_front_dbuf* %1, i32 %2) #0 {
  %4 = alloca %struct.xen_drm_front_info*, align 8
  %5 = alloca %struct.xen_drm_front_dbuf*, align 8
  %6 = alloca i32, align 4
  store %struct.xen_drm_front_info* %0, %struct.xen_drm_front_info** %4, align 8
  store %struct.xen_drm_front_dbuf* %1, %struct.xen_drm_front_dbuf** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.xen_drm_front_dbuf*, %struct.xen_drm_front_dbuf** %5, align 8
  %9 = getelementptr inbounds %struct.xen_drm_front_dbuf, %struct.xen_drm_front_dbuf* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  %10 = load %struct.xen_drm_front_dbuf*, %struct.xen_drm_front_dbuf** %5, align 8
  %11 = getelementptr inbounds %struct.xen_drm_front_dbuf, %struct.xen_drm_front_dbuf* %10, i32 0, i32 0
  %12 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %4, align 8
  %13 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %12, i32 0, i32 0
  %14 = call i32 @list_add(i32* %11, i32* %13)
  ret void
}

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
