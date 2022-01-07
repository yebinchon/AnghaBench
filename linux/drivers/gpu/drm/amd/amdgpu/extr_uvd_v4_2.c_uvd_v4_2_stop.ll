; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v4_2.c_uvd_v4_2_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v4_2.c_uvd_v4_2_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@mmUVD_RBC_RB_CNTL = common dso_local global i32 0, align 4
@mmUVD_STATUS = common dso_local global i32 0, align 4
@mmUVD_LMI_STATUS = common dso_local global i32 0, align 4
@mmUVD_LMI_CTRL2 = common dso_local global i32 0, align 4
@mmUVD_VCPU_CNTL = common dso_local global i32 0, align 4
@mmUVD_SOFT_RESET = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__LMI_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__LMI_UMC_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @uvd_v4_2_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvd_v4_2_stop(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %6 = load i32, i32* @mmUVD_RBC_RB_CNTL, align 4
  %7 = call i32 @WREG32(i32 %6, i32 285278465)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %33, %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 10
  br i1 %10, label %11, label %36

11:                                               ; preds = %8
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %24, %11
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 100
  br i1 %14, label %15, label %27

15:                                               ; preds = %12
  %16 = load i32, i32* @mmUVD_STATUS, align 4
  %17 = call i32 @RREG32(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 2
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %27

22:                                               ; preds = %15
  %23 = call i32 @mdelay(i32 1)
  br label %24

24:                                               ; preds = %22
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %12

27:                                               ; preds = %21, %12
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, 2
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %36

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %8

36:                                               ; preds = %31, %8
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %62, %36
  %38 = load i32, i32* %3, align 4
  %39 = icmp slt i32 %38, 10
  br i1 %39, label %40, label %65

40:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %53, %40
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %42, 100
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = load i32, i32* @mmUVD_LMI_STATUS, align 4
  %46 = call i32 @RREG32(i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, 15
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %56

51:                                               ; preds = %44
  %52 = call i32 @mdelay(i32 1)
  br label %53

53:                                               ; preds = %51
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %41

56:                                               ; preds = %50, %41
  %57 = load i32, i32* %5, align 4
  %58 = and i32 %57, 15
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %65

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %3, align 4
  br label %37

65:                                               ; preds = %60, %37
  %66 = load i32, i32* @mmUVD_LMI_CTRL2, align 4
  %67 = call i32 @WREG32_P(i32 %66, i32 256, i32 -257)
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %93, %65
  %69 = load i32, i32* %3, align 4
  %70 = icmp slt i32 %69, 10
  br i1 %70, label %71, label %96

71:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %84, %71
  %73 = load i32, i32* %4, align 4
  %74 = icmp slt i32 %73, 100
  br i1 %74, label %75, label %87

75:                                               ; preds = %72
  %76 = load i32, i32* @mmUVD_LMI_STATUS, align 4
  %77 = call i32 @RREG32(i32 %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = and i32 %78, 576
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %87

82:                                               ; preds = %75
  %83 = call i32 @mdelay(i32 1)
  br label %84

84:                                               ; preds = %82
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %4, align 4
  br label %72

87:                                               ; preds = %81, %72
  %88 = load i32, i32* %5, align 4
  %89 = and i32 %88, 576
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  br label %96

92:                                               ; preds = %87
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %3, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %3, align 4
  br label %68

96:                                               ; preds = %91, %68
  %97 = call i32 @WREG32_P(i32 15689, i32 0, i32 -5)
  %98 = load i32, i32* @mmUVD_VCPU_CNTL, align 4
  %99 = call i32 @WREG32_P(i32 %98, i32 0, i32 -513)
  %100 = load i32, i32* @mmUVD_SOFT_RESET, align 4
  %101 = load i32, i32* @UVD_SOFT_RESET__LMI_SOFT_RESET_MASK, align 4
  %102 = load i32, i32* @UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @UVD_SOFT_RESET__LMI_UMC_SOFT_RESET_MASK, align 4
  %105 = or i32 %103, %104
  %106 = call i32 @WREG32(i32 %100, i32 %105)
  %107 = load i32, i32* @mmUVD_STATUS, align 4
  %108 = call i32 @WREG32(i32 %107, i32 0)
  %109 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %110 = call i32 @uvd_v4_2_set_dcm(%struct.amdgpu_device* %109, i32 0)
  ret void
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @uvd_v4_2_set_dcm(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
