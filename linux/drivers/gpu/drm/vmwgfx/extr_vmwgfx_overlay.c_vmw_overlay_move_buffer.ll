; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_overlay.c_vmw_overlay_move_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_overlay.c_vmw_overlay_move_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i64 }
%struct.vmw_buffer_object = type { i32 }

@vmw_du_legacy = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_private*, %struct.vmw_buffer_object*, i32, i32)* @vmw_overlay_move_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_overlay_move_buffer(%struct.vmw_private* %0, %struct.vmw_buffer_object* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmw_private*, align 8
  %7 = alloca %struct.vmw_buffer_object*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %6, align 8
  store %struct.vmw_buffer_object* %1, %struct.vmw_buffer_object** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %4
  %13 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %14 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %7, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @vmw_bo_unpin(%struct.vmw_private* %13, %struct.vmw_buffer_object* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  br label %33

17:                                               ; preds = %4
  %18 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %19 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @vmw_du_legacy, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %25 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %7, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @vmw_bo_pin_in_vram(%struct.vmw_private* %24, %struct.vmw_buffer_object* %25, i32 %26)
  store i32 %27, i32* %5, align 4
  br label %33

28:                                               ; preds = %17
  %29 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %30 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @vmw_bo_pin_in_vram_or_gmr(%struct.vmw_private* %29, %struct.vmw_buffer_object* %30, i32 %31)
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %28, %23, %12
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @vmw_bo_unpin(%struct.vmw_private*, %struct.vmw_buffer_object*, i32) #1

declare dso_local i32 @vmw_bo_pin_in_vram(%struct.vmw_private*, %struct.vmw_buffer_object*, i32) #1

declare dso_local i32 @vmw_bo_pin_in_vram_or_gmr(%struct.vmw_private*, %struct.vmw_buffer_object*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
