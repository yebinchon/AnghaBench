; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v7.c_kgd_hqd_sdma_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v7.c_kgd_hqd_sdma_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgd_dev = type { i32 }
%struct.amdgpu_device = type { i32 }

@SDMA1_REGISTER_OFFSET = common dso_local global i64 0, align 8
@KFD_CIK_SDMA_QUEUE_OFFSET = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mmSDMA0_RLC0_RB_CNTL = common dso_local global i64 0, align 8
@mmSDMA0_RLC0_DOORBELL = common dso_local global i64 0, align 8
@mmSDMA0_RLC0_VIRTUAL_ADDR = common dso_local global i64 0, align 8
@mmSDMA0_RLC0_WATERMARK = common dso_local global i64 0, align 8
@HQD_N_REGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kgd_dev*, i64, i64, [2 x i64]**, i64*)* @kgd_hqd_sdma_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kgd_hqd_sdma_dump(%struct.kgd_dev* %0, i64 %1, i64 %2, [2 x i64]** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kgd_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [2 x i64]**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.amdgpu_device*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.kgd_dev* %0, %struct.kgd_dev** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store [2 x i64]** %3, [2 x i64]*** %10, align 8
  store i64* %4, i64** %11, align 8
  %16 = load %struct.kgd_dev*, %struct.kgd_dev** %7, align 8
  %17 = call %struct.amdgpu_device* @get_amdgpu_device(%struct.kgd_dev* %16)
  store %struct.amdgpu_device* %17, %struct.amdgpu_device** %12, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @SDMA1_REGISTER_OFFSET, align 8
  %20 = mul nsw i64 %18, %19
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @KFD_CIK_SDMA_QUEUE_OFFSET, align 8
  %23 = mul nsw i64 %21, %22
  %24 = add nsw i64 %20, %23
  store i64 %24, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i64** @kmalloc_array(i32 46, i32 8, i32 %25)
  %27 = bitcast i64** %26 to [2 x i64]*
  %28 = load [2 x i64]**, [2 x i64]*** %10, align 8
  store [2 x i64]* %27, [2 x i64]** %28, align 8
  %29 = load [2 x i64]**, [2 x i64]*** %10, align 8
  %30 = load [2 x i64]*, [2 x i64]** %29, align 8
  %31 = icmp eq [2 x i64]* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %5
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %70

35:                                               ; preds = %5
  %36 = load i64, i64* @mmSDMA0_RLC0_RB_CNTL, align 8
  store i64 %36, i64* %15, align 8
  br label %37

37:                                               ; preds = %46, %35
  %38 = load i64, i64* %15, align 8
  %39 = load i64, i64* @mmSDMA0_RLC0_DOORBELL, align 8
  %40 = icmp sle i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load i64, i64* %13, align 8
  %43 = load i64, i64* %15, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @DUMP_REG(i64 %44)
  br label %46

46:                                               ; preds = %41
  %47 = load i64, i64* %15, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %15, align 8
  br label %37

49:                                               ; preds = %37
  %50 = load i64, i64* @mmSDMA0_RLC0_VIRTUAL_ADDR, align 8
  store i64 %50, i64* %15, align 8
  br label %51

51:                                               ; preds = %60, %49
  %52 = load i64, i64* %15, align 8
  %53 = load i64, i64* @mmSDMA0_RLC0_WATERMARK, align 8
  %54 = icmp sle i64 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = load i64, i64* %13, align 8
  %57 = load i64, i64* %15, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @DUMP_REG(i64 %58)
  br label %60

60:                                               ; preds = %55
  %61 = load i64, i64* %15, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %15, align 8
  br label %51

63:                                               ; preds = %51
  %64 = load i64, i64* %14, align 8
  %65 = icmp ne i64 %64, 23
  %66 = zext i1 %65 to i32
  %67 = call i32 @WARN_ON_ONCE(i32 %66)
  %68 = load i64, i64* %14, align 8
  %69 = load i64*, i64** %11, align 8
  store i64 %68, i64* %69, align 8
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %63, %32
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local %struct.amdgpu_device* @get_amdgpu_device(%struct.kgd_dev*) #1

declare dso_local i64** @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @DUMP_REG(i64) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
