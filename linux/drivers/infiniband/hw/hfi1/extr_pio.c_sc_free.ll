; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pio.c_sc_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pio.c_sc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_context = type { i64, i64, i32, %struct.send_context*, i32, i32, %struct.hfi1_devdata*, i32 }
%struct.hfi1_devdata = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@SCF_IN_FREE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"piowait list not empty!\0A\00", align 1
@CTRL = common dso_local global i32 0, align 4
@CHECK_ENABLE = common dso_local global i32 0, align 4
@ERR_MASK = common dso_local global i32 0, align 4
@CHECK_PARTITION_KEY = common dso_local global i32 0, align 4
@CHECK_OPCODE = common dso_local global i32 0, align 4
@CREDIT_RETURN_ADDR = common dso_local global i32 0, align 4
@CREDIT_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sc_free(%struct.send_context* %0) #0 {
  %2 = alloca %struct.send_context*, align 8
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.send_context* %0, %struct.send_context** %2, align 8
  %7 = load %struct.send_context*, %struct.send_context** %2, align 8
  %8 = icmp ne %struct.send_context* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %101

10:                                               ; preds = %1
  %11 = load i32, i32* @SCF_IN_FREE, align 4
  %12 = load %struct.send_context*, %struct.send_context** %2, align 8
  %13 = getelementptr inbounds %struct.send_context, %struct.send_context* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 8
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 8
  %16 = load %struct.send_context*, %struct.send_context** %2, align 8
  %17 = getelementptr inbounds %struct.send_context, %struct.send_context* %16, i32 0, i32 6
  %18 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %17, align 8
  store %struct.hfi1_devdata* %18, %struct.hfi1_devdata** %3, align 8
  %19 = load %struct.send_context*, %struct.send_context** %2, align 8
  %20 = getelementptr inbounds %struct.send_context, %struct.send_context* %19, i32 0, i32 5
  %21 = call i32 @list_empty(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %10
  %24 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %25 = call i32 @dd_dev_err(%struct.hfi1_devdata* %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %10
  %27 = load %struct.send_context*, %struct.send_context** %2, align 8
  %28 = getelementptr inbounds %struct.send_context, %struct.send_context* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %5, align 8
  %30 = load %struct.send_context*, %struct.send_context** %2, align 8
  %31 = getelementptr inbounds %struct.send_context, %struct.send_context* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %6, align 8
  %33 = load %struct.send_context*, %struct.send_context** %2, align 8
  %34 = call i32 @sc_disable(%struct.send_context* %33)
  %35 = load %struct.send_context*, %struct.send_context** %2, align 8
  %36 = getelementptr inbounds %struct.send_context, %struct.send_context* %35, i32 0, i32 4
  %37 = call i32 @flush_work(i32* %36)
  %38 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %39 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %38, i32 0, i32 0
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %43 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i64, i64* %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  %48 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load i32, i32* @CTRL, align 4
  %51 = call i32 @SC(i32 %50)
  %52 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %48, i64 %49, i32 %51, i32 0)
  %53 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load i32, i32* @CHECK_ENABLE, align 4
  %56 = call i32 @SC(i32 %55)
  %57 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %53, i64 %54, i32 %56, i32 0)
  %58 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load i32, i32* @ERR_MASK, align 4
  %61 = call i32 @SC(i32 %60)
  %62 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %58, i64 %59, i32 %61, i32 0)
  %63 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load i32, i32* @CHECK_PARTITION_KEY, align 4
  %66 = call i32 @SC(i32 %65)
  %67 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %63, i64 %64, i32 %66, i32 0)
  %68 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %69 = load i64, i64* %6, align 8
  %70 = load i32, i32* @CHECK_OPCODE, align 4
  %71 = call i32 @SC(i32 %70)
  %72 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %68, i64 %69, i32 %71, i32 0)
  %73 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %74 = load i64, i64* %6, align 8
  %75 = load i32, i32* @CREDIT_RETURN_ADDR, align 4
  %76 = call i32 @SC(i32 %75)
  %77 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %73, i64 %74, i32 %76, i32 0)
  %78 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %79 = load i64, i64* %6, align 8
  %80 = load i32, i32* @CREDIT_CTRL, align 4
  %81 = call i32 @SC(i32 %80)
  %82 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %78, i64 %79, i32 %81, i32 0)
  %83 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %84 = load i64, i64* %5, align 8
  %85 = load i64, i64* %6, align 8
  %86 = call i32 @sc_hw_free(%struct.hfi1_devdata* %83, i64 %84, i64 %85)
  %87 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %88 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %87, i32 0, i32 0
  %89 = load i64, i64* %4, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* %88, i64 %89)
  %91 = load %struct.send_context*, %struct.send_context** %2, align 8
  %92 = getelementptr inbounds %struct.send_context, %struct.send_context* %91, i32 0, i32 3
  %93 = load %struct.send_context*, %struct.send_context** %92, align 8
  %94 = call i32 @kfree(%struct.send_context* %93)
  %95 = load %struct.send_context*, %struct.send_context** %2, align 8
  %96 = getelementptr inbounds %struct.send_context, %struct.send_context* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @free_percpu(i32 %97)
  %99 = load %struct.send_context*, %struct.send_context** %2, align 8
  %100 = call i32 @kfree(%struct.send_context* %99)
  br label %101

101:                                              ; preds = %26, %9
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*) #1

declare dso_local i32 @sc_disable(%struct.send_context*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @write_kctxt_csr(%struct.hfi1_devdata*, i64, i32, i32) #1

declare dso_local i32 @SC(i32) #1

declare dso_local i32 @sc_hw_free(%struct.hfi1_devdata*, i64, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.send_context*) #1

declare dso_local i32 @free_percpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
