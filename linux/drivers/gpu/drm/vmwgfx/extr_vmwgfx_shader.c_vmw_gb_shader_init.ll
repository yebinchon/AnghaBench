; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_shader.c_vmw_gb_shader_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_shader.c_vmw_gb_shader_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32 }
%struct.vmw_resource = type { i32, i32, i32, i8* }
%struct.vmw_buffer_object = type { i32 }
%struct.vmw_shader = type { i8*, i8*, i32, i8* }

@vmw_gb_shader_func = common dso_local global i32 0, align 4
@vmw_hw_shader_destroy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_private*, %struct.vmw_resource*, i8*, i32, i32, i8*, i8*, %struct.vmw_buffer_object*, void (%struct.vmw_resource*)*)* @vmw_gb_shader_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_gb_shader_init(%struct.vmw_private* %0, %struct.vmw_resource* %1, i8* %2, i32 %3, i32 %4, i8* %5, i8* %6, %struct.vmw_buffer_object* %7, void (%struct.vmw_resource*)* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.vmw_private*, align 8
  %12 = alloca %struct.vmw_resource*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.vmw_buffer_object*, align 8
  %19 = alloca void (%struct.vmw_resource*)*, align 8
  %20 = alloca %struct.vmw_shader*, align 8
  %21 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %11, align 8
  store %struct.vmw_resource* %1, %struct.vmw_resource** %12, align 8
  store i8* %2, i8** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i8* %5, i8** %16, align 8
  store i8* %6, i8** %17, align 8
  store %struct.vmw_buffer_object* %7, %struct.vmw_buffer_object** %18, align 8
  store void (%struct.vmw_resource*)* %8, void (%struct.vmw_resource*)** %19, align 8
  %22 = load %struct.vmw_resource*, %struct.vmw_resource** %12, align 8
  %23 = call %struct.vmw_shader* @vmw_res_to_shader(%struct.vmw_resource* %22)
  store %struct.vmw_shader* %23, %struct.vmw_shader** %20, align 8
  %24 = load %struct.vmw_private*, %struct.vmw_private** %11, align 8
  %25 = load %struct.vmw_resource*, %struct.vmw_resource** %12, align 8
  %26 = load void (%struct.vmw_resource*)*, void (%struct.vmw_resource*)** %19, align 8
  %27 = call i32 @vmw_resource_init(%struct.vmw_private* %24, %struct.vmw_resource* %25, i32 1, void (%struct.vmw_resource*)* %26, i32* @vmw_gb_shader_func)
  store i32 %27, i32* %21, align 4
  %28 = load i32, i32* %21, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %9
  %34 = load void (%struct.vmw_resource*)*, void (%struct.vmw_resource*)** %19, align 8
  %35 = icmp ne void (%struct.vmw_resource*)* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load void (%struct.vmw_resource*)*, void (%struct.vmw_resource*)** %19, align 8
  %38 = load %struct.vmw_resource*, %struct.vmw_resource** %12, align 8
  call void %37(%struct.vmw_resource* %38)
  br label %42

39:                                               ; preds = %33
  %40 = load %struct.vmw_resource*, %struct.vmw_resource** %12, align 8
  %41 = call i32 @kfree(%struct.vmw_resource* %40)
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i32, i32* %21, align 4
  store i32 %43, i32* %10, align 4
  br label %74

44:                                               ; preds = %9
  %45 = load i8*, i8** %13, align 8
  %46 = load %struct.vmw_resource*, %struct.vmw_resource** %12, align 8
  %47 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  %48 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %18, align 8
  %49 = icmp ne %struct.vmw_buffer_object* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %18, align 8
  %52 = call i32 @vmw_bo_reference(%struct.vmw_buffer_object* %51)
  %53 = load %struct.vmw_resource*, %struct.vmw_resource** %12, align 8
  %54 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %14, align 4
  %56 = load %struct.vmw_resource*, %struct.vmw_resource** %12, align 8
  %57 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %50, %44
  %59 = load i8*, i8** %13, align 8
  %60 = load %struct.vmw_shader*, %struct.vmw_shader** %20, align 8
  %61 = getelementptr inbounds %struct.vmw_shader, %struct.vmw_shader* %60, i32 0, i32 3
  store i8* %59, i8** %61, align 8
  %62 = load i32, i32* %15, align 4
  %63 = load %struct.vmw_shader*, %struct.vmw_shader** %20, align 8
  %64 = getelementptr inbounds %struct.vmw_shader, %struct.vmw_shader* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load i8*, i8** %16, align 8
  %66 = load %struct.vmw_shader*, %struct.vmw_shader** %20, align 8
  %67 = getelementptr inbounds %struct.vmw_shader, %struct.vmw_shader* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = load i8*, i8** %17, align 8
  %69 = load %struct.vmw_shader*, %struct.vmw_shader** %20, align 8
  %70 = getelementptr inbounds %struct.vmw_shader, %struct.vmw_shader* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* @vmw_hw_shader_destroy, align 4
  %72 = load %struct.vmw_resource*, %struct.vmw_resource** %12, align 8
  %73 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  store i32 0, i32* %10, align 4
  br label %74

74:                                               ; preds = %58, %42
  %75 = load i32, i32* %10, align 4
  ret i32 %75
}

declare dso_local %struct.vmw_shader* @vmw_res_to_shader(%struct.vmw_resource*) #1

declare dso_local i32 @vmw_resource_init(%struct.vmw_private*, %struct.vmw_resource*, i32, void (%struct.vmw_resource*)*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree(%struct.vmw_resource*) #1

declare dso_local i32 @vmw_bo_reference(%struct.vmw_buffer_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
