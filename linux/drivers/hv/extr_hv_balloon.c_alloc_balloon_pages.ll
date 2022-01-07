; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_hv_balloon.c_alloc_balloon_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_hv_balloon.c_alloc_balloon_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_dynmem_device = type { i32 }
%struct.dm_balloon_response = type { %struct.TYPE_6__, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@GFP_HIGHUSER = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4
@__GFP_NOMEMALLOC = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_dynmem_device*, i32, %struct.dm_balloon_response*, i32)* @alloc_balloon_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_balloon_pages(%struct.hv_dynmem_device* %0, i32 %1, %struct.dm_balloon_response* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hv_dynmem_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dm_balloon_response*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.page*, align 8
  store %struct.hv_dynmem_device* %0, %struct.hv_dynmem_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.dm_balloon_response* %2, %struct.dm_balloon_response** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %122

17:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %117, %17
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %9, align 4
  %21 = mul i32 %19, %20
  %22 = load i32, i32* %7, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %120

24:                                               ; preds = %18
  %25 = load %struct.dm_balloon_response*, %struct.dm_balloon_response** %8, align 8
  %26 = getelementptr inbounds %struct.dm_balloon_response, %struct.dm_balloon_response* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add i64 %28, 4
  %30 = load i64, i64* @PAGE_SIZE, align 8
  %31 = icmp ugt i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %9, align 4
  %35 = mul i32 %33, %34
  store i32 %35, i32* %5, align 4
  br label %122

36:                                               ; preds = %24
  %37 = load i32, i32* @GFP_HIGHUSER, align 4
  %38 = load i32, i32* @__GFP_NORETRY, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @__GFP_NOMEMALLOC, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @__GFP_NOWARN, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @PAGE_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = call i32 @get_order(i32 %46)
  %48 = call %struct.page* @alloc_pages(i32 %43, i32 %47)
  store %struct.page* %48, %struct.page** %12, align 8
  %49 = load %struct.page*, %struct.page** %12, align 8
  %50 = icmp ne %struct.page* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %36
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %9, align 4
  %54 = mul i32 %52, %53
  store i32 %54, i32* %5, align 4
  br label %122

55:                                               ; preds = %36
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.hv_dynmem_device*, %struct.hv_dynmem_device** %6, align 8
  %58 = getelementptr inbounds %struct.hv_dynmem_device, %struct.hv_dynmem_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 1
  br i1 %62, label %63, label %70

63:                                               ; preds = %55
  %64 = load %struct.page*, %struct.page** %12, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @PAGE_SHIFT, align 4
  %67 = shl i32 %65, %66
  %68 = call i32 @get_order(i32 %67)
  %69 = call i32 @split_page(%struct.page* %64, i32 %68)
  br label %70

70:                                               ; preds = %63, %55
  store i32 0, i32* %11, align 4
  br label %71

71:                                               ; preds = %85, %70
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @PAGE_SHIFT, align 4
  %75 = shl i32 %73, %74
  %76 = call i32 @get_order(i32 %75)
  %77 = shl i32 1, %76
  %78 = icmp ult i32 %72, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %71
  %80 = load %struct.page*, %struct.page** %12, align 8
  %81 = load i32, i32* %11, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.page, %struct.page* %80, i64 %82
  %84 = call i32 @__SetPageOffline(%struct.page* %83)
  br label %85

85:                                               ; preds = %79
  %86 = load i32, i32* %11, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %71

88:                                               ; preds = %71
  %89 = load %struct.dm_balloon_response*, %struct.dm_balloon_response** %8, align 8
  %90 = getelementptr inbounds %struct.dm_balloon_response, %struct.dm_balloon_response* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 8
  %93 = load %struct.page*, %struct.page** %12, align 8
  %94 = call i32 @page_to_pfn(%struct.page* %93)
  %95 = load %struct.dm_balloon_response*, %struct.dm_balloon_response** %8, align 8
  %96 = getelementptr inbounds %struct.dm_balloon_response, %struct.dm_balloon_response* %95, i32 0, i32 1
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  store i32 %94, i32* %102, align 4
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.dm_balloon_response*, %struct.dm_balloon_response** %8, align 8
  %105 = getelementptr inbounds %struct.dm_balloon_response, %struct.dm_balloon_response* %104, i32 0, i32 1
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = load i32, i32* %10, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  store i32 %103, i32* %111, align 4
  %112 = load %struct.dm_balloon_response*, %struct.dm_balloon_response** %8, align 8
  %113 = getelementptr inbounds %struct.dm_balloon_response, %struct.dm_balloon_response* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = add i64 %115, 4
  store i64 %116, i64* %114, align 8
  br label %117

117:                                              ; preds = %88
  %118 = load i32, i32* %10, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %10, align 4
  br label %18

120:                                              ; preds = %18
  %121 = load i32, i32* %7, align 4
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %120, %51, %32, %16
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @split_page(%struct.page*, i32) #1

declare dso_local i32 @__SetPageOffline(%struct.page*) #1

declare dso_local i32 @page_to_pfn(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
