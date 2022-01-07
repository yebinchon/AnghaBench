; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pio.c_sc_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pio.c_sc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_context = type { i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64*, %struct.hfi1_devdata* }
%struct.hfi1_devdata = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CTRL = common dso_local global i32 0, align 4
@CTRL_CTXT_ENABLE_SMASK = common dso_local global i32 0, align 4
@ERR_STATUS = common dso_local global i32 0, align 4
@ERR_CLEAR = common dso_local global i32 0, align 4
@SEND_PIO_INIT_CTXT_PIO_CTXT_NUM_MASK = common dso_local global i32 0, align 4
@SEND_PIO_INIT_CTXT_PIO_CTXT_NUM_SHIFT = common dso_local global i32 0, align 4
@SEND_PIO_INIT_CTXT_PIO_SINGLE_CTXT_INIT_SMASK = common dso_local global i32 0, align 4
@SEND_PIO_INIT_CTXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"sctxt%u(%u): Context not enabled due to init failure %d\0A\00", align 1
@SCF_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sc_enable(%struct.send_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.send_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hfi1_devdata*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.send_context* %0, %struct.send_context** %3, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.send_context*, %struct.send_context** %3, align 8
  %11 = icmp ne %struct.send_context* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %140

15:                                               ; preds = %1
  %16 = load %struct.send_context*, %struct.send_context** %3, align 8
  %17 = getelementptr inbounds %struct.send_context, %struct.send_context* %16, i32 0, i32 11
  %18 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %17, align 8
  store %struct.hfi1_devdata* %18, %struct.hfi1_devdata** %7, align 8
  %19 = load %struct.send_context*, %struct.send_context** %3, align 8
  %20 = getelementptr inbounds %struct.send_context, %struct.send_context* %19, i32 0, i32 1
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %24 = load %struct.send_context*, %struct.send_context** %3, align 8
  %25 = getelementptr inbounds %struct.send_context, %struct.send_context* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @CTRL, align 4
  %28 = call i32 @SC(i32 %27)
  %29 = call i32 @read_kctxt_csr(%struct.hfi1_devdata* %23, i32 %26, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @CTRL_CTXT_ENABLE_SMASK, align 4
  %32 = call i32 @SC(i32 %31)
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %15
  br label %134

36:                                               ; preds = %15
  %37 = load %struct.send_context*, %struct.send_context** %3, align 8
  %38 = getelementptr inbounds %struct.send_context, %struct.send_context* %37, i32 0, i32 10
  %39 = load i64*, i64** %38, align 8
  store i64 0, i64* %39, align 8
  %40 = load %struct.send_context*, %struct.send_context** %3, align 8
  %41 = getelementptr inbounds %struct.send_context, %struct.send_context* %40, i32 0, i32 9
  store i64 0, i64* %41, align 8
  %42 = load %struct.send_context*, %struct.send_context** %3, align 8
  %43 = getelementptr inbounds %struct.send_context, %struct.send_context* %42, i32 0, i32 8
  store i64 0, i64* %43, align 8
  %44 = load %struct.send_context*, %struct.send_context** %3, align 8
  %45 = getelementptr inbounds %struct.send_context, %struct.send_context* %44, i32 0, i32 7
  store i64 0, i64* %45, align 8
  %46 = load %struct.send_context*, %struct.send_context** %3, align 8
  %47 = getelementptr inbounds %struct.send_context, %struct.send_context* %46, i32 0, i32 6
  store i64 0, i64* %47, align 8
  %48 = load %struct.send_context*, %struct.send_context** %3, align 8
  %49 = getelementptr inbounds %struct.send_context, %struct.send_context* %48, i32 0, i32 5
  store i64 0, i64* %49, align 8
  %50 = load %struct.send_context*, %struct.send_context** %3, align 8
  %51 = getelementptr inbounds %struct.send_context, %struct.send_context* %50, i32 0, i32 4
  store i64 0, i64* %51, align 8
  %52 = load %struct.send_context*, %struct.send_context** %3, align 8
  %53 = getelementptr inbounds %struct.send_context, %struct.send_context* %52, i32 0, i32 2
  store i32 0, i32* %53, align 8
  %54 = load %struct.send_context*, %struct.send_context** %3, align 8
  %55 = call i32 @reset_buffers_allocated(%struct.send_context* %54)
  %56 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %57 = load %struct.send_context*, %struct.send_context** %3, align 8
  %58 = getelementptr inbounds %struct.send_context, %struct.send_context* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @ERR_STATUS, align 4
  %61 = call i32 @SC(i32 %60)
  %62 = call i32 @read_kctxt_csr(%struct.hfi1_devdata* %56, i32 %59, i32 %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %36
  %66 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %67 = load %struct.send_context*, %struct.send_context** %3, align 8
  %68 = getelementptr inbounds %struct.send_context, %struct.send_context* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @ERR_CLEAR, align 4
  %71 = call i32 @SC(i32 %70)
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %66, i32 %69, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %65, %36
  %75 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %76 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %75, i32 0, i32 0
  %77 = call i32 @spin_lock(i32* %76)
  %78 = load %struct.send_context*, %struct.send_context** %3, align 8
  %79 = getelementptr inbounds %struct.send_context, %struct.send_context* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @SEND_PIO_INIT_CTXT_PIO_CTXT_NUM_MASK, align 4
  %82 = and i32 %80, %81
  %83 = load i32, i32* @SEND_PIO_INIT_CTXT_PIO_CTXT_NUM_SHIFT, align 4
  %84 = shl i32 %82, %83
  %85 = load i32, i32* @SEND_PIO_INIT_CTXT_PIO_SINGLE_CTXT_INIT_SMASK, align 4
  %86 = or i32 %84, %85
  store i32 %86, i32* %6, align 4
  %87 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %88 = load i32, i32* @SEND_PIO_INIT_CTXT, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @write_csr(%struct.hfi1_devdata* %87, i32 %88, i32 %89)
  %91 = call i32 @udelay(i32 2)
  %92 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %93 = call i32 @pio_init_wait_progress(%struct.hfi1_devdata* %92)
  store i32 %93, i32* %9, align 4
  %94 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %95 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %94, i32 0, i32 0
  %96 = call i32 @spin_unlock(i32* %95)
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %74
  %100 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %101 = load %struct.send_context*, %struct.send_context** %3, align 8
  %102 = getelementptr inbounds %struct.send_context, %struct.send_context* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.send_context*, %struct.send_context** %3, align 8
  %105 = getelementptr inbounds %struct.send_context, %struct.send_context* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @dd_dev_err(%struct.hfi1_devdata* %100, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %103, i32 %106, i32 %107)
  br label %134

109:                                              ; preds = %74
  %110 = load i32, i32* @CTRL_CTXT_ENABLE_SMASK, align 4
  %111 = call i32 @SC(i32 %110)
  %112 = load i32, i32* %4, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %4, align 4
  %114 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %115 = load %struct.send_context*, %struct.send_context** %3, align 8
  %116 = getelementptr inbounds %struct.send_context, %struct.send_context* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @CTRL, align 4
  %119 = call i32 @SC(i32 %118)
  %120 = load i32, i32* %4, align 4
  %121 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %114, i32 %117, i32 %119, i32 %120)
  %122 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %123 = load %struct.send_context*, %struct.send_context** %3, align 8
  %124 = getelementptr inbounds %struct.send_context, %struct.send_context* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @CTRL, align 4
  %127 = call i32 @SC(i32 %126)
  %128 = call i32 @read_kctxt_csr(%struct.hfi1_devdata* %122, i32 %125, i32 %127)
  %129 = load i32, i32* @SCF_ENABLED, align 4
  %130 = load %struct.send_context*, %struct.send_context** %3, align 8
  %131 = getelementptr inbounds %struct.send_context, %struct.send_context* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 8
  br label %134

134:                                              ; preds = %109, %99, %35
  %135 = load %struct.send_context*, %struct.send_context** %3, align 8
  %136 = getelementptr inbounds %struct.send_context, %struct.send_context* %135, i32 0, i32 1
  %137 = load i64, i64* %8, align 8
  %138 = call i32 @spin_unlock_irqrestore(i32* %136, i64 %137)
  %139 = load i32, i32* %9, align 4
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %134, %12
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @read_kctxt_csr(%struct.hfi1_devdata*, i32, i32) #1

declare dso_local i32 @SC(i32) #1

declare dso_local i32 @reset_buffers_allocated(%struct.send_context*) #1

declare dso_local i32 @write_kctxt_csr(%struct.hfi1_devdata*, i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pio_init_wait_progress(%struct.hfi1_devdata*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
