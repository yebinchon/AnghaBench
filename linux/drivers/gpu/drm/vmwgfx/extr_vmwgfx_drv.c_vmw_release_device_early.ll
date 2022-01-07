; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_drv.c_vmw_release_device_early.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_drv.c_vmw_release_device_early.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32, i64, i64, i32, i32* }

@VMW_PL_MOB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmw_private*)* @vmw_release_device_early to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmw_release_device_early(%struct.vmw_private* %0) #0 {
  %2 = alloca %struct.vmw_private*, align 8
  store %struct.vmw_private* %0, %struct.vmw_private** %2, align 8
  %3 = load %struct.vmw_private*, %struct.vmw_private** %2, align 8
  %4 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %3, i32 0, i32 4
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @BUG_ON(i32 %7)
  %9 = load %struct.vmw_private*, %struct.vmw_private** %2, align 8
  %10 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %9, i32 0, i32 3
  %11 = call i32 @vmw_bo_unreference(i32* %10)
  %12 = load %struct.vmw_private*, %struct.vmw_private** %2, align 8
  %13 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.vmw_private*, %struct.vmw_private** %2, align 8
  %18 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @vmw_cmdbuf_remove_pool(i64 %19)
  br label %21

21:                                               ; preds = %16, %1
  %22 = load %struct.vmw_private*, %struct.vmw_private** %2, align 8
  %23 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.vmw_private*, %struct.vmw_private** %2, align 8
  %28 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %27, i32 0, i32 0
  %29 = load i32, i32* @VMW_PL_MOB, align 4
  %30 = call i32 @ttm_bo_evict_mm(i32* %28, i32 %29)
  %31 = load %struct.vmw_private*, %struct.vmw_private** %2, align 8
  %32 = call i32 @vmw_otables_takedown(%struct.vmw_private* %31)
  br label %33

33:                                               ; preds = %26, %21
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @vmw_bo_unreference(i32*) #1

declare dso_local i32 @vmw_cmdbuf_remove_pool(i64) #1

declare dso_local i32 @ttm_bo_evict_mm(i32*, i32) #1

declare dso_local i32 @vmw_otables_takedown(%struct.vmw_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
