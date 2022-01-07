; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_xilinx_ps2.c_xps2_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_xilinx_ps2.c_xps2_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xps2data = type { i32, i32, i32, i64 }

@XPS2_IPISR_OFFSET = common dso_local global i64 0, align 8
@XPS2_IPIXR_RX_OVF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"receive overrun error\0A\00", align 1
@XPS2_IPIXR_RX_ERR = common dso_local global i32 0, align 4
@SERIO_PARITY = common dso_local global i32 0, align 4
@XPS2_IPIXR_TX_NOACK = common dso_local global i32 0, align 4
@XPS2_IPIXR_WDT_TOUT = common dso_local global i32 0, align 4
@SERIO_TIMEOUT = common dso_local global i32 0, align 4
@XPS2_IPIXR_RX_FULL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"wrong rcvd byte count (%d)\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @xps2_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xps2_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.xps2data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.xps2data*
  store %struct.xps2data* %10, %struct.xps2data** %5, align 8
  %11 = load %struct.xps2data*, %struct.xps2data** %5, align 8
  %12 = getelementptr inbounds %struct.xps2data, %struct.xps2data* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @XPS2_IPISR_OFFSET, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @in_be32(i64 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.xps2data*, %struct.xps2data** %5, align 8
  %18 = getelementptr inbounds %struct.xps2data, %struct.xps2data* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @XPS2_IPISR_OFFSET, align 8
  %21 = add nsw i64 %19, %20
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @out_be32(i64 %21, i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @XPS2_IPIXR_RX_OVF, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load %struct.xps2data*, %struct.xps2data** %5, align 8
  %30 = getelementptr inbounds %struct.xps2data, %struct.xps2data* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dev_warn(i32 %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %28, %2
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @XPS2_IPIXR_RX_ERR, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i32, i32* @SERIO_PARITY, align 4
  %40 = load %struct.xps2data*, %struct.xps2data** %5, align 8
  %41 = getelementptr inbounds %struct.xps2data, %struct.xps2data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %38, %33
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @XPS2_IPIXR_TX_NOACK, align 4
  %47 = load i32, i32* @XPS2_IPIXR_WDT_TOUT, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %45, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = load i32, i32* @SERIO_TIMEOUT, align 4
  %53 = load %struct.xps2data*, %struct.xps2data** %5, align 8
  %54 = getelementptr inbounds %struct.xps2data, %struct.xps2data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %51, %44
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @XPS2_IPIXR_RX_FULL, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %85

62:                                               ; preds = %57
  %63 = load %struct.xps2data*, %struct.xps2data** %5, align 8
  %64 = call i32 @xps2_recv(%struct.xps2data* %63, i32* %7)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load %struct.xps2data*, %struct.xps2data** %5, align 8
  %69 = getelementptr inbounds %struct.xps2data, %struct.xps2data* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @dev_err(i32 %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %84

73:                                               ; preds = %62
  %74 = load %struct.xps2data*, %struct.xps2data** %5, align 8
  %75 = getelementptr inbounds %struct.xps2data, %struct.xps2data* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.xps2data*, %struct.xps2data** %5, align 8
  %79 = getelementptr inbounds %struct.xps2data, %struct.xps2data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @serio_interrupt(i32 %76, i32 %77, i32 %80)
  %82 = load %struct.xps2data*, %struct.xps2data** %5, align 8
  %83 = getelementptr inbounds %struct.xps2data, %struct.xps2data* %82, i32 0, i32 0
  store i32 0, i32* %83, align 8
  br label %84

84:                                               ; preds = %73, %67
  br label %85

85:                                               ; preds = %84, %57
  %86 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %86
}

declare dso_local i32 @in_be32(i64) #1

declare dso_local i32 @out_be32(i64, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @xps2_recv(%struct.xps2data*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @serio_interrupt(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
