; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v10.c_kgd_hqd_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v10.c_kgd_hqd_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgd_dev = type { i32 }
%struct.amdgpu_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GC = common dso_local global i32 0, align 4
@mmCP_MQD_BASE_ADDR = common dso_local global i32 0, align 4
@mmCP_HQD_PQ_WPTR_HI = common dso_local global i32 0, align 4
@HQD_N_REGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kgd_dev*, i64, i64, [2 x i64]**, i64*)* @kgd_hqd_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kgd_hqd_dump(%struct.kgd_dev* %0, i64 %1, i64 %2, [2 x i64]** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kgd_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [2 x i64]**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.amdgpu_device*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.kgd_dev* %0, %struct.kgd_dev** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store [2 x i64]** %3, [2 x i64]*** %10, align 8
  store i64* %4, i64** %11, align 8
  %15 = load %struct.kgd_dev*, %struct.kgd_dev** %7, align 8
  %16 = call %struct.amdgpu_device* @get_amdgpu_device(%struct.kgd_dev* %15)
  store %struct.amdgpu_device* %16, %struct.amdgpu_device** %12, align 8
  store i64 0, i64* %13, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i64** @kmalloc(i32 896, i32 %17)
  %19 = bitcast i64** %18 to [2 x i64]*
  %20 = load [2 x i64]**, [2 x i64]*** %10, align 8
  store [2 x i64]* %19, [2 x i64]** %20, align 8
  %21 = load [2 x i64]**, [2 x i64]*** %10, align 8
  %22 = load [2 x i64]*, [2 x i64]** %21, align 8
  %23 = icmp eq [2 x i64]* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %79

27:                                               ; preds = %5
  %28 = load %struct.kgd_dev*, %struct.kgd_dev** %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @acquire_queue(%struct.kgd_dev* %28, i64 %29, i64 %30)
  %32 = load i32, i32* @GC, align 4
  %33 = load i32, i32* @mmCP_MQD_BASE_ADDR, align 4
  %34 = call i64 @SOC15_REG_OFFSET(i32 %32, i32 0, i32 %33)
  store i64 %34, i64* %14, align 8
  br label %35

35:                                               ; preds = %67, %27
  %36 = load i64, i64* %14, align 8
  %37 = load i32, i32* @GC, align 4
  %38 = load i32, i32* @mmCP_HQD_PQ_WPTR_HI, align 4
  %39 = call i64 @SOC15_REG_OFFSET(i32 %37, i32 0, i32 %38)
  %40 = icmp sle i64 %36, %39
  br i1 %40, label %41, label %70

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %13, align 8
  %44 = icmp sge i64 %43, 56
  %45 = zext i1 %44 to i32
  %46 = call i32 @WARN_ON_ONCE(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %66

49:                                               ; preds = %42
  %50 = load i64, i64* %14, align 8
  %51 = shl i64 %50, 2
  %52 = load [2 x i64]**, [2 x i64]*** %10, align 8
  %53 = load [2 x i64]*, [2 x i64]** %52, align 8
  %54 = load i64, i64* %13, align 8
  %55 = getelementptr inbounds [2 x i64], [2 x i64]* %53, i64 %54
  %56 = getelementptr inbounds [2 x i64], [2 x i64]* %55, i64 0, i64 0
  store i64 %51, i64* %56, align 8
  %57 = load i64, i64* %14, align 8
  %58 = call i32 (i64, ...) bitcast (i32 (...)* @RREG32 to i32 (i64, ...)*)(i64 %57)
  %59 = sext i32 %58 to i64
  %60 = load [2 x i64]**, [2 x i64]*** %10, align 8
  %61 = load [2 x i64]*, [2 x i64]** %60, align 8
  %62 = load i64, i64* %13, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %13, align 8
  %64 = getelementptr inbounds [2 x i64], [2 x i64]* %61, i64 %62
  %65 = getelementptr inbounds [2 x i64], [2 x i64]* %64, i64 0, i64 1
  store i64 %59, i64* %65, align 8
  br label %66

66:                                               ; preds = %49, %48
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %14, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %14, align 8
  br label %35

70:                                               ; preds = %35
  %71 = load %struct.kgd_dev*, %struct.kgd_dev** %7, align 8
  %72 = call i32 @release_queue(%struct.kgd_dev* %71)
  %73 = load i64, i64* %13, align 8
  %74 = icmp ne i64 %73, 56
  %75 = zext i1 %74 to i32
  %76 = call i32 @WARN_ON_ONCE(i32 %75)
  %77 = load i64, i64* %13, align 8
  %78 = load i64*, i64** %11, align 8
  store i64 %77, i64* %78, align 8
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %70, %24
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local %struct.amdgpu_device* @get_amdgpu_device(%struct.kgd_dev*) #1

declare dso_local i64** @kmalloc(i32, i32) #1

declare dso_local i32 @acquire_queue(%struct.kgd_dev*, i64, i64) #1

declare dso_local i64 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @RREG32(...) #1

declare dso_local i32 @release_queue(%struct.kgd_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
