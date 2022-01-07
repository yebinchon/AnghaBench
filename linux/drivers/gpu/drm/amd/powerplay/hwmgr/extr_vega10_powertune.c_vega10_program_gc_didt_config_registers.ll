; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_powertune.c_vega10_program_gc_didt_config_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_powertune.c_vega10_program_gc_didt_config_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }
%struct.vega10_didt_config_reg = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.vega10_didt_config_reg*)* @vega10_program_gc_didt_config_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega10_program_gc_didt_config_registers(%struct.pp_hwmgr* %0, %struct.vega10_didt_config_reg* %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.vega10_didt_config_reg*, align 8
  %5 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store %struct.vega10_didt_config_reg* %1, %struct.vega10_didt_config_reg** %4, align 8
  br label %6

6:                                                ; preds = %11, %2
  %7 = load %struct.vega10_didt_config_reg*, %struct.vega10_didt_config_reg** %4, align 8
  %8 = getelementptr inbounds %struct.vega10_didt_config_reg, %struct.vega10_didt_config_reg* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %48

11:                                               ; preds = %6
  %12 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %13 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.vega10_didt_config_reg*, %struct.vega10_didt_config_reg** %4, align 8
  %16 = getelementptr inbounds %struct.vega10_didt_config_reg, %struct.vega10_didt_config_reg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @cgs_read_register(i32 %14, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.vega10_didt_config_reg*, %struct.vega10_didt_config_reg** %4, align 8
  %20 = getelementptr inbounds %struct.vega10_didt_config_reg, %struct.vega10_didt_config_reg* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load %struct.vega10_didt_config_reg*, %struct.vega10_didt_config_reg** %4, align 8
  %26 = getelementptr inbounds %struct.vega10_didt_config_reg, %struct.vega10_didt_config_reg* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.vega10_didt_config_reg*, %struct.vega10_didt_config_reg** %4, align 8
  %29 = getelementptr inbounds %struct.vega10_didt_config_reg, %struct.vega10_didt_config_reg* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %27, %30
  %32 = load %struct.vega10_didt_config_reg*, %struct.vega10_didt_config_reg** %4, align 8
  %33 = getelementptr inbounds %struct.vega10_didt_config_reg, %struct.vega10_didt_config_reg* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %31, %34
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %39 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.vega10_didt_config_reg*, %struct.vega10_didt_config_reg** %4, align 8
  %42 = getelementptr inbounds %struct.vega10_didt_config_reg, %struct.vega10_didt_config_reg* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @cgs_write_register(i32 %40, i32 %43, i32 %44)
  %46 = load %struct.vega10_didt_config_reg*, %struct.vega10_didt_config_reg** %4, align 8
  %47 = getelementptr inbounds %struct.vega10_didt_config_reg, %struct.vega10_didt_config_reg* %46, i32 1
  store %struct.vega10_didt_config_reg* %47, %struct.vega10_didt_config_reg** %4, align 8
  br label %6

48:                                               ; preds = %6
  ret i32 0
}

declare dso_local i32 @cgs_read_register(i32, i32) #1

declare dso_local i32 @cgs_write_register(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
