; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_hfi.h_sc_to_vlt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_hfi.h_sc_to_vlt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i64, i32 }

@OPA_MAX_SCS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.hfi1_devdata*, i64)* @sc_to_vlt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sc_to_vlt(%struct.hfi1_devdata* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.hfi1_devdata*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @OPA_MAX_SCS, align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i64 255, i64* %3, align 8
  br label %32

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %24, %12
  %14 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %15 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %14, i32 0, i32 1
  %16 = call i32 @read_seqbegin(i32* %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %18 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i64*
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %7, align 8
  br label %24

24:                                               ; preds = %13
  %25 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %26 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %25, i32 0, i32 1
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @read_seqretry(i32* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %13, label %30

30:                                               ; preds = %24
  %31 = load i64, i64* %7, align 8
  store i64 %31, i64* %3, align 8
  br label %32

32:                                               ; preds = %30, %11
  %33 = load i64, i64* %3, align 8
  ret i64 %33
}

declare dso_local i32 @read_seqbegin(i32*) #1

declare dso_local i64 @read_seqretry(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
