; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_dma_buf.c___dma_resv_make_exclusive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_dma_buf.c___dma_resv_make_exclusive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_resv = type { i32 }
%struct.dma_fence = type { i32 }
%struct.dma_fence_array = type { %struct.dma_fence }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_resv*)* @__dma_resv_make_exclusive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dma_resv_make_exclusive(%struct.dma_resv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_resv*, align 8
  %4 = alloca %struct.dma_fence**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dma_fence_array*, align 8
  store %struct.dma_resv* %0, %struct.dma_resv** %3, align 8
  %8 = load %struct.dma_resv*, %struct.dma_resv** %3, align 8
  %9 = call i32 @dma_resv_get_list(%struct.dma_resv* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %73

12:                                               ; preds = %1
  %13 = load %struct.dma_resv*, %struct.dma_resv** %3, align 8
  %14 = call i32 @dma_resv_get_fences_rcu(%struct.dma_resv* %13, i32* null, i32* %5, %struct.dma_fence*** %4)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %73

19:                                               ; preds = %12
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %55

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load %struct.dma_resv*, %struct.dma_resv** %3, align 8
  %28 = load %struct.dma_fence**, %struct.dma_fence*** %4, align 8
  %29 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %28, i64 0
  %30 = load %struct.dma_fence*, %struct.dma_fence** %29, align 8
  %31 = call i32 @dma_resv_add_excl_fence(%struct.dma_resv* %27, %struct.dma_fence* %30)
  %32 = load %struct.dma_fence**, %struct.dma_fence*** %4, align 8
  %33 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %32, i64 0
  %34 = load %struct.dma_fence*, %struct.dma_fence** %33, align 8
  %35 = call i32 @dma_fence_put(%struct.dma_fence* %34)
  %36 = load %struct.dma_fence**, %struct.dma_fence*** %4, align 8
  %37 = call i32 @kfree(%struct.dma_fence** %36)
  br label %54

38:                                               ; preds = %23
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.dma_fence**, %struct.dma_fence*** %4, align 8
  %41 = call i32 @dma_fence_context_alloc(i32 1)
  %42 = call %struct.dma_fence_array* @dma_fence_array_create(i32 %39, %struct.dma_fence** %40, i32 %41, i32 0, i32 0)
  store %struct.dma_fence_array* %42, %struct.dma_fence_array** %7, align 8
  %43 = load %struct.dma_fence_array*, %struct.dma_fence_array** %7, align 8
  %44 = icmp ne %struct.dma_fence_array* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  br label %56

46:                                               ; preds = %38
  %47 = load %struct.dma_resv*, %struct.dma_resv** %3, align 8
  %48 = load %struct.dma_fence_array*, %struct.dma_fence_array** %7, align 8
  %49 = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %48, i32 0, i32 0
  %50 = call i32 @dma_resv_add_excl_fence(%struct.dma_resv* %47, %struct.dma_fence* %49)
  %51 = load %struct.dma_fence_array*, %struct.dma_fence_array** %7, align 8
  %52 = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %51, i32 0, i32 0
  %53 = call i32 @dma_fence_put(%struct.dma_fence* %52)
  br label %54

54:                                               ; preds = %46, %26
  br label %55

55:                                               ; preds = %54, %22
  store i32 0, i32* %2, align 4
  br label %73

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %61, %56
  %58 = load i32, i32* %5, align 4
  %59 = add i32 %58, -1
  store i32 %59, i32* %5, align 4
  %60 = icmp ne i32 %58, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load %struct.dma_fence**, %struct.dma_fence*** %4, align 8
  %63 = load i32, i32* %5, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %62, i64 %64
  %66 = load %struct.dma_fence*, %struct.dma_fence** %65, align 8
  %67 = call i32 @dma_fence_put(%struct.dma_fence* %66)
  br label %57

68:                                               ; preds = %57
  %69 = load %struct.dma_fence**, %struct.dma_fence*** %4, align 8
  %70 = call i32 @kfree(%struct.dma_fence** %69)
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %68, %55, %17, %11
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @dma_resv_get_list(%struct.dma_resv*) #1

declare dso_local i32 @dma_resv_get_fences_rcu(%struct.dma_resv*, i32*, i32*, %struct.dma_fence***) #1

declare dso_local i32 @dma_resv_add_excl_fence(%struct.dma_resv*, %struct.dma_fence*) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i32 @kfree(%struct.dma_fence**) #1

declare dso_local %struct.dma_fence_array* @dma_fence_array_create(i32, %struct.dma_fence**, i32, i32, i32) #1

declare dso_local i32 @dma_fence_context_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
