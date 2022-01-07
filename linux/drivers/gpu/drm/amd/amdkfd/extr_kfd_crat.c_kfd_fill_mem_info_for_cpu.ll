; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_crat.c_kfd_fill_mem_info_for_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_crat.c_kfd_fill_mem_info_for_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crat_subtype_memory = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@CRAT_SUBTYPE_MEMORY_AFFINITY = common dso_local global i32 0, align 4
@CRAT_SUBTYPE_FLAGS_ENABLED = common dso_local global i32 0, align 4
@MAX_NR_ZONES = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, %struct.crat_subtype_memory*)* @kfd_fill_mem_info_for_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kfd_fill_mem_info_for_cpu(i32 %0, i32* %1, i32 %2, %struct.crat_subtype_memory* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.crat_subtype_memory*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.crat_subtype_memory* %3, %struct.crat_subtype_memory** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = sub i64 %15, 24
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %13, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %71

24:                                               ; preds = %4
  %25 = load %struct.crat_subtype_memory*, %struct.crat_subtype_memory** %9, align 8
  %26 = call i32 @memset(%struct.crat_subtype_memory* %25, i32 0, i32 24)
  %27 = load i32, i32* @CRAT_SUBTYPE_MEMORY_AFFINITY, align 4
  %28 = load %struct.crat_subtype_memory*, %struct.crat_subtype_memory** %9, align 8
  %29 = getelementptr inbounds %struct.crat_subtype_memory, %struct.crat_subtype_memory* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 4
  %30 = load %struct.crat_subtype_memory*, %struct.crat_subtype_memory** %9, align 8
  %31 = getelementptr inbounds %struct.crat_subtype_memory, %struct.crat_subtype_memory* %30, i32 0, i32 0
  store i32 24, i32* %31, align 4
  %32 = load i32, i32* @CRAT_SUBTYPE_FLAGS_ENABLED, align 4
  %33 = load %struct.crat_subtype_memory*, %struct.crat_subtype_memory** %9, align 8
  %34 = getelementptr inbounds %struct.crat_subtype_memory, %struct.crat_subtype_memory* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call %struct.TYPE_3__* @NODE_DATA(i32 %35)
  store %struct.TYPE_3__* %36, %struct.TYPE_3__** %11, align 8
  store i32 0, i32* %12, align 4
  br label %37

37:                                               ; preds = %53, %24
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @MAX_NR_ZONES, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %37
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = call i64 @zone_managed_pages(i32* %47)
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %41
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %12, align 4
  br label %37

56:                                               ; preds = %37
  %57 = load i32, i32* @PAGE_SHIFT, align 4
  %58 = load i32, i32* %10, align 4
  %59 = shl i32 %58, %57
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @lower_32_bits(i32 %60)
  %62 = load %struct.crat_subtype_memory*, %struct.crat_subtype_memory** %9, align 8
  %63 = getelementptr inbounds %struct.crat_subtype_memory, %struct.crat_subtype_memory* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @upper_32_bits(i32 %64)
  %66 = load %struct.crat_subtype_memory*, %struct.crat_subtype_memory** %9, align 8
  %67 = getelementptr inbounds %struct.crat_subtype_memory, %struct.crat_subtype_memory* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.crat_subtype_memory*, %struct.crat_subtype_memory** %9, align 8
  %70 = getelementptr inbounds %struct.crat_subtype_memory, %struct.crat_subtype_memory* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %56, %21
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @memset(%struct.crat_subtype_memory*, i32, i32) #1

declare dso_local %struct.TYPE_3__* @NODE_DATA(i32) #1

declare dso_local i64 @zone_managed_pages(i32*) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
