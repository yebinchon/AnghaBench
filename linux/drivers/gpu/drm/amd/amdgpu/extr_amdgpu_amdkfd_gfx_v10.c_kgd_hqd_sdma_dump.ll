; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v10.c_kgd_hqd_sdma_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v10.c_kgd_hqd_sdma_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgd_dev = type { i32 }
%struct.amdgpu_device = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"sdma dump engine id %d queue_id %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"sdma base addr %x\0A\00", align 1
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
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %22, i64 %23)
  %25 = load i64, i64* %13, align 8
  %26 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i64** @kmalloc(i32 672, i32 %27)
  %29 = bitcast i64** %28 to [2 x i64]*
  %30 = load [2 x i64]**, [2 x i64]*** %10, align 8
  store [2 x i64]* %29, [2 x i64]** %30, align 8
  %31 = load [2 x i64]**, [2 x i64]*** %10, align 8
  %32 = load [2 x i64]*, [2 x i64]** %31, align 8
  %33 = icmp eq [2 x i64]* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %5
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %100

37:                                               ; preds = %5
  %38 = load i64, i64* @mmSDMA0_RLC0_RB_CNTL, align 8
  store i64 %38, i64* %15, align 8
  br label %39

39:                                               ; preds = %48, %37
  %40 = load i64, i64* %15, align 8
  %41 = load i64, i64* @mmSDMA0_RLC0_DOORBELL, align 8
  %42 = icmp sle i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load i64, i64* %13, align 8
  %45 = load i64, i64* %15, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @DUMP_REG(i64 %46)
  br label %48

48:                                               ; preds = %43
  %49 = load i64, i64* %15, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %15, align 8
  br label %39

51:                                               ; preds = %39
  %52 = load i64, i64* @mmSDMA0_RLC0_STATUS, align 8
  store i64 %52, i64* %15, align 8
  br label %53

53:                                               ; preds = %62, %51
  %54 = load i64, i64* %15, align 8
  %55 = load i64, i64* @mmSDMA0_RLC0_CSA_ADDR_HI, align 8
  %56 = icmp sle i64 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load i64, i64* %13, align 8
  %59 = load i64, i64* %15, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @DUMP_REG(i64 %60)
  br label %62

62:                                               ; preds = %57
  %63 = load i64, i64* %15, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %15, align 8
  br label %53

65:                                               ; preds = %53
  %66 = load i64, i64* @mmSDMA0_RLC0_IB_SUB_REMAIN, align 8
  store i64 %66, i64* %15, align 8
  br label %67

67:                                               ; preds = %76, %65
  %68 = load i64, i64* %15, align 8
  %69 = load i64, i64* @mmSDMA0_RLC0_MINOR_PTR_UPDATE, align 8
  %70 = icmp sle i64 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %67
  %72 = load i64, i64* %13, align 8
  %73 = load i64, i64* %15, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @DUMP_REG(i64 %74)
  br label %76

76:                                               ; preds = %71
  %77 = load i64, i64* %15, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %15, align 8
  br label %67

79:                                               ; preds = %67
  %80 = load i64, i64* @mmSDMA0_RLC0_MIDCMD_DATA0, align 8
  store i64 %80, i64* %15, align 8
  br label %81

81:                                               ; preds = %90, %79
  %82 = load i64, i64* %15, align 8
  %83 = load i64, i64* @mmSDMA0_RLC0_MIDCMD_CNTL, align 8
  %84 = icmp sle i64 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %81
  %86 = load i64, i64* %13, align 8
  %87 = load i64, i64* %15, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @DUMP_REG(i64 %88)
  br label %90

90:                                               ; preds = %85
  %91 = load i64, i64* %15, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %15, align 8
  br label %81

93:                                               ; preds = %81
  %94 = load i64, i64* %14, align 8
  %95 = icmp ne i64 %94, 42
  %96 = zext i1 %95 to i32
  %97 = call i32 @WARN_ON_ONCE(i32 %96)
  %98 = load i64, i64* %14, align 8
  %99 = load i64*, i64** %11, align 8
  store i64 %98, i64* %99, align 8
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %93, %34
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local %struct.amdgpu_device* @get_amdgpu_device(%struct.kgd_dev*) #1

declare dso_local i64 @get_sdma_base_addr(%struct.amdgpu_device*, i64, i64) #1

declare dso_local i32 @pr_debug(i8*, i64, ...) #1

declare dso_local i64** @kmalloc(i32, i32) #1

declare dso_local i32 @DUMP_REG(i64) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
