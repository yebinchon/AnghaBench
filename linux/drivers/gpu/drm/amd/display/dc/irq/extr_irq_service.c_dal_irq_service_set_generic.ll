; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/irq/extr_irq_service.c_dal_irq_service_set_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/irq/extr_irq_service.c_dal_irq_service_set_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_service = type { i32 }
%struct.irq_source_info = type { i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dal_irq_service_set_generic(%struct.irq_service* %0, %struct.irq_source_info* %1, i32 %2) #0 {
  %4 = alloca %struct.irq_service*, align 8
  %5 = alloca %struct.irq_source_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.irq_service* %0, %struct.irq_service** %4, align 8
  store %struct.irq_source_info* %1, %struct.irq_source_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.irq_source_info*, %struct.irq_source_info** %5, align 8
  %10 = getelementptr inbounds %struct.irq_source_info, %struct.irq_source_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = load %struct.irq_service*, %struct.irq_service** %4, align 8
  %13 = getelementptr inbounds %struct.irq_service, %struct.irq_service* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @dm_read_reg(i32 %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.irq_source_info*, %struct.irq_source_info** %5, align 8
  %19 = getelementptr inbounds %struct.irq_source_info, %struct.irq_source_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %17, %21
  %23 = load %struct.irq_source_info*, %struct.irq_source_info** %5, align 8
  %24 = getelementptr inbounds %struct.irq_source_info, %struct.irq_source_info* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 0, i32 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %25, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.irq_source_info*, %struct.irq_source_info** %5, align 8
  %34 = getelementptr inbounds %struct.irq_source_info, %struct.irq_source_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %32, %35
  %37 = or i32 %22, %36
  store i32 %37, i32* %8, align 4
  %38 = load %struct.irq_service*, %struct.irq_service** %4, align 8
  %39 = getelementptr inbounds %struct.irq_service, %struct.irq_service* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @dm_write_reg(i32 %40, i32 %41, i32 %42)
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
