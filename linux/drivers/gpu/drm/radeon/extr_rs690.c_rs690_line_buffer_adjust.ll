; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs690.c_rs690_line_buffer_adjust.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs690.c_rs690_line_buffer_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i8* }
%struct.drm_display_mode = type { i32, i32 }

@R_006520_DC_LB_MEMORY_SPLIT = common dso_local global i32 0, align 4
@C_006520_DC_LB_MEMORY_SPLIT = common dso_local global i32 0, align 4
@C_006520_DC_LB_MEMORY_SPLIT_MODE = common dso_local global i32 0, align 4
@V_006520_DC_LB_MEMORY_SPLIT_D1_3Q_D2_1Q = common dso_local global i32 0, align 4
@V_006520_DC_LB_MEMORY_SPLIT_D1HALF_D2HALF = common dso_local global i32 0, align 4
@V_006520_DC_LB_MEMORY_SPLIT_D1_1Q_D2_3Q = common dso_local global i32 0, align 4
@V_006520_DC_LB_MEMORY_SPLIT_D1_ONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rs690_line_buffer_adjust(%struct.radeon_device* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  store i32 8192, i32* %8, align 4
  %9 = load i32, i32* @R_006520_DC_LB_MEMORY_SPLIT, align 4
  %10 = call i32 @RREG32(i32 %9)
  %11 = load i32, i32* @C_006520_DC_LB_MEMORY_SPLIT, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @C_006520_DC_LB_MEMORY_SPLIT_MODE, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %7, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %7, align 4
  %17 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %18 = icmp ne %struct.drm_display_mode* %17, null
  br i1 %18, label %19, label %72

19:                                               ; preds = %3
  %20 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %21 = icmp ne %struct.drm_display_mode* %20, null
  br i1 %21, label %22, label %72

22:                                               ; preds = %19
  %23 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %24 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %27 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %25, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %22
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %32 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %33, 2560
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @V_006520_DC_LB_MEMORY_SPLIT_D1_3Q_D2_1Q, align 4
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %7, align 4
  br label %43

39:                                               ; preds = %30
  %40 = load i32, i32* @V_006520_DC_LB_MEMORY_SPLIT_D1HALF_D2HALF, align 4
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %39, %35
  br label %71

44:                                               ; preds = %22
  %45 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %46 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %49 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %47, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %44
  %53 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %54 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp sgt i32 %55, 2560
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32, i32* @V_006520_DC_LB_MEMORY_SPLIT_D1_1Q_D2_3Q, align 4
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %65

61:                                               ; preds = %52
  %62 = load i32, i32* @V_006520_DC_LB_MEMORY_SPLIT_D1HALF_D2HALF, align 4
  %63 = load i32, i32* %7, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %61, %57
  br label %70

66:                                               ; preds = %44
  %67 = load i32, i32* @V_006520_DC_LB_MEMORY_SPLIT_D1HALF_D2HALF, align 4
  %68 = load i32, i32* %7, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %66, %65
  br label %71

71:                                               ; preds = %70, %43
  br label %88

72:                                               ; preds = %19, %3
  %73 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %74 = icmp ne %struct.drm_display_mode* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i32, i32* @V_006520_DC_LB_MEMORY_SPLIT_D1_ONLY, align 4
  %77 = load i32, i32* %7, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %7, align 4
  br label %87

79:                                               ; preds = %72
  %80 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %81 = icmp ne %struct.drm_display_mode* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i32, i32* @V_006520_DC_LB_MEMORY_SPLIT_D1_1Q_D2_3Q, align 4
  %84 = load i32, i32* %7, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %82, %79
  br label %87

87:                                               ; preds = %86, %75
  br label %88

88:                                               ; preds = %87, %71
  %89 = load i32, i32* @R_006520_DC_LB_MEMORY_SPLIT, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @WREG32(i32 %89, i32 %90)
  %92 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %93 = icmp ne %struct.drm_display_mode* %92, null
  br i1 %93, label %94, label %107

94:                                               ; preds = %88
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %97 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @DIV_ROUND_UP(i32 %95, i32 %98)
  %100 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %101 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %103, i64 0
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  store i8* %99, i8** %106, align 8
  br label %107

107:                                              ; preds = %94, %88
  %108 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %109 = icmp ne %struct.drm_display_mode* %108, null
  br i1 %109, label %110, label %123

110:                                              ; preds = %107
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %113 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i8* @DIV_ROUND_UP(i32 %111, i32 %114)
  %116 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %117 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %119, i64 1
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  store i8* %115, i8** %122, align 8
  br label %123

123:                                              ; preds = %110, %107
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i8* @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
