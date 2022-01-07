; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_so.c_vmw_view_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_so.c_vmw_view_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_cmdbuf_res_manager = type { i32 }
%struct.list_head = type { i32 }
%struct.vmw_resource = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Illegal view remove view id.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@vmw_cmdbuf_res_view = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_view_remove(%struct.vmw_cmdbuf_res_manager* %0, i32 %1, i32 %2, %struct.list_head* %3, %struct.vmw_resource** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vmw_cmdbuf_res_manager*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.list_head*, align 8
  %11 = alloca %struct.vmw_resource**, align 8
  store %struct.vmw_cmdbuf_res_manager* %0, %struct.vmw_cmdbuf_res_manager** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.list_head* %3, %struct.list_head** %10, align 8
  store %struct.vmw_resource** %4, %struct.vmw_resource*** %11, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %9, align 4
  %14 = call i32 @vmw_view_id_ok(i32 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %5
  %17 = call i32 @VMW_DEBUG_USER(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %29

20:                                               ; preds = %5
  %21 = load %struct.vmw_cmdbuf_res_manager*, %struct.vmw_cmdbuf_res_manager** %7, align 8
  %22 = load i32, i32* @vmw_cmdbuf_res_view, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @vmw_view_key(i32 %23, i32 %24)
  %26 = load %struct.list_head*, %struct.list_head** %10, align 8
  %27 = load %struct.vmw_resource**, %struct.vmw_resource*** %11, align 8
  %28 = call i32 @vmw_cmdbuf_res_remove(%struct.vmw_cmdbuf_res_manager* %21, i32 %22, i32 %25, %struct.list_head* %26, %struct.vmw_resource** %27)
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %20, %16
  %30 = load i32, i32* %6, align 4
  ret i32 %30
}

declare dso_local i32 @vmw_view_id_ok(i32, i32) #1

declare dso_local i32 @VMW_DEBUG_USER(i8*) #1

declare dso_local i32 @vmw_cmdbuf_res_remove(%struct.vmw_cmdbuf_res_manager*, i32, i32, %struct.list_head*, %struct.vmw_resource**) #1

declare dso_local i32 @vmw_view_key(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
