; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_update_lmc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_update_lmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32, %struct.sdma_engine* }
%struct.sdma_engine = type { i32 }

@CHECK_SLID_MASK_MASK = common dso_local global i32 0, align 4
@CHECK_SLID_MASK_SHIFT = common dso_local global i32 0, align 4
@CHECK_SLID_VALUE_MASK = common dso_local global i32 0, align 4
@CHECK_SLID_VALUE_SHIFT = common dso_local global i32 0, align 4
@LINKVERB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"SendDmaEngine[%d].SLID_CHECK = 0x%x\00", align 1
@CHECK_SLID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdma_update_lmc(%struct.hfi1_devdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hfi1_devdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sdma_engine*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @CHECK_SLID_MASK_MASK, align 4
  %12 = call i32 @SD(i32 %11)
  %13 = and i32 %10, %12
  %14 = load i32, i32* @CHECK_SLID_MASK_SHIFT, align 4
  %15 = call i32 @SD(i32 %14)
  %16 = shl i32 %13, %15
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @CHECK_SLID_VALUE_MASK, align 4
  %21 = call i32 @SD(i32 %20)
  %22 = and i32 %19, %21
  %23 = load i32, i32* @CHECK_SLID_VALUE_SHIFT, align 4
  %24 = call i32 @SD(i32 %23)
  %25 = shl i32 %22, %24
  %26 = or i32 %16, %25
  store i32 %26, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %49, %3
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %30 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %27
  %34 = load i32, i32* @LINKVERB, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @hfi1_cdbg(i32 %34, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %39 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %38, i32 0, i32 1
  %40 = load %struct.sdma_engine*, %struct.sdma_engine** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %40, i64 %42
  store %struct.sdma_engine* %43, %struct.sdma_engine** %7, align 8
  %44 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  %45 = load i32, i32* @CHECK_SLID, align 4
  %46 = call i32 @SD(i32 %45)
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @write_sde_csr(%struct.sdma_engine* %44, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %33
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %27

52:                                               ; preds = %27
  ret void
}

declare dso_local i32 @SD(i32) #1

declare dso_local i32 @hfi1_cdbg(i32, i8*, i32, i32) #1

declare dso_local i32 @write_sde_csr(%struct.sdma_engine*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
