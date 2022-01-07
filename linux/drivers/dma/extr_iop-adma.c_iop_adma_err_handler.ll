; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_iop-adma.c_iop_adma_err_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_iop-adma.c_iop_adma_err_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iop_adma_chan = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"error ( %s%s%s%s%s%s%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"int_parity \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"mcu_abort \00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"int_tabort \00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"int_mabort \00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"pci_tabort \00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"pci_mabort \00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"split_tx \00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @iop_adma_err_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iop_adma_err_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iop_adma_chan*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.iop_adma_chan*
  store %struct.iop_adma_chan* %8, %struct.iop_adma_chan** %5, align 8
  %9 = load %struct.iop_adma_chan*, %struct.iop_adma_chan** %5, align 8
  %10 = call i64 @iop_chan_get_status(%struct.iop_adma_chan* %9)
  store i64 %10, i64* %6, align 8
  %11 = load %struct.iop_adma_chan*, %struct.iop_adma_chan** %5, align 8
  %12 = getelementptr inbounds %struct.iop_adma_chan, %struct.iop_adma_chan* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.iop_adma_chan*, %struct.iop_adma_chan** %5, align 8
  %19 = call i64 @iop_is_err_int_parity(i64 %17, %struct.iop_adma_chan* %18)
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.iop_adma_chan*, %struct.iop_adma_chan** %5, align 8
  %25 = call i64 @iop_is_err_mcu_abort(i64 %23, %struct.iop_adma_chan* %24)
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.iop_adma_chan*, %struct.iop_adma_chan** %5, align 8
  %31 = call i64 @iop_is_err_int_tabort(i64 %29, %struct.iop_adma_chan* %30)
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.iop_adma_chan*, %struct.iop_adma_chan** %5, align 8
  %37 = call i64 @iop_is_err_int_mabort(i64 %35, %struct.iop_adma_chan* %36)
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.iop_adma_chan*, %struct.iop_adma_chan** %5, align 8
  %43 = call i64 @iop_is_err_pci_tabort(i64 %41, %struct.iop_adma_chan* %42)
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.iop_adma_chan*, %struct.iop_adma_chan** %5, align 8
  %49 = call i64 @iop_is_err_pci_mabort(i64 %47, %struct.iop_adma_chan* %48)
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.iop_adma_chan*, %struct.iop_adma_chan** %5, align 8
  %55 = call i64 @iop_is_err_split_tx(i64 %53, %struct.iop_adma_chan* %54)
  %56 = icmp ne i64 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %59 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %22, i8* %28, i8* %34, i8* %40, i8* %46, i8* %52, i8* %58)
  %60 = load %struct.iop_adma_chan*, %struct.iop_adma_chan** %5, align 8
  %61 = call i32 @iop_adma_device_clear_err_status(%struct.iop_adma_chan* %60)
  %62 = call i32 (...) @BUG()
  %63 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %63
}

declare dso_local i64 @iop_chan_get_status(%struct.iop_adma_chan*) #1

declare dso_local i32 @dev_err(i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i64 @iop_is_err_int_parity(i64, %struct.iop_adma_chan*) #1

declare dso_local i64 @iop_is_err_mcu_abort(i64, %struct.iop_adma_chan*) #1

declare dso_local i64 @iop_is_err_int_tabort(i64, %struct.iop_adma_chan*) #1

declare dso_local i64 @iop_is_err_int_mabort(i64, %struct.iop_adma_chan*) #1

declare dso_local i64 @iop_is_err_pci_tabort(i64, %struct.iop_adma_chan*) #1

declare dso_local i64 @iop_is_err_pci_mabort(i64, %struct.iop_adma_chan*) #1

declare dso_local i64 @iop_is_err_split_tx(i64, %struct.iop_adma_chan*) #1

declare dso_local i32 @iop_adma_device_clear_err_status(%struct.iop_adma_chan*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
