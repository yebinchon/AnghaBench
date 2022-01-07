; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_init_golden_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_init_golden_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@evergreen_golden_registers = common dso_local global i32 0, align 4
@evergreen_golden_registers2 = common dso_local global i32 0, align 4
@cypress_mgcg_init = common dso_local global i32 0, align 4
@juniper_mgcg_init = common dso_local global i32 0, align 4
@redwood_mgcg_init = common dso_local global i32 0, align 4
@cedar_golden_registers = common dso_local global i32 0, align 4
@cedar_mgcg_init = common dso_local global i32 0, align 4
@wrestler_golden_registers = common dso_local global i32 0, align 4
@supersumo_golden_registers = common dso_local global i32 0, align 4
@sumo_golden_registers = common dso_local global i32 0, align 4
@barts_golden_registers = common dso_local global i32 0, align 4
@turks_golden_registers = common dso_local global i32 0, align 4
@caicos_golden_registers = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @evergreen_init_golden_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evergreen_init_golden_registers(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %3 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %4 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %111 [
    i32 135, label %6
    i32 134, label %6
    i32 133, label %22
    i32 131, label %38
    i32 136, label %54
    i32 132, label %70
    i32 130, label %76
    i32 129, label %82
    i32 138, label %93
    i32 128, label %99
    i32 137, label %105
  ]

6:                                                ; preds = %1, %1
  %7 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %8 = load i32, i32* @evergreen_golden_registers, align 4
  %9 = load i32, i32* @evergreen_golden_registers, align 4
  %10 = call i32 @ARRAY_SIZE(i32 %9)
  %11 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %7, i32 %8, i32 %10)
  %12 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %13 = load i32, i32* @evergreen_golden_registers2, align 4
  %14 = load i32, i32* @evergreen_golden_registers2, align 4
  %15 = call i32 @ARRAY_SIZE(i32 %14)
  %16 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %12, i32 %13, i32 %15)
  %17 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %18 = load i32, i32* @cypress_mgcg_init, align 4
  %19 = load i32, i32* @cypress_mgcg_init, align 4
  %20 = call i32 @ARRAY_SIZE(i32 %19)
  %21 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %17, i32 %18, i32 %20)
  br label %112

22:                                               ; preds = %1
  %23 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %24 = load i32, i32* @evergreen_golden_registers, align 4
  %25 = load i32, i32* @evergreen_golden_registers, align 4
  %26 = call i32 @ARRAY_SIZE(i32 %25)
  %27 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %23, i32 %24, i32 %26)
  %28 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %29 = load i32, i32* @evergreen_golden_registers2, align 4
  %30 = load i32, i32* @evergreen_golden_registers2, align 4
  %31 = call i32 @ARRAY_SIZE(i32 %30)
  %32 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %28, i32 %29, i32 %31)
  %33 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %34 = load i32, i32* @juniper_mgcg_init, align 4
  %35 = load i32, i32* @juniper_mgcg_init, align 4
  %36 = call i32 @ARRAY_SIZE(i32 %35)
  %37 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %33, i32 %34, i32 %36)
  br label %112

38:                                               ; preds = %1
  %39 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %40 = load i32, i32* @evergreen_golden_registers, align 4
  %41 = load i32, i32* @evergreen_golden_registers, align 4
  %42 = call i32 @ARRAY_SIZE(i32 %41)
  %43 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %39, i32 %40, i32 %42)
  %44 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %45 = load i32, i32* @evergreen_golden_registers2, align 4
  %46 = load i32, i32* @evergreen_golden_registers2, align 4
  %47 = call i32 @ARRAY_SIZE(i32 %46)
  %48 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %44, i32 %45, i32 %47)
  %49 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %50 = load i32, i32* @redwood_mgcg_init, align 4
  %51 = load i32, i32* @redwood_mgcg_init, align 4
  %52 = call i32 @ARRAY_SIZE(i32 %51)
  %53 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %49, i32 %50, i32 %52)
  br label %112

54:                                               ; preds = %1
  %55 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %56 = load i32, i32* @cedar_golden_registers, align 4
  %57 = load i32, i32* @cedar_golden_registers, align 4
  %58 = call i32 @ARRAY_SIZE(i32 %57)
  %59 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %55, i32 %56, i32 %58)
  %60 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %61 = load i32, i32* @evergreen_golden_registers2, align 4
  %62 = load i32, i32* @evergreen_golden_registers2, align 4
  %63 = call i32 @ARRAY_SIZE(i32 %62)
  %64 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %60, i32 %61, i32 %63)
  %65 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %66 = load i32, i32* @cedar_mgcg_init, align 4
  %67 = load i32, i32* @cedar_mgcg_init, align 4
  %68 = call i32 @ARRAY_SIZE(i32 %67)
  %69 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %65, i32 %66, i32 %68)
  br label %112

70:                                               ; preds = %1
  %71 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %72 = load i32, i32* @wrestler_golden_registers, align 4
  %73 = load i32, i32* @wrestler_golden_registers, align 4
  %74 = call i32 @ARRAY_SIZE(i32 %73)
  %75 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %71, i32 %72, i32 %74)
  br label %112

76:                                               ; preds = %1
  %77 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %78 = load i32, i32* @supersumo_golden_registers, align 4
  %79 = load i32, i32* @supersumo_golden_registers, align 4
  %80 = call i32 @ARRAY_SIZE(i32 %79)
  %81 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %77, i32 %78, i32 %80)
  br label %112

82:                                               ; preds = %1
  %83 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %84 = load i32, i32* @supersumo_golden_registers, align 4
  %85 = load i32, i32* @supersumo_golden_registers, align 4
  %86 = call i32 @ARRAY_SIZE(i32 %85)
  %87 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %83, i32 %84, i32 %86)
  %88 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %89 = load i32, i32* @sumo_golden_registers, align 4
  %90 = load i32, i32* @sumo_golden_registers, align 4
  %91 = call i32 @ARRAY_SIZE(i32 %90)
  %92 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %88, i32 %89, i32 %91)
  br label %112

93:                                               ; preds = %1
  %94 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %95 = load i32, i32* @barts_golden_registers, align 4
  %96 = load i32, i32* @barts_golden_registers, align 4
  %97 = call i32 @ARRAY_SIZE(i32 %96)
  %98 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %94, i32 %95, i32 %97)
  br label %112

99:                                               ; preds = %1
  %100 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %101 = load i32, i32* @turks_golden_registers, align 4
  %102 = load i32, i32* @turks_golden_registers, align 4
  %103 = call i32 @ARRAY_SIZE(i32 %102)
  %104 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %100, i32 %101, i32 %103)
  br label %112

105:                                              ; preds = %1
  %106 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %107 = load i32, i32* @caicos_golden_registers, align 4
  %108 = load i32, i32* @caicos_golden_registers, align 4
  %109 = call i32 @ARRAY_SIZE(i32 %108)
  %110 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %106, i32 %107, i32 %109)
  br label %112

111:                                              ; preds = %1
  br label %112

112:                                              ; preds = %111, %105, %99, %93, %82, %76, %70, %54, %38, %22, %6
  ret void
}

declare dso_local i32 @radeon_program_register_sequence(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
