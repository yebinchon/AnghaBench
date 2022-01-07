; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_hw.c_malidp500_se_set_scaling_coeffs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_hw.c_malidp500_se_set_scaling_coeffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malidp_hw_device = type { i32 }
%struct.malidp_se_config = type { i64, i64 }

@dp500_se_scaling_coeffs = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MALIDP_SE_V_COEFFTAB = common dso_local global i32 0, align 4
@MALIDP_SE_H_COEFFTAB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.malidp_hw_device*, %struct.malidp_se_config*, %struct.malidp_se_config*)* @malidp500_se_set_scaling_coeffs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @malidp500_se_set_scaling_coeffs(%struct.malidp_hw_device* %0, %struct.malidp_se_config* %1, %struct.malidp_se_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.malidp_hw_device*, align 8
  %6 = alloca %struct.malidp_se_config*, align 8
  %7 = alloca %struct.malidp_se_config*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.malidp_hw_device* %0, %struct.malidp_hw_device** %5, align 8
  store %struct.malidp_se_config* %1, %struct.malidp_se_config** %6, align 8
  store %struct.malidp_se_config* %2, %struct.malidp_se_config** %7, align 8
  %10 = load %struct.malidp_se_config*, %struct.malidp_se_config** %6, align 8
  %11 = getelementptr inbounds %struct.malidp_se_config, %struct.malidp_se_config* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = sub nsw i64 %12, 1
  store i64 %13, i64* %8, align 8
  %14 = load %struct.malidp_se_config*, %struct.malidp_se_config** %6, align 8
  %15 = getelementptr inbounds %struct.malidp_se_config, %struct.malidp_se_config* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %16, 1
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i32, i32* @dp500_se_scaling_coeffs, align 4
  %20 = call i64 @ARRAY_SIZE(i32 %19)
  %21 = icmp sge i64 %18, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %3
  %23 = load i64, i64* %9, align 8
  %24 = load i32, i32* @dp500_se_scaling_coeffs, align 4
  %25 = call i64 @ARRAY_SIZE(i32 %24)
  %26 = icmp sge i64 %23, %25
  br label %27

27:                                               ; preds = %22, %3
  %28 = phi i1 [ true, %3 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  %30 = call i64 @WARN_ON(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %90

35:                                               ; preds = %27
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %62

39:                                               ; preds = %35
  %40 = load %struct.malidp_se_config*, %struct.malidp_se_config** %6, align 8
  %41 = getelementptr inbounds %struct.malidp_se_config, %struct.malidp_se_config* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.malidp_se_config*, %struct.malidp_se_config** %7, align 8
  %44 = getelementptr inbounds %struct.malidp_se_config, %struct.malidp_se_config* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %55, label %47

47:                                               ; preds = %39
  %48 = load %struct.malidp_se_config*, %struct.malidp_se_config** %6, align 8
  %49 = getelementptr inbounds %struct.malidp_se_config, %struct.malidp_se_config* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.malidp_se_config*, %struct.malidp_se_config** %7, align 8
  %52 = getelementptr inbounds %struct.malidp_se_config, %struct.malidp_se_config* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %50, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %47, %39
  %56 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %5, align 8
  %57 = load i32, i32* @MALIDP_SE_V_COEFFTAB, align 4
  %58 = load i32, i32* @MALIDP_SE_H_COEFFTAB, align 4
  %59 = or i32 %57, %58
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @malidp500_se_write_pp_coefftab(%struct.malidp_hw_device* %56, i32 %59, i32 0, i64 %60)
  br label %89

62:                                               ; preds = %47, %35
  %63 = load %struct.malidp_se_config*, %struct.malidp_se_config** %6, align 8
  %64 = getelementptr inbounds %struct.malidp_se_config, %struct.malidp_se_config* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.malidp_se_config*, %struct.malidp_se_config** %7, align 8
  %67 = getelementptr inbounds %struct.malidp_se_config, %struct.malidp_se_config* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %65, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %62
  %71 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %5, align 8
  %72 = load i32, i32* @MALIDP_SE_V_COEFFTAB, align 4
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @malidp500_se_write_pp_coefftab(%struct.malidp_hw_device* %71, i32 %72, i32 0, i64 %73)
  br label %75

75:                                               ; preds = %70, %62
  %76 = load %struct.malidp_se_config*, %struct.malidp_se_config** %6, align 8
  %77 = getelementptr inbounds %struct.malidp_se_config, %struct.malidp_se_config* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.malidp_se_config*, %struct.malidp_se_config** %7, align 8
  %80 = getelementptr inbounds %struct.malidp_se_config, %struct.malidp_se_config* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %78, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %75
  %84 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %5, align 8
  %85 = load i32, i32* @MALIDP_SE_H_COEFFTAB, align 4
  %86 = load i64, i64* %8, align 8
  %87 = call i32 @malidp500_se_write_pp_coefftab(%struct.malidp_hw_device* %84, i32 %85, i32 0, i64 %86)
  br label %88

88:                                               ; preds = %83, %75
  br label %89

89:                                               ; preds = %88, %55
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %89, %32
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local i32 @malidp500_se_write_pp_coefftab(%struct.malidp_hw_device*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
