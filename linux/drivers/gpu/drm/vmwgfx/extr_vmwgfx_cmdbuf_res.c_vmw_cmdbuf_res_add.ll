; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_cmdbuf_res.c_vmw_cmdbuf_res_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_cmdbuf_res.c_vmw_cmdbuf_res_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_cmdbuf_res_manager = type { i32 }
%struct.vmw_resource = type { i32 }
%struct.list_head = type { i32 }
%struct.vmw_cmdbuf_res = type { i32, %struct.vmw_cmdbuf_res_manager*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VMW_CMDBUF_RES_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_cmdbuf_res_add(%struct.vmw_cmdbuf_res_manager* %0, i32 %1, i32 %2, %struct.vmw_resource* %3, %struct.list_head* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vmw_cmdbuf_res_manager*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vmw_resource*, align 8
  %11 = alloca %struct.list_head*, align 8
  %12 = alloca %struct.vmw_cmdbuf_res*, align 8
  %13 = alloca i32, align 4
  store %struct.vmw_cmdbuf_res_manager* %0, %struct.vmw_cmdbuf_res_manager** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.vmw_resource* %3, %struct.vmw_resource** %10, align 8
  store %struct.list_head* %4, %struct.list_head** %11, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.vmw_cmdbuf_res* @kzalloc(i32 32, i32 %14)
  store %struct.vmw_cmdbuf_res* %15, %struct.vmw_cmdbuf_res** %12, align 8
  %16 = load %struct.vmw_cmdbuf_res*, %struct.vmw_cmdbuf_res** %12, align 8
  %17 = icmp ne %struct.vmw_cmdbuf_res* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %61

25:                                               ; preds = %5
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %8, align 4
  %28 = shl i32 %27, 24
  %29 = or i32 %26, %28
  %30 = load %struct.vmw_cmdbuf_res*, %struct.vmw_cmdbuf_res** %12, align 8
  %31 = getelementptr inbounds %struct.vmw_cmdbuf_res, %struct.vmw_cmdbuf_res* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load %struct.vmw_cmdbuf_res_manager*, %struct.vmw_cmdbuf_res_manager** %7, align 8
  %34 = getelementptr inbounds %struct.vmw_cmdbuf_res_manager, %struct.vmw_cmdbuf_res_manager* %33, i32 0, i32 0
  %35 = load %struct.vmw_cmdbuf_res*, %struct.vmw_cmdbuf_res** %12, align 8
  %36 = getelementptr inbounds %struct.vmw_cmdbuf_res, %struct.vmw_cmdbuf_res* %35, i32 0, i32 4
  %37 = call i32 @drm_ht_insert_item(i32* %34, %struct.TYPE_2__* %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %25
  br label %59

44:                                               ; preds = %25
  %45 = load i32, i32* @VMW_CMDBUF_RES_ADD, align 4
  %46 = load %struct.vmw_cmdbuf_res*, %struct.vmw_cmdbuf_res** %12, align 8
  %47 = getelementptr inbounds %struct.vmw_cmdbuf_res, %struct.vmw_cmdbuf_res* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load %struct.vmw_resource*, %struct.vmw_resource** %10, align 8
  %49 = call i32 @vmw_resource_reference(%struct.vmw_resource* %48)
  %50 = load %struct.vmw_cmdbuf_res*, %struct.vmw_cmdbuf_res** %12, align 8
  %51 = getelementptr inbounds %struct.vmw_cmdbuf_res, %struct.vmw_cmdbuf_res* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.vmw_cmdbuf_res_manager*, %struct.vmw_cmdbuf_res_manager** %7, align 8
  %53 = load %struct.vmw_cmdbuf_res*, %struct.vmw_cmdbuf_res** %12, align 8
  %54 = getelementptr inbounds %struct.vmw_cmdbuf_res, %struct.vmw_cmdbuf_res* %53, i32 0, i32 1
  store %struct.vmw_cmdbuf_res_manager* %52, %struct.vmw_cmdbuf_res_manager** %54, align 8
  %55 = load %struct.vmw_cmdbuf_res*, %struct.vmw_cmdbuf_res** %12, align 8
  %56 = getelementptr inbounds %struct.vmw_cmdbuf_res, %struct.vmw_cmdbuf_res* %55, i32 0, i32 0
  %57 = load %struct.list_head*, %struct.list_head** %11, align 8
  %58 = call i32 @list_add_tail(i32* %56, %struct.list_head* %57)
  br label %59

59:                                               ; preds = %44, %43
  %60 = load i32, i32* %13, align 4
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %59, %22
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local %struct.vmw_cmdbuf_res* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @drm_ht_insert_item(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @vmw_resource_reference(%struct.vmw_resource*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
