; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_umc_v6_1.c_umc_v6_1_query_error_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_umc_v6_1.c_umc_v6_1_query_error_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.ras_err_data = type { i32*, i64 }

@UMC = common dso_local global i32 0, align 4
@mmMCA_UMC_UMC0_MCUMC_STATUST0 = common dso_local global i32 0, align 4
@MCA_UMC_UMC0_MCUMC_STATUST0 = common dso_local global i32 0, align 4
@Val = common dso_local global i32 0, align 4
@UECC = common dso_local global i32 0, align 4
@CECC = common dso_local global i32 0, align 4
@smnMCA_UMC0_MCUMC_ADDRT0 = common dso_local global i64 0, align 8
@MCA_UMC_UMC0_MCUMC_ADDRT0 = common dso_local global i32 0, align 4
@LSB = common dso_local global i32 0, align 4
@ErrorAddr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, %struct.ras_err_data*, i32, i32)* @umc_v6_1_query_error_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umc_v6_1_query_error_address(%struct.amdgpu_device* %0, %struct.ras_err_data* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.ras_err_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store %struct.ras_err_data* %1, %struct.ras_err_data** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @UMC, align 4
  %14 = load i32, i32* @mmMCA_UMC_UMC0_MCUMC_STATUST0, align 4
  %15 = call i32 @SOC15_REG_OFFSET(i32 %13, i32 0, i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load %struct.ras_err_data*, %struct.ras_err_data** %6, align 8
  %17 = getelementptr inbounds %struct.ras_err_data, %struct.ras_err_data* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %21, %22
  %24 = call i32 @WREG64_UMC(i32 %23, i32 0)
  br label %95

25:                                               ; preds = %4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %26, %27
  %29 = call i32 @RREG64_UMC(i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @MCA_UMC_UMC0_MCUMC_STATUST0, align 4
  %32 = load i32, i32* @Val, align 4
  %33 = call i32 @REG_GET_FIELD(i32 %30, i32 %31, i32 %32)
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %90

35:                                               ; preds = %25
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @MCA_UMC_UMC0_MCUMC_STATUST0, align 4
  %38 = load i32, i32* @UECC, align 4
  %39 = call i32 @REG_GET_FIELD(i32 %36, i32 %37, i32 %38)
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @MCA_UMC_UMC0_MCUMC_STATUST0, align 4
  %44 = load i32, i32* @CECC, align 4
  %45 = call i32 @REG_GET_FIELD(i32 %42, i32 %43, i32 %44)
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %90

47:                                               ; preds = %41, %35
  %48 = load i64, i64* @smnMCA_UMC0_MCUMC_ADDRT0, align 8
  %49 = load i32, i32* %7, align 4
  %50 = mul nsw i32 %49, 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %48, %51
  %53 = call i32 @RREG64_PCIE(i64 %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @MCA_UMC_UMC0_MCUMC_ADDRT0, align 4
  %56 = load i32, i32* @LSB, align 4
  %57 = call i32 @REG_GET_FIELD(i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @MCA_UMC_UMC0_MCUMC_ADDRT0, align 4
  %60 = load i32, i32* @ErrorAddr, align 4
  %61 = call i32 @REG_GET_FIELD(i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %9, align 4
  %63 = zext i32 %62 to i64
  %64 = shl i64 1, %63
  %65 = sub i64 %64, 1
  %66 = xor i64 %65, -1
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = and i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @ADDR_OF_8KB_BLOCK(i32 %71)
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @ADDR_OF_256B_BLOCK(i32 %73)
  %75 = or i32 %72, %74
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @OFFSET_IN_256B_BLOCK(i32 %76)
  %78 = or i32 %75, %77
  %79 = load %struct.ras_err_data*, %struct.ras_err_data** %6, align 8
  %80 = getelementptr inbounds %struct.ras_err_data, %struct.ras_err_data* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.ras_err_data*, %struct.ras_err_data** %6, align 8
  %83 = getelementptr inbounds %struct.ras_err_data, %struct.ras_err_data* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  store i32 %78, i32* %85, align 4
  %86 = load %struct.ras_err_data*, %struct.ras_err_data** %6, align 8
  %87 = getelementptr inbounds %struct.ras_err_data, %struct.ras_err_data* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %87, align 8
  br label %90

90:                                               ; preds = %47, %41, %25
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %91, %92
  %94 = call i32 @WREG64_UMC(i32 %93, i32 0)
  br label %95

95:                                               ; preds = %90, %20
  ret void
}

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @WREG64_UMC(i32, i32) #1

declare dso_local i32 @RREG64_UMC(i32) #1

declare dso_local i32 @REG_GET_FIELD(i32, i32, i32) #1

declare dso_local i32 @RREG64_PCIE(i64) #1

declare dso_local i32 @ADDR_OF_8KB_BLOCK(i32) #1

declare dso_local i32 @ADDR_OF_256B_BLOCK(i32) #1

declare dso_local i32 @OFFSET_IN_256B_BLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
