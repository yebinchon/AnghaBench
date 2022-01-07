; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_hfi1_put_tid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_hfi1_put_tid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32, i64 }

@HFI1_PRESENT = common dso_local global i32 0, align 4
@PT_INVALID = common dso_local global i64 0, align 8
@PT_INVALID_FLUSH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"unexpected receive array type %u for index %u, not handled\0A\00", align 1
@RCV_ARRAY_RT_WRITE_ENABLE_SMASK = common dso_local global i64 0, align 8
@RCV_ARRAY_RT_BUF_SIZE_SHIFT = common dso_local global i64 0, align 8
@RCV_ARRAY_RT_ADDR_MASK = common dso_local global i64 0, align 8
@RCV_ARRAY_RT_ADDR_SHIFT = common dso_local global i64 0, align 8
@PT_EAGER = common dso_local global i64 0, align 8
@RT_ADDR_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfi1_put_tid(%struct.hfi1_devdata* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.hfi1_devdata*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %13 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @HFI1_PRESENT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  br label %87

19:                                               ; preds = %5
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @PT_INVALID, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @PT_INVALID_FLUSH, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %19
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %38

28:                                               ; preds = %23
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @PT_INVALID, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @dd_dev_err(%struct.hfi1_devdata* %33, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %34, i64 %35)
  br label %87

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37, %27
  %39 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @trace_hfi1_put_tid(%struct.hfi1_devdata* %39, i64 %40, i64 %41, i64 %42, i64 %43)
  %45 = load i64, i64* @RCV_ARRAY_RT_WRITE_ENABLE_SMASK, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* @RCV_ARRAY_RT_BUF_SIZE_SHIFT, align 8
  %48 = shl i64 %46, %47
  %49 = or i64 %45, %48
  %50 = load i64, i64* %9, align 8
  %51 = lshr i64 %50, 12
  %52 = load i64, i64* @RCV_ARRAY_RT_ADDR_MASK, align 8
  %53 = and i64 %51, %52
  %54 = load i64, i64* @RCV_ARRAY_RT_ADDR_SHIFT, align 8
  %55 = shl i64 %53, %54
  %56 = or i64 %49, %55
  store i64 %56, i64* %11, align 8
  %57 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %58 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %7, align 8
  %61 = mul nsw i64 %60, 8
  %62 = add nsw i64 %59, %61
  %63 = load i64, i64* %11, align 8
  %64 = call i32 @trace_hfi1_write_rcvarray(i64 %62, i64 %63)
  %65 = load i64, i64* %11, align 8
  %66 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %67 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %7, align 8
  %70 = mul nsw i64 %69, 8
  %71 = add nsw i64 %68, %70
  %72 = call i32 @writeq(i64 %65, i64 %71)
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* @PT_EAGER, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %84, label %76

76:                                               ; preds = %38
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* @PT_INVALID_FLUSH, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load i64, i64* %7, align 8
  %82 = and i64 %81, 3
  %83 = icmp eq i64 %82, 3
  br i1 %83, label %84, label %86

84:                                               ; preds = %80, %76, %38
  %85 = call i32 (...) @flush_wc()
  br label %86

86:                                               ; preds = %84, %80
  br label %87

87:                                               ; preds = %86, %32, %18
  ret void
}

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*, i64, i64) #1

declare dso_local i32 @trace_hfi1_put_tid(%struct.hfi1_devdata*, i64, i64, i64, i64) #1

declare dso_local i32 @trace_hfi1_write_rcvarray(i64, i64) #1

declare dso_local i32 @writeq(i64, i64) #1

declare dso_local i32 @flush_wc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
