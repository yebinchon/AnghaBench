; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_mem_input_v.c_program_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_mem_input_v.c_program_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_mem_input = type { i32 }
%struct.dc_plane_address = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_mem_input*, %struct.dc_plane_address*)* @program_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_addr(%struct.dce_mem_input* %0, %struct.dc_plane_address* %1) #0 {
  %3 = alloca %struct.dce_mem_input*, align 8
  %4 = alloca %struct.dc_plane_address*, align 8
  store %struct.dce_mem_input* %0, %struct.dce_mem_input** %3, align 8
  store %struct.dc_plane_address* %1, %struct.dc_plane_address** %4, align 8
  %5 = load %struct.dc_plane_address*, %struct.dc_plane_address** %4, align 8
  %6 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %28 [
    i32 129, label %8
    i32 128, label %15
  ]

8:                                                ; preds = %2
  %9 = load %struct.dce_mem_input*, %struct.dce_mem_input** %3, align 8
  %10 = load %struct.dc_plane_address*, %struct.dc_plane_address** %4, align 8
  %11 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @program_pri_addr_l(%struct.dce_mem_input* %9, i32 %13)
  br label %30

15:                                               ; preds = %2
  %16 = load %struct.dce_mem_input*, %struct.dce_mem_input** %3, align 8
  %17 = load %struct.dc_plane_address*, %struct.dc_plane_address** %4, align 8
  %18 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @program_pri_addr_c(%struct.dce_mem_input* %16, i32 %20)
  %22 = load %struct.dce_mem_input*, %struct.dce_mem_input** %3, align 8
  %23 = load %struct.dc_plane_address*, %struct.dc_plane_address** %4, align 8
  %24 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @program_pri_addr_l(%struct.dce_mem_input* %22, i32 %26)
  br label %30

28:                                               ; preds = %2
  %29 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %30

30:                                               ; preds = %28, %15, %8
  ret void
}

declare dso_local i32 @program_pri_addr_l(%struct.dce_mem_input*, i32) #1

declare dso_local i32 @program_pri_addr_c(%struct.dce_mem_input*, i32) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
