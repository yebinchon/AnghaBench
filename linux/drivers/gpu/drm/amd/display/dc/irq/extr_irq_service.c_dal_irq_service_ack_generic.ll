; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/irq/extr_irq_service.c_dal_irq_service_ack_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/irq/extr_irq_service.c_dal_irq_service_ack_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_service = type { i32 }
%struct.irq_source_info = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dal_irq_service_ack_generic(%struct.irq_service* %0, %struct.irq_source_info* %1) #0 {
  %3 = alloca %struct.irq_service*, align 8
  %4 = alloca %struct.irq_source_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.irq_service* %0, %struct.irq_service** %3, align 8
  store %struct.irq_source_info* %1, %struct.irq_source_info** %4, align 8
  %7 = load %struct.irq_source_info*, %struct.irq_source_info** %4, align 8
  %8 = getelementptr inbounds %struct.irq_source_info, %struct.irq_source_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.irq_service*, %struct.irq_service** %3, align 8
  %11 = getelementptr inbounds %struct.irq_service, %struct.irq_service* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @dm_read_reg(i32 %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.irq_source_info*, %struct.irq_source_info** %4, align 8
  %17 = getelementptr inbounds %struct.irq_source_info, %struct.irq_source_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %15, %19
  %21 = load %struct.irq_source_info*, %struct.irq_source_info** %4, align 8
  %22 = getelementptr inbounds %struct.irq_source_info, %struct.irq_source_info* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.irq_source_info*, %struct.irq_source_info** %4, align 8
  %25 = getelementptr inbounds %struct.irq_source_info, %struct.irq_source_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %23, %26
  %28 = or i32 %20, %27
  store i32 %28, i32* %6, align 4
  %29 = load %struct.irq_service*, %struct.irq_service** %3, align 8
  %30 = getelementptr inbounds %struct.irq_service, %struct.irq_service* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @dm_write_reg(i32 %31, i32 %32, i32 %33)
  ret void
}

declare dso_local i32 @dm_read_reg(i32, i32) #1

declare dso_local i32 @dm_write_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
