; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/irq/dcn10/extr_irq_service_dcn10.c_hpd_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/irq/dcn10/extr_irq_service_dcn10.c_hpd_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_service = type { i32 }
%struct.irq_source_info = type { i64, i64 }

@HPD0_DC_HPD_INT_STATUS = common dso_local global i32 0, align 4
@DC_HPD_SENSE_DELAYED = common dso_local global i32 0, align 4
@HPD0_DC_HPD_INT_CONTROL = common dso_local global i32 0, align 4
@DC_HPD_INT_POLARITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_service*, %struct.irq_source_info*)* @hpd_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpd_ack(%struct.irq_service* %0, %struct.irq_source_info* %1) #0 {
  %3 = alloca %struct.irq_service*, align 8
  %4 = alloca %struct.irq_source_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.irq_service* %0, %struct.irq_service** %3, align 8
  store %struct.irq_source_info* %1, %struct.irq_source_info** %4, align 8
  %8 = load %struct.irq_source_info*, %struct.irq_source_info** %4, align 8
  %9 = getelementptr inbounds %struct.irq_source_info, %struct.irq_source_info* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %5, align 8
  %11 = load %struct.irq_service*, %struct.irq_service** %3, align 8
  %12 = getelementptr inbounds %struct.irq_service, %struct.irq_service* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @dm_read_reg(i32 %13, i64 %14)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i32, i32* @HPD0_DC_HPD_INT_STATUS, align 4
  %18 = load i32, i32* @DC_HPD_SENSE_DELAYED, align 4
  %19 = call i64 @get_reg_field_value(i64 %16, i32 %17, i32 %18)
  store i64 %19, i64* %7, align 8
  %20 = load %struct.irq_service*, %struct.irq_service** %3, align 8
  %21 = load %struct.irq_source_info*, %struct.irq_source_info** %4, align 8
  %22 = call i32 @dal_irq_service_ack_generic(%struct.irq_service* %20, %struct.irq_source_info* %21)
  %23 = load %struct.irq_service*, %struct.irq_service** %3, align 8
  %24 = getelementptr inbounds %struct.irq_service, %struct.irq_service* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.irq_source_info*, %struct.irq_source_info** %4, align 8
  %27 = getelementptr inbounds %struct.irq_source_info, %struct.irq_source_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @dm_read_reg(i32 %25, i64 %28)
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 0, i32 1
  %35 = load i32, i32* @HPD0_DC_HPD_INT_CONTROL, align 4
  %36 = load i32, i32* @DC_HPD_INT_POLARITY, align 4
  %37 = call i32 @set_reg_field_value(i64 %30, i32 %34, i32 %35, i32 %36)
  %38 = load %struct.irq_service*, %struct.irq_service** %3, align 8
  %39 = getelementptr inbounds %struct.irq_service, %struct.irq_service* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.irq_source_info*, %struct.irq_source_info** %4, align 8
  %42 = getelementptr inbounds %struct.irq_source_info, %struct.irq_source_info* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @dm_write_reg(i32 %40, i64 %43, i64 %44)
  ret i32 1
}

declare dso_local i64 @dm_read_reg(i32, i64) #1

declare dso_local i64 @get_reg_field_value(i64, i32, i32) #1

declare dso_local i32 @dal_irq_service_ack_generic(%struct.irq_service*, %struct.irq_source_info*) #1

declare dso_local i32 @set_reg_field_value(i64, i32, i32, i32) #1

declare dso_local i32 @dm_write_reg(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
