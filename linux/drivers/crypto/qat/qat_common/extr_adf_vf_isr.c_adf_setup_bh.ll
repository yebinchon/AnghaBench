; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_vf_isr.c_adf_setup_bh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_vf_isr.c_adf_setup_bh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adf_accel_dev = type { %struct.adf_etr_data* }
%struct.adf_etr_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@adf_response_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adf_accel_dev*)* @adf_setup_bh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adf_setup_bh(%struct.adf_accel_dev* %0) #0 {
  %2 = alloca %struct.adf_accel_dev*, align 8
  %3 = alloca %struct.adf_etr_data*, align 8
  store %struct.adf_accel_dev* %0, %struct.adf_accel_dev** %2, align 8
  %4 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %2, align 8
  %5 = getelementptr inbounds %struct.adf_accel_dev, %struct.adf_accel_dev* %4, i32 0, i32 0
  %6 = load %struct.adf_etr_data*, %struct.adf_etr_data** %5, align 8
  store %struct.adf_etr_data* %6, %struct.adf_etr_data** %3, align 8
  %7 = load %struct.adf_etr_data*, %struct.adf_etr_data** %3, align 8
  %8 = getelementptr inbounds %struct.adf_etr_data, %struct.adf_etr_data* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* @adf_response_handler, align 4
  %13 = load %struct.adf_etr_data*, %struct.adf_etr_data** %3, align 8
  %14 = getelementptr inbounds %struct.adf_etr_data, %struct.adf_etr_data* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = ptrtoint %struct.TYPE_2__* %15 to i64
  %17 = call i32 @tasklet_init(i32* %11, i32 %12, i64 %16)
  ret i32 0
}

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
