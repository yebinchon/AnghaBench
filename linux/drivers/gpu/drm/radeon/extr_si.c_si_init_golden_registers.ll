; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_init_golden_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_init_golden_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@tahiti_golden_registers = common dso_local global i32 0, align 4
@tahiti_golden_rlc_registers = common dso_local global i32 0, align 4
@tahiti_mgcg_cgcg_init = common dso_local global i32 0, align 4
@tahiti_golden_registers2 = common dso_local global i32 0, align 4
@pitcairn_golden_registers = common dso_local global i32 0, align 4
@pitcairn_golden_rlc_registers = common dso_local global i32 0, align 4
@pitcairn_mgcg_cgcg_init = common dso_local global i32 0, align 4
@verde_golden_registers = common dso_local global i32 0, align 4
@verde_golden_rlc_registers = common dso_local global i32 0, align 4
@verde_mgcg_cgcg_init = common dso_local global i32 0, align 4
@verde_pg_init = common dso_local global i32 0, align 4
@oland_golden_registers = common dso_local global i32 0, align 4
@oland_golden_rlc_registers = common dso_local global i32 0, align 4
@oland_mgcg_cgcg_init = common dso_local global i32 0, align 4
@hainan_golden_registers = common dso_local global i32 0, align 4
@hainan_golden_registers2 = common dso_local global i32 0, align 4
@hainan_mgcg_cgcg_init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @si_init_golden_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_init_golden_registers(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %3 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %4 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %96 [
    i32 129, label %6
    i32 130, label %27
    i32 128, label %43
    i32 131, label %64
    i32 132, label %80
  ]

6:                                                ; preds = %1
  %7 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %8 = load i32, i32* @tahiti_golden_registers, align 4
  %9 = load i32, i32* @tahiti_golden_registers, align 4
  %10 = call i32 @ARRAY_SIZE(i32 %9)
  %11 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %7, i32 %8, i32 %10)
  %12 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %13 = load i32, i32* @tahiti_golden_rlc_registers, align 4
  %14 = load i32, i32* @tahiti_golden_rlc_registers, align 4
  %15 = call i32 @ARRAY_SIZE(i32 %14)
  %16 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %12, i32 %13, i32 %15)
  %17 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %18 = load i32, i32* @tahiti_mgcg_cgcg_init, align 4
  %19 = load i32, i32* @tahiti_mgcg_cgcg_init, align 4
  %20 = call i32 @ARRAY_SIZE(i32 %19)
  %21 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %17, i32 %18, i32 %20)
  %22 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %23 = load i32, i32* @tahiti_golden_registers2, align 4
  %24 = load i32, i32* @tahiti_golden_registers2, align 4
  %25 = call i32 @ARRAY_SIZE(i32 %24)
  %26 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %22, i32 %23, i32 %25)
  br label %97

27:                                               ; preds = %1
  %28 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %29 = load i32, i32* @pitcairn_golden_registers, align 4
  %30 = load i32, i32* @pitcairn_golden_registers, align 4
  %31 = call i32 @ARRAY_SIZE(i32 %30)
  %32 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %28, i32 %29, i32 %31)
  %33 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %34 = load i32, i32* @pitcairn_golden_rlc_registers, align 4
  %35 = load i32, i32* @pitcairn_golden_rlc_registers, align 4
  %36 = call i32 @ARRAY_SIZE(i32 %35)
  %37 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %33, i32 %34, i32 %36)
  %38 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %39 = load i32, i32* @pitcairn_mgcg_cgcg_init, align 4
  %40 = load i32, i32* @pitcairn_mgcg_cgcg_init, align 4
  %41 = call i32 @ARRAY_SIZE(i32 %40)
  %42 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %38, i32 %39, i32 %41)
  br label %97

43:                                               ; preds = %1
  %44 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %45 = load i32, i32* @verde_golden_registers, align 4
  %46 = load i32, i32* @verde_golden_registers, align 4
  %47 = call i32 @ARRAY_SIZE(i32 %46)
  %48 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %44, i32 %45, i32 %47)
  %49 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %50 = load i32, i32* @verde_golden_rlc_registers, align 4
  %51 = load i32, i32* @verde_golden_rlc_registers, align 4
  %52 = call i32 @ARRAY_SIZE(i32 %51)
  %53 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %49, i32 %50, i32 %52)
  %54 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %55 = load i32, i32* @verde_mgcg_cgcg_init, align 4
  %56 = load i32, i32* @verde_mgcg_cgcg_init, align 4
  %57 = call i32 @ARRAY_SIZE(i32 %56)
  %58 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %54, i32 %55, i32 %57)
  %59 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %60 = load i32, i32* @verde_pg_init, align 4
  %61 = load i32, i32* @verde_pg_init, align 4
  %62 = call i32 @ARRAY_SIZE(i32 %61)
  %63 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %59, i32 %60, i32 %62)
  br label %97

64:                                               ; preds = %1
  %65 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %66 = load i32, i32* @oland_golden_registers, align 4
  %67 = load i32, i32* @oland_golden_registers, align 4
  %68 = call i32 @ARRAY_SIZE(i32 %67)
  %69 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %65, i32 %66, i32 %68)
  %70 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %71 = load i32, i32* @oland_golden_rlc_registers, align 4
  %72 = load i32, i32* @oland_golden_rlc_registers, align 4
  %73 = call i32 @ARRAY_SIZE(i32 %72)
  %74 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %70, i32 %71, i32 %73)
  %75 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %76 = load i32, i32* @oland_mgcg_cgcg_init, align 4
  %77 = load i32, i32* @oland_mgcg_cgcg_init, align 4
  %78 = call i32 @ARRAY_SIZE(i32 %77)
  %79 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %75, i32 %76, i32 %78)
  br label %97

80:                                               ; preds = %1
  %81 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %82 = load i32, i32* @hainan_golden_registers, align 4
  %83 = load i32, i32* @hainan_golden_registers, align 4
  %84 = call i32 @ARRAY_SIZE(i32 %83)
  %85 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %81, i32 %82, i32 %84)
  %86 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %87 = load i32, i32* @hainan_golden_registers2, align 4
  %88 = load i32, i32* @hainan_golden_registers2, align 4
  %89 = call i32 @ARRAY_SIZE(i32 %88)
  %90 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %86, i32 %87, i32 %89)
  %91 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %92 = load i32, i32* @hainan_mgcg_cgcg_init, align 4
  %93 = load i32, i32* @hainan_mgcg_cgcg_init, align 4
  %94 = call i32 @ARRAY_SIZE(i32 %93)
  %95 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %91, i32 %92, i32 %94)
  br label %97

96:                                               ; preds = %1
  br label %97

97:                                               ; preds = %96, %80, %64, %43, %27, %6
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
