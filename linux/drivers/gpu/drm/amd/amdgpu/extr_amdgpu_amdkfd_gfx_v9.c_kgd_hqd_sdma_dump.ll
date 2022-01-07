; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v9.c_kgd_hqd_sdma_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v9.c_kgd_hqd_sdma_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgd_dev = type { i32 }
%struct.amdgpu_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mmSDMA0_RLC0_RB_CNTL = common dso_local global i64 0, align 8
@mmSDMA0_RLC0_DOORBELL = common dso_local global i64 0, align 8
@mmSDMA0_RLC0_STATUS = common dso_local global i64 0, align 8
@mmSDMA0_RLC0_CSA_ADDR_HI = common dso_local global i64 0, align 8
@mmSDMA0_RLC0_IB_SUB_REMAIN = common dso_local global i64 0, align 8
@mmSDMA0_RLC0_MINOR_PTR_UPDATE = common dso_local global i64 0, align 8
@mmSDMA0_RLC0_MIDCMD_DATA0 = common dso_local global i64 0, align 8
@mmSDMA0_RLC0_MIDCMD_CNTL = common dso_local global i64 0, align 8
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
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %9, align 8
  %21 = call i64 @get_sdma_base_addr(%struct.amdgpu_device* %18, i64 %19, i64 %20)
  store i64 %21, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i64** @kmalloc_array(i32 84, i32 8, i32 %22)
  %24 = bitcast i64** %23 to [2 x i64]*
  %25 = load [2 x i64]**, [2 x i64]*** %10, align 8
  store [2 x i64]* %24, [2 x i64]** %25, align 8
  %26 = load [2 x i64]**, [2 x i64]*** %10, align 8
  %27 = load [2 x i64]*, [2 x i64]** %26, align 8
  %28 = icmp eq [2 x i64]* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %5
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %95

32:                                               ; preds = %5
  %33 = load i64, i64* @mmSDMA0_RLC0_RB_CNTL, align 8
  store i64 %33, i64* %15, align 8
  br label %34

34:                                               ; preds = %43, %32
  %35 = load i64, i64* %15, align 8
  %36 = load i64, i64* @mmSDMA0_RLC0_DOORBELL, align 8
  %37 = icmp sle i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load i64, i64* %13, align 8
  %40 = load i64, i64* %15, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @DUMP_REG(i64 %41)
  br label %43

43:                                               ; preds = %38
  %44 = load i64, i64* %15, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %15, align 8
  br label %34

46:                                               ; preds = %34
  %47 = load i64, i64* @mmSDMA0_RLC0_STATUS, align 8
  store i64 %47, i64* %15, align 8
  br label %48

48:                                               ; preds = %57, %46
  %49 = load i64, i64* %15, align 8
  %50 = load i64, i64* @mmSDMA0_RLC0_CSA_ADDR_HI, align 8
  %51 = icmp sle i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = load i64, i64* %13, align 8
  %54 = load i64, i64* %15, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @DUMP_REG(i64 %55)
  br label %57

57:                                               ; preds = %52
  %58 = load i64, i64* %15, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %15, align 8
  br label %48

60:                                               ; preds = %48
  %61 = load i64, i64* @mmSDMA0_RLC0_IB_SUB_REMAIN, align 8
  store i64 %61, i64* %15, align 8
  br label %62

62:                                               ; preds = %71, %60
  %63 = load i64, i64* %15, align 8
  %64 = load i64, i64* @mmSDMA0_RLC0_MINOR_PTR_UPDATE, align 8
  %65 = icmp sle i64 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = load i64, i64* %13, align 8
  %68 = load i64, i64* %15, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @DUMP_REG(i64 %69)
  br label %71

71:                                               ; preds = %66
  %72 = load i64, i64* %15, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %15, align 8
  br label %62

74:                                               ; preds = %62
  %75 = load i64, i64* @mmSDMA0_RLC0_MIDCMD_DATA0, align 8
  store i64 %75, i64* %15, align 8
  br label %76

76:                                               ; preds = %85, %74
  %77 = load i64, i64* %15, align 8
  %78 = load i64, i64* @mmSDMA0_RLC0_MIDCMD_CNTL, align 8
  %79 = icmp sle i64 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %76
  %81 = load i64, i64* %13, align 8
  %82 = load i64, i64* %15, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @DUMP_REG(i64 %83)
  br label %85

85:                                               ; preds = %80
  %86 = load i64, i64* %15, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %15, align 8
  br label %76

88:                                               ; preds = %76
  %89 = load i64, i64* %14, align 8
  %90 = icmp ne i64 %89, 42
  %91 = zext i1 %90 to i32
  %92 = call i32 @WARN_ON_ONCE(i32 %91)
  %93 = load i64, i64* %14, align 8
  %94 = load i64*, i64** %11, align 8
  store i64 %93, i64* %94, align 8
  store i32 0, i32* %6, align 4
  br label %95

95:                                               ; preds = %88, %29
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local %struct.amdgpu_device* @get_amdgpu_device(%struct.kgd_dev*) #1

declare dso_local i64 @get_sdma_base_addr(%struct.amdgpu_device*, i64, i64) #1

declare dso_local i64** @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @DUMP_REG(i64) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
