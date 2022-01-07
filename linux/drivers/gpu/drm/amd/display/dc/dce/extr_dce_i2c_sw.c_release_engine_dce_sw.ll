; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_sw.c_release_engine_dce_sw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_sw.c_release_engine_dce_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource_pool = type { i32 }
%struct.dce_i2c_sw = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.resource_pool*, %struct.dce_i2c_sw*)* @release_engine_dce_sw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_engine_dce_sw(%struct.resource_pool* %0, %struct.dce_i2c_sw* %1) #0 {
  %3 = alloca %struct.resource_pool*, align 8
  %4 = alloca %struct.dce_i2c_sw*, align 8
  store %struct.resource_pool* %0, %struct.resource_pool** %3, align 8
  store %struct.dce_i2c_sw* %1, %struct.dce_i2c_sw** %4, align 8
  %5 = load %struct.dce_i2c_sw*, %struct.dce_i2c_sw** %4, align 8
  %6 = getelementptr inbounds %struct.dce_i2c_sw, %struct.dce_i2c_sw* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = call i32 @dal_ddc_close(i32* %7)
  %9 = load %struct.dce_i2c_sw*, %struct.dce_i2c_sw** %4, align 8
  %10 = getelementptr inbounds %struct.dce_i2c_sw, %struct.dce_i2c_sw* %9, i32 0, i32 0
  store i32* null, i32** %10, align 8
  ret void
}

declare dso_local i32 @dal_ddc_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
