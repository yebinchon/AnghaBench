; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_drv.c_vmw_request_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_drv.c_vmw_request_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32, i32, i32, i32*, i32, i64 }

@.str = private unnamed_addr constant [28 x i8] c"Unable to initialize FIFO.\0A\00", align 1
@VMW_PL_MOB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_private*)* @vmw_request_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_request_device(%struct.vmw_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmw_private*, align 8
  %4 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %3, align 8
  %5 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %6 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %7 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %6, i32 0, i32 1
  %8 = call i32 @vmw_fifo_init(%struct.vmw_private* %5, i32* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %95

17:                                               ; preds = %1
  %18 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %19 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @vmw_fence_fifo_up(i32 %20)
  %22 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %23 = call i32* @vmw_cmdbuf_man_create(%struct.vmw_private* %22)
  %24 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %25 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %24, i32 0, i32 3
  store i32* %23, i32** %25, align 8
  %26 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %27 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = call i64 @IS_ERR(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %17
  %32 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %33 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %32, i32 0, i32 3
  store i32* null, i32** %33, align 8
  %34 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %35 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  br label %36

36:                                               ; preds = %31, %17
  %37 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %38 = call i32 @vmw_request_device_late(%struct.vmw_private* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %85

42:                                               ; preds = %36
  %43 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %44 = call i32 @vmw_dummy_query_bo_create(%struct.vmw_private* %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %52

51:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %95

52:                                               ; preds = %50
  %53 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %54 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %59 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @vmw_cmdbuf_remove_pool(i32* %60)
  br label %62

62:                                               ; preds = %57, %52
  %63 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %64 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %69 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %68, i32 0, i32 4
  %70 = load i32, i32* @VMW_PL_MOB, align 4
  %71 = call i32 @ttm_bo_evict_mm(i32* %69, i32 %70)
  %72 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %73 = call i32 @vmw_otables_takedown(%struct.vmw_private* %72)
  br label %74

74:                                               ; preds = %67, %62
  %75 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %76 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %81 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @vmw_cmdbuf_man_destroy(i32* %82)
  br label %84

84:                                               ; preds = %79, %74
  br label %85

85:                                               ; preds = %84, %41
  %86 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %87 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @vmw_fence_fifo_down(i32 %88)
  %90 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %91 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %92 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %91, i32 0, i32 1
  %93 = call i32 @vmw_fifo_release(%struct.vmw_private* %90, i32* %92)
  %94 = load i32, i32* %4, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %85, %51, %14
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @vmw_fifo_init(%struct.vmw_private*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @vmw_fence_fifo_up(i32) #1

declare dso_local i32* @vmw_cmdbuf_man_create(%struct.vmw_private*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @vmw_request_device_late(%struct.vmw_private*) #1

declare dso_local i32 @vmw_dummy_query_bo_create(%struct.vmw_private*) #1

declare dso_local i32 @vmw_cmdbuf_remove_pool(i32*) #1

declare dso_local i32 @ttm_bo_evict_mm(i32*, i32) #1

declare dso_local i32 @vmw_otables_takedown(%struct.vmw_private*) #1

declare dso_local i32 @vmw_cmdbuf_man_destroy(i32*) #1

declare dso_local i32 @vmw_fence_fifo_down(i32) #1

declare dso_local i32 @vmw_fifo_release(%struct.vmw_private*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
