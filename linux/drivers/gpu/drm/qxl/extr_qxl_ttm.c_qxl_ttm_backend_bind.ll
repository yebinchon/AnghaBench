; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_ttm.c_qxl_ttm_backend_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_ttm.c_qxl_ttm_backend_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_tt = type { i32 }
%struct.ttm_mem_reg = type { i32 }
%struct.qxl_ttm_tt = type { i64 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"nothing to bind %lu pages for mreg %p back %p!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_tt*, %struct.ttm_mem_reg*)* @qxl_ttm_backend_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qxl_ttm_backend_bind(%struct.ttm_tt* %0, %struct.ttm_mem_reg* %1) #0 {
  %3 = alloca %struct.ttm_tt*, align 8
  %4 = alloca %struct.ttm_mem_reg*, align 8
  %5 = alloca %struct.qxl_ttm_tt*, align 8
  store %struct.ttm_tt* %0, %struct.ttm_tt** %3, align 8
  store %struct.ttm_mem_reg* %1, %struct.ttm_mem_reg** %4, align 8
  %6 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %7 = bitcast %struct.ttm_tt* %6 to i8*
  %8 = bitcast i8* %7 to %struct.qxl_ttm_tt*
  store %struct.qxl_ttm_tt* %8, %struct.qxl_ttm_tt** %5, align 8
  %9 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %4, align 8
  %10 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @PAGE_SHIFT, align 4
  %13 = shl i32 %11, %12
  %14 = sext i32 %13 to i64
  %15 = load %struct.qxl_ttm_tt*, %struct.qxl_ttm_tt** %5, align 8
  %16 = getelementptr inbounds %struct.qxl_ttm_tt, %struct.qxl_ttm_tt* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %18 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %2
  %22 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %23 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %4, align 8
  %26 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %27 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %24, %struct.ttm_mem_reg* %25, %struct.ttm_tt* %26)
  br label %28

28:                                               ; preds = %21, %2
  ret i32 -1
}

declare dso_local i32 @WARN(i32, i8*, i32, %struct.ttm_mem_reg*, %struct.ttm_tt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
