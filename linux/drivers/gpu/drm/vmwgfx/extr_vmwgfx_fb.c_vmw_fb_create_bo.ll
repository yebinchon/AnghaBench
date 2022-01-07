; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fb.c_vmw_fb_create_bo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fb.c_vmw_fb_create_bo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32 }
%struct.vmw_buffer_object = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vmw_sys_placement = common dso_local global i32 0, align 4
@vmw_bo_bo_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_private*, i64, %struct.vmw_buffer_object**)* @vmw_fb_create_bo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_fb_create_bo(%struct.vmw_private* %0, i64 %1, %struct.vmw_buffer_object** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmw_private*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.vmw_buffer_object**, align 8
  %8 = alloca %struct.vmw_buffer_object*, align 8
  %9 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.vmw_buffer_object** %2, %struct.vmw_buffer_object*** %7, align 8
  %10 = load %struct.vmw_private*, %struct.vmw_private** %5, align 8
  %11 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %10, i32 0, i32 0
  %12 = call i32 @ttm_write_lock(i32* %11, i32 0)
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.vmw_buffer_object* @kmalloc(i32 4, i32 %13)
  store %struct.vmw_buffer_object* %14, %struct.vmw_buffer_object** %8, align 8
  %15 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %8, align 8
  %16 = icmp ne %struct.vmw_buffer_object* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %9, align 4
  br label %37

20:                                               ; preds = %3
  %21 = load %struct.vmw_private*, %struct.vmw_private** %5, align 8
  %22 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %8, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @vmw_bo_init(%struct.vmw_private* %21, %struct.vmw_buffer_object* %22, i64 %23, i32* @vmw_sys_placement, i32 0, i32* @vmw_bo_bo_free)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %37

31:                                               ; preds = %20
  %32 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %8, align 8
  %33 = load %struct.vmw_buffer_object**, %struct.vmw_buffer_object*** %7, align 8
  store %struct.vmw_buffer_object* %32, %struct.vmw_buffer_object** %33, align 8
  %34 = load %struct.vmw_private*, %struct.vmw_private** %5, align 8
  %35 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %34, i32 0, i32 0
  %36 = call i32 @ttm_write_unlock(i32* %35)
  store i32 0, i32* %4, align 4
  br label %42

37:                                               ; preds = %30, %17
  %38 = load %struct.vmw_private*, %struct.vmw_private** %5, align 8
  %39 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %38, i32 0, i32 0
  %40 = call i32 @ttm_write_unlock(i32* %39)
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %37, %31
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @ttm_write_lock(i32*, i32) #1

declare dso_local %struct.vmw_buffer_object* @kmalloc(i32, i32) #1

declare dso_local i32 @vmw_bo_init(%struct.vmw_private*, %struct.vmw_buffer_object*, i64, i32*, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ttm_write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
