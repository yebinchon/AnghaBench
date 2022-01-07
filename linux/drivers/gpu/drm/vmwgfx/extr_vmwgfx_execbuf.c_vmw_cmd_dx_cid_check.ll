; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_cmd_dx_cid_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_cmd_dx_cid_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32 }
%struct.vmw_sw_context = type { i32 }
%struct.vmw_ctx_validation_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_private*, %struct.vmw_sw_context*, i32*)* @vmw_cmd_dx_cid_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_cmd_dx_cid_check(%struct.vmw_private* %0, %struct.vmw_sw_context* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmw_private*, align 8
  %6 = alloca %struct.vmw_sw_context*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.vmw_ctx_validation_info*, align 8
  store %struct.vmw_private* %0, %struct.vmw_private** %5, align 8
  store %struct.vmw_sw_context* %1, %struct.vmw_sw_context** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %6, align 8
  %10 = call %struct.vmw_ctx_validation_info* @VMW_GET_CTX_NODE(%struct.vmw_sw_context* %9)
  store %struct.vmw_ctx_validation_info* %10, %struct.vmw_ctx_validation_info** %8, align 8
  %11 = load %struct.vmw_ctx_validation_info*, %struct.vmw_ctx_validation_info** %8, align 8
  %12 = icmp ne %struct.vmw_ctx_validation_info* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %16, %13
  %18 = load i32, i32* %4, align 4
  ret i32 %18
}

declare dso_local %struct.vmw_ctx_validation_info* @VMW_GET_CTX_NODE(%struct.vmw_sw_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
