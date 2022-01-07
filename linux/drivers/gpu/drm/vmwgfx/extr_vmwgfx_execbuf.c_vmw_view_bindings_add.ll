; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_view_bindings_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_view_bindings_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_sw_context = type { i32 }
%struct.vmw_ctx_validation_info = type { i32, i32 }
%struct.vmw_ctx_bindinfo_view = type { i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, %struct.vmw_resource*, i32 }
%struct.vmw_resource = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SVGA3D_INVALID_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"View not found.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_sw_context*, i32, i32, i64, i64*, i64, i64)* @vmw_view_bindings_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_view_bindings_add(%struct.vmw_sw_context* %0, i32 %1, i32 %2, i64 %3, i64* %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vmw_sw_context*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.vmw_ctx_validation_info*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.vmw_ctx_bindinfo_view, align 8
  %19 = alloca %struct.vmw_resource*, align 8
  store %struct.vmw_sw_context* %0, %struct.vmw_sw_context** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i64* %4, i64** %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %20 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %9, align 8
  %21 = call %struct.vmw_ctx_validation_info* @VMW_GET_CTX_NODE(%struct.vmw_sw_context* %20)
  store %struct.vmw_ctx_validation_info* %21, %struct.vmw_ctx_validation_info** %16, align 8
  %22 = load %struct.vmw_ctx_validation_info*, %struct.vmw_ctx_validation_info** %16, align 8
  %23 = icmp ne %struct.vmw_ctx_validation_info* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %7
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  br label %85

27:                                               ; preds = %7
  store i64 0, i64* %17, align 8
  br label %28

28:                                               ; preds = %81, %27
  %29 = load i64, i64* %17, align 8
  %30 = load i64, i64* %14, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %84

32:                                               ; preds = %28
  store %struct.vmw_resource* null, %struct.vmw_resource** %19, align 8
  %33 = load i64*, i64** %13, align 8
  %34 = load i64, i64* %17, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SVGA3D_INVALID_ID, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %32
  %40 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i64*, i64** %13, align 8
  %43 = load i64, i64* %17, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = call %struct.vmw_resource* @vmw_view_id_val_add(%struct.vmw_sw_context* %40, i32 %41, i64 %45)
  store %struct.vmw_resource* %46, %struct.vmw_resource** %19, align 8
  %47 = load %struct.vmw_resource*, %struct.vmw_resource** %19, align 8
  %48 = call i64 @IS_ERR(%struct.vmw_resource* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %39
  %51 = call i32 @VMW_DEBUG_USER(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.vmw_resource*, %struct.vmw_resource** %19, align 8
  %53 = call i32 @PTR_ERR(%struct.vmw_resource* %52)
  store i32 %53, i32* %8, align 4
  br label %85

54:                                               ; preds = %39
  br label %55

55:                                               ; preds = %54, %32
  %56 = load %struct.vmw_ctx_validation_info*, %struct.vmw_ctx_validation_info** %16, align 8
  %57 = getelementptr inbounds %struct.vmw_ctx_validation_info, %struct.vmw_ctx_validation_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.vmw_ctx_bindinfo_view, %struct.vmw_ctx_bindinfo_view* %18, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load %struct.vmw_resource*, %struct.vmw_resource** %19, align 8
  %62 = getelementptr inbounds %struct.vmw_ctx_bindinfo_view, %struct.vmw_ctx_bindinfo_view* %18, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store %struct.vmw_resource* %61, %struct.vmw_resource** %63, align 8
  %64 = load i32, i32* %11, align 4
  %65 = getelementptr inbounds %struct.vmw_ctx_bindinfo_view, %struct.vmw_ctx_bindinfo_view* %18, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load i64, i64* %12, align 8
  %68 = getelementptr inbounds %struct.vmw_ctx_bindinfo_view, %struct.vmw_ctx_bindinfo_view* %18, i32 0, i32 2
  store i64 %67, i64* %68, align 8
  %69 = load i64, i64* %15, align 8
  %70 = load i64, i64* %17, align 8
  %71 = add i64 %69, %70
  %72 = getelementptr inbounds %struct.vmw_ctx_bindinfo_view, %struct.vmw_ctx_bindinfo_view* %18, i32 0, i32 0
  store i64 %71, i64* %72, align 8
  %73 = load %struct.vmw_ctx_validation_info*, %struct.vmw_ctx_validation_info** %16, align 8
  %74 = getelementptr inbounds %struct.vmw_ctx_validation_info, %struct.vmw_ctx_validation_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.vmw_ctx_bindinfo_view, %struct.vmw_ctx_bindinfo_view* %18, i32 0, i32 1
  %77 = load i64, i64* %12, align 8
  %78 = getelementptr inbounds %struct.vmw_ctx_bindinfo_view, %struct.vmw_ctx_bindinfo_view* %18, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @vmw_binding_add(i32 %75, %struct.TYPE_2__* %76, i64 %77, i64 %79)
  br label %81

81:                                               ; preds = %55
  %82 = load i64, i64* %17, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %17, align 8
  br label %28

84:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %84, %50, %24
  %86 = load i32, i32* %8, align 4
  ret i32 %86
}

declare dso_local %struct.vmw_ctx_validation_info* @VMW_GET_CTX_NODE(%struct.vmw_sw_context*) #1

declare dso_local %struct.vmw_resource* @vmw_view_id_val_add(%struct.vmw_sw_context*, i32, i64) #1

declare dso_local i64 @IS_ERR(%struct.vmw_resource*) #1

declare dso_local i32 @VMW_DEBUG_USER(i8*) #1

declare dso_local i32 @PTR_ERR(%struct.vmw_resource*) #1

declare dso_local i32 @vmw_binding_add(i32, %struct.TYPE_2__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
