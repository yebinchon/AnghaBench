; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_mem_input.c_dce_mi_allocate_dmif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_mem_input.c_dce_mi_allocate_dmif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_input = type { i32 }
%struct.dce_mem_input = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DMIF_BUFFER_CONTROL = common dso_local global i32 0, align 4
@DMIF_BUFFERS_ALLOCATED = common dso_local global i32 0, align 4
@DMIF_BUFFERS_ALLOCATION_COMPLETED = common dso_local global i32 0, align 4
@DPG_PIPE_ARBITRATION_CONTROL1 = common dso_local global i32 0, align 4
@PIXEL_DURATION = common dso_local global i32 0, align 4
@MC_HUB_RDREQ_DMIF_LIMIT = common dso_local global i32 0, align 4
@ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_input*, i32, i32, i32, i32)* @dce_mi_allocate_dmif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_mi_allocate_dmif(%struct.mem_input* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mem_input*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dce_mem_input*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mem_input* %0, %struct.mem_input** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load %struct.mem_input*, %struct.mem_input** %6, align 8
  %19 = call %struct.dce_mem_input* @TO_DCE_MEM_INPUT(%struct.mem_input* %18)
  store %struct.dce_mem_input* %19, %struct.dce_mem_input** %11, align 8
  store i32 10, i32* %12, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @get_dmif_switch_time_us(i32 %20, i32 %21, i32 %22)
  %24 = sdiv i32 %23, 10
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* @DMIF_BUFFER_CONTROL, align 4
  %26 = load i32, i32* @DMIF_BUFFERS_ALLOCATED, align 4
  %27 = call i32 @REG_GET(i32 %25, i32 %26, i32* %15)
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %15, align 4
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %31

30:                                               ; preds = %5
  br label %72

31:                                               ; preds = %5
  %32 = load i32, i32* @DMIF_BUFFER_CONTROL, align 4
  %33 = load i32, i32* %16, align 4
  %34 = load i32, i32* @DMIF_BUFFERS_ALLOCATED, align 4
  %35 = call i32 @REG_SET(i32 %32, i32 %33, i32 %34, i32 2)
  %36 = load i32, i32* @DMIF_BUFFER_CONTROL, align 4
  %37 = load i32, i32* @DMIF_BUFFERS_ALLOCATION_COMPLETED, align 4
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @REG_WAIT(i32 %36, i32 %37, i32 1, i32 10, i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %31
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = udiv i64 1000000000, %44
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* @DPG_PIPE_ARBITRATION_CONTROL1, align 4
  %48 = load i32, i32* @PIXEL_DURATION, align 4
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @REG_UPDATE(i32 %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %42, %31
  %52 = load %struct.dce_mem_input*, %struct.dce_mem_input** %11, align 8
  %53 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %51
  %58 = load i32, i32* %10, align 4
  %59 = icmp sgt i32 %58, 1
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %66

61:                                               ; preds = %57
  %62 = load %struct.dce_mem_input*, %struct.dce_mem_input** %11, align 8
  %63 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  br label %66

66:                                               ; preds = %61, %60
  %67 = phi i32 [ 0, %60 ], [ %65, %61 ]
  store i32 %67, i32* %17, align 4
  %68 = load i32, i32* @MC_HUB_RDREQ_DMIF_LIMIT, align 4
  %69 = load i32, i32* @ENABLE, align 4
  %70 = load i32, i32* %17, align 4
  %71 = call i32 @REG_UPDATE(i32 %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %30, %66, %51
  ret void
}

declare dso_local %struct.dce_mem_input* @TO_DCE_MEM_INPUT(%struct.mem_input*) #1

declare dso_local i32 @get_dmif_switch_time_us(i32, i32, i32) #1

declare dso_local i32 @REG_GET(i32, i32, i32*) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

declare dso_local i32 @REG_WAIT(i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
