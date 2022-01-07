; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_get_buffer_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_get_buffer_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }
%struct.buffer_control = type { i32, i32* }

@TXE_NUM_DATA_VL = common dso_local global i32 0, align 4
@SEND_CM_CREDIT_VL = common dso_local global i64 0, align 8
@SEND_CM_CREDIT_VL15 = common dso_local global i64 0, align 8
@SEND_CM_GLOBAL_CREDIT = common dso_local global i32 0, align 4
@SEND_CM_GLOBAL_CREDIT_SHARED_LIMIT_SHIFT = common dso_local global i32 0, align 4
@SEND_CM_GLOBAL_CREDIT_SHARED_LIMIT_MASK = common dso_local global i32 0, align 4
@SEND_CM_GLOBAL_CREDIT_TOTAL_CREDIT_LIMIT_SHIFT = common dso_local global i32 0, align 4
@SEND_CM_GLOBAL_CREDIT_TOTAL_CREDIT_LIMIT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*, %struct.buffer_control*, i32*)* @get_buffer_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_buffer_control(%struct.hfi1_devdata* %0, %struct.buffer_control* %1, i32* %2) #0 {
  %4 = alloca %struct.hfi1_devdata*, align 8
  %5 = alloca %struct.buffer_control*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %4, align 8
  store %struct.buffer_control* %1, %struct.buffer_control** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.buffer_control*, %struct.buffer_control** %5, align 8
  %10 = call i32 @memset(%struct.buffer_control* %9, i32 0, i32 16)
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %29, %3
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @TXE_NUM_DATA_VL, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %11
  %16 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %17 = load i64, i64* @SEND_CM_CREDIT_VL, align 8
  %18 = load i32, i32* %8, align 4
  %19 = mul nsw i32 8, %18
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %17, %20
  %22 = load %struct.buffer_control*, %struct.buffer_control** %5, align 8
  %23 = getelementptr inbounds %struct.buffer_control, %struct.buffer_control* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = call i32 @read_one_cm_vl(%struct.hfi1_devdata* %16, i64 %21, i32* %27)
  br label %29

29:                                               ; preds = %15
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  br label %11

32:                                               ; preds = %11
  %33 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %34 = load i64, i64* @SEND_CM_CREDIT_VL15, align 8
  %35 = load %struct.buffer_control*, %struct.buffer_control** %5, align 8
  %36 = getelementptr inbounds %struct.buffer_control, %struct.buffer_control* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 15
  %39 = call i32 @read_one_cm_vl(%struct.hfi1_devdata* %33, i64 %34, i32* %38)
  %40 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %41 = load i32, i32* @SEND_CM_GLOBAL_CREDIT, align 4
  %42 = call i32 @read_csr(%struct.hfi1_devdata* %40, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @SEND_CM_GLOBAL_CREDIT_SHARED_LIMIT_SHIFT, align 4
  %45 = ashr i32 %43, %44
  %46 = load i32, i32* @SEND_CM_GLOBAL_CREDIT_SHARED_LIMIT_MASK, align 4
  %47 = and i32 %45, %46
  %48 = call i32 @cpu_to_be16(i32 %47)
  %49 = load %struct.buffer_control*, %struct.buffer_control** %5, align 8
  %50 = getelementptr inbounds %struct.buffer_control, %struct.buffer_control* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %32
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @SEND_CM_GLOBAL_CREDIT_TOTAL_CREDIT_LIMIT_SHIFT, align 4
  %56 = ashr i32 %54, %55
  %57 = load i32, i32* @SEND_CM_GLOBAL_CREDIT_TOTAL_CREDIT_LIMIT_MASK, align 4
  %58 = and i32 %56, %57
  %59 = load i32*, i32** %6, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %53, %32
  ret i32 16
}

declare dso_local i32 @memset(%struct.buffer_control*, i32, i32) #1

declare dso_local i32 @read_one_cm_vl(%struct.hfi1_devdata*, i64, i32*) #1

declare dso_local i32 @read_csr(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
