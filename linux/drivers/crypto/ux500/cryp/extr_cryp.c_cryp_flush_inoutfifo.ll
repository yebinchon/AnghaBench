; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ux500/cryp/extr_cryp.c_cryp_flush_inoutfifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ux500/cryp/extr_cryp.c_cryp_flush_inoutfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryp_device_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@CRYP_CRYPEN_DISABLE = common dso_local global i32 0, align 4
@CRYP_CR_FFLUSH_MASK = common dso_local global i32 0, align 4
@CRYP_SR_INFIFO_READY_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cryp_flush_inoutfifo(%struct.cryp_device_data* %0) #0 {
  %2 = alloca %struct.cryp_device_data*, align 8
  store %struct.cryp_device_data* %0, %struct.cryp_device_data** %2, align 8
  %3 = load %struct.cryp_device_data*, %struct.cryp_device_data** %2, align 8
  %4 = load i32, i32* @CRYP_CRYPEN_DISABLE, align 4
  %5 = call i32 @cryp_activity(%struct.cryp_device_data* %3, i32 %4)
  %6 = load %struct.cryp_device_data*, %struct.cryp_device_data** %2, align 8
  %7 = call i32 @cryp_wait_until_done(%struct.cryp_device_data* %6)
  %8 = load %struct.cryp_device_data*, %struct.cryp_device_data** %2, align 8
  %9 = getelementptr inbounds %struct.cryp_device_data, %struct.cryp_device_data* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* @CRYP_CR_FFLUSH_MASK, align 4
  %13 = call i32 @CRYP_SET_BITS(i32* %11, i32 %12)
  br label %14

14:                                               ; preds = %22, %1
  %15 = load %struct.cryp_device_data*, %struct.cryp_device_data** %2, align 8
  %16 = getelementptr inbounds %struct.cryp_device_data, %struct.cryp_device_data* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i64 @readl_relaxed(i32* %18)
  %20 = load i64, i64* @CRYP_SR_INFIFO_READY_MASK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = call i32 (...) @cpu_relax()
  br label %14

24:                                               ; preds = %14
  ret void
}

declare dso_local i32 @cryp_activity(%struct.cryp_device_data*, i32) #1

declare dso_local i32 @cryp_wait_until_done(%struct.cryp_device_data*) #1

declare dso_local i32 @CRYP_SET_BITS(i32*, i32) #1

declare dso_local i64 @readl_relaxed(i32*) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
