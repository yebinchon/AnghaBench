; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_file_ops.c_hfi1_set_uevent_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_file_ops.c_hfi1_set_uevent_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_pportdata = type { %struct.hfi1_devdata* }
%struct.hfi1_devdata = type { i64*, i64, i64 }
%struct.hfi1_ctxtdata = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi1_set_uevent_bits(%struct.hfi1_pportdata* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hfi1_pportdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hfi1_ctxtdata*, align 8
  %7 = alloca %struct.hfi1_devdata*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store %struct.hfi1_pportdata* %0, %struct.hfi1_pportdata** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %12 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %11, i32 0, i32 0
  %13 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %12, align 8
  store %struct.hfi1_devdata* %13, %struct.hfi1_devdata** %7, align 8
  %14 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %15 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = icmp ne i64* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %72

21:                                               ; preds = %2
  %22 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %23 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %8, align 8
  br label %25

25:                                               ; preds = %68, %21
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %28 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %26, %29
  br i1 %30, label %31, label %71

31:                                               ; preds = %25
  %32 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call %struct.hfi1_ctxtdata* @hfi1_rcd_get_by_index(%struct.hfi1_devdata* %32, i64 %33)
  store %struct.hfi1_ctxtdata* %34, %struct.hfi1_ctxtdata** %6, align 8
  %35 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %36 = icmp ne %struct.hfi1_ctxtdata* %35, null
  br i1 %36, label %37, label %67

37:                                               ; preds = %31
  %38 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %39 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %42 = call i32 @uctxt_offset(%struct.hfi1_ctxtdata* %41)
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %40, i64 %43
  store i64* %44, i64** %9, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i64*, i64** %9, align 8
  %47 = call i32 @set_bit(i32 %45, i64* %46)
  store i32 1, i32* %10, align 4
  br label %48

48:                                               ; preds = %61, %37
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %51 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %48
  %55 = load i32, i32* %5, align 4
  %56 = load i64*, i64** %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = call i32 @set_bit(i32 %55, i64* %59)
  br label %61

61:                                               ; preds = %54
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  br label %48

64:                                               ; preds = %48
  %65 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %66 = call i32 @hfi1_rcd_put(%struct.hfi1_ctxtdata* %65)
  br label %67

67:                                               ; preds = %64, %31
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %8, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %8, align 8
  br label %25

71:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %18
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.hfi1_ctxtdata* @hfi1_rcd_get_by_index(%struct.hfi1_devdata*, i64) #1

declare dso_local i32 @uctxt_offset(%struct.hfi1_ctxtdata*) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @hfi1_rcd_put(%struct.hfi1_ctxtdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
