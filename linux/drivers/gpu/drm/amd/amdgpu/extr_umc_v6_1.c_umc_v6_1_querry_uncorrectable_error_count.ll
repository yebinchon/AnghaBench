; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_umc_v6_1.c_umc_v6_1_querry_uncorrectable_error_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_umc_v6_1.c_umc_v6_1_querry_uncorrectable_error_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@UMC = common dso_local global i32 0, align 4
@mmMCA_UMC_UMC0_MCUMC_STATUST0 = common dso_local global i32 0, align 4
@MCA_UMC_UMC0_MCUMC_STATUST0 = common dso_local global i32 0, align 4
@Val = common dso_local global i32 0, align 4
@Deferred = common dso_local global i32 0, align 4
@UECC = common dso_local global i32 0, align 4
@PCC = common dso_local global i32 0, align 4
@UC = common dso_local global i32 0, align 4
@TCC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i64, i64*)* @umc_v6_1_querry_uncorrectable_error_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umc_v6_1_querry_uncorrectable_error_count(%struct.amdgpu_device* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load i32, i32* @UMC, align 4
  %10 = load i32, i32* @mmMCA_UMC_UMC0_MCUMC_STATUST0, align 4
  %11 = call i64 @SOC15_REG_OFFSET(i32 %9, i32 0, i32 %10)
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* %5, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @RREG64_UMC(i64 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @MCA_UMC_UMC0_MCUMC_STATUST0, align 4
  %18 = load i32, i32* @Val, align 4
  %19 = call i32 @REG_GET_FIELD(i32 %16, i32 %17, i32 %18)
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %55

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @MCA_UMC_UMC0_MCUMC_STATUST0, align 4
  %24 = load i32, i32* @Deferred, align 4
  %25 = call i32 @REG_GET_FIELD(i32 %22, i32 %23, i32 %24)
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %51, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @MCA_UMC_UMC0_MCUMC_STATUST0, align 4
  %30 = load i32, i32* @UECC, align 4
  %31 = call i32 @REG_GET_FIELD(i32 %28, i32 %29, i32 %30)
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %51, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @MCA_UMC_UMC0_MCUMC_STATUST0, align 4
  %36 = load i32, i32* @PCC, align 4
  %37 = call i32 @REG_GET_FIELD(i32 %34, i32 %35, i32 %36)
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %51, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @MCA_UMC_UMC0_MCUMC_STATUST0, align 4
  %42 = load i32, i32* @UC, align 4
  %43 = call i32 @REG_GET_FIELD(i32 %40, i32 %41, i32 %42)
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @MCA_UMC_UMC0_MCUMC_STATUST0, align 4
  %48 = load i32, i32* @TCC, align 4
  %49 = call i32 @REG_GET_FIELD(i32 %46, i32 %47, i32 %48)
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %55

51:                                               ; preds = %45, %39, %33, %27, %21
  %52 = load i64*, i64** %6, align 8
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %52, align 8
  br label %55

55:                                               ; preds = %51, %45, %3
  ret void
}

declare dso_local i64 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @RREG64_UMC(i64) #1

declare dso_local i32 @REG_GET_FIELD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
