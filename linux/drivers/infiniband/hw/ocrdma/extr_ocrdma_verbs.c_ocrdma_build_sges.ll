; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_build_sges.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_build_sges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_hdr_wqe = type { i32 }
%struct.ocrdma_sge = type { i64, i32, i32, i32 }
%struct.ib_sge = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocrdma_hdr_wqe*, %struct.ocrdma_sge*, i32, %struct.ib_sge*)* @ocrdma_build_sges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocrdma_build_sges(%struct.ocrdma_hdr_wqe* %0, %struct.ocrdma_sge* %1, i32 %2, %struct.ib_sge* %3) #0 {
  %5 = alloca %struct.ocrdma_hdr_wqe*, align 8
  %6 = alloca %struct.ocrdma_sge*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_sge*, align 8
  %9 = alloca i32, align 4
  store %struct.ocrdma_hdr_wqe* %0, %struct.ocrdma_hdr_wqe** %5, align 8
  store %struct.ocrdma_sge* %1, %struct.ocrdma_sge** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ib_sge* %3, %struct.ib_sge** %8, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %72, %4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %75

14:                                               ; preds = %10
  %15 = load %struct.ib_sge*, %struct.ib_sge** %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %15, i64 %17
  %19 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ocrdma_sge*, %struct.ocrdma_sge** %6, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ocrdma_sge, %struct.ocrdma_sge* %21, i64 %23
  %25 = getelementptr inbounds %struct.ocrdma_sge, %struct.ocrdma_sge* %24, i32 0, i32 3
  store i32 %20, i32* %25, align 8
  %26 = load %struct.ib_sge*, %struct.ib_sge** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %26, i64 %28
  %30 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ocrdma_sge*, %struct.ocrdma_sge** %6, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ocrdma_sge, %struct.ocrdma_sge* %32, i64 %34
  %36 = getelementptr inbounds %struct.ocrdma_sge, %struct.ocrdma_sge* %35, i32 0, i32 2
  store i32 %31, i32* %36, align 4
  %37 = load %struct.ib_sge*, %struct.ib_sge** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %37, i64 %39
  %41 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @upper_32_bits(i32 %42)
  %44 = load %struct.ocrdma_sge*, %struct.ocrdma_sge** %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.ocrdma_sge, %struct.ocrdma_sge* %44, i64 %46
  %48 = getelementptr inbounds %struct.ocrdma_sge, %struct.ocrdma_sge* %47, i32 0, i32 1
  store i32 %43, i32* %48, align 8
  %49 = load %struct.ib_sge*, %struct.ib_sge** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %49, i64 %51
  %53 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.ocrdma_sge*, %struct.ocrdma_sge** %6, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.ocrdma_sge, %struct.ocrdma_sge* %55, i64 %57
  %59 = getelementptr inbounds %struct.ocrdma_sge, %struct.ocrdma_sge* %58, i32 0, i32 0
  store i64 %54, i64* %59, align 8
  %60 = load %struct.ib_sge*, %struct.ib_sge** %8, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %60, i64 %62
  %64 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %5, align 8
  %67 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %65
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %67, align 4
  br label %72

72:                                               ; preds = %14
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %10

75:                                               ; preds = %10
  %76 = load i32, i32* %7, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load %struct.ocrdma_sge*, %struct.ocrdma_sge** %6, align 8
  %80 = call i32 @memset(%struct.ocrdma_sge* %79, i32 0, i32 24)
  br label %81

81:                                               ; preds = %78, %75
  ret void
}

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @memset(%struct.ocrdma_sge*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
