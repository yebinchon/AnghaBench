; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_r_shift.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_r_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32 }

@SJA_EN = common dso_local global i32 0, align 4
@BISTEN_LSB = common dso_local global i32 0, align 4
@R_OP_SHIFT = common dso_local global i32 0, align 4
@R_OPCODE_LSB = common dso_local global i32 0, align 4
@R_TDI_LSB = common dso_local global i32 0, align 4
@kr_r_access = common dso_local global i32 0, align 4
@kr_scratch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_devdata*, i32, i32, i32*, i32*)* @qib_r_shift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_r_shift(%struct.qib_devdata* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.qib_devdata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load i32, i32* @SJA_EN, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @BISTEN_LSB, align 4
  %19 = shl i32 %17, %18
  %20 = or i32 %16, %19
  %21 = load i32, i32* @R_OP_SHIFT, align 4
  %22 = load i32, i32* @R_OPCODE_LSB, align 4
  %23 = shl i32 %21, %22
  %24 = or i32 %20, %23
  store i32 %24, i32* %11, align 4
  %25 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %26 = call i32 @qib_r_wait_for_rdy(%struct.qib_devdata* %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  br label %118

30:                                               ; preds = %5
  store i32 0, i32* %14, align 4
  br label %31

31:                                               ; preds = %95, %30
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %98

35:                                               ; preds = %31
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %12, align 4
  %37 = load i32*, i32** %10, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %62

39:                                               ; preds = %35
  %40 = load i32, i32* %14, align 4
  %41 = and i32 %40, 7
  %42 = shl i32 1, %41
  %43 = xor i32 %42, -1
  %44 = load i32*, i32** %10, align 8
  %45 = load i32, i32* %14, align 4
  %46 = ashr i32 %45, 3
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %43
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %14, align 4
  %53 = and i32 %52, 7
  %54 = shl i32 %51, %53
  %55 = load i32*, i32** %10, align 8
  %56 = load i32, i32* %14, align 4
  %57 = ashr i32 %56, 3
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %54
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %39, %35
  %63 = load i32*, i32** %9, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %81

65:                                               ; preds = %62
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* %14, align 4
  %68 = ashr i32 %67, 3
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %14, align 4
  %73 = and i32 %72, 7
  %74 = ashr i32 %71, %73
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = and i32 %75, 1
  %77 = load i32, i32* @R_TDI_LSB, align 4
  %78 = shl i32 %76, %77
  %79 = load i32, i32* %12, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %12, align 4
  br label %81

81:                                               ; preds = %65, %62
  %82 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %83 = load i32, i32* @kr_r_access, align 4
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @qib_write_kreg(%struct.qib_devdata* %82, i32 %83, i32 %84)
  %86 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %87 = load i32, i32* @kr_scratch, align 4
  %88 = call i32 @qib_read_kreg32(%struct.qib_devdata* %86, i32 %87)
  %89 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %90 = call i32 @qib_r_wait_for_rdy(%struct.qib_devdata* %89)
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %81
  br label %98

94:                                               ; preds = %81
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %14, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %14, align 4
  br label %31

98:                                               ; preds = %93, %31
  %99 = load i32, i32* @SJA_EN, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @BISTEN_LSB, align 4
  %102 = shl i32 %100, %101
  %103 = or i32 %99, %102
  store i32 %103, i32* %12, align 4
  %104 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %105 = load i32, i32* @kr_r_access, align 4
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @qib_write_kreg(%struct.qib_devdata* %104, i32 %105, i32 %106)
  %108 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %109 = load i32, i32* @kr_scratch, align 4
  %110 = call i32 @qib_read_kreg32(%struct.qib_devdata* %108, i32 %109)
  %111 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %112 = call i32 @qib_r_wait_for_rdy(%struct.qib_devdata* %111)
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %13, align 4
  %114 = icmp sge i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %98
  %116 = load i32, i32* %14, align 4
  store i32 %116, i32* %13, align 4
  br label %117

117:                                              ; preds = %115, %98
  br label %118

118:                                              ; preds = %117, %29
  %119 = load i32, i32* %13, align 4
  ret i32 %119
}

declare dso_local i32 @qib_r_wait_for_rdy(%struct.qib_devdata*) #1

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i32) #1

declare dso_local i32 @qib_read_kreg32(%struct.qib_devdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
