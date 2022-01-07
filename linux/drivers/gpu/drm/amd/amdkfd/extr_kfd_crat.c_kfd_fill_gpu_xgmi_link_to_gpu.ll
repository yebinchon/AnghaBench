; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_crat.c_kfd_fill_gpu_xgmi_link_to_gpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_crat.c_kfd_fill_gpu_xgmi_link_to_gpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_dev = type { i32 }
%struct.crat_subtype_iolink = type { i32, i32, i32, i8*, i8*, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@CRAT_SUBTYPE_IOLINK_AFFINITY = common dso_local global i32 0, align 4
@CRAT_SUBTYPE_FLAGS_ENABLED = common dso_local global i32 0, align 4
@CRAT_IOLINK_FLAGS_BI_DIRECTIONAL = common dso_local global i32 0, align 4
@CRAT_IOLINK_TYPE_XGMI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.kfd_dev*, %struct.kfd_dev*, %struct.crat_subtype_iolink*, i8*, i8*)* @kfd_fill_gpu_xgmi_link_to_gpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kfd_fill_gpu_xgmi_link_to_gpu(i32* %0, %struct.kfd_dev* %1, %struct.kfd_dev* %2, %struct.crat_subtype_iolink* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.kfd_dev*, align 8
  %10 = alloca %struct.kfd_dev*, align 8
  %11 = alloca %struct.crat_subtype_iolink*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.kfd_dev* %1, %struct.kfd_dev** %9, align 8
  store %struct.kfd_dev* %2, %struct.kfd_dev** %10, align 8
  store %struct.crat_subtype_iolink* %3, %struct.crat_subtype_iolink** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = sub i64 %16, 40
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %14, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %6
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %59

25:                                               ; preds = %6
  %26 = load %struct.crat_subtype_iolink*, %struct.crat_subtype_iolink** %11, align 8
  %27 = bitcast %struct.crat_subtype_iolink* %26 to i8*
  %28 = call i32 @memset(i8* %27, i32 0, i32 40)
  %29 = load i32, i32* @CRAT_SUBTYPE_IOLINK_AFFINITY, align 4
  %30 = load %struct.crat_subtype_iolink*, %struct.crat_subtype_iolink** %11, align 8
  %31 = getelementptr inbounds %struct.crat_subtype_iolink, %struct.crat_subtype_iolink* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 4
  %32 = load %struct.crat_subtype_iolink*, %struct.crat_subtype_iolink** %11, align 8
  %33 = getelementptr inbounds %struct.crat_subtype_iolink, %struct.crat_subtype_iolink* %32, i32 0, i32 0
  store i32 40, i32* %33, align 8
  %34 = load i32, i32* @CRAT_SUBTYPE_FLAGS_ENABLED, align 4
  %35 = load i32, i32* @CRAT_IOLINK_FLAGS_BI_DIRECTIONAL, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.crat_subtype_iolink*, %struct.crat_subtype_iolink** %11, align 8
  %38 = getelementptr inbounds %struct.crat_subtype_iolink, %struct.crat_subtype_iolink* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* @CRAT_IOLINK_TYPE_XGMI, align 4
  %42 = load %struct.crat_subtype_iolink*, %struct.crat_subtype_iolink** %11, align 8
  %43 = getelementptr inbounds %struct.crat_subtype_iolink, %struct.crat_subtype_iolink* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = load %struct.crat_subtype_iolink*, %struct.crat_subtype_iolink** %11, align 8
  %46 = getelementptr inbounds %struct.crat_subtype_iolink, %struct.crat_subtype_iolink* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = load %struct.crat_subtype_iolink*, %struct.crat_subtype_iolink** %11, align 8
  %49 = getelementptr inbounds %struct.crat_subtype_iolink, %struct.crat_subtype_iolink* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = load %struct.kfd_dev*, %struct.kfd_dev** %9, align 8
  %51 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.kfd_dev*, %struct.kfd_dev** %10, align 8
  %54 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @amdgpu_amdkfd_get_xgmi_hops_count(i32 %52, i32 %55)
  %57 = load %struct.crat_subtype_iolink*, %struct.crat_subtype_iolink** %11, align 8
  %58 = getelementptr inbounds %struct.crat_subtype_iolink, %struct.crat_subtype_iolink* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %25, %22
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @amdgpu_amdkfd_get_xgmi_hops_count(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
