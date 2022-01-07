; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_validation.c_vmw_validation_mem_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_validation.c_vmw_validation_mem_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_validation_context = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i64)*, i64 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vmw_validation_mem_alloc(%struct.vmw_validation_context* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.vmw_validation_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  store %struct.vmw_validation_context* %0, %struct.vmw_validation_context** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @vmw_validation_align(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @PAGE_SIZE, align 4
  %13 = icmp ugt i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %123

15:                                               ; preds = %2
  %16 = load %struct.vmw_validation_context*, %struct.vmw_validation_context** %4, align 8
  %17 = getelementptr inbounds %struct.vmw_validation_context, %struct.vmw_validation_context* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %105

21:                                               ; preds = %15
  %22 = load %struct.vmw_validation_context*, %struct.vmw_validation_context** %4, align 8
  %23 = getelementptr inbounds %struct.vmw_validation_context, %struct.vmw_validation_context* %22, i32 0, i32 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  br i1 %25, label %26, label %73

26:                                               ; preds = %21
  %27 = load %struct.vmw_validation_context*, %struct.vmw_validation_context** %4, align 8
  %28 = getelementptr inbounds %struct.vmw_validation_context, %struct.vmw_validation_context* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %73

32:                                               ; preds = %26
  %33 = load %struct.vmw_validation_context*, %struct.vmw_validation_context** %4, align 8
  %34 = getelementptr inbounds %struct.vmw_validation_context, %struct.vmw_validation_context* %33, i32 0, i32 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.TYPE_2__*, i64)*, i32 (%struct.TYPE_2__*, i64)** %36, align 8
  %38 = load %struct.vmw_validation_context*, %struct.vmw_validation_context** %4, align 8
  %39 = getelementptr inbounds %struct.vmw_validation_context, %struct.vmw_validation_context* %38, i32 0, i32 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load %struct.vmw_validation_context*, %struct.vmw_validation_context** %4, align 8
  %42 = getelementptr inbounds %struct.vmw_validation_context, %struct.vmw_validation_context* %41, i32 0, i32 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 %37(%struct.TYPE_2__* %40, i64 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %32
  store i8* null, i8** %3, align 8
  br label %123

50:                                               ; preds = %32
  %51 = load %struct.vmw_validation_context*, %struct.vmw_validation_context** %4, align 8
  %52 = getelementptr inbounds %struct.vmw_validation_context, %struct.vmw_validation_context* %51, i32 0, i32 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.vmw_validation_context*, %struct.vmw_validation_context** %4, align 8
  %57 = getelementptr inbounds %struct.vmw_validation_context, %struct.vmw_validation_context* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = zext i32 %58 to i64
  %60 = add nsw i64 %59, %55
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %57, align 4
  %62 = load %struct.vmw_validation_context*, %struct.vmw_validation_context** %4, align 8
  %63 = getelementptr inbounds %struct.vmw_validation_context, %struct.vmw_validation_context* %62, i32 0, i32 4
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.vmw_validation_context*, %struct.vmw_validation_context** %4, align 8
  %68 = getelementptr inbounds %struct.vmw_validation_context, %struct.vmw_validation_context* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %66
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %68, align 8
  br label %73

73:                                               ; preds = %50, %26, %21
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = load i32, i32* @__GFP_ZERO, align 4
  %76 = or i32 %74, %75
  %77 = call %struct.page* @alloc_page(i32 %76)
  store %struct.page* %77, %struct.page** %7, align 8
  %78 = load %struct.page*, %struct.page** %7, align 8
  %79 = icmp ne %struct.page* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %73
  store i8* null, i8** %3, align 8
  br label %123

81:                                               ; preds = %73
  %82 = load %struct.vmw_validation_context*, %struct.vmw_validation_context** %4, align 8
  %83 = getelementptr inbounds %struct.vmw_validation_context, %struct.vmw_validation_context* %82, i32 0, i32 4
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = icmp ne %struct.TYPE_2__* %84, null
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load i32, i32* @PAGE_SIZE, align 4
  %88 = load %struct.vmw_validation_context*, %struct.vmw_validation_context** %4, align 8
  %89 = getelementptr inbounds %struct.vmw_validation_context, %struct.vmw_validation_context* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sub i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %86, %81
  %93 = load %struct.page*, %struct.page** %7, align 8
  %94 = getelementptr inbounds %struct.page, %struct.page* %93, i32 0, i32 0
  %95 = load %struct.vmw_validation_context*, %struct.vmw_validation_context** %4, align 8
  %96 = getelementptr inbounds %struct.vmw_validation_context, %struct.vmw_validation_context* %95, i32 0, i32 3
  %97 = call i32 @list_add_tail(i32* %94, i32* %96)
  %98 = load %struct.page*, %struct.page** %7, align 8
  %99 = call i32 @page_address(%struct.page* %98)
  %100 = load %struct.vmw_validation_context*, %struct.vmw_validation_context** %4, align 8
  %101 = getelementptr inbounds %struct.vmw_validation_context, %struct.vmw_validation_context* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* @PAGE_SIZE, align 4
  %103 = load %struct.vmw_validation_context*, %struct.vmw_validation_context** %4, align 8
  %104 = getelementptr inbounds %struct.vmw_validation_context, %struct.vmw_validation_context* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  br label %105

105:                                              ; preds = %92, %15
  %106 = load %struct.vmw_validation_context*, %struct.vmw_validation_context** %4, align 8
  %107 = getelementptr inbounds %struct.vmw_validation_context, %struct.vmw_validation_context* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @PAGE_SIZE, align 4
  %110 = load %struct.vmw_validation_context*, %struct.vmw_validation_context** %4, align 8
  %111 = getelementptr inbounds %struct.vmw_validation_context, %struct.vmw_validation_context* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sub i32 %109, %112
  %114 = add i32 %108, %113
  %115 = zext i32 %114 to i64
  %116 = inttoptr i64 %115 to i8*
  store i8* %116, i8** %6, align 8
  %117 = load i32, i32* %5, align 4
  %118 = load %struct.vmw_validation_context*, %struct.vmw_validation_context** %4, align 8
  %119 = getelementptr inbounds %struct.vmw_validation_context, %struct.vmw_validation_context* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sub i32 %120, %117
  store i32 %121, i32* %119, align 8
  %122 = load i8*, i8** %6, align 8
  store i8* %122, i8** %3, align 8
  br label %123

123:                                              ; preds = %105, %80, %49, %14
  %124 = load i8*, i8** %3, align 8
  ret i8* %124
}

declare dso_local i32 @vmw_validation_align(i32) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @page_address(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
