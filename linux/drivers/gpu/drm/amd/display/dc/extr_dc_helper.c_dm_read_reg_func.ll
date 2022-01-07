; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/extr_dc_helper.c_dm_read_reg_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/extr_dc_helper.c_dm_read_reg_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_context = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dm_read_reg_func(%struct.dc_context* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.dc_context*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.dc_context* %0, %struct.dc_context** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.dc_context*, %struct.dc_context** %4, align 8
  %9 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i64 @cgs_read_register(i32 %10, i64 %11)
  store i64 %12, i64* %7, align 8
  %13 = load %struct.dc_context*, %struct.dc_context** %4, align 8
  %14 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @trace_amdgpu_dc_rreg(i32* %16, i64 %17, i64 %18)
  %20 = load i64, i64* %7, align 8
  ret i64 %20
}

declare dso_local i64 @cgs_read_register(i32, i64) #1

declare dso_local i32 @trace_amdgpu_dc_rreg(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
