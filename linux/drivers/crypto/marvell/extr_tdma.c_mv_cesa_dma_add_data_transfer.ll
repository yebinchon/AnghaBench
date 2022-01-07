; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_tdma.c_mv_cesa_dma_add_data_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_tdma.c_mv_cesa_dma_add_data_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_cesa_tdma_chain = type { i32 }
%struct.mv_cesa_tdma_desc = type { i32, i8*, i8*, i32 }

@CESA_TDMA_DST_IN_SRAM = common dso_local global i32 0, align 4
@CESA_TDMA_SRC_IN_SRAM = common dso_local global i32 0, align 4
@CESA_TDMA_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv_cesa_dma_add_data_transfer(%struct.mv_cesa_tdma_chain* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mv_cesa_tdma_chain*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mv_cesa_tdma_desc*, align 8
  store %struct.mv_cesa_tdma_chain* %0, %struct.mv_cesa_tdma_chain** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load %struct.mv_cesa_tdma_chain*, %struct.mv_cesa_tdma_chain** %8, align 8
  %16 = load i32, i32* %13, align 4
  %17 = call %struct.mv_cesa_tdma_desc* @mv_cesa_dma_add_desc(%struct.mv_cesa_tdma_chain* %15, i32 %16)
  store %struct.mv_cesa_tdma_desc* %17, %struct.mv_cesa_tdma_desc** %14, align 8
  %18 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %14, align 8
  %19 = call i64 @IS_ERR(%struct.mv_cesa_tdma_desc* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  %22 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %14, align 8
  %23 = call i32 @PTR_ERR(%struct.mv_cesa_tdma_desc* %22)
  store i32 %23, i32* %7, align 4
  br label %47

24:                                               ; preds = %6
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @BIT(i32 31)
  %27 = or i32 %25, %26
  %28 = call i32 @cpu_to_le32(i32 %27)
  %29 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %14, align 8
  %30 = getelementptr inbounds %struct.mv_cesa_tdma_desc, %struct.mv_cesa_tdma_desc* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %14, align 8
  %33 = getelementptr inbounds %struct.mv_cesa_tdma_desc, %struct.mv_cesa_tdma_desc* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %14, align 8
  %36 = getelementptr inbounds %struct.mv_cesa_tdma_desc, %struct.mv_cesa_tdma_desc* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* @CESA_TDMA_DST_IN_SRAM, align 4
  %38 = load i32, i32* @CESA_TDMA_SRC_IN_SRAM, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* %12, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @CESA_TDMA_DATA, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %14, align 8
  %46 = getelementptr inbounds %struct.mv_cesa_tdma_desc, %struct.mv_cesa_tdma_desc* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %24, %21
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local %struct.mv_cesa_tdma_desc* @mv_cesa_dma_add_desc(%struct.mv_cesa_tdma_chain*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mv_cesa_tdma_desc*) #1

declare dso_local i32 @PTR_ERR(%struct.mv_cesa_tdma_desc*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
