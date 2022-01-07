; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770.c_rv770_init_golden_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770.c_rv770_init_golden_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@r7xx_golden_registers = common dso_local global i32 0, align 4
@r7xx_golden_dyn_gpr_registers = common dso_local global i32 0, align 4
@rv770ce_golden_registers = common dso_local global i32 0, align 4
@rv770_golden_registers = common dso_local global i32 0, align 4
@rv770_mgcg_init = common dso_local global i32 0, align 4
@rv730_golden_registers = common dso_local global i32 0, align 4
@rv730_mgcg_init = common dso_local global i32 0, align 4
@rv710_golden_registers = common dso_local global i32 0, align 4
@rv710_mgcg_init = common dso_local global i32 0, align 4
@rv740_golden_registers = common dso_local global i32 0, align 4
@rv740_mgcg_init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @rv770_init_golden_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv770_init_golden_registers(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %3 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %4 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %94 [
    i32 128, label %6
    i32 130, label %41
    i32 131, label %62
    i32 129, label %83
  ]

6:                                                ; preds = %1
  %7 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %8 = load i32, i32* @r7xx_golden_registers, align 4
  %9 = load i32, i32* @r7xx_golden_registers, align 4
  %10 = call i32 @ARRAY_SIZE(i32 %9)
  %11 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %7, i32 %8, i32 %10)
  %12 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %13 = load i32, i32* @r7xx_golden_dyn_gpr_registers, align 4
  %14 = load i32, i32* @r7xx_golden_dyn_gpr_registers, align 4
  %15 = call i32 @ARRAY_SIZE(i32 %14)
  %16 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %12, i32 %13, i32 %15)
  %17 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %18 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 39246
  br i1 %22, label %23, label %29

23:                                               ; preds = %6
  %24 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %25 = load i32, i32* @rv770ce_golden_registers, align 4
  %26 = load i32, i32* @rv770ce_golden_registers, align 4
  %27 = call i32 @ARRAY_SIZE(i32 %26)
  %28 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %24, i32 %25, i32 %27)
  br label %35

29:                                               ; preds = %6
  %30 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %31 = load i32, i32* @rv770_golden_registers, align 4
  %32 = load i32, i32* @rv770_golden_registers, align 4
  %33 = call i32 @ARRAY_SIZE(i32 %32)
  %34 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %30, i32 %31, i32 %33)
  br label %35

35:                                               ; preds = %29, %23
  %36 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %37 = load i32, i32* @rv770_mgcg_init, align 4
  %38 = load i32, i32* @rv770_mgcg_init, align 4
  %39 = call i32 @ARRAY_SIZE(i32 %38)
  %40 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %36, i32 %37, i32 %39)
  br label %95

41:                                               ; preds = %1
  %42 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %43 = load i32, i32* @r7xx_golden_registers, align 4
  %44 = load i32, i32* @r7xx_golden_registers, align 4
  %45 = call i32 @ARRAY_SIZE(i32 %44)
  %46 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %42, i32 %43, i32 %45)
  %47 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %48 = load i32, i32* @r7xx_golden_dyn_gpr_registers, align 4
  %49 = load i32, i32* @r7xx_golden_dyn_gpr_registers, align 4
  %50 = call i32 @ARRAY_SIZE(i32 %49)
  %51 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %47, i32 %48, i32 %50)
  %52 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %53 = load i32, i32* @rv730_golden_registers, align 4
  %54 = load i32, i32* @rv730_golden_registers, align 4
  %55 = call i32 @ARRAY_SIZE(i32 %54)
  %56 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %52, i32 %53, i32 %55)
  %57 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %58 = load i32, i32* @rv730_mgcg_init, align 4
  %59 = load i32, i32* @rv730_mgcg_init, align 4
  %60 = call i32 @ARRAY_SIZE(i32 %59)
  %61 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %57, i32 %58, i32 %60)
  br label %95

62:                                               ; preds = %1
  %63 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %64 = load i32, i32* @r7xx_golden_registers, align 4
  %65 = load i32, i32* @r7xx_golden_registers, align 4
  %66 = call i32 @ARRAY_SIZE(i32 %65)
  %67 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %63, i32 %64, i32 %66)
  %68 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %69 = load i32, i32* @r7xx_golden_dyn_gpr_registers, align 4
  %70 = load i32, i32* @r7xx_golden_dyn_gpr_registers, align 4
  %71 = call i32 @ARRAY_SIZE(i32 %70)
  %72 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %68, i32 %69, i32 %71)
  %73 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %74 = load i32, i32* @rv710_golden_registers, align 4
  %75 = load i32, i32* @rv710_golden_registers, align 4
  %76 = call i32 @ARRAY_SIZE(i32 %75)
  %77 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %73, i32 %74, i32 %76)
  %78 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %79 = load i32, i32* @rv710_mgcg_init, align 4
  %80 = load i32, i32* @rv710_mgcg_init, align 4
  %81 = call i32 @ARRAY_SIZE(i32 %80)
  %82 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %78, i32 %79, i32 %81)
  br label %95

83:                                               ; preds = %1
  %84 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %85 = load i32, i32* @rv740_golden_registers, align 4
  %86 = load i32, i32* @rv740_golden_registers, align 4
  %87 = call i32 @ARRAY_SIZE(i32 %86)
  %88 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %84, i32 %85, i32 %87)
  %89 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %90 = load i32, i32* @rv740_mgcg_init, align 4
  %91 = load i32, i32* @rv740_mgcg_init, align 4
  %92 = call i32 @ARRAY_SIZE(i32 %91)
  %93 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %89, i32 %90, i32 %92)
  br label %95

94:                                               ; preds = %1
  br label %95

95:                                               ; preds = %94, %83, %62, %41, %35
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
