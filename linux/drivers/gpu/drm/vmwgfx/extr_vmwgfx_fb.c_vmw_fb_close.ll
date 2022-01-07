; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fb.c_vmw_fb_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fb.c_vmw_fb_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { %struct.fb_info* }
%struct.fb_info = type { %struct.vmw_fb_par* }
%struct.vmw_fb_par = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_fb_close(%struct.vmw_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmw_private*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.vmw_fb_par*, align 8
  store %struct.vmw_private* %0, %struct.vmw_private** %3, align 8
  %6 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %7 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %6, i32 0, i32 0
  %8 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %9 = icmp ne %struct.fb_info* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %39

11:                                               ; preds = %1
  %12 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %13 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %12, i32 0, i32 0
  %14 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  store %struct.fb_info* %14, %struct.fb_info** %4, align 8
  %15 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 0
  %17 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %16, align 8
  store %struct.vmw_fb_par* %17, %struct.vmw_fb_par** %5, align 8
  %18 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %19 = call i32 @fb_deferred_io_cleanup(%struct.fb_info* %18)
  %20 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %5, align 8
  %21 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %20, i32 0, i32 2
  %22 = call i32 @cancel_delayed_work_sync(i32* %21)
  %23 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %24 = call i32 @unregister_framebuffer(%struct.fb_info* %23)
  %25 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %5, align 8
  %26 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %25, i32 0, i32 1
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %5, align 8
  %29 = call i32 @vmw_fb_kms_detach(%struct.vmw_fb_par* %28, i32 1, i32 1)
  %30 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %5, align 8
  %31 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %30, i32 0, i32 1
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %5, align 8
  %34 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @vfree(i32 %35)
  %37 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %38 = call i32 @framebuffer_release(%struct.fb_info* %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %11, %10
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @fb_deferred_io_cleanup(%struct.fb_info*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @unregister_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vmw_fb_kms_detach(%struct.vmw_fb_par*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
