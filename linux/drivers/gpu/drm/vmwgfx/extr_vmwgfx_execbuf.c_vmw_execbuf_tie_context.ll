; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_execbuf_tie_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_execbuf_tie_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32 }
%struct.vmw_sw_context = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.vmw_resource = type { i32 }

@SVGA3D_INVALID_ID = common dso_local global i64 0, align 8
@vmw_res_dx_context = common dso_local global i32 0, align 4
@user_context_converter = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Could not find or user DX context 0x%08x.\0A\00", align 1
@VMW_RES_DIRTY_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_private*, %struct.vmw_sw_context*, i64)* @vmw_execbuf_tie_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_execbuf_tie_context(%struct.vmw_private* %0, %struct.vmw_sw_context* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmw_private*, align 8
  %6 = alloca %struct.vmw_sw_context*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.vmw_resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %5, align 8
  store %struct.vmw_sw_context* %1, %struct.vmw_sw_context** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @SVGA3D_INVALID_ID, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %69

15:                                               ; preds = %3
  %16 = load %struct.vmw_private*, %struct.vmw_private** %5, align 8
  %17 = load i32, i32* @vmw_res_dx_context, align 4
  %18 = call i32 @vmw_execbuf_res_size(%struct.vmw_private* %16, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %6, align 8
  %20 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @vmw_validation_preload_res(i32 %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %4, align 4
  br label %69

28:                                               ; preds = %15
  %29 = load %struct.vmw_private*, %struct.vmw_private** %5, align 8
  %30 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %6, align 8
  %31 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %7, align 8
  %36 = load i32, i32* @user_context_converter, align 4
  %37 = call %struct.vmw_resource* @vmw_user_resource_noref_lookup_handle(%struct.vmw_private* %29, i32 %34, i64 %35, i32 %36)
  store %struct.vmw_resource* %37, %struct.vmw_resource** %8, align 8
  %38 = load %struct.vmw_resource*, %struct.vmw_resource** %8, align 8
  %39 = call i64 @IS_ERR(%struct.vmw_resource* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %28
  %42 = load i64, i64* %7, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @VMW_DEBUG_USER(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load %struct.vmw_resource*, %struct.vmw_resource** %8, align 8
  %46 = call i32 @PTR_ERR(%struct.vmw_resource* %45)
  store i32 %46, i32* %4, align 4
  br label %69

47:                                               ; preds = %28
  %48 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %6, align 8
  %49 = load %struct.vmw_resource*, %struct.vmw_resource** %8, align 8
  %50 = load i32, i32* @VMW_RES_DIRTY_SET, align 4
  %51 = call i32 @vmw_execbuf_res_noref_val_add(%struct.vmw_sw_context* %48, %struct.vmw_resource* %49, i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %4, align 4
  br label %69

59:                                               ; preds = %47
  %60 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %6, align 8
  %61 = load %struct.vmw_resource*, %struct.vmw_resource** %8, align 8
  %62 = call i32 @vmw_execbuf_info_from_res(%struct.vmw_sw_context* %60, %struct.vmw_resource* %61)
  %63 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %6, align 8
  %64 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.vmw_resource*, %struct.vmw_resource** %8, align 8
  %66 = call i32 @vmw_context_res_man(%struct.vmw_resource* %65)
  %67 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %6, align 8
  %68 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %59, %57, %41, %26, %14
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @vmw_execbuf_res_size(%struct.vmw_private*, i32) #1

declare dso_local i32 @vmw_validation_preload_res(i32, i32) #1

declare dso_local %struct.vmw_resource* @vmw_user_resource_noref_lookup_handle(%struct.vmw_private*, i32, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.vmw_resource*) #1

declare dso_local i32 @VMW_DEBUG_USER(i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.vmw_resource*) #1

declare dso_local i32 @vmw_execbuf_res_noref_val_add(%struct.vmw_sw_context*, %struct.vmw_resource*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vmw_execbuf_info_from_res(%struct.vmw_sw_context*, %struct.vmw_resource*) #1

declare dso_local i32 @vmw_context_res_man(%struct.vmw_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
