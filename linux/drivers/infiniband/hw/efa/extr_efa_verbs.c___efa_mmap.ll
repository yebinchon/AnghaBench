; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c___efa_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c___efa_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efa_dev = type { i32 }
%struct.efa_ucontext = type { i32 }
%struct.vm_area_struct = type { i64, i64, i32 }
%struct.efa_mmap_entry = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"key[%#llx] does not have valid entry\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Mapping address[%#llx], length[%#llx], mmap_flag[%d]\0A\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [66 x i8] c"Couldn't mmap address[%#llx] length[%#llx] mmap_flag[%d] err[%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efa_dev*, %struct.efa_ucontext*, %struct.vm_area_struct*, i32, i32)* @__efa_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__efa_mmap(%struct.efa_dev* %0, %struct.efa_ucontext* %1, %struct.vm_area_struct* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.efa_dev*, align 8
  %8 = alloca %struct.efa_ucontext*, align 8
  %9 = alloca %struct.vm_area_struct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.efa_mmap_entry*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.efa_dev* %0, %struct.efa_dev** %7, align 8
  store %struct.efa_ucontext* %1, %struct.efa_ucontext** %8, align 8
  store %struct.vm_area_struct* %2, %struct.vm_area_struct** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.efa_dev*, %struct.efa_dev** %7, align 8
  %17 = load %struct.efa_ucontext*, %struct.efa_ucontext** %8, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %11, align 4
  %20 = call %struct.efa_mmap_entry* @mmap_entry_get(%struct.efa_dev* %16, %struct.efa_ucontext* %17, i32 %18, i32 %19)
  store %struct.efa_mmap_entry* %20, %struct.efa_mmap_entry** %12, align 8
  %21 = load %struct.efa_mmap_entry*, %struct.efa_mmap_entry** %12, align 8
  %22 = icmp ne %struct.efa_mmap_entry* %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %5
  %24 = load %struct.efa_dev*, %struct.efa_dev** %7, align 8
  %25 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %10, align 4
  %27 = call i32 (i32*, i8*, i32, ...) @ibdev_dbg(i32* %25, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %118

30:                                               ; preds = %5
  %31 = load %struct.efa_dev*, %struct.efa_dev** %7, align 8
  %32 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %31, i32 0, i32 0
  %33 = load %struct.efa_mmap_entry*, %struct.efa_mmap_entry** %12, align 8
  %34 = getelementptr inbounds %struct.efa_mmap_entry, %struct.efa_mmap_entry* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.efa_mmap_entry*, %struct.efa_mmap_entry** %12, align 8
  %38 = getelementptr inbounds %struct.efa_mmap_entry, %struct.efa_mmap_entry* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i32*, i8*, i32, ...) @ibdev_dbg(i32* %32, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %36, i32 %39)
  %41 = load %struct.efa_mmap_entry*, %struct.efa_mmap_entry** %12, align 8
  %42 = getelementptr inbounds %struct.efa_mmap_entry, %struct.efa_mmap_entry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @PAGE_SHIFT, align 4
  %45 = ashr i32 %43, %44
  store i32 %45, i32* %14, align 4
  %46 = load %struct.efa_mmap_entry*, %struct.efa_mmap_entry** %12, align 8
  %47 = getelementptr inbounds %struct.efa_mmap_entry, %struct.efa_mmap_entry* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %98 [
    i32 129, label %49
    i32 128, label %60
    i32 130, label %71
  ]

49:                                               ; preds = %30
  %50 = load %struct.efa_ucontext*, %struct.efa_ucontext** %8, align 8
  %51 = getelementptr inbounds %struct.efa_ucontext, %struct.efa_ucontext* %50, i32 0, i32 0
  %52 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %56 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @pgprot_noncached(i32 %57)
  %59 = call i32 @rdma_user_mmap_io(i32* %51, %struct.vm_area_struct* %52, i32 %53, i32 %54, i32 %58)
  store i32 %59, i32* %15, align 4
  br label %101

60:                                               ; preds = %30
  %61 = load %struct.efa_ucontext*, %struct.efa_ucontext** %8, align 8
  %62 = getelementptr inbounds %struct.efa_ucontext, %struct.efa_ucontext* %61, i32 0, i32 0
  %63 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %67 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @pgprot_writecombine(i32 %68)
  %70 = call i32 @rdma_user_mmap_io(i32* %62, %struct.vm_area_struct* %63, i32 %64, i32 %65, i32 %69)
  store i32 %70, i32* %15, align 4
  br label %101

71:                                               ; preds = %30
  %72 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %73 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %13, align 8
  br label %75

75:                                               ; preds = %91, %71
  %76 = load i64, i64* %13, align 8
  %77 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %78 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ult i64 %76, %79
  br i1 %80, label %81, label %97

81:                                               ; preds = %75
  %82 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %83 = load i64, i64* %13, align 8
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @pfn_to_page(i32 %84)
  %86 = call i32 @vm_insert_page(%struct.vm_area_struct* %82, i64 %83, i32 %85)
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %15, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  br label %97

90:                                               ; preds = %81
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* @PAGE_SIZE, align 8
  %93 = load i64, i64* %13, align 8
  %94 = add i64 %93, %92
  store i64 %94, i64* %13, align 8
  %95 = load i32, i32* %14, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %14, align 4
  br label %75

97:                                               ; preds = %89, %75
  br label %101

98:                                               ; preds = %30
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %15, align 4
  br label %101

101:                                              ; preds = %98, %97, %60, %49
  %102 = load i32, i32* %15, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %101
  %105 = load %struct.efa_dev*, %struct.efa_dev** %7, align 8
  %106 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %105, i32 0, i32 0
  %107 = load %struct.efa_mmap_entry*, %struct.efa_mmap_entry** %12, align 8
  %108 = getelementptr inbounds %struct.efa_mmap_entry, %struct.efa_mmap_entry* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load %struct.efa_mmap_entry*, %struct.efa_mmap_entry** %12, align 8
  %112 = getelementptr inbounds %struct.efa_mmap_entry, %struct.efa_mmap_entry* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %15, align 4
  %115 = call i32 (i32*, i8*, i32, ...) @ibdev_dbg(i32* %106, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 %109, i32 %110, i32 %113, i32 %114)
  %116 = load i32, i32* %15, align 4
  store i32 %116, i32* %6, align 4
  br label %118

117:                                              ; preds = %101
  store i32 0, i32* %6, align 4
  br label %118

118:                                              ; preds = %117, %104, %23
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

declare dso_local %struct.efa_mmap_entry* @mmap_entry_get(%struct.efa_dev*, %struct.efa_ucontext*, i32, i32) #1

declare dso_local i32 @ibdev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @rdma_user_mmap_io(i32*, %struct.vm_area_struct*, i32, i32, i32) #1

declare dso_local i32 @pgprot_noncached(i32) #1

declare dso_local i32 @pgprot_writecombine(i32) #1

declare dso_local i32 @vm_insert_page(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @pfn_to_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
