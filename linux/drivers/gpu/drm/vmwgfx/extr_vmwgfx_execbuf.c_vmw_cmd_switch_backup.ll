; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_cmd_switch_backup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_cmd_switch_backup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32 }
%struct.vmw_sw_context = type { i32 }
%struct.vmw_user_resource_conv = type { i32 }
%struct.vmw_resource = type { i32 }

@VMW_RES_DIRTY_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_private*, %struct.vmw_sw_context*, i32, %struct.vmw_user_resource_conv*, i32*, i32*, i64)* @vmw_cmd_switch_backup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_cmd_switch_backup(%struct.vmw_private* %0, %struct.vmw_sw_context* %1, i32 %2, %struct.vmw_user_resource_conv* %3, i32* %4, i32* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vmw_private*, align 8
  %10 = alloca %struct.vmw_sw_context*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.vmw_user_resource_conv*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.vmw_resource*, align 8
  %17 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %9, align 8
  store %struct.vmw_sw_context* %1, %struct.vmw_sw_context** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.vmw_user_resource_conv* %3, %struct.vmw_user_resource_conv** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  %18 = load %struct.vmw_private*, %struct.vmw_private** %9, align 8
  %19 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %10, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @VMW_RES_DIRTY_NONE, align 4
  %22 = load %struct.vmw_user_resource_conv*, %struct.vmw_user_resource_conv** %12, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = call i32 @vmw_cmd_res_check(%struct.vmw_private* %18, %struct.vmw_sw_context* %19, i32 %20, i32 %21, %struct.vmw_user_resource_conv* %22, i32* %23, %struct.vmw_resource** %16)
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* %17, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %7
  %28 = load i32, i32* %17, align 4
  store i32 %28, i32* %8, align 4
  br label %36

29:                                               ; preds = %7
  %30 = load %struct.vmw_private*, %struct.vmw_private** %9, align 8
  %31 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %10, align 8
  %32 = load %struct.vmw_resource*, %struct.vmw_resource** %16, align 8
  %33 = load i32*, i32** %14, align 8
  %34 = load i64, i64* %15, align 8
  %35 = call i32 @vmw_cmd_res_switch_backup(%struct.vmw_private* %30, %struct.vmw_sw_context* %31, %struct.vmw_resource* %32, i32* %33, i64 %34)
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %29, %27
  %37 = load i32, i32* %8, align 4
  ret i32 %37
}

declare dso_local i32 @vmw_cmd_res_check(%struct.vmw_private*, %struct.vmw_sw_context*, i32, i32, %struct.vmw_user_resource_conv*, i32*, %struct.vmw_resource**) #1

declare dso_local i32 @vmw_cmd_res_switch_backup(%struct.vmw_private*, %struct.vmw_sw_context*, %struct.vmw_resource*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
