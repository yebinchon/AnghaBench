; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_get_sc2vlnt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_get_sc2vlnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }
%struct.sc2vlnt = type { i32* }

@DCC_CFG_SC_VL_TABLE_15_0 = common dso_local global i32 0, align 4
@DCC_CFG_SC_VL_TABLE_31_16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*, %struct.sc2vlnt*)* @get_sc2vlnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_sc2vlnt(%struct.hfi1_devdata* %0, %struct.sc2vlnt* %1) #0 {
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca %struct.sc2vlnt*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  store %struct.sc2vlnt* %1, %struct.sc2vlnt** %4, align 8
  %9 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %10 = load i32, i32* @DCC_CFG_SC_VL_TABLE_15_0, align 4
  %11 = call i64 @read_csr(%struct.hfi1_devdata* %9, i32 %10)
  store i64 %11, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %42, %2
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %14, 8
  br i1 %15, label %16, label %45

16:                                               ; preds = %12
  %17 = bitcast i64* %5 to i32*
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, 15
  %24 = load %struct.sc2vlnt*, %struct.sc2vlnt** %4, align 8
  %25 = getelementptr inbounds %struct.sc2vlnt, %struct.sc2vlnt* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = mul nsw i32 2, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  store i32 %23, i32* %30, align 4
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, 240
  %33 = ashr i32 %32, 4
  %34 = load %struct.sc2vlnt*, %struct.sc2vlnt** %4, align 8
  %35 = getelementptr inbounds %struct.sc2vlnt, %struct.sc2vlnt* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = mul nsw i32 2, %37
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %36, i64 %40
  store i32 %33, i32* %41, align 4
  br label %42

42:                                               ; preds = %16
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %12

45:                                               ; preds = %12
  %46 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %47 = load i32, i32* @DCC_CFG_SC_VL_TABLE_31_16, align 4
  %48 = call i64 @read_csr(%struct.hfi1_devdata* %46, i32 %47)
  store i64 %48, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %81, %45
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp ult i64 %51, 8
  br i1 %52, label %53, label %84

53:                                               ; preds = %49
  %54 = bitcast i64* %5 to i32*
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = and i32 %59, 15
  %61 = load %struct.sc2vlnt*, %struct.sc2vlnt** %4, align 8
  %62 = getelementptr inbounds %struct.sc2vlnt, %struct.sc2vlnt* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = mul nsw i32 2, %64
  %66 = add nsw i32 16, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  store i32 %60, i32* %68, align 4
  %69 = load i32, i32* %8, align 4
  %70 = and i32 %69, 240
  %71 = ashr i32 %70, 4
  %72 = load %struct.sc2vlnt*, %struct.sc2vlnt** %4, align 8
  %73 = getelementptr inbounds %struct.sc2vlnt, %struct.sc2vlnt* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = mul nsw i32 2, %75
  %77 = add nsw i32 16, %76
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %74, i64 %79
  store i32 %71, i32* %80, align 4
  br label %81

81:                                               ; preds = %53
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %49

84:                                               ; preds = %49
  ret i32 8
}

declare dso_local i64 @read_csr(%struct.hfi1_devdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
