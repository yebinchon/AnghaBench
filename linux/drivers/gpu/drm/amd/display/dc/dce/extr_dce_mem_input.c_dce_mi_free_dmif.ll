; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_mem_input.c_dce_mi_free_dmif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_mem_input.c_dce_mi_free_dmif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_input = type { i32 }
%struct.dce_mem_input = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@DMIF_BUFFER_CONTROL = common dso_local global i32 0, align 4
@DMIF_BUFFERS_ALLOCATED = common dso_local global i32 0, align 4
@DMIF_BUFFERS_ALLOCATION_COMPLETED = common dso_local global i32 0, align 4
@MC_HUB_RDREQ_DMIF_LIMIT = common dso_local global i32 0, align 4
@ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_input*, i64)* @dce_mi_free_dmif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_mi_free_dmif(%struct.mem_input* %0, i64 %1) #0 {
  %3 = alloca %struct.mem_input*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dce_mem_input*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.mem_input* %0, %struct.mem_input** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.mem_input*, %struct.mem_input** %3, align 8
  %10 = call %struct.dce_mem_input* @TO_DCE_MEM_INPUT(%struct.mem_input* %9)
  store %struct.dce_mem_input* %10, %struct.dce_mem_input** %5, align 8
  %11 = load i32, i32* @DMIF_BUFFER_CONTROL, align 4
  %12 = load i32, i32* @DMIF_BUFFERS_ALLOCATED, align 4
  %13 = call i64 @REG_GET(i32 %11, i32 %12, i64* %6)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %45

17:                                               ; preds = %2
  %18 = load i32, i32* @DMIF_BUFFER_CONTROL, align 4
  %19 = load i64, i64* %7, align 8
  %20 = load i32, i32* @DMIF_BUFFERS_ALLOCATED, align 4
  %21 = call i32 @REG_SET(i32 %18, i64 %19, i32 %20, i32 0)
  %22 = load i32, i32* @DMIF_BUFFER_CONTROL, align 4
  %23 = load i32, i32* @DMIF_BUFFERS_ALLOCATION_COMPLETED, align 4
  %24 = call i32 @REG_WAIT(i32 %22, i32 %23, i32 1, i32 10, i32 3500)
  %25 = load %struct.dce_mem_input*, %struct.dce_mem_input** %5, align 8
  %26 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %17
  %31 = load i64, i64* %4, align 8
  %32 = icmp sgt i64 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %39

34:                                               ; preds = %30
  %35 = load %struct.dce_mem_input*, %struct.dce_mem_input** %5, align 8
  %36 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  br label %39

39:                                               ; preds = %34, %33
  %40 = phi i64 [ 0, %33 ], [ %38, %34 ]
  store i64 %40, i64* %8, align 8
  %41 = load i32, i32* @MC_HUB_RDREQ_DMIF_LIMIT, align 4
  %42 = load i32, i32* @ENABLE, align 4
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @REG_UPDATE(i32 %41, i32 %42, i64 %43)
  br label %45

45:                                               ; preds = %16, %39, %17
  ret void
}

declare dso_local %struct.dce_mem_input* @TO_DCE_MEM_INPUT(%struct.mem_input*) #1

declare dso_local i64 @REG_GET(i32, i32, i64*) #1

declare dso_local i32 @REG_SET(i32, i64, i32, i32) #1

declare dso_local i32 @REG_WAIT(i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
