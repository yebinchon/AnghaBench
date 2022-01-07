; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_hfi.h_hfi1_get_pkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_hfi.h_hfi1_get_pkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ibport = type { i32 }
%struct.hfi1_pportdata = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.hfi1_ibport*, i32)* @hfi1_get_pkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hfi1_get_pkey(%struct.hfi1_ibport* %0, i32 %1) #0 {
  %3 = alloca %struct.hfi1_ibport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfi1_pportdata*, align 8
  %6 = alloca i64, align 8
  store %struct.hfi1_ibport* %0, %struct.hfi1_ibport** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %3, align 8
  %8 = call %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport* %7)
  store %struct.hfi1_pportdata* %8, %struct.hfi1_pportdata** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %5, align 8
  %11 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = call i32 @ARRAY_SIZE(i64* %12)
  %14 = icmp uge i32 %9, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %24

16:                                               ; preds = %2
  %17 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %5, align 8
  %18 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %6, align 8
  br label %24

24:                                               ; preds = %16, %15
  %25 = load i64, i64* %6, align 8
  ret i64 %25
}

declare dso_local %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
