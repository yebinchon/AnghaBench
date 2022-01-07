; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_resource.c_vmw_resource_unreserve.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_resource.c_vmw_resource_unreserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_resource = type { i64, i32, i32, %struct.TYPE_2__*, %struct.vmw_private*, i32, i64, %struct.vmw_buffer_object* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.vmw_private = type { i32, i32* }
%struct.vmw_buffer_object = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmw_resource_unreserve(%struct.vmw_resource* %0, i32 %1, i32 %2, i32 %3, %struct.vmw_buffer_object* %4, i64 %5) #0 {
  %7 = alloca %struct.vmw_resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vmw_buffer_object*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.vmw_private*, align 8
  store %struct.vmw_resource* %0, %struct.vmw_resource** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.vmw_buffer_object* %4, %struct.vmw_buffer_object** %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load %struct.vmw_resource*, %struct.vmw_resource** %7, align 8
  %15 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %14, i32 0, i32 4
  %16 = load %struct.vmw_private*, %struct.vmw_private** %15, align 8
  store %struct.vmw_private* %16, %struct.vmw_private** %13, align 8
  %17 = load %struct.vmw_resource*, %struct.vmw_resource** %7, align 8
  %18 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %17, i32 0, i32 5
  %19 = call i32 @list_empty(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %6
  br label %109

22:                                               ; preds = %6
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %56

25:                                               ; preds = %22
  %26 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %11, align 8
  %27 = load %struct.vmw_resource*, %struct.vmw_resource** %7, align 8
  %28 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %27, i32 0, i32 7
  %29 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %28, align 8
  %30 = icmp ne %struct.vmw_buffer_object* %26, %29
  br i1 %30, label %31, label %56

31:                                               ; preds = %25
  %32 = load %struct.vmw_resource*, %struct.vmw_resource** %7, align 8
  %33 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %32, i32 0, i32 7
  %34 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %33, align 8
  %35 = icmp ne %struct.vmw_buffer_object* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.vmw_resource*, %struct.vmw_resource** %7, align 8
  %38 = call i32 @vmw_resource_mob_detach(%struct.vmw_resource* %37)
  %39 = load %struct.vmw_resource*, %struct.vmw_resource** %7, align 8
  %40 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %39, i32 0, i32 7
  %41 = call i32 @vmw_bo_unreference(%struct.vmw_buffer_object** %40)
  br label %42

42:                                               ; preds = %36, %31
  %43 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %11, align 8
  %44 = icmp ne %struct.vmw_buffer_object* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %11, align 8
  %47 = call %struct.vmw_buffer_object* @vmw_bo_reference(%struct.vmw_buffer_object* %46)
  %48 = load %struct.vmw_resource*, %struct.vmw_resource** %7, align 8
  %49 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %48, i32 0, i32 7
  store %struct.vmw_buffer_object* %47, %struct.vmw_buffer_object** %49, align 8
  %50 = load %struct.vmw_resource*, %struct.vmw_resource** %7, align 8
  %51 = call i32 @vmw_resource_mob_attach(%struct.vmw_resource* %50)
  br label %55

52:                                               ; preds = %42
  %53 = load %struct.vmw_resource*, %struct.vmw_resource** %7, align 8
  %54 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %53, i32 0, i32 7
  store %struct.vmw_buffer_object* null, %struct.vmw_buffer_object** %54, align 8
  br label %55

55:                                               ; preds = %52, %45
  br label %56

56:                                               ; preds = %55, %25, %22
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i64, i64* %12, align 8
  %61 = load %struct.vmw_resource*, %struct.vmw_resource** %7, align 8
  %62 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %59, %56
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.vmw_resource*, %struct.vmw_resource** %7, align 8
  %69 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %66, %63
  %71 = load %struct.vmw_resource*, %struct.vmw_resource** %7, align 8
  %72 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %71, i32 0, i32 3
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %70
  %78 = load %struct.vmw_resource*, %struct.vmw_resource** %7, align 8
  %79 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = load %struct.vmw_resource*, %struct.vmw_resource** %7, align 8
  %84 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %83, i32 0, i32 6
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82, %77, %70
  br label %109

88:                                               ; preds = %82
  %89 = load %struct.vmw_private*, %struct.vmw_private** %13, align 8
  %90 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %89, i32 0, i32 0
  %91 = call i32 @spin_lock(i32* %90)
  %92 = load %struct.vmw_resource*, %struct.vmw_resource** %7, align 8
  %93 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %92, i32 0, i32 5
  %94 = load %struct.vmw_resource*, %struct.vmw_resource** %7, align 8
  %95 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %94, i32 0, i32 4
  %96 = load %struct.vmw_private*, %struct.vmw_private** %95, align 8
  %97 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.vmw_resource*, %struct.vmw_resource** %7, align 8
  %100 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %99, i32 0, i32 3
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds i32, i32* %98, i64 %103
  %105 = call i32 @list_add_tail(i32* %93, i32* %104)
  %106 = load %struct.vmw_private*, %struct.vmw_private** %13, align 8
  %107 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %106, i32 0, i32 0
  %108 = call i32 @spin_unlock(i32* %107)
  br label %109

109:                                              ; preds = %88, %87, %21
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @vmw_resource_mob_detach(%struct.vmw_resource*) #1

declare dso_local i32 @vmw_bo_unreference(%struct.vmw_buffer_object**) #1

declare dso_local %struct.vmw_buffer_object* @vmw_bo_reference(%struct.vmw_buffer_object*) #1

declare dso_local i32 @vmw_resource_mob_attach(%struct.vmw_resource*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
