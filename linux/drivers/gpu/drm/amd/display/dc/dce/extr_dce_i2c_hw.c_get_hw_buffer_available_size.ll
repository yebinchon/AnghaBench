; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_hw.c_get_hw_buffer_available_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_hw.c_get_hw_buffer_available_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_i2c_hw = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dce_i2c_hw*)* @get_hw_buffer_available_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_hw_buffer_available_size(%struct.dce_i2c_hw* %0) #0 {
  %2 = alloca %struct.dce_i2c_hw*, align 8
  store %struct.dce_i2c_hw* %0, %struct.dce_i2c_hw** %2, align 8
  %3 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %2, align 8
  %4 = getelementptr inbounds %struct.dce_i2c_hw, %struct.dce_i2c_hw* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %2, align 8
  %7 = getelementptr inbounds %struct.dce_i2c_hw, %struct.dce_i2c_hw* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = sub nsw i64 %5, %8
  ret i64 %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
