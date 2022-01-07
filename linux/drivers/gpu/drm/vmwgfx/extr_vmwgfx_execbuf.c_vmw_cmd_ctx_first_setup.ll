; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_cmd_ctx_first_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_cmd_ctx_first_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32 }
%struct.vmw_sw_context = type { i32, i32, i32* }
%struct.vmw_resource = type { i32 }
%struct.vmw_ctx_validation_info = type { i32, i32, %struct.vmw_resource*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_private*, %struct.vmw_sw_context*, %struct.vmw_resource*, %struct.vmw_ctx_validation_info*)* @vmw_cmd_ctx_first_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_cmd_ctx_first_setup(%struct.vmw_private* %0, %struct.vmw_sw_context* %1, %struct.vmw_resource* %2, %struct.vmw_ctx_validation_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmw_private*, align 8
  %7 = alloca %struct.vmw_sw_context*, align 8
  %8 = alloca %struct.vmw_resource*, align 8
  %9 = alloca %struct.vmw_ctx_validation_info*, align 8
  %10 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %6, align 8
  store %struct.vmw_sw_context* %1, %struct.vmw_sw_context** %7, align 8
  store %struct.vmw_resource* %2, %struct.vmw_resource** %8, align 8
  store %struct.vmw_ctx_validation_info* %3, %struct.vmw_ctx_validation_info** %9, align 8
  %11 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %12 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %7, align 8
  %13 = load %struct.vmw_resource*, %struct.vmw_resource** %8, align 8
  %14 = call i32 @vmw_resource_context_res_add(%struct.vmw_private* %11, %struct.vmw_sw_context* %12, %struct.vmw_resource* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %90

21:                                               ; preds = %4
  %22 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %7, align 8
  %23 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %45, label %26

26:                                               ; preds = %21
  %27 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %28 = call i8* @vmw_binding_state_alloc(%struct.vmw_private* %27)
  %29 = bitcast i8* %28 to i32*
  %30 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %7, align 8
  %31 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %30, i32 0, i32 2
  store i32* %29, i32** %31, align 8
  %32 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %7, align 8
  %33 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = call i64 @IS_ERR(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %26
  %38 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %7, align 8
  %39 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @PTR_ERR(i32* %40)
  store i32 %41, i32* %10, align 4
  %42 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %7, align 8
  %43 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %42, i32 0, i32 2
  store i32* null, i32** %43, align 8
  br label %90

44:                                               ; preds = %26
  br label %45

45:                                               ; preds = %44, %21
  %46 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %7, align 8
  %47 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %45
  %51 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %52 = call i8* @vmw_binding_state_alloc(%struct.vmw_private* %51)
  %53 = bitcast i8* %52 to i32*
  %54 = load %struct.vmw_ctx_validation_info*, %struct.vmw_ctx_validation_info** %9, align 8
  %55 = getelementptr inbounds %struct.vmw_ctx_validation_info, %struct.vmw_ctx_validation_info* %54, i32 0, i32 3
  store i32* %53, i32** %55, align 8
  %56 = load %struct.vmw_ctx_validation_info*, %struct.vmw_ctx_validation_info** %9, align 8
  %57 = getelementptr inbounds %struct.vmw_ctx_validation_info, %struct.vmw_ctx_validation_info* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = call i64 @IS_ERR(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %50
  %62 = load %struct.vmw_ctx_validation_info*, %struct.vmw_ctx_validation_info** %9, align 8
  %63 = getelementptr inbounds %struct.vmw_ctx_validation_info, %struct.vmw_ctx_validation_info* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @PTR_ERR(i32* %64)
  store i32 %65, i32* %10, align 4
  %66 = load %struct.vmw_ctx_validation_info*, %struct.vmw_ctx_validation_info** %9, align 8
  %67 = getelementptr inbounds %struct.vmw_ctx_validation_info, %struct.vmw_ctx_validation_info* %66, i32 0, i32 3
  store i32* null, i32** %67, align 8
  br label %90

68:                                               ; preds = %50
  br label %77

69:                                               ; preds = %45
  %70 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %7, align 8
  %71 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.vmw_ctx_validation_info*, %struct.vmw_ctx_validation_info** %9, align 8
  %74 = getelementptr inbounds %struct.vmw_ctx_validation_info, %struct.vmw_ctx_validation_info* %73, i32 0, i32 3
  store i32* %72, i32** %74, align 8
  %75 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %7, align 8
  %76 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  br label %77

77:                                               ; preds = %69, %68
  %78 = load %struct.vmw_resource*, %struct.vmw_resource** %8, align 8
  %79 = load %struct.vmw_ctx_validation_info*, %struct.vmw_ctx_validation_info** %9, align 8
  %80 = getelementptr inbounds %struct.vmw_ctx_validation_info, %struct.vmw_ctx_validation_info* %79, i32 0, i32 2
  store %struct.vmw_resource* %78, %struct.vmw_resource** %80, align 8
  %81 = load %struct.vmw_resource*, %struct.vmw_resource** %8, align 8
  %82 = call i32 @vmw_context_binding_state(%struct.vmw_resource* %81)
  %83 = load %struct.vmw_ctx_validation_info*, %struct.vmw_ctx_validation_info** %9, align 8
  %84 = getelementptr inbounds %struct.vmw_ctx_validation_info, %struct.vmw_ctx_validation_info* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.vmw_ctx_validation_info*, %struct.vmw_ctx_validation_info** %9, align 8
  %86 = getelementptr inbounds %struct.vmw_ctx_validation_info, %struct.vmw_ctx_validation_info* %85, i32 0, i32 0
  %87 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %7, align 8
  %88 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %87, i32 0, i32 1
  %89 = call i32 @list_add_tail(i32* %86, i32* %88)
  store i32 0, i32* %5, align 4
  br label %92

90:                                               ; preds = %61, %37, %20
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %90, %77
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @vmw_resource_context_res_add(%struct.vmw_private*, %struct.vmw_sw_context*, %struct.vmw_resource*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @vmw_binding_state_alloc(%struct.vmw_private*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @vmw_context_binding_state(%struct.vmw_resource*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
