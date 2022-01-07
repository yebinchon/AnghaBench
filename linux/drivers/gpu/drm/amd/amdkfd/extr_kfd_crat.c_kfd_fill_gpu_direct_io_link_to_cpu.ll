; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_crat.c_kfd_fill_gpu_direct_io_link_to_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_crat.c_kfd_fill_gpu_direct_io_link_to_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.crat_subtype_iolink = type { i32, i64, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@CRAT_SUBTYPE_IOLINK_AFFINITY = common dso_local global i32 0, align 4
@CRAT_SUBTYPE_FLAGS_ENABLED = common dso_local global i32 0, align 4
@CRAT_IOLINK_FLAGS_BI_DIRECTIONAL = common dso_local global i32 0, align 4
@CRAT_IOLINK_TYPE_PCIEXPRESS = common dso_local global i32 0, align 4
@NUMA_NO_NODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.kfd_dev*, %struct.crat_subtype_iolink*, i32)* @kfd_fill_gpu_direct_io_link_to_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kfd_fill_gpu_direct_io_link_to_cpu(i32* %0, %struct.kfd_dev* %1, %struct.crat_subtype_iolink* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.kfd_dev*, align 8
  %8 = alloca %struct.crat_subtype_iolink*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.kfd_dev* %1, %struct.kfd_dev** %7, align 8
  store %struct.crat_subtype_iolink* %2, %struct.crat_subtype_iolink** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = sub i64 %12, 32
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %10, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %53

21:                                               ; preds = %4
  %22 = load %struct.crat_subtype_iolink*, %struct.crat_subtype_iolink** %8, align 8
  %23 = bitcast %struct.crat_subtype_iolink* %22 to i8*
  %24 = call i32 @memset(i8* %23, i32 0, i32 32)
  %25 = load i32, i32* @CRAT_SUBTYPE_IOLINK_AFFINITY, align 4
  %26 = load %struct.crat_subtype_iolink*, %struct.crat_subtype_iolink** %8, align 8
  %27 = getelementptr inbounds %struct.crat_subtype_iolink, %struct.crat_subtype_iolink* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 4
  %28 = load %struct.crat_subtype_iolink*, %struct.crat_subtype_iolink** %8, align 8
  %29 = getelementptr inbounds %struct.crat_subtype_iolink, %struct.crat_subtype_iolink* %28, i32 0, i32 0
  store i32 32, i32* %29, align 8
  %30 = load i32, i32* @CRAT_SUBTYPE_FLAGS_ENABLED, align 4
  %31 = load %struct.crat_subtype_iolink*, %struct.crat_subtype_iolink** %8, align 8
  %32 = getelementptr inbounds %struct.crat_subtype_iolink, %struct.crat_subtype_iolink* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.kfd_dev*, %struct.kfd_dev** %7, align 8
  %36 = call i64 @kfd_dev_is_large_bar(%struct.kfd_dev* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %21
  %39 = load i32, i32* @CRAT_IOLINK_FLAGS_BI_DIRECTIONAL, align 4
  %40 = load %struct.crat_subtype_iolink*, %struct.crat_subtype_iolink** %8, align 8
  %41 = getelementptr inbounds %struct.crat_subtype_iolink, %struct.crat_subtype_iolink* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %38, %21
  %45 = load i32, i32* @CRAT_IOLINK_TYPE_PCIEXPRESS, align 4
  %46 = load %struct.crat_subtype_iolink*, %struct.crat_subtype_iolink** %8, align 8
  %47 = getelementptr inbounds %struct.crat_subtype_iolink, %struct.crat_subtype_iolink* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.crat_subtype_iolink*, %struct.crat_subtype_iolink** %8, align 8
  %50 = getelementptr inbounds %struct.crat_subtype_iolink, %struct.crat_subtype_iolink* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.crat_subtype_iolink*, %struct.crat_subtype_iolink** %8, align 8
  %52 = getelementptr inbounds %struct.crat_subtype_iolink, %struct.crat_subtype_iolink* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %44, %18
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @kfd_dev_is_large_bar(%struct.kfd_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
