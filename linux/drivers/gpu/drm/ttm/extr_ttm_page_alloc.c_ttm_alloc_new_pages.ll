; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_page_alloc.c_ttm_alloc_new_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_page_alloc.c_ttm_alloc_new_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.page = type { i32 }

@NUM_PAGES_TO_ALLOC = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Unable to allocate table for new pages\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Unable to get page %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_head*, i32, i32, i32, i32, i32)* @ttm_alloc_new_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_alloc_new_pages(%struct.list_head* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.page**, align 8
  %15 = alloca %struct.page*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.list_head* %0, %struct.list_head** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %22 = load i32, i32* %13, align 4
  %23 = shl i32 1, %22
  store i32 %23, i32* %20, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %13, align 4
  %26 = shl i32 %24, %25
  %27 = load i64, i64* @NUM_PAGES_TO_ALLOC, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 @min(i32 %26, i32 %28)
  store i32 %29, i32* %21, align 4
  %30 = load i32, i32* %21, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.page** @kmalloc_array(i32 %30, i32 8, i32 %31)
  store %struct.page** %32, %struct.page*** %14, align 8
  %33 = load %struct.page**, %struct.page*** %14, align 8
  %34 = icmp ne %struct.page** %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %6
  %36 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %139

39:                                               ; preds = %6
  store i32 0, i32* %17, align 4
  store i32 0, i32* %19, align 4
  br label %40

40:                                               ; preds = %113, %39
  %41 = load i32, i32* %17, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %116

44:                                               ; preds = %40
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %13, align 4
  %47 = call %struct.page* @alloc_pages(i32 %45, i32 %46)
  store %struct.page* %47, %struct.page** %15, align 8
  %48 = load %struct.page*, %struct.page** %15, align 8
  %49 = icmp ne %struct.page* %48, null
  br i1 %49, label %73, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* %17, align 4
  %52 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %19, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %50
  %56 = load %struct.page**, %struct.page*** %14, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %19, align 4
  %59 = call i32 @ttm_set_pages_caching(%struct.page** %56, i32 %57, i32 %58)
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %55
  %63 = load %struct.list_head*, %struct.list_head** %8, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.page**, %struct.page*** %14, align 8
  %67 = load i32, i32* %19, align 4
  %68 = call i32 @ttm_handle_caching_state_failure(%struct.list_head* %63, i32 %64, i32 %65, %struct.page** %66, i32 %67)
  br label %69

69:                                               ; preds = %62, %55
  br label %70

70:                                               ; preds = %69, %50
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %16, align 4
  br label %135

73:                                               ; preds = %44
  %74 = load %struct.page*, %struct.page** %15, align 8
  %75 = getelementptr inbounds %struct.page, %struct.page* %74, i32 0, i32 0
  %76 = load %struct.list_head*, %struct.list_head** %8, align 8
  %77 = call i32 @list_add(i32* %75, %struct.list_head* %76)
  store i32 0, i32* %18, align 4
  br label %78

78:                                               ; preds = %109, %73
  %79 = load i32, i32* %18, align 4
  %80 = load i32, i32* %20, align 4
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %82, label %112

82:                                               ; preds = %78
  %83 = load %struct.page*, %struct.page** %15, align 8
  %84 = getelementptr inbounds %struct.page, %struct.page* %83, i32 1
  store %struct.page* %84, %struct.page** %15, align 8
  %85 = load %struct.page**, %struct.page*** %14, align 8
  %86 = load i32, i32* %19, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %19, align 4
  %88 = zext i32 %86 to i64
  %89 = getelementptr inbounds %struct.page*, %struct.page** %85, i64 %88
  store %struct.page* %83, %struct.page** %89, align 8
  %90 = load i32, i32* %19, align 4
  %91 = load i32, i32* %21, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %108

93:                                               ; preds = %82
  %94 = load %struct.page**, %struct.page*** %14, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %19, align 4
  %97 = call i32 @ttm_set_pages_caching(%struct.page** %94, i32 %95, i32 %96)
  store i32 %97, i32* %16, align 4
  %98 = load i32, i32* %16, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %93
  %101 = load %struct.list_head*, %struct.list_head** %8, align 8
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %11, align 4
  %104 = load %struct.page**, %struct.page*** %14, align 8
  %105 = load i32, i32* %19, align 4
  %106 = call i32 @ttm_handle_caching_state_failure(%struct.list_head* %101, i32 %102, i32 %103, %struct.page** %104, i32 %105)
  br label %135

107:                                              ; preds = %93
  store i32 0, i32* %19, align 4
  br label %108

108:                                              ; preds = %107, %82
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %18, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %18, align 4
  br label %78

112:                                              ; preds = %78
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %17, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %17, align 4
  br label %40

116:                                              ; preds = %40
  %117 = load i32, i32* %19, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %134

119:                                              ; preds = %116
  %120 = load %struct.page**, %struct.page*** %14, align 8
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %19, align 4
  %123 = call i32 @ttm_set_pages_caching(%struct.page** %120, i32 %121, i32 %122)
  store i32 %123, i32* %16, align 4
  %124 = load i32, i32* %16, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %119
  %127 = load %struct.list_head*, %struct.list_head** %8, align 8
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* %11, align 4
  %130 = load %struct.page**, %struct.page*** %14, align 8
  %131 = load i32, i32* %19, align 4
  %132 = call i32 @ttm_handle_caching_state_failure(%struct.list_head* %127, i32 %128, i32 %129, %struct.page** %130, i32 %131)
  br label %133

133:                                              ; preds = %126, %119
  br label %134

134:                                              ; preds = %133, %116
  br label %135

135:                                              ; preds = %134, %100, %70
  %136 = load %struct.page**, %struct.page*** %14, align 8
  %137 = call i32 @kfree(%struct.page** %136)
  %138 = load i32, i32* %16, align 4
  store i32 %138, i32* %7, align 4
  br label %139

139:                                              ; preds = %135, %35
  %140 = load i32, i32* %7, align 4
  ret i32 %140
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.page** @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i32 @ttm_set_pages_caching(%struct.page**, i32, i32) #1

declare dso_local i32 @ttm_handle_caching_state_failure(%struct.list_head*, i32, i32, %struct.page**, i32) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

declare dso_local i32 @kfree(%struct.page**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
