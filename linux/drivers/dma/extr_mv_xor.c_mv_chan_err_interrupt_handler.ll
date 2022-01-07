; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mv_xor.c_mv_chan_err_interrupt_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mv_xor.c_mv_chan_err_interrupt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_xor_chan = type { i32 }

@XOR_INT_ERR_DECODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"ignoring address decode error\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"error on chan %d. intr cause 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv_xor_chan*, i32)* @mv_chan_err_interrupt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_chan_err_interrupt_handler(%struct.mv_xor_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.mv_xor_chan*, align 8
  %4 = alloca i32, align 4
  store %struct.mv_xor_chan* %0, %struct.mv_xor_chan** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @XOR_INT_ERR_DECODE, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %3, align 8
  %11 = call i32 @mv_chan_to_devp(%struct.mv_xor_chan* %10)
  %12 = call i32 @dev_dbg(i32 %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %24

13:                                               ; preds = %2
  %14 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %3, align 8
  %15 = call i32 @mv_chan_to_devp(%struct.mv_xor_chan* %14)
  %16 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %3, align 8
  %17 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %3, align 8
  %22 = call i32 @mv_chan_dump_regs(%struct.mv_xor_chan* %21)
  %23 = call i32 @WARN_ON(i32 1)
  br label %24

24:                                               ; preds = %13, %9
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @mv_chan_to_devp(%struct.mv_xor_chan*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @mv_chan_dump_regs(%struct.mv_xor_chan*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
