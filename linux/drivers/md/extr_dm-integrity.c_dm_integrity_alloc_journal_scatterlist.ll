; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_dm_integrity_alloc_journal_scatterlist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_dm_integrity_alloc_journal_scatterlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }
%struct.dm_integrity_c = type { i32, i64 }
%struct.page_list = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@SECTOR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scatterlist** (%struct.dm_integrity_c*, %struct.page_list*)* @dm_integrity_alloc_journal_scatterlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scatterlist** @dm_integrity_alloc_journal_scatterlist(%struct.dm_integrity_c* %0, %struct.page_list* %1) #0 {
  %3 = alloca %struct.scatterlist**, align 8
  %4 = alloca %struct.dm_integrity_c*, align 8
  %5 = alloca %struct.page_list*, align 8
  %6 = alloca %struct.scatterlist**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.dm_integrity_c* %0, %struct.dm_integrity_c** %4, align 8
  store %struct.page_list* %1, %struct.page_list** %5, align 8
  %18 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %19 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = load i32, i32* @__GFP_ZERO, align 4
  %23 = or i32 %21, %22
  %24 = call i8* @kvmalloc_array(i32 %20, i32 8, i32 %23)
  %25 = bitcast i8* %24 to %struct.scatterlist**
  store %struct.scatterlist** %25, %struct.scatterlist*** %6, align 8
  %26 = load %struct.scatterlist**, %struct.scatterlist*** %6, align 8
  %27 = icmp ne %struct.scatterlist** %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  store %struct.scatterlist** null, %struct.scatterlist*** %3, align 8
  br label %122

29:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %117, %29
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %33 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ult i32 %31, %34
  br i1 %35, label %36, label %120

36:                                               ; preds = %30
  %37 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @page_list_location(%struct.dm_integrity_c* %37, i32 %38, i64 0, i32* %9, i32* %10)
  %40 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %43 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %44, 1
  %46 = call i32 @page_list_location(%struct.dm_integrity_c* %40, i32 %41, i64 %45, i32* %11, i32* %12)
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %9, align 4
  %49 = sub i32 %47, %48
  %50 = add i32 %49, 1
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i8* @kvmalloc_array(i32 %51, i32 4, i32 %52)
  %54 = bitcast i8* %53 to %struct.scatterlist*
  store %struct.scatterlist* %54, %struct.scatterlist** %8, align 8
  %55 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %56 = icmp ne %struct.scatterlist* %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %36
  %58 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %59 = load %struct.scatterlist**, %struct.scatterlist*** %6, align 8
  %60 = call i32 @dm_integrity_free_journal_scatterlist(%struct.dm_integrity_c* %58, %struct.scatterlist** %59)
  store %struct.scatterlist** null, %struct.scatterlist*** %3, align 8
  br label %122

61:                                               ; preds = %36
  %62 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @sg_init_table(%struct.scatterlist* %62, i32 %63)
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %14, align 4
  br label %66

66:                                               ; preds = %108, %61
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp ule i32 %67, %68
  br i1 %69, label %70, label %111

70:                                               ; preds = %66
  %71 = load %struct.page_list*, %struct.page_list** %5, align 8
  %72 = load i32, i32* %14, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.page_list, %struct.page_list* %71, i64 %73
  %75 = getelementptr inbounds %struct.page_list, %struct.page_list* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @lowmem_page_address(i32 %76)
  store i8* %77, i8** %15, align 8
  store i32 0, i32* %16, align 4
  %78 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %78, i32* %17, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %70
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %16, align 4
  br label %84

84:                                               ; preds = %82, %70
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* @SECTOR_SHIFT, align 4
  %91 = shl i32 1, %90
  %92 = add i32 %89, %91
  store i32 %92, i32* %17, align 4
  br label %93

93:                                               ; preds = %88, %84
  %94 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %9, align 4
  %97 = sub i32 %95, %96
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %94, i64 %98
  %100 = load i8*, i8** %15, align 8
  %101 = load i32, i32* %16, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* %16, align 4
  %106 = sub i32 %104, %105
  %107 = call i32 @sg_set_buf(%struct.scatterlist* %99, i8* %103, i32 %106)
  br label %108

108:                                              ; preds = %93
  %109 = load i32, i32* %14, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %14, align 4
  br label %66

111:                                              ; preds = %66
  %112 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %113 = load %struct.scatterlist**, %struct.scatterlist*** %6, align 8
  %114 = load i32, i32* %7, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.scatterlist*, %struct.scatterlist** %113, i64 %115
  store %struct.scatterlist* %112, %struct.scatterlist** %116, align 8
  br label %117

117:                                              ; preds = %111
  %118 = load i32, i32* %7, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %7, align 4
  br label %30

120:                                              ; preds = %30
  %121 = load %struct.scatterlist**, %struct.scatterlist*** %6, align 8
  store %struct.scatterlist** %121, %struct.scatterlist*** %3, align 8
  br label %122

122:                                              ; preds = %120, %57, %28
  %123 = load %struct.scatterlist**, %struct.scatterlist*** %3, align 8
  ret %struct.scatterlist** %123
}

declare dso_local i8* @kvmalloc_array(i32, i32, i32) #1

declare dso_local i32 @page_list_location(%struct.dm_integrity_c*, i32, i64, i32*, i32*) #1

declare dso_local i32 @dm_integrity_free_journal_scatterlist(%struct.dm_integrity_c*, %struct.scatterlist**) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i8* @lowmem_page_address(i32) #1

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
