; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_reset_cce_csrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_reset_cce_csrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }

@ALL_FROZE = common dso_local global i32 0, align 4
@CCE_CTRL_SPC_UNFREEZE_SMASK = common dso_local global i32 0, align 4
@ALL_TXE_PAUSE = common dso_local global i32 0, align 4
@CCE_CTRL_TXE_RESUME_SMASK = common dso_local global i32 0, align 4
@ALL_RXE_PAUSE = common dso_local global i32 0, align 4
@CCE_CTRL_RXE_RESUME_SMASK = common dso_local global i32 0, align 4
@CCE_NUM_SCRATCH = common dso_local global i32 0, align 4
@CCE_SCRATCH = common dso_local global i64 0, align 8
@CCE_ERR_MASK = common dso_local global i64 0, align 8
@CCE_ERR_CLEAR = common dso_local global i64 0, align 8
@CCE_NUM_32_BIT_COUNTERS = common dso_local global i32 0, align 4
@CCE_COUNTER_ARRAY32 = common dso_local global i64 0, align 8
@CCE_DC_CTRL = common dso_local global i64 0, align 8
@CCE_DC_CTRL_RESETCSR = common dso_local global i64 0, align 8
@CCE_NUM_MSIX_VECTORS = common dso_local global i32 0, align 4
@CCE_MSIX_TABLE_LOWER = common dso_local global i64 0, align 8
@CCE_MSIX_TABLE_UPPER = common dso_local global i64 0, align 8
@CCE_MSIX_TABLE_UPPER_RESETCSR = common dso_local global i64 0, align 8
@CCE_NUM_MSIX_PBAS = common dso_local global i32 0, align 4
@CCE_MSIX_INT_GRANTED = common dso_local global i64 0, align 8
@CCE_MSIX_VEC_CLR_WITHOUT_INT = common dso_local global i64 0, align 8
@CCE_NUM_INT_MAP_CSRS = common dso_local global i32 0, align 4
@CCE_INT_MAP = common dso_local global i64 0, align 8
@CCE_NUM_INT_CSRS = common dso_local global i32 0, align 4
@CCE_INT_MASK = common dso_local global i64 0, align 8
@CCE_INT_CLEAR = common dso_local global i64 0, align 8
@CCE_NUM_32_BIT_INT_COUNTERS = common dso_local global i32 0, align 4
@CCE_INT_COUNTER_ARRAY32 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*)* @reset_cce_csrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_cce_csrs(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca %struct.hfi1_devdata*, align 8
  %3 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %2, align 8
  %4 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %5 = load i32, i32* @ALL_FROZE, align 4
  %6 = load i32, i32* @CCE_CTRL_SPC_UNFREEZE_SMASK, align 4
  %7 = call i32 @clear_cce_status(%struct.hfi1_devdata* %4, i32 %5, i32 %6)
  %8 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %9 = load i32, i32* @ALL_TXE_PAUSE, align 4
  %10 = load i32, i32* @CCE_CTRL_TXE_RESUME_SMASK, align 4
  %11 = call i32 @clear_cce_status(%struct.hfi1_devdata* %8, i32 %9, i32 %10)
  %12 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %13 = load i32, i32* @ALL_RXE_PAUSE, align 4
  %14 = load i32, i32* @CCE_CTRL_RXE_RESUME_SMASK, align 4
  %15 = call i32 @clear_cce_status(%struct.hfi1_devdata* %12, i32 %13, i32 %14)
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %28, %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @CCE_NUM_SCRATCH, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %22 = load i64, i64* @CCE_SCRATCH, align 8
  %23 = load i32, i32* %3, align 4
  %24 = mul nsw i32 8, %23
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %22, %25
  %27 = call i32 @write_csr(%struct.hfi1_devdata* %21, i64 %26, i64 0)
  br label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %16

31:                                               ; preds = %16
  %32 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %33 = load i64, i64* @CCE_ERR_MASK, align 8
  %34 = call i32 @write_csr(%struct.hfi1_devdata* %32, i64 %33, i64 0)
  %35 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %36 = load i64, i64* @CCE_ERR_CLEAR, align 8
  %37 = call i32 @write_csr(%struct.hfi1_devdata* %35, i64 %36, i64 -1)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %50, %31
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @CCE_NUM_32_BIT_COUNTERS, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %44 = load i64, i64* @CCE_COUNTER_ARRAY32, align 8
  %45 = load i32, i32* %3, align 4
  %46 = mul nsw i32 8, %45
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %44, %47
  %49 = call i32 @write_csr(%struct.hfi1_devdata* %43, i64 %48, i64 0)
  br label %50

50:                                               ; preds = %42
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %38

53:                                               ; preds = %38
  %54 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %55 = load i64, i64* @CCE_DC_CTRL, align 8
  %56 = load i64, i64* @CCE_DC_CTRL_RESETCSR, align 8
  %57 = call i32 @write_csr(%struct.hfi1_devdata* %54, i64 %55, i64 %56)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %78, %53
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @CCE_NUM_MSIX_VECTORS, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %81

62:                                               ; preds = %58
  %63 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %64 = load i64, i64* @CCE_MSIX_TABLE_LOWER, align 8
  %65 = load i32, i32* %3, align 4
  %66 = mul nsw i32 8, %65
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %64, %67
  %69 = call i32 @write_csr(%struct.hfi1_devdata* %63, i64 %68, i64 0)
  %70 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %71 = load i64, i64* @CCE_MSIX_TABLE_UPPER, align 8
  %72 = load i32, i32* %3, align 4
  %73 = mul nsw i32 8, %72
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %71, %74
  %76 = load i64, i64* @CCE_MSIX_TABLE_UPPER_RESETCSR, align 8
  %77 = call i32 @write_csr(%struct.hfi1_devdata* %70, i64 %75, i64 %76)
  br label %78

78:                                               ; preds = %62
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %3, align 4
  br label %58

81:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %93, %81
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* @CCE_NUM_MSIX_PBAS, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %82
  %87 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %88 = load i64, i64* @CCE_MSIX_INT_GRANTED, align 8
  %89 = call i32 @write_csr(%struct.hfi1_devdata* %87, i64 %88, i64 -1)
  %90 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %91 = load i64, i64* @CCE_MSIX_VEC_CLR_WITHOUT_INT, align 8
  %92 = call i32 @write_csr(%struct.hfi1_devdata* %90, i64 %91, i64 -1)
  br label %93

93:                                               ; preds = %86
  %94 = load i32, i32* %3, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %3, align 4
  br label %82

96:                                               ; preds = %82
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %105, %96
  %98 = load i32, i32* %3, align 4
  %99 = load i32, i32* @CCE_NUM_INT_MAP_CSRS, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %108

101:                                              ; preds = %97
  %102 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %103 = load i64, i64* @CCE_INT_MAP, align 8
  %104 = call i32 @write_csr(%struct.hfi1_devdata* %102, i64 %103, i64 0)
  br label %105

105:                                              ; preds = %101
  %106 = load i32, i32* %3, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %3, align 4
  br label %97

108:                                              ; preds = %97
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %128, %108
  %110 = load i32, i32* %3, align 4
  %111 = load i32, i32* @CCE_NUM_INT_CSRS, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %131

113:                                              ; preds = %109
  %114 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %115 = load i64, i64* @CCE_INT_MASK, align 8
  %116 = load i32, i32* %3, align 4
  %117 = mul nsw i32 8, %116
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %115, %118
  %120 = call i32 @write_csr(%struct.hfi1_devdata* %114, i64 %119, i64 0)
  %121 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %122 = load i64, i64* @CCE_INT_CLEAR, align 8
  %123 = load i32, i32* %3, align 4
  %124 = mul nsw i32 8, %123
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %122, %125
  %127 = call i32 @write_csr(%struct.hfi1_devdata* %121, i64 %126, i64 -1)
  br label %128

128:                                              ; preds = %113
  %129 = load i32, i32* %3, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %3, align 4
  br label %109

131:                                              ; preds = %109
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %144, %131
  %133 = load i32, i32* %3, align 4
  %134 = load i32, i32* @CCE_NUM_32_BIT_INT_COUNTERS, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %147

136:                                              ; preds = %132
  %137 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %138 = load i64, i64* @CCE_INT_COUNTER_ARRAY32, align 8
  %139 = load i32, i32* %3, align 4
  %140 = mul nsw i32 8, %139
  %141 = sext i32 %140 to i64
  %142 = add nsw i64 %138, %141
  %143 = call i32 @write_csr(%struct.hfi1_devdata* %137, i64 %142, i64 0)
  br label %144

144:                                              ; preds = %136
  %145 = load i32, i32* %3, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %3, align 4
  br label %132

147:                                              ; preds = %132
  ret void
}

declare dso_local i32 @clear_cce_status(%struct.hfi1_devdata*, i32, i32) #1

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
