; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/irq/dce110/extr_irq_service_dce110.c_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/irq/dce110/extr_irq_service_dce110.c_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_service = type { i32*, i32 }
%struct.irq_service_init_data = type { i32 }

@irq_source_info_dce110 = common dso_local global i32 0, align 4
@irq_service_funcs_dce110 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_service*, %struct.irq_service_init_data*)* @construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @construct(%struct.irq_service* %0, %struct.irq_service_init_data* %1) #0 {
  %3 = alloca %struct.irq_service*, align 8
  %4 = alloca %struct.irq_service_init_data*, align 8
  store %struct.irq_service* %0, %struct.irq_service** %3, align 8
  store %struct.irq_service_init_data* %1, %struct.irq_service_init_data** %4, align 8
  %5 = load %struct.irq_service*, %struct.irq_service** %3, align 8
  %6 = load %struct.irq_service_init_data*, %struct.irq_service_init_data** %4, align 8
  %7 = call i32 @dal_irq_service_construct(%struct.irq_service* %5, %struct.irq_service_init_data* %6)
  %8 = load i32, i32* @irq_source_info_dce110, align 4
  %9 = load %struct.irq_service*, %struct.irq_service** %3, align 8
  %10 = getelementptr inbounds %struct.irq_service, %struct.irq_service* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  %11 = load %struct.irq_service*, %struct.irq_service** %3, align 8
  %12 = getelementptr inbounds %struct.irq_service, %struct.irq_service* %11, i32 0, i32 0
  store i32* @irq_service_funcs_dce110, i32** %12, align 8
  ret void
}

declare dso_local i32 @dal_irq_service_construct(%struct.irq_service*, %struct.irq_service_init_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
