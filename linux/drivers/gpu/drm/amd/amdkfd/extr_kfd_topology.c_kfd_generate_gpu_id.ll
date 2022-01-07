; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_topology.c_kfd_generate_gpu_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_topology.c_kfd_generate_gpu_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_dev = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.kfd_local_mem_info = type { i64, i64 }

@KFD_GPU_ID_HASH_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kfd_dev*)* @kfd_generate_gpu_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kfd_generate_gpu_id(%struct.kfd_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kfd_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [7 x i32], align 16
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.kfd_local_mem_info, align 8
  store %struct.kfd_dev* %0, %struct.kfd_dev** %3, align 8
  %9 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %10 = icmp ne %struct.kfd_dev* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %85

12:                                               ; preds = %1
  %13 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %14 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @amdgpu_amdkfd_get_local_mem_info(i32 %15, %struct.kfd_local_mem_info* %8)
  %17 = getelementptr inbounds %struct.kfd_local_mem_info, %struct.kfd_local_mem_info* %8, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.kfd_local_mem_info, %struct.kfd_local_mem_info* %8, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %18, %20
  store i64 %21, i64* %6, align 8
  %22 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %23 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 0
  store i32 %26, i32* %27, align 16
  %28 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %29 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %34 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = shl i32 %37, 16
  %39 = or i32 %32, %38
  %40 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 1
  store i32 %39, i32* %40, align 4
  %41 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %42 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = call i32 @pci_domain_nr(%struct.TYPE_4__* %45)
  %47 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 2
  store i32 %46, i32* %47, align 8
  %48 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %49 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 3
  store i32 %52, i32* %53, align 4
  %54 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %55 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 4
  store i32 %60, i32* %61, align 16
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @lower_32_bits(i64 %62)
  %64 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 5
  store i32 %63, i32* %64, align 4
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @upper_32_bits(i64 %65)
  %67 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 6
  store i32 %66, i32* %67, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %80, %12
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %69, 7
  br i1 %70, label %71, label %83

71:                                               ; preds = %68
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @KFD_GPU_ID_HASH_WIDTH, align 4
  %77 = call i32 @hash_32(i32 %75, i32 %76)
  %78 = load i32, i32* %4, align 4
  %79 = xor i32 %78, %77
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %71
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %68

83:                                               ; preds = %68
  %84 = load i32, i32* %4, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %83, %11
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @amdgpu_amdkfd_get_local_mem_info(i32, %struct.kfd_local_mem_info*) #1

declare dso_local i32 @pci_domain_nr(%struct.TYPE_4__*) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @hash_32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
