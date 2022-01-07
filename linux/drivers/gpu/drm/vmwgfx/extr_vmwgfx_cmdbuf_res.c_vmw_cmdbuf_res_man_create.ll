; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_cmdbuf_res.c_vmw_cmdbuf_res_man_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_cmdbuf_res.c_vmw_cmdbuf_res_man_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_cmdbuf_res_manager = type { i32, i32, %struct.vmw_private* }
%struct.vmw_private = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VMW_CMDBUF_RES_MAN_HT_ORDER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vmw_cmdbuf_res_manager* @vmw_cmdbuf_res_man_create(%struct.vmw_private* %0) #0 {
  %2 = alloca %struct.vmw_cmdbuf_res_manager*, align 8
  %3 = alloca %struct.vmw_private*, align 8
  %4 = alloca %struct.vmw_cmdbuf_res_manager*, align 8
  %5 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.vmw_cmdbuf_res_manager* @kzalloc(i32 16, i32 %6)
  store %struct.vmw_cmdbuf_res_manager* %7, %struct.vmw_cmdbuf_res_manager** %4, align 8
  %8 = load %struct.vmw_cmdbuf_res_manager*, %struct.vmw_cmdbuf_res_manager** %4, align 8
  %9 = icmp ne %struct.vmw_cmdbuf_res_manager* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.vmw_cmdbuf_res_manager* @ERR_PTR(i32 %12)
  store %struct.vmw_cmdbuf_res_manager* %13, %struct.vmw_cmdbuf_res_manager** %2, align 8
  br label %34

14:                                               ; preds = %1
  %15 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %16 = load %struct.vmw_cmdbuf_res_manager*, %struct.vmw_cmdbuf_res_manager** %4, align 8
  %17 = getelementptr inbounds %struct.vmw_cmdbuf_res_manager, %struct.vmw_cmdbuf_res_manager* %16, i32 0, i32 2
  store %struct.vmw_private* %15, %struct.vmw_private** %17, align 8
  %18 = load %struct.vmw_cmdbuf_res_manager*, %struct.vmw_cmdbuf_res_manager** %4, align 8
  %19 = getelementptr inbounds %struct.vmw_cmdbuf_res_manager, %struct.vmw_cmdbuf_res_manager* %18, i32 0, i32 1
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.vmw_cmdbuf_res_manager*, %struct.vmw_cmdbuf_res_manager** %4, align 8
  %22 = getelementptr inbounds %struct.vmw_cmdbuf_res_manager, %struct.vmw_cmdbuf_res_manager* %21, i32 0, i32 0
  %23 = load i32, i32* @VMW_CMDBUF_RES_MAN_HT_ORDER, align 4
  %24 = call i32 @drm_ht_create(i32* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %14
  %28 = load %struct.vmw_cmdbuf_res_manager*, %struct.vmw_cmdbuf_res_manager** %4, align 8
  store %struct.vmw_cmdbuf_res_manager* %28, %struct.vmw_cmdbuf_res_manager** %2, align 8
  br label %34

29:                                               ; preds = %14
  %30 = load %struct.vmw_cmdbuf_res_manager*, %struct.vmw_cmdbuf_res_manager** %4, align 8
  %31 = call i32 @kfree(%struct.vmw_cmdbuf_res_manager* %30)
  %32 = load i32, i32* %5, align 4
  %33 = call %struct.vmw_cmdbuf_res_manager* @ERR_PTR(i32 %32)
  store %struct.vmw_cmdbuf_res_manager* %33, %struct.vmw_cmdbuf_res_manager** %2, align 8
  br label %34

34:                                               ; preds = %29, %27, %10
  %35 = load %struct.vmw_cmdbuf_res_manager*, %struct.vmw_cmdbuf_res_manager** %2, align 8
  ret %struct.vmw_cmdbuf_res_manager* %35
}

declare dso_local %struct.vmw_cmdbuf_res_manager* @kzalloc(i32, i32) #1

declare dso_local %struct.vmw_cmdbuf_res_manager* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @drm_ht_create(i32*, i32) #1

declare dso_local i32 @kfree(%struct.vmw_cmdbuf_res_manager*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
