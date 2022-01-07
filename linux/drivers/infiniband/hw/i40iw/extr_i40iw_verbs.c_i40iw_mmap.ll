; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ucontext = type { i32 }
%struct.vm_area_struct = type { i32, i8*, i32, %struct.i40iw_ucontext* }
%struct.i40iw_ucontext = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@I40IW_DB_ADDR_OFFSET = common dso_local global i32 0, align 4
@I40IW_PUSH_OFFSET = common dso_local global i32 0, align 4
@I40IW_PF_FIRST_PUSH_PAGE_INDEX = common dso_local global i32 0, align 4
@I40IW_VF_DB_ADDR_OFFSET = common dso_local global i32 0, align 4
@I40IW_VF_PUSH_OFFSET = common dso_local global i32 0, align 4
@I40IW_VF_FIRST_PUSH_PAGE_INDEX = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_ucontext*, %struct.vm_area_struct*)* @i40iw_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_mmap(%struct.ib_ucontext* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_ucontext*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.i40iw_ucontext*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ib_ucontext* %0, %struct.ib_ucontext** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %9 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %10 = call %struct.i40iw_ucontext* @to_ucontext(%struct.ib_ucontext* %9)
  store %struct.i40iw_ucontext* %10, %struct.i40iw_ucontext** %6, align 8
  %11 = load %struct.i40iw_ucontext*, %struct.i40iw_ucontext** %6, align 8
  %12 = getelementptr inbounds %struct.i40iw_ucontext, %struct.i40iw_ucontext* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %2
  %19 = load i32, i32* @I40IW_DB_ADDR_OFFSET, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @I40IW_PUSH_OFFSET, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load i32, i32* @I40IW_PF_FIRST_PUSH_PAGE_INDEX, align 4
  %27 = sub nsw i32 %26, 1
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %29 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, %27
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %25, %18
  br label %48

33:                                               ; preds = %2
  %34 = load i32, i32* @I40IW_VF_DB_ADDR_OFFSET, align 4
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* @I40IW_VF_PUSH_OFFSET, align 4
  store i32 %35, i32* %8, align 4
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %37 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = load i32, i32* @I40IW_VF_FIRST_PUSH_PAGE_INDEX, align 4
  %42 = sub nsw i32 %41, 1
  %43 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %44 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %40, %33
  br label %48

48:                                               ; preds = %47, %32
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @PAGE_SHIFT, align 4
  %51 = ashr i32 %49, %50
  %52 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %53 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %57 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @PAGE_SHIFT, align 4
  %61 = ashr i32 %59, %60
  %62 = icmp eq i32 %58, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %48
  %64 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %65 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i8* @pgprot_noncached(i8* %66)
  %68 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %69 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load %struct.i40iw_ucontext*, %struct.i40iw_ucontext** %6, align 8
  %71 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %72 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %71, i32 0, i32 3
  store %struct.i40iw_ucontext* %70, %struct.i40iw_ucontext** %72, align 8
  br label %98

73:                                               ; preds = %48
  %74 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %75 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @PAGE_SHIFT, align 4
  %79 = ashr i32 %77, %78
  %80 = sub nsw i32 %76, %79
  %81 = srem i32 %80, 2
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %73
  %84 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %85 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = call i8* @pgprot_noncached(i8* %86)
  %88 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %89 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  br label %97

90:                                               ; preds = %73
  %91 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %92 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = call i8* @pgprot_writecombine(i8* %93)
  %95 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %96 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  br label %97

97:                                               ; preds = %90, %83
  br label %98

98:                                               ; preds = %97, %63
  %99 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %100 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %101 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %104 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.i40iw_ucontext*, %struct.i40iw_ucontext** %6, align 8
  %107 = getelementptr inbounds %struct.i40iw_ucontext, %struct.i40iw_ucontext* %106, i32 0, i32 0
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @pci_resource_start(i32 %112, i32 0)
  %114 = load i32, i32* @PAGE_SHIFT, align 4
  %115 = ashr i32 %113, %114
  %116 = add nsw i32 %105, %115
  %117 = load i32, i32* @PAGE_SIZE, align 4
  %118 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %119 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = call i64 @io_remap_pfn_range(%struct.vm_area_struct* %99, i32 %102, i32 %116, i32 %117, i8* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %98
  %124 = load i32, i32* @EAGAIN, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %3, align 4
  br label %127

126:                                              ; preds = %98
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %126, %123
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local %struct.i40iw_ucontext* @to_ucontext(%struct.ib_ucontext*) #1

declare dso_local i8* @pgprot_noncached(i8*) #1

declare dso_local i8* @pgprot_writecombine(i8*) #1

declare dso_local i64 @io_remap_pfn_range(%struct.vm_area_struct*, i32, i32, i32, i8*) #1

declare dso_local i32 @pci_resource_start(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
