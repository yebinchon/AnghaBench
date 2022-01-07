; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_resource.c_vmw_resource_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_resource.c_vmw_resource_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32 }
%struct.vmw_resource = type { void (%struct.vmw_resource*)*, i32, i32, i32, i32, i64, i32*, i32, i32, i32, %struct.vmw_res_func*, %struct.vmw_private*, i32*, i32 }
%struct.vmw_res_func = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_resource_init(%struct.vmw_private* %0, %struct.vmw_resource* %1, i32 %2, void (%struct.vmw_resource*)* %3, %struct.vmw_res_func* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vmw_private*, align 8
  %8 = alloca %struct.vmw_resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca void (%struct.vmw_resource*)*, align 8
  %11 = alloca %struct.vmw_res_func*, align 8
  store %struct.vmw_private* %0, %struct.vmw_private** %7, align 8
  store %struct.vmw_resource* %1, %struct.vmw_resource** %8, align 8
  store i32 %2, i32* %9, align 4
  store void (%struct.vmw_resource*)* %3, void (%struct.vmw_resource*)** %10, align 8
  store %struct.vmw_res_func* %4, %struct.vmw_res_func** %11, align 8
  %12 = load %struct.vmw_resource*, %struct.vmw_resource** %8, align 8
  %13 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %12, i32 0, i32 13
  %14 = call i32 @kref_init(i32* %13)
  %15 = load %struct.vmw_resource*, %struct.vmw_resource** %8, align 8
  %16 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %15, i32 0, i32 12
  store i32* null, i32** %16, align 8
  %17 = load void (%struct.vmw_resource*)*, void (%struct.vmw_resource*)** %10, align 8
  %18 = load %struct.vmw_resource*, %struct.vmw_resource** %8, align 8
  %19 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %18, i32 0, i32 0
  store void (%struct.vmw_resource*)* %17, void (%struct.vmw_resource*)** %19, align 8
  %20 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  %21 = load %struct.vmw_resource*, %struct.vmw_resource** %8, align 8
  %22 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %21, i32 0, i32 11
  store %struct.vmw_private* %20, %struct.vmw_private** %22, align 8
  %23 = load %struct.vmw_res_func*, %struct.vmw_res_func** %11, align 8
  %24 = load %struct.vmw_resource*, %struct.vmw_resource** %8, align 8
  %25 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %24, i32 0, i32 10
  store %struct.vmw_res_func* %23, %struct.vmw_res_func** %25, align 8
  %26 = load %struct.vmw_resource*, %struct.vmw_resource** %8, align 8
  %27 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %26, i32 0, i32 9
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.vmw_resource*, %struct.vmw_resource** %8, align 8
  %30 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %29, i32 0, i32 8
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  %32 = load %struct.vmw_resource*, %struct.vmw_resource** %8, align 8
  %33 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %32, i32 0, i32 7
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.vmw_resource*, %struct.vmw_resource** %8, align 8
  %36 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %35, i32 0, i32 1
  store i32 -1, i32* %36, align 8
  %37 = load %struct.vmw_resource*, %struct.vmw_resource** %8, align 8
  %38 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %37, i32 0, i32 6
  store i32* null, i32** %38, align 8
  %39 = load %struct.vmw_resource*, %struct.vmw_resource** %8, align 8
  %40 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %39, i32 0, i32 5
  store i64 0, i64* %40, align 8
  %41 = load %struct.vmw_resource*, %struct.vmw_resource** %8, align 8
  %42 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %41, i32 0, i32 2
  store i32 0, i32* %42, align 4
  %43 = load %struct.vmw_resource*, %struct.vmw_resource** %8, align 8
  %44 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %43, i32 0, i32 3
  store i32 0, i32* %44, align 8
  %45 = load %struct.vmw_resource*, %struct.vmw_resource** %8, align 8
  %46 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %45, i32 0, i32 4
  store i32 3, i32* %46, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %53

50:                                               ; preds = %5
  %51 = load %struct.vmw_resource*, %struct.vmw_resource** %8, align 8
  %52 = call i32 @vmw_resource_alloc_id(%struct.vmw_resource* %51)
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %50, %49
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @vmw_resource_alloc_id(%struct.vmw_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
