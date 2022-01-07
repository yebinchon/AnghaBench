; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-pdc-mailbox.c_pdc_build_rxd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-pdc-mailbox.c_pdc_build_rxd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdc_state = type { i64, i32, i32, %struct.dma64dd*, %struct.TYPE_2__* }
%struct.dma64dd = type { i8*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [72 x i8] c"Writing rx descriptor for PDC %u at index %u with length %u. flags %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pdc_state*, i32, i32, i32)* @pdc_build_rxd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdc_build_rxd(%struct.pdc_state* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pdc_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.dma64dd*, align 8
  store %struct.pdc_state* %0, %struct.pdc_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.pdc_state*, %struct.pdc_state** %5, align 8
  %12 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %11, i32 0, i32 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %9, align 8
  %15 = load %struct.pdc_state*, %struct.pdc_state** %5, align 8
  %16 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %15, i32 0, i32 3
  %17 = load %struct.dma64dd*, %struct.dma64dd** %16, align 8
  %18 = load %struct.pdc_state*, %struct.pdc_state** %5, align 8
  %19 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.dma64dd, %struct.dma64dd* %17, i64 %20
  store %struct.dma64dd* %21, %struct.dma64dd** %10, align 8
  %22 = load %struct.device*, %struct.device** %9, align 8
  %23 = load %struct.pdc_state*, %struct.pdc_state** %5, align 8
  %24 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.pdc_state*, %struct.pdc_state** %5, align 8
  %27 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @dev_dbg(%struct.device* %22, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %25, i64 %28, i32 %29, i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @lower_32_bits(i32 %32)
  %34 = call i8* @cpu_to_le32(i32 %33)
  %35 = load %struct.dma64dd*, %struct.dma64dd** %10, align 8
  %36 = getelementptr inbounds %struct.dma64dd, %struct.dma64dd* %35, i32 0, i32 3
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @upper_32_bits(i32 %37)
  %39 = call i8* @cpu_to_le32(i32 %38)
  %40 = load %struct.dma64dd*, %struct.dma64dd** %10, align 8
  %41 = getelementptr inbounds %struct.dma64dd, %struct.dma64dd* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i8* @cpu_to_le32(i32 %42)
  %44 = load %struct.dma64dd*, %struct.dma64dd** %10, align 8
  %45 = getelementptr inbounds %struct.dma64dd, %struct.dma64dd* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i8* @cpu_to_le32(i32 %46)
  %48 = load %struct.dma64dd*, %struct.dma64dd** %10, align 8
  %49 = getelementptr inbounds %struct.dma64dd, %struct.dma64dd* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load %struct.pdc_state*, %struct.pdc_state** %5, align 8
  %51 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.pdc_state*, %struct.pdc_state** %5, align 8
  %54 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @NEXTRXD(i64 %52, i32 %55)
  %57 = load %struct.pdc_state*, %struct.pdc_state** %5, align 8
  %58 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  ret void
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i64, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i64 @NEXTRXD(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
