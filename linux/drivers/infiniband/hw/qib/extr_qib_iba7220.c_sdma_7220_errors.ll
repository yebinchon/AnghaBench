; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7220.c_sdma_7220_errors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7220.c_sdma_7220_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { i32, %struct.TYPE_4__, i32, %struct.qib_devdata* }
%struct.TYPE_4__ = type { i32 }
%struct.qib_devdata = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }

@QLOGIC_IB_E_SDMAERRS = common dso_local global i32 0, align 4
@SendBufMisuseErr = common dso_local global i32 0, align 4
@kr_sendbuffererror = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"IB%u:%u SendBufMisuse: %04lx %016lx %016lx\0A\00", align 1
@SDmaUnexpDataErr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"IB%u:%u SDmaUnexpData\0A\00", align 1
@SDmaDisabledErr = common dso_local global i32 0, align 4
@qib_sdma_event_e50_hw_cleaned = common dso_local global i32 0, align 4
@DISABLES_SDMA = common dso_local global i32 0, align 4
@qib_sdma_event_e7220_err_halted = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_pportdata*, i32)* @sdma_7220_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_7220_errors(%struct.qib_pportdata* %0, i32 %1) #0 {
  %3 = alloca %struct.qib_pportdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.qib_devdata*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [3 x i64], align 16
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %10 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %9, i32 0, i32 3
  %11 = load %struct.qib_devdata*, %struct.qib_devdata** %10, align 8
  store %struct.qib_devdata* %11, %struct.qib_devdata** %6, align 8
  %12 = load i32, i32* @QLOGIC_IB_E_SDMAERRS, align 4
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %4, align 4
  %15 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %16 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %7, align 8
  %20 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @qib_decode_7220_sdma_errs(%struct.qib_pportdata* %20, i32 %21, i8* %22, i32 8)
  %24 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %25 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %24, i32 0, i32 0
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @SendBufMisuseErr, align 4
  %30 = call i32 @ERR_MASK(i32 %29)
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %66

33:                                               ; preds = %2
  %34 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %35 = load i64, i64* @kr_sendbuffererror, align 8
  %36 = call i64 @qib_read_kreg64(%struct.qib_devdata* %34, i64 %35)
  %37 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  store i64 %36, i64* %37, align 16
  %38 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %39 = load i64, i64* @kr_sendbuffererror, align 8
  %40 = add nsw i64 %39, 1
  %41 = call i64 @qib_read_kreg64(%struct.qib_devdata* %38, i64 %40)
  %42 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 1
  store i64 %41, i64* %42, align 8
  %43 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %44 = load i64, i64* @kr_sendbuffererror, align 8
  %45 = add nsw i64 %44, 2
  %46 = call i64 @qib_read_kreg64(%struct.qib_devdata* %43, i64 %45)
  %47 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 2
  store i64 %46, i64* %47, align 16
  %48 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %49 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %48, i32 0, i32 3
  %50 = load %struct.qib_devdata*, %struct.qib_devdata** %49, align 8
  %51 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %52 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %51, i32 0, i32 3
  %53 = load %struct.qib_devdata*, %struct.qib_devdata** %52, align 8
  %54 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %57 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 2
  %60 = load i64, i64* %59, align 16
  %61 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 1
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %64 = load i64, i64* %63, align 16
  %65 = call i32 (%struct.qib_devdata*, i8*, i32, i32, ...) @qib_dev_err(%struct.qib_devdata* %50, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %58, i64 %60, i64 %62, i64 %64)
  br label %66

66:                                               ; preds = %33, %2
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @SDmaUnexpDataErr, align 4
  %69 = call i32 @ERR_MASK(i32 %68)
  %70 = and i32 %67, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %66
  %73 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %74 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %75 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %74, i32 0, i32 3
  %76 = load %struct.qib_devdata*, %struct.qib_devdata** %75, align 8
  %77 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %80 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (%struct.qib_devdata*, i8*, i32, i32, ...) @qib_dev_err(%struct.qib_devdata* %73, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %81)
  br label %83

83:                                               ; preds = %72, %66
  %84 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %85 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  switch i32 %87, label %114 [
    i32 134, label %88
    i32 133, label %89
    i32 132, label %90
    i32 131, label %91
    i32 130, label %92
    i32 129, label %103
    i32 128, label %104
  ]

88:                                               ; preds = %83
  br label %114

89:                                               ; preds = %83
  br label %114

90:                                               ; preds = %83
  br label %114

91:                                               ; preds = %83
  br label %114

92:                                               ; preds = %83
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @SDmaDisabledErr, align 4
  %95 = call i32 @ERR_MASK(i32 %94)
  %96 = and i32 %93, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %100 = load i32, i32* @qib_sdma_event_e50_hw_cleaned, align 4
  %101 = call i32 @__qib_sdma_process_event(%struct.qib_pportdata* %99, i32 %100)
  br label %102

102:                                              ; preds = %98, %92
  br label %114

103:                                              ; preds = %83
  br label %114

104:                                              ; preds = %83
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @DISABLES_SDMA, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %111 = load i32, i32* @qib_sdma_event_e7220_err_halted, align 4
  %112 = call i32 @__qib_sdma_process_event(%struct.qib_pportdata* %110, i32 %111)
  br label %113

113:                                              ; preds = %109, %104
  br label %114

114:                                              ; preds = %83, %113, %103, %102, %91, %90, %89, %88
  %115 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %116 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %115, i32 0, i32 0
  %117 = load i64, i64* %5, align 8
  %118 = call i32 @spin_unlock_irqrestore(i32* %116, i64 %117)
  ret void
}

declare dso_local i32 @qib_decode_7220_sdma_errs(%struct.qib_pportdata*, i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ERR_MASK(i32) #1

declare dso_local i64 @qib_read_kreg64(%struct.qib_devdata*, i64) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*, i32, i32, ...) #1

declare dso_local i32 @__qib_sdma_process_event(%struct.qib_pportdata*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
