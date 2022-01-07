; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_verbs.c_siw_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_verbs.c_siw_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ucontext = type { i32 }
%struct.vm_area_struct = type { i64, i32, i32 }
%struct.siw_ucontext = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.siw_uobj = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"siw: mmap not page aligned\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"mmap lookup failed: %lu, %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"remap_vmalloc_range failed: %lu, %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @siw_mmap(%struct.ib_ucontext* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.ib_ucontext*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.siw_ucontext*, align 8
  %6 = alloca %struct.siw_uobj*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ib_ucontext* %0, %struct.ib_ucontext** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %10 = load %struct.ib_ucontext*, %struct.ib_ucontext** %3, align 8
  %11 = call %struct.siw_ucontext* @to_siw_ctx(%struct.ib_ucontext* %10)
  store %struct.siw_ucontext* %11, %struct.siw_ucontext** %5, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %17, %20
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %9, align 4
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %25 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @PAGE_SIZE, align 4
  %28 = sub nsw i32 %27, 1
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %61

33:                                               ; preds = %2
  %34 = load %struct.siw_ucontext*, %struct.siw_ucontext** %5, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call %struct.siw_uobj* @siw_get_uobj(%struct.siw_ucontext* %34, i64 %35, i32 %36)
  store %struct.siw_uobj* %37, %struct.siw_uobj** %6, align 8
  %38 = load %struct.siw_uobj*, %struct.siw_uobj** %6, align 8
  %39 = icmp ne %struct.siw_uobj* %38, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %33
  %41 = load %struct.siw_ucontext*, %struct.siw_ucontext** %5, align 8
  %42 = getelementptr inbounds %struct.siw_ucontext, %struct.siw_ucontext* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @siw_dbg(i32* %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %45, i32 %46)
  br label %61

48:                                               ; preds = %33
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %50 = load %struct.siw_uobj*, %struct.siw_uobj** %6, align 8
  %51 = getelementptr inbounds %struct.siw_uobj, %struct.siw_uobj* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @remap_vmalloc_range(%struct.vm_area_struct* %49, i32 %52, i32 0)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load i64, i64* %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %48
  br label %61

61:                                               ; preds = %60, %40, %31
  %62 = load i32, i32* %9, align 4
  ret i32 %62
}

declare dso_local %struct.siw_ucontext* @to_siw_ctx(%struct.ib_ucontext*) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local %struct.siw_uobj* @siw_get_uobj(%struct.siw_ucontext*, i64, i32) #1

declare dso_local i32 @siw_dbg(i32*, i8*, i64, i32) #1

declare dso_local i32 @remap_vmalloc_range(%struct.vm_area_struct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
