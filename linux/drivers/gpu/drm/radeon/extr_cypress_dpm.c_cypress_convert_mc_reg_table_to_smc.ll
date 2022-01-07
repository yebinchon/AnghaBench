; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_convert_mc_reg_table_to_smc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_convert_mc_reg_table_to_smc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32 }
%struct.TYPE_3__ = type { i32* }
%struct.rv7xx_ps = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ps*, %struct.TYPE_3__*)* @cypress_convert_mc_reg_table_to_smc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cypress_convert_mc_reg_table_to_smc(%struct.radeon_device* %0, %struct.radeon_ps* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.rv7xx_ps*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %8 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %9 = call %struct.rv7xx_ps* @rv770_get_ps(%struct.radeon_ps* %8)
  store %struct.rv7xx_ps* %9, %struct.rv7xx_ps** %7, align 8
  %10 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %11 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %7, align 8
  %12 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 2
  %17 = call i32 @cypress_convert_mc_reg_table_entry_to_smc(%struct.radeon_device* %10, i32* %12, i32* %16)
  %18 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %19 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %7, align 8
  %20 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 3
  %25 = call i32 @cypress_convert_mc_reg_table_entry_to_smc(%struct.radeon_device* %18, i32* %20, i32* %24)
  %26 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %27 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %7, align 8
  %28 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 4
  %33 = call i32 @cypress_convert_mc_reg_table_entry_to_smc(%struct.radeon_device* %26, i32* %28, i32* %32)
  ret void
}

declare dso_local %struct.rv7xx_ps* @rv770_get_ps(%struct.radeon_ps*) #1

declare dso_local i32 @cypress_convert_mc_reg_table_entry_to_smc(%struct.radeon_device*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
