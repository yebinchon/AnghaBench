; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_tdma.c_mv_cesa_dma_add_result_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_tdma.c_mv_cesa_dma_add_result_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_cesa_tdma_chain = type { %struct.mv_cesa_tdma_desc* }
%struct.mv_cesa_tdma_desc = type { i64, i32, i32, i32, i32, %struct.mv_cesa_tdma_desc* }

@CESA_TDMA_TYPE_MSK = common dso_local global i64 0, align 8
@CESA_TDMA_OP = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@CESA_TDMA_DST_IN_SRAM = common dso_local global i64 0, align 8
@CESA_TDMA_SRC_IN_SRAM = common dso_local global i64 0, align 8
@CESA_TDMA_RESULT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv_cesa_dma_add_result_op(%struct.mv_cesa_tdma_chain* %0, i32 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mv_cesa_tdma_chain*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mv_cesa_tdma_desc*, align 8
  %13 = alloca %struct.mv_cesa_tdma_desc*, align 8
  %14 = alloca i64, align 8
  store %struct.mv_cesa_tdma_chain* %0, %struct.mv_cesa_tdma_chain** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.mv_cesa_tdma_chain*, %struct.mv_cesa_tdma_chain** %7, align 8
  %16 = load i32, i32* %11, align 4
  %17 = call %struct.mv_cesa_tdma_desc* @mv_cesa_dma_add_desc(%struct.mv_cesa_tdma_chain* %15, i32 %16)
  store %struct.mv_cesa_tdma_desc* %17, %struct.mv_cesa_tdma_desc** %12, align 8
  %18 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %12, align 8
  %19 = call i64 @IS_ERR(%struct.mv_cesa_tdma_desc* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %12, align 8
  %23 = call i32 @PTR_ERR(%struct.mv_cesa_tdma_desc* %22)
  store i32 %23, i32* %6, align 4
  br label %82

24:                                               ; preds = %5
  %25 = load %struct.mv_cesa_tdma_chain*, %struct.mv_cesa_tdma_chain** %7, align 8
  %26 = getelementptr inbounds %struct.mv_cesa_tdma_chain, %struct.mv_cesa_tdma_chain* %25, i32 0, i32 0
  %27 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %26, align 8
  store %struct.mv_cesa_tdma_desc* %27, %struct.mv_cesa_tdma_desc** %13, align 8
  br label %28

28:                                               ; preds = %42, %24
  %29 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %13, align 8
  %30 = icmp ne %struct.mv_cesa_tdma_desc* %29, null
  br i1 %30, label %31, label %46

31:                                               ; preds = %28
  %32 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %13, align 8
  %33 = getelementptr inbounds %struct.mv_cesa_tdma_desc, %struct.mv_cesa_tdma_desc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CESA_TDMA_TYPE_MSK, align 8
  %36 = and i64 %34, %35
  store i64 %36, i64* %14, align 8
  %37 = load i64, i64* %14, align 8
  %38 = load i64, i64* @CESA_TDMA_OP, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %46

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %13, align 8
  %44 = getelementptr inbounds %struct.mv_cesa_tdma_desc, %struct.mv_cesa_tdma_desc* %43, i32 0, i32 5
  %45 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %44, align 8
  store %struct.mv_cesa_tdma_desc* %45, %struct.mv_cesa_tdma_desc** %13, align 8
  br label %28

46:                                               ; preds = %40, %28
  %47 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %13, align 8
  %48 = icmp ne %struct.mv_cesa_tdma_desc* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %82

52:                                               ; preds = %46
  %53 = load i64, i64* %9, align 8
  %54 = call i64 @BIT(i32 31)
  %55 = or i64 %53, %54
  %56 = call i32 @cpu_to_le32(i64 %55)
  %57 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %12, align 8
  %58 = getelementptr inbounds %struct.mv_cesa_tdma_desc, %struct.mv_cesa_tdma_desc* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %12, align 8
  %61 = getelementptr inbounds %struct.mv_cesa_tdma_desc, %struct.mv_cesa_tdma_desc* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %13, align 8
  %63 = getelementptr inbounds %struct.mv_cesa_tdma_desc, %struct.mv_cesa_tdma_desc* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %12, align 8
  %66 = getelementptr inbounds %struct.mv_cesa_tdma_desc, %struct.mv_cesa_tdma_desc* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %13, align 8
  %68 = getelementptr inbounds %struct.mv_cesa_tdma_desc, %struct.mv_cesa_tdma_desc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %12, align 8
  %71 = getelementptr inbounds %struct.mv_cesa_tdma_desc, %struct.mv_cesa_tdma_desc* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = load i64, i64* @CESA_TDMA_DST_IN_SRAM, align 8
  %73 = load i64, i64* @CESA_TDMA_SRC_IN_SRAM, align 8
  %74 = or i64 %72, %73
  %75 = load i64, i64* %10, align 8
  %76 = and i64 %75, %74
  store i64 %76, i64* %10, align 8
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* @CESA_TDMA_RESULT, align 8
  %79 = or i64 %77, %78
  %80 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %12, align 8
  %81 = getelementptr inbounds %struct.mv_cesa_tdma_desc, %struct.mv_cesa_tdma_desc* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %52, %49, %21
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local %struct.mv_cesa_tdma_desc* @mv_cesa_dma_add_desc(%struct.mv_cesa_tdma_chain*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mv_cesa_tdma_desc*) #1

declare dso_local i32 @PTR_ERR(%struct.mv_cesa_tdma_desc*) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i64 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
