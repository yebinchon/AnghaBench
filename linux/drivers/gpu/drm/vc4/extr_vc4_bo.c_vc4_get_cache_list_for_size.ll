; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_bo.c_vc4_get_cache_list_for_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_bo.c_vc4_get_cache_list_for_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.drm_device = type { i32 }
%struct.vc4_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.list_head* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.list_head* (%struct.drm_device*, i64)* @vc4_get_cache_list_for_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.list_head* @vc4_get_cache_list_for_size(%struct.drm_device* %0, i64 %1) #0 {
  %3 = alloca %struct.list_head*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.vc4_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.list_head*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %13 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %12)
  store %struct.vc4_dev* %13, %struct.vc4_dev** %6, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @bo_page_index(i64 %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.vc4_dev*, %struct.vc4_dev** %6, align 8
  %17 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %105

22:                                               ; preds = %2
  %23 = load %struct.vc4_dev*, %struct.vc4_dev** %6, align 8
  %24 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = mul nsw i32 %26, 2
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  %30 = call i32 @max(i32 %27, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.list_head* @kmalloc_array(i32 %31, i32 4, i32 %32)
  store %struct.list_head* %33, %struct.list_head** %9, align 8
  %34 = load %struct.list_head*, %struct.list_head** %9, align 8
  %35 = icmp ne %struct.list_head* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %22
  store %struct.list_head* null, %struct.list_head** %3, align 8
  br label %113

37:                                               ; preds = %22
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %70, %37
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.vc4_dev*, %struct.vc4_dev** %6, align 8
  %41 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %39, %43
  br i1 %44, label %45, label %73

45:                                               ; preds = %38
  %46 = load %struct.vc4_dev*, %struct.vc4_dev** %6, align 8
  %47 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load %struct.list_head*, %struct.list_head** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.list_head, %struct.list_head* %49, i64 %51
  store %struct.list_head* %52, %struct.list_head** %11, align 8
  %53 = load %struct.list_head*, %struct.list_head** %11, align 8
  %54 = call i64 @list_empty(%struct.list_head* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %45
  %57 = load %struct.list_head*, %struct.list_head** %9, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.list_head, %struct.list_head* %57, i64 %59
  %61 = call i32 @INIT_LIST_HEAD(%struct.list_head* %60)
  br label %69

62:                                               ; preds = %45
  %63 = load %struct.list_head*, %struct.list_head** %11, align 8
  %64 = load %struct.list_head*, %struct.list_head** %9, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.list_head, %struct.list_head* %64, i64 %66
  %68 = call i32 @list_replace(%struct.list_head* %63, %struct.list_head* %67)
  br label %69

69:                                               ; preds = %62, %56
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  br label %38

73:                                               ; preds = %38
  %74 = load %struct.vc4_dev*, %struct.vc4_dev** %6, align 8
  %75 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %88, %73
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  %83 = load %struct.list_head*, %struct.list_head** %9, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.list_head, %struct.list_head* %83, i64 %85
  %87 = call i32 @INIT_LIST_HEAD(%struct.list_head* %86)
  br label %88

88:                                               ; preds = %82
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %78

91:                                               ; preds = %78
  %92 = load %struct.vc4_dev*, %struct.vc4_dev** %6, align 8
  %93 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load %struct.list_head*, %struct.list_head** %94, align 8
  %96 = call i32 @kfree(%struct.list_head* %95)
  %97 = load %struct.list_head*, %struct.list_head** %9, align 8
  %98 = load %struct.vc4_dev*, %struct.vc4_dev** %6, align 8
  %99 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  store %struct.list_head* %97, %struct.list_head** %100, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.vc4_dev*, %struct.vc4_dev** %6, align 8
  %103 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  store i32 %101, i32* %104, align 8
  br label %105

105:                                              ; preds = %91, %2
  %106 = load %struct.vc4_dev*, %struct.vc4_dev** %6, align 8
  %107 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load %struct.list_head*, %struct.list_head** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.list_head, %struct.list_head* %109, i64 %111
  store %struct.list_head* %112, %struct.list_head** %3, align 8
  br label %113

113:                                              ; preds = %105, %36
  %114 = load %struct.list_head*, %struct.list_head** %3, align 8
  ret %struct.list_head* %114
}

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local i32 @bo_page_index(i64) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local %struct.list_head* @kmalloc_array(i32, i32, i32) #1

declare dso_local i64 @list_empty(%struct.list_head*) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @list_replace(%struct.list_head*, %struct.list_head*) #1

declare dso_local i32 @kfree(%struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
