; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_sdma_7322_p_errors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_sdma_7322_p_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { i32, %struct.TYPE_4__, %struct.TYPE_3__*, i32, %struct.qib_devdata* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.qib_devdata = type { i32 }

@QIB_E_P_SDMAERRS = common dso_local global i32 0, align 4
@qib_7322p_error_msgs = common dso_local global i32 0, align 4
@QIB_E_P_SDMAUNEXPDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"IB%u:%u SDmaUnexpData\0A\00", align 1
@QIB_E_P_SDMAHALT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"SDMA %s 0x%016llx %s\0A\00", align 1
@qib_sdma_state_names = common dso_local global i32* null, align 8
@qib_sdma_event_e20_hw_started = common dso_local global i32 0, align 4
@qib_sdma_event_e50_hw_cleaned = common dso_local global i32 0, align 4
@qib_sdma_event_e60_hw_halted = common dso_local global i32 0, align 4
@qib_sdma_event_e7322_err_halted = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_pportdata*, i32)* @sdma_7322_p_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_7322_p_errors(%struct.qib_pportdata* %0, i32 %1) #0 {
  %3 = alloca %struct.qib_pportdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.qib_devdata*, align 8
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %8 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %7, i32 0, i32 4
  %9 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  store %struct.qib_devdata* %9, %struct.qib_devdata** %6, align 8
  %10 = load i32, i32* @QIB_E_P_SDMAERRS, align 4
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %4, align 4
  %13 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %14 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %13, i32 0, i32 2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @qib_7322p_error_msgs, align 4
  %20 = call i32 @err_decode(i32 %17, i32 4, i32 %18, i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @QIB_E_P_SDMAUNEXPDATA, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %2
  %26 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %27 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %28 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %31 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @qib_dev_err(%struct.qib_devdata* %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32)
  br label %34

34:                                               ; preds = %25, %2
  %35 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %36 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %35, i32 0, i32 0
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @QIB_E_P_SDMAHALT, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %63

42:                                               ; preds = %34
  %43 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %44 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %45 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load i32*, i32** @qib_sdma_state_names, align 8
  %48 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %49 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %56 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %55, i32 0, i32 2
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @qib_dev_porterr(%struct.qib_devdata* %43, i32 %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %54, i32 %59)
  %61 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %62 = call i32 @dump_sdma_7322_state(%struct.qib_pportdata* %61)
  br label %63

63:                                               ; preds = %42, %34
  %64 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %65 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  switch i64 %67, label %108 [
    i64 134, label %68
    i64 133, label %69
    i64 132, label %79
    i64 131, label %80
    i64 130, label %81
    i64 129, label %91
    i64 128, label %101
  ]

68:                                               ; preds = %63
  br label %108

69:                                               ; preds = %63
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @QIB_E_P_SDMAHALT, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %76 = load i32, i32* @qib_sdma_event_e20_hw_started, align 4
  %77 = call i32 @__qib_sdma_process_event(%struct.qib_pportdata* %75, i32 %76)
  br label %78

78:                                               ; preds = %74, %69
  br label %108

79:                                               ; preds = %63
  br label %108

80:                                               ; preds = %63
  br label %108

81:                                               ; preds = %63
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @QIB_E_P_SDMAHALT, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %88 = load i32, i32* @qib_sdma_event_e50_hw_cleaned, align 4
  %89 = call i32 @__qib_sdma_process_event(%struct.qib_pportdata* %87, i32 %88)
  br label %90

90:                                               ; preds = %86, %81
  br label %108

91:                                               ; preds = %63
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @QIB_E_P_SDMAHALT, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %98 = load i32, i32* @qib_sdma_event_e60_hw_halted, align 4
  %99 = call i32 @__qib_sdma_process_event(%struct.qib_pportdata* %97, i32 %98)
  br label %100

100:                                              ; preds = %96, %91
  br label %108

101:                                              ; preds = %63
  %102 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %103 = load i32, i32* @qib_sdma_event_e7322_err_halted, align 4
  %104 = call i32 @__qib_sdma_process_event(%struct.qib_pportdata* %102, i32 %103)
  %105 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %106 = load i32, i32* @qib_sdma_event_e60_hw_halted, align 4
  %107 = call i32 @__qib_sdma_process_event(%struct.qib_pportdata* %105, i32 %106)
  br label %108

108:                                              ; preds = %63, %101, %100, %90, %80, %79, %78, %68
  %109 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %110 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %109, i32 0, i32 0
  %111 = load i64, i64* %5, align 8
  %112 = call i32 @spin_unlock_irqrestore(i32* %110, i64 %111)
  ret void
}

declare dso_local i32 @err_decode(i32, i32, i32, i32) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @qib_dev_porterr(%struct.qib_devdata*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @dump_sdma_7322_state(%struct.qib_pportdata*) #1

declare dso_local i32 @__qib_sdma_process_event(%struct.qib_pportdata*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
