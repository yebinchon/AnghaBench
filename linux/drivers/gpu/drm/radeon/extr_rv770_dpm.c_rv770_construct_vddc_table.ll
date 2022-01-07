; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_construct_vddc_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_construct_vddc_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.rv7xx_power_info = type { i64, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i64, i8* }

@SET_VOLTAGE_TYPE_ASIC_VDDC = common dso_local global i32 0, align 4
@MAX_NO_VREG_STEPS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @rv770_construct_vddc_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv770_construct_vddc_table(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.rv7xx_power_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %13)
  store %struct.rv7xx_power_info* %14, %struct.rv7xx_power_info** %4, align 8
  store i64 0, i64* %8, align 8
  store i8* null, i8** %9, align 8
  %15 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %16 = load i32, i32* @SET_VOLTAGE_TYPE_ASIC_VDDC, align 4
  %17 = call i32 @radeon_atom_get_min_voltage(%struct.radeon_device* %15, i32 %16, i32* %5)
  %18 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %19 = load i32, i32* @SET_VOLTAGE_TYPE_ASIC_VDDC, align 4
  %20 = call i32 @radeon_atom_get_max_voltage(%struct.radeon_device* %18, i32 %19, i32* %6)
  %21 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %22 = load i32, i32* @SET_VOLTAGE_TYPE_ASIC_VDDC, align 4
  %23 = call i32 @radeon_atom_get_voltage_step(%struct.radeon_device* %21, i32 %22, i32* %7)
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = sub nsw i32 %24, %25
  %27 = load i32, i32* %7, align 4
  %28 = sdiv i32 %26, %27
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @MAX_NO_VREG_STEPS, align 8
  %33 = icmp ugt i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %1
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %141

37:                                               ; preds = %1
  store i64 0, i64* %10, align 8
  br label %38

38:                                               ; preds = %133, %37
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %136

42:                                               ; preds = %38
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %10, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 %45, %47
  %49 = add i64 %44, %48
  %50 = trunc i64 %49 to i32
  %51 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %52 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i64, i64* %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32 %50, i32* %56, align 8
  %57 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %58 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %59 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %58, i32 0, i32 2
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i64, i64* %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @SET_VOLTAGE_TYPE_ASIC_VDDC, align 4
  %66 = call i32 @radeon_atom_get_voltage_gpio_settings(%struct.radeon_device* %57, i32 %64, i32 %65, i64* %11, i64* %12)
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* %12, align 8
  %69 = and i64 %67, %68
  %70 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %71 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %70, i32 0, i32 2
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i64, i64* %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  store i64 %69, i64* %75, align 8
  %76 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %77 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %76, i32 0, i32 2
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i64, i64* %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  store i64 0, i64* %81, align 8
  %82 = load i64, i64* %12, align 8
  %83 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %84 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  %85 = load i64, i64* %10, align 8
  %86 = icmp ugt i64 %85, 0
  br i1 %86, label %87, label %125

87:                                               ; preds = %42
  %88 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %89 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %88, i32 0, i32 2
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = load i64, i64* %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %96 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %95, i32 0, i32 2
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i64, i64* %10, align 8
  %99 = sub i64 %98, 1
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %94, %102
  br i1 %103, label %121, label %104

104:                                              ; preds = %87
  %105 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %106 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %105, i32 0, i32 2
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = load i64, i64* %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %113 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %112, i32 0, i32 2
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = load i64, i64* %10, align 8
  %116 = sub i64 %115, 1
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %111, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %104, %87
  %122 = load i8*, i8** %9, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %9, align 8
  br label %124

124:                                              ; preds = %121, %104
  br label %125

125:                                              ; preds = %124, %42
  %126 = load i8*, i8** %9, align 8
  %127 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %128 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %127, i32 0, i32 2
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = load i64, i64* %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 3
  store i8* %126, i8** %132, align 8
  br label %133

133:                                              ; preds = %125
  %134 = load i64, i64* %10, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %10, align 8
  br label %38

136:                                              ; preds = %38
  %137 = load i64, i64* %8, align 8
  %138 = inttoptr i64 %137 to i8*
  %139 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %140 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %139, i32 0, i32 1
  store i8* %138, i8** %140, align 8
  store i32 0, i32* %2, align 4
  br label %141

141:                                              ; preds = %136, %34
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @radeon_atom_get_min_voltage(%struct.radeon_device*, i32, i32*) #1

declare dso_local i32 @radeon_atom_get_max_voltage(%struct.radeon_device*, i32, i32*) #1

declare dso_local i32 @radeon_atom_get_voltage_step(%struct.radeon_device*, i32, i32*) #1

declare dso_local i32 @radeon_atom_get_voltage_gpio_settings(%struct.radeon_device*, i32, i32, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
