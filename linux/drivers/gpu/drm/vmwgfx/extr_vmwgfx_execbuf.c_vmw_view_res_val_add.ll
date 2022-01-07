; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_view_res_val_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_view_res_val_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_sw_context = type { i32 }
%struct.vmw_resource = type { i32 }

@VMW_RES_DIRTY_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_sw_context*, %struct.vmw_resource*)* @vmw_view_res_val_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_view_res_val_add(%struct.vmw_sw_context* %0, %struct.vmw_resource* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmw_sw_context*, align 8
  %5 = alloca %struct.vmw_resource*, align 8
  %6 = alloca i32, align 4
  store %struct.vmw_sw_context* %0, %struct.vmw_sw_context** %4, align 8
  store %struct.vmw_resource* %1, %struct.vmw_resource** %5, align 8
  %7 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %4, align 8
  %8 = load %struct.vmw_resource*, %struct.vmw_resource** %5, align 8
  %9 = call %struct.vmw_resource* @vmw_view_srf(%struct.vmw_resource* %8)
  %10 = load %struct.vmw_resource*, %struct.vmw_resource** %5, align 8
  %11 = call i32 @vmw_view_dirtying(%struct.vmw_resource* %10)
  %12 = call i32 @vmw_execbuf_res_noctx_val_add(%struct.vmw_sw_context* %7, %struct.vmw_resource* %9, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %22

17:                                               ; preds = %2
  %18 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %4, align 8
  %19 = load %struct.vmw_resource*, %struct.vmw_resource** %5, align 8
  %20 = load i32, i32* @VMW_RES_DIRTY_NONE, align 4
  %21 = call i32 @vmw_execbuf_res_noctx_val_add(%struct.vmw_sw_context* %18, %struct.vmw_resource* %19, i32 %20)
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %17, %15
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @vmw_execbuf_res_noctx_val_add(%struct.vmw_sw_context*, %struct.vmw_resource*, i32) #1

declare dso_local %struct.vmw_resource* @vmw_view_srf(%struct.vmw_resource*) #1

declare dso_local i32 @vmw_view_dirtying(%struct.vmw_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
