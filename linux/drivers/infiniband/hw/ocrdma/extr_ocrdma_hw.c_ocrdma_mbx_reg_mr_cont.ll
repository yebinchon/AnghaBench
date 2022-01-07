; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_reg_mr_cont.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_reg_mr_cont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { i32 }
%struct.ocrdma_hw_mr = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ocrdma_reg_nsmr_cont = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ocrdma_mqe = type { i32 }

@OCRDMA_CMD_REGISTER_NSMR_CONT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OCRDMA_REG_NSMR_CONT_NUM_PBL_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_REG_NSMR_CONT_PBL_SHIFT_MASK = common dso_local global i32 0, align 4
@OCRDMA_REG_NSMR_CONT_LAST_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_dev*, %struct.ocrdma_hw_mr*, i32, i32, i32)* @ocrdma_mbx_reg_mr_cont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_mbx_reg_mr_cont(%struct.ocrdma_dev* %0, %struct.ocrdma_hw_mr* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocrdma_dev*, align 8
  %8 = alloca %struct.ocrdma_hw_mr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ocrdma_reg_nsmr_cont*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %7, align 8
  store %struct.ocrdma_hw_mr* %1, %struct.ocrdma_hw_mr** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* @OCRDMA_CMD_REGISTER_NSMR_CONT, align 4
  %16 = call %struct.ocrdma_reg_nsmr_cont* @ocrdma_init_emb_mqe(i32 %15, i32 24)
  store %struct.ocrdma_reg_nsmr_cont* %16, %struct.ocrdma_reg_nsmr_cont** %14, align 8
  %17 = load %struct.ocrdma_reg_nsmr_cont*, %struct.ocrdma_reg_nsmr_cont** %14, align 8
  %18 = icmp ne %struct.ocrdma_reg_nsmr_cont* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %93

22:                                               ; preds = %5
  %23 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %8, align 8
  %24 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ocrdma_reg_nsmr_cont*, %struct.ocrdma_reg_nsmr_cont** %14, align 8
  %27 = getelementptr inbounds %struct.ocrdma_reg_nsmr_cont, %struct.ocrdma_reg_nsmr_cont* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @OCRDMA_REG_NSMR_CONT_NUM_PBL_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @OCRDMA_REG_NSMR_CONT_PBL_SHIFT_MASK, align 4
  %33 = and i32 %31, %32
  %34 = or i32 %30, %33
  %35 = load %struct.ocrdma_reg_nsmr_cont*, %struct.ocrdma_reg_nsmr_cont** %14, align 8
  %36 = getelementptr inbounds %struct.ocrdma_reg_nsmr_cont, %struct.ocrdma_reg_nsmr_cont* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @OCRDMA_REG_NSMR_CONT_LAST_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = load %struct.ocrdma_reg_nsmr_cont*, %struct.ocrdma_reg_nsmr_cont** %14, align 8
  %41 = getelementptr inbounds %struct.ocrdma_reg_nsmr_cont, %struct.ocrdma_reg_nsmr_cont* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  store i32 0, i32* %13, align 4
  br label %42

42:                                               ; preds = %82, %22
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %85

46:                                               ; preds = %42
  %47 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %8, align 8
  %48 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ocrdma_reg_nsmr_cont*, %struct.ocrdma_reg_nsmr_cont** %14, align 8
  %58 = getelementptr inbounds %struct.ocrdma_reg_nsmr_cont, %struct.ocrdma_reg_nsmr_cont* %57, i32 0, i32 2
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32 %56, i32* %63, align 4
  %64 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %8, align 8
  %65 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @upper_32_bits(i32 %73)
  %75 = load %struct.ocrdma_reg_nsmr_cont*, %struct.ocrdma_reg_nsmr_cont** %14, align 8
  %76 = getelementptr inbounds %struct.ocrdma_reg_nsmr_cont, %struct.ocrdma_reg_nsmr_cont* %75, i32 0, i32 2
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  store i32 %74, i32* %81, align 4
  br label %82

82:                                               ; preds = %46
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %13, align 4
  br label %42

85:                                               ; preds = %42
  %86 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %7, align 8
  %87 = load %struct.ocrdma_reg_nsmr_cont*, %struct.ocrdma_reg_nsmr_cont** %14, align 8
  %88 = bitcast %struct.ocrdma_reg_nsmr_cont* %87 to %struct.ocrdma_mqe*
  %89 = call i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev* %86, %struct.ocrdma_mqe* %88)
  store i32 %89, i32* %12, align 4
  %90 = load %struct.ocrdma_reg_nsmr_cont*, %struct.ocrdma_reg_nsmr_cont** %14, align 8
  %91 = call i32 @kfree(%struct.ocrdma_reg_nsmr_cont* %90)
  %92 = load i32, i32* %12, align 4
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %85, %19
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local %struct.ocrdma_reg_nsmr_cont* @ocrdma_init_emb_mqe(i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev*, %struct.ocrdma_mqe*) #1

declare dso_local i32 @kfree(%struct.ocrdma_reg_nsmr_cont*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
