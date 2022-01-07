; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_sync.c_radeon_sync_resv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_sync.c_radeon_sync_resv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_sync = type { i32 }
%struct.dma_resv = type { i32 }
%struct.dma_resv_list = type { i32, i32* }
%struct.dma_fence = type { i32 }
%struct.radeon_fence = type { %struct.radeon_device* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_sync_resv(%struct.radeon_device* %0, %struct.radeon_sync* %1, %struct.dma_resv* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_sync*, align 8
  %8 = alloca %struct.dma_resv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dma_resv_list*, align 8
  %11 = alloca %struct.dma_fence*, align 8
  %12 = alloca %struct.radeon_fence*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %6, align 8
  store %struct.radeon_sync* %1, %struct.radeon_sync** %7, align 8
  store %struct.dma_resv* %2, %struct.dma_resv** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.dma_resv*, %struct.dma_resv** %8, align 8
  %16 = call %struct.dma_fence* @dma_resv_get_excl(%struct.dma_resv* %15)
  store %struct.dma_fence* %16, %struct.dma_fence** %11, align 8
  %17 = load %struct.dma_fence*, %struct.dma_fence** %11, align 8
  %18 = icmp ne %struct.dma_fence* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load %struct.dma_fence*, %struct.dma_fence** %11, align 8
  %21 = call %struct.radeon_fence* @to_radeon_fence(%struct.dma_fence* %20)
  br label %23

22:                                               ; preds = %4
  br label %23

23:                                               ; preds = %22, %19
  %24 = phi %struct.radeon_fence* [ %21, %19 ], [ null, %22 ]
  store %struct.radeon_fence* %24, %struct.radeon_fence** %12, align 8
  %25 = load %struct.radeon_fence*, %struct.radeon_fence** %12, align 8
  %26 = icmp ne %struct.radeon_fence* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load %struct.radeon_fence*, %struct.radeon_fence** %12, align 8
  %29 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %28, i32 0, i32 0
  %30 = load %struct.radeon_device*, %struct.radeon_device** %29, align 8
  %31 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %32 = icmp eq %struct.radeon_device* %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.radeon_sync*, %struct.radeon_sync** %7, align 8
  %35 = load %struct.radeon_fence*, %struct.radeon_fence** %12, align 8
  %36 = call i32 @radeon_sync_fence(%struct.radeon_sync* %34, %struct.radeon_fence* %35)
  br label %44

37:                                               ; preds = %27, %23
  %38 = load %struct.dma_fence*, %struct.dma_fence** %11, align 8
  %39 = icmp ne %struct.dma_fence* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load %struct.dma_fence*, %struct.dma_fence** %11, align 8
  %42 = call i32 @dma_fence_wait(%struct.dma_fence* %41, i32 1)
  store i32 %42, i32* %14, align 4
  br label %43

43:                                               ; preds = %40, %37
  br label %44

44:                                               ; preds = %43, %33
  %45 = load %struct.dma_resv*, %struct.dma_resv** %8, align 8
  %46 = call %struct.dma_resv_list* @dma_resv_get_list(%struct.dma_resv* %45)
  store %struct.dma_resv_list* %46, %struct.dma_resv_list** %10, align 8
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %44
  %50 = load %struct.dma_resv_list*, %struct.dma_resv_list** %10, align 8
  %51 = icmp ne %struct.dma_resv_list* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52, %49, %44
  %56 = load i32, i32* %14, align 4
  store i32 %56, i32* %5, align 4
  br label %102

57:                                               ; preds = %52
  store i32 0, i32* %13, align 4
  br label %58

58:                                               ; preds = %97, %57
  %59 = load i32, i32* %13, align 4
  %60 = load %struct.dma_resv_list*, %struct.dma_resv_list** %10, align 8
  %61 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ult i32 %59, %62
  br i1 %63, label %64, label %100

64:                                               ; preds = %58
  %65 = load %struct.dma_resv_list*, %struct.dma_resv_list** %10, align 8
  %66 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %13, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.dma_resv*, %struct.dma_resv** %8, align 8
  %73 = call i32 @dma_resv_held(%struct.dma_resv* %72)
  %74 = call %struct.dma_fence* @rcu_dereference_protected(i32 %71, i32 %73)
  store %struct.dma_fence* %74, %struct.dma_fence** %11, align 8
  %75 = load %struct.dma_fence*, %struct.dma_fence** %11, align 8
  %76 = call %struct.radeon_fence* @to_radeon_fence(%struct.dma_fence* %75)
  store %struct.radeon_fence* %76, %struct.radeon_fence** %12, align 8
  %77 = load %struct.radeon_fence*, %struct.radeon_fence** %12, align 8
  %78 = icmp ne %struct.radeon_fence* %77, null
  br i1 %78, label %79, label %89

79:                                               ; preds = %64
  %80 = load %struct.radeon_fence*, %struct.radeon_fence** %12, align 8
  %81 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %80, i32 0, i32 0
  %82 = load %struct.radeon_device*, %struct.radeon_device** %81, align 8
  %83 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %84 = icmp eq %struct.radeon_device* %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load %struct.radeon_sync*, %struct.radeon_sync** %7, align 8
  %87 = load %struct.radeon_fence*, %struct.radeon_fence** %12, align 8
  %88 = call i32 @radeon_sync_fence(%struct.radeon_sync* %86, %struct.radeon_fence* %87)
  br label %92

89:                                               ; preds = %79, %64
  %90 = load %struct.dma_fence*, %struct.dma_fence** %11, align 8
  %91 = call i32 @dma_fence_wait(%struct.dma_fence* %90, i32 1)
  store i32 %91, i32* %14, align 4
  br label %92

92:                                               ; preds = %89, %85
  %93 = load i32, i32* %14, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  br label %100

96:                                               ; preds = %92
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %13, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %13, align 4
  br label %58

100:                                              ; preds = %95, %58
  %101 = load i32, i32* %14, align 4
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %100, %55
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local %struct.dma_fence* @dma_resv_get_excl(%struct.dma_resv*) #1

declare dso_local %struct.radeon_fence* @to_radeon_fence(%struct.dma_fence*) #1

declare dso_local i32 @radeon_sync_fence(%struct.radeon_sync*, %struct.radeon_fence*) #1

declare dso_local i32 @dma_fence_wait(%struct.dma_fence*, i32) #1

declare dso_local %struct.dma_resv_list* @dma_resv_get_list(%struct.dma_resv*) #1

declare dso_local %struct.dma_fence* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @dma_resv_held(%struct.dma_resv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
