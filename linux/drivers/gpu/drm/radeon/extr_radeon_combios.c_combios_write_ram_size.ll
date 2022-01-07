; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_combios.c_combios_write_ram_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_combios.c_combios_write_ram_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32, i64 }

@RADEON_IS_IGP = common dso_local global i32 0, align 4
@COMBIOS_DETECTED_MEM_TABLE = common dso_local global i32 0, align 4
@CHIP_R200 = common dso_local global i64 0, align 8
@RADEON_MEM_CNTL = common dso_local global i32 0, align 4
@COMBIOS_MEM_CONFIG_TABLE = common dso_local global i32 0, align 4
@RADEON_CONFIG_MEMSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @combios_write_ram_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @combios_write_ram_size(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.radeon_device*, %struct.radeon_device** %11, align 8
  store %struct.radeon_device* %12, %struct.radeon_device** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @RADEON_IS_IGP, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %123

20:                                               ; preds = %1
  %21 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %22 = load i32, i32* @COMBIOS_DETECTED_MEM_TABLE, align 4
  %23 = call i64 @combios_get_table_offset(%struct.drm_device* %21, i32 %22)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %53

26:                                               ; preds = %20
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @RBIOS8(i64 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 3
  br i1 %30, label %31, label %52

31:                                               ; preds = %26
  %32 = load i64, i64* %5, align 8
  %33 = add nsw i64 %32, 1
  %34 = call i32 @RBIOS32(i64 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i64, i64* %5, align 8
  %36 = add nsw i64 %35, 5
  %37 = call i32 @RBIOS16(i64 %36)
  store i32 %37, i32* %6, align 4
  %38 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %39 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CHIP_R200, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %31
  %44 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %45 = call i32 @ASIC_IS_RN50(%struct.radeon_device* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @RADEON_MEM_CNTL, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @WREG32(i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %43, %31
  br label %52

52:                                               ; preds = %51, %26
  br label %53

53:                                               ; preds = %52, %20
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %117, label %56

56:                                               ; preds = %53
  %57 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %58 = load i32, i32* @COMBIOS_MEM_CONFIG_TABLE, align 4
  %59 = call i64 @combios_get_table_offset(%struct.drm_device* %57, i32 %58)
  store i64 %59, i64* %5, align 8
  %60 = load i64, i64* %5, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %116

62:                                               ; preds = %56
  %63 = load i64, i64* %5, align 8
  %64 = sub nsw i64 %63, 1
  %65 = call i32 @RBIOS8(i64 %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp slt i32 %66, 1
  br i1 %67, label %68, label %110

68:                                               ; preds = %62
  %69 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %70 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @CHIP_R200, align 8
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %74, label %106

74:                                               ; preds = %68
  %75 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %76 = call i32 @ASIC_IS_RN50(%struct.radeon_device* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %106, label %78

78:                                               ; preds = %74
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %79

79:                                               ; preds = %102, %78
  %80 = load i64, i64* %5, align 8
  %81 = call i32 @RBIOS8(i64 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %105

83:                                               ; preds = %79
  %84 = load i64, i64* %5, align 8
  %85 = call i32 @RBIOS8(i64 %84)
  store i32 %85, i32* %8, align 4
  %86 = load i64, i64* %5, align 8
  %87 = add nsw i64 %86, 1
  %88 = call i32 @RBIOS8(i64 %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 37
  br i1 %90, label %91, label %94

91:                                               ; preds = %83
  %92 = load i32, i32* %8, align 4
  %93 = mul nsw i32 %92, 2
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %91, %83
  %95 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @combios_detect_ram(%struct.drm_device* %95, i32 %96, i32 %97)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  br label %105

102:                                              ; preds = %94
  %103 = load i64, i64* %5, align 8
  %104 = add nsw i64 %103, 2
  store i64 %104, i64* %5, align 8
  br label %79

105:                                              ; preds = %101, %79
  br label %109

106:                                              ; preds = %74, %68
  %107 = load i64, i64* %5, align 8
  %108 = call i32 @RBIOS8(i64 %107)
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %106, %105
  br label %115

110:                                              ; preds = %62
  %111 = load i64, i64* %5, align 8
  %112 = call i32 @RBIOS8(i64 %111)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = mul nsw i32 %113, 2
  store i32 %114, i32* %6, align 4
  br label %115

115:                                              ; preds = %110, %109
  br label %116

116:                                              ; preds = %115, %56
  br label %117

117:                                              ; preds = %116, %53
  %118 = load i32, i32* %6, align 4
  %119 = mul nsw i32 %118, 1048576
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* @RADEON_CONFIG_MEMSIZE, align 4
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @WREG32(i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %117, %19
  ret void
}

declare dso_local i64 @combios_get_table_offset(%struct.drm_device*, i32) #1

declare dso_local i32 @RBIOS8(i64) #1

declare dso_local i32 @RBIOS32(i64) #1

declare dso_local i32 @RBIOS16(i64) #1

declare dso_local i32 @ASIC_IS_RN50(%struct.radeon_device*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @combios_detect_ram(%struct.drm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
