; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_view_id_val_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_view_id_val_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_resource = type { i32 }
%struct.vmw_sw_context = type { i32, %struct.vmw_ctx_validation_info* }
%struct.vmw_ctx_validation_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vmw_resource* (%struct.vmw_sw_context*, i32, i32)* @vmw_view_id_val_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vmw_resource* @vmw_view_id_val_add(%struct.vmw_sw_context* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vmw_resource*, align 8
  %5 = alloca %struct.vmw_sw_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vmw_ctx_validation_info*, align 8
  %9 = alloca %struct.vmw_resource*, align 8
  %10 = alloca i32, align 4
  store %struct.vmw_sw_context* %0, %struct.vmw_sw_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %5, align 8
  %12 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %11, i32 0, i32 1
  %13 = load %struct.vmw_ctx_validation_info*, %struct.vmw_ctx_validation_info** %12, align 8
  store %struct.vmw_ctx_validation_info* %13, %struct.vmw_ctx_validation_info** %8, align 8
  %14 = load %struct.vmw_ctx_validation_info*, %struct.vmw_ctx_validation_info** %8, align 8
  %15 = icmp ne %struct.vmw_ctx_validation_info* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.vmw_resource* @ERR_PTR(i32 %18)
  store %struct.vmw_resource* %19, %struct.vmw_resource** %4, align 8
  br label %43

20:                                               ; preds = %3
  %21 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %5, align 8
  %22 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call %struct.vmw_resource* @vmw_view_lookup(i32 %23, i32 %24, i32 %25)
  store %struct.vmw_resource* %26, %struct.vmw_resource** %9, align 8
  %27 = load %struct.vmw_resource*, %struct.vmw_resource** %9, align 8
  %28 = call i64 @IS_ERR(%struct.vmw_resource* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load %struct.vmw_resource*, %struct.vmw_resource** %9, align 8
  store %struct.vmw_resource* %31, %struct.vmw_resource** %4, align 8
  br label %43

32:                                               ; preds = %20
  %33 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %5, align 8
  %34 = load %struct.vmw_resource*, %struct.vmw_resource** %9, align 8
  %35 = call i32 @vmw_view_res_val_add(%struct.vmw_sw_context* %33, %struct.vmw_resource* %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* %10, align 4
  %40 = call %struct.vmw_resource* @ERR_PTR(i32 %39)
  store %struct.vmw_resource* %40, %struct.vmw_resource** %4, align 8
  br label %43

41:                                               ; preds = %32
  %42 = load %struct.vmw_resource*, %struct.vmw_resource** %9, align 8
  store %struct.vmw_resource* %42, %struct.vmw_resource** %4, align 8
  br label %43

43:                                               ; preds = %41, %38, %30, %16
  %44 = load %struct.vmw_resource*, %struct.vmw_resource** %4, align 8
  ret %struct.vmw_resource* %44
}

declare dso_local %struct.vmw_resource* @ERR_PTR(i32) #1

declare dso_local %struct.vmw_resource* @vmw_view_lookup(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.vmw_resource*) #1

declare dso_local i32 @vmw_view_res_val_add(%struct.vmw_sw_context*, %struct.vmw_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
