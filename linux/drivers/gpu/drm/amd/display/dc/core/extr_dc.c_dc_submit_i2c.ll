; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_dc_submit_i2c.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_dc_submit_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { i32, %struct.dc_link** }
%struct.dc_link = type { %struct.ddc_service* }
%struct.ddc_service = type { i32 }
%struct.i2c_command = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dc_submit_i2c(%struct.dc* %0, i64 %1, %struct.i2c_command* %2) #0 {
  %4 = alloca %struct.dc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.i2c_command*, align 8
  %7 = alloca %struct.dc_link*, align 8
  %8 = alloca %struct.ddc_service*, align 8
  store %struct.dc* %0, %struct.dc** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.i2c_command* %2, %struct.i2c_command** %6, align 8
  %9 = load %struct.dc*, %struct.dc** %4, align 8
  %10 = getelementptr inbounds %struct.dc, %struct.dc* %9, i32 0, i32 1
  %11 = load %struct.dc_link**, %struct.dc_link*** %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds %struct.dc_link*, %struct.dc_link** %11, i64 %12
  %14 = load %struct.dc_link*, %struct.dc_link** %13, align 8
  store %struct.dc_link* %14, %struct.dc_link** %7, align 8
  %15 = load %struct.dc_link*, %struct.dc_link** %7, align 8
  %16 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %15, i32 0, i32 0
  %17 = load %struct.ddc_service*, %struct.ddc_service** %16, align 8
  store %struct.ddc_service* %17, %struct.ddc_service** %8, align 8
  %18 = load %struct.dc*, %struct.dc** %4, align 8
  %19 = getelementptr inbounds %struct.dc, %struct.dc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.ddc_service*, %struct.ddc_service** %8, align 8
  %22 = getelementptr inbounds %struct.ddc_service, %struct.ddc_service* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.i2c_command*, %struct.i2c_command** %6, align 8
  %25 = call i32 @dce_i2c_submit_command(i32 %20, i32 %23, %struct.i2c_command* %24)
  ret i32 %25
}

declare dso_local i32 @dce_i2c_submit_command(i32, i32, %struct.i2c_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
