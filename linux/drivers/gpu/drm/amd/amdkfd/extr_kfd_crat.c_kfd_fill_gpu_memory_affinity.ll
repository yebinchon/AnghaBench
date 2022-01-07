; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_crat.c_kfd_fill_gpu_memory_affinity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_crat.c_kfd_fill_gpu_memory_affinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_dev = type { i32 }
%struct.crat_subtype_memory = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.kfd_local_mem_info = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@CRAT_SUBTYPE_MEMORY_AFFINITY = common dso_local global i32 0, align 4
@CRAT_SUBTYPE_FLAGS_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Fill gpu memory affinity - type 0x%x size 0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.kfd_dev*, i32, i32, %struct.crat_subtype_memory*, i32, %struct.kfd_local_mem_info*)* @kfd_fill_gpu_memory_affinity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kfd_fill_gpu_memory_affinity(i32* %0, %struct.kfd_dev* %1, i32 %2, i32 %3, %struct.crat_subtype_memory* %4, i32 %5, %struct.kfd_local_mem_info* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.kfd_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.crat_subtype_memory*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.kfd_local_mem_info*, align 8
  store i32* %0, i32** %9, align 8
  store %struct.kfd_dev* %1, %struct.kfd_dev** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.crat_subtype_memory* %4, %struct.crat_subtype_memory** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.kfd_local_mem_info* %6, %struct.kfd_local_mem_info** %15, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = sub i64 %18, 32
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %16, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %7
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  br label %63

27:                                               ; preds = %7
  %28 = load %struct.crat_subtype_memory*, %struct.crat_subtype_memory** %13, align 8
  %29 = bitcast %struct.crat_subtype_memory* %28 to i8*
  %30 = call i32 @memset(i8* %29, i32 0, i32 32)
  %31 = load i32, i32* @CRAT_SUBTYPE_MEMORY_AFFINITY, align 4
  %32 = load %struct.crat_subtype_memory*, %struct.crat_subtype_memory** %13, align 8
  %33 = getelementptr inbounds %struct.crat_subtype_memory, %struct.crat_subtype_memory* %32, i32 0, i32 7
  store i32 %31, i32* %33, align 4
  %34 = load %struct.crat_subtype_memory*, %struct.crat_subtype_memory** %13, align 8
  %35 = getelementptr inbounds %struct.crat_subtype_memory, %struct.crat_subtype_memory* %34, i32 0, i32 0
  store i32 32, i32* %35, align 4
  %36 = load i32, i32* @CRAT_SUBTYPE_FLAGS_ENABLED, align 4
  %37 = load %struct.crat_subtype_memory*, %struct.crat_subtype_memory** %13, align 8
  %38 = getelementptr inbounds %struct.crat_subtype_memory, %struct.crat_subtype_memory* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load %struct.crat_subtype_memory*, %struct.crat_subtype_memory** %13, align 8
  %43 = getelementptr inbounds %struct.crat_subtype_memory, %struct.crat_subtype_memory* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @lower_32_bits(i32 %47)
  %49 = load %struct.crat_subtype_memory*, %struct.crat_subtype_memory** %13, align 8
  %50 = getelementptr inbounds %struct.crat_subtype_memory, %struct.crat_subtype_memory* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @upper_32_bits(i32 %51)
  %53 = load %struct.crat_subtype_memory*, %struct.crat_subtype_memory** %13, align 8
  %54 = getelementptr inbounds %struct.crat_subtype_memory, %struct.crat_subtype_memory* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.kfd_local_mem_info*, %struct.kfd_local_mem_info** %15, align 8
  %56 = getelementptr inbounds %struct.kfd_local_mem_info, %struct.kfd_local_mem_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.crat_subtype_memory*, %struct.crat_subtype_memory** %13, align 8
  %59 = getelementptr inbounds %struct.crat_subtype_memory, %struct.crat_subtype_memory* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.crat_subtype_memory*, %struct.crat_subtype_memory** %13, align 8
  %62 = getelementptr inbounds %struct.crat_subtype_memory, %struct.crat_subtype_memory* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  store i32 0, i32* %8, align 4
  br label %63

63:                                               ; preds = %27, %24
  %64 = load i32, i32* %8, align 4
  ret i32 %64
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
