; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_xilinx_ps2.c_sxps2_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_xilinx_ps2.c_sxps2_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { %struct.xps2data* }
%struct.xps2data = type { i64, i32, i32 }

@xps2_interrupt = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Couldn't allocate interrupt %d\0A\00", align 1
@XPS2_GIER_OFFSET = common dso_local global i64 0, align 8
@XPS2_GIER_GIE_MASK = common dso_local global i32 0, align 4
@XPS2_IPIER_OFFSET = common dso_local global i64 0, align 8
@XPS2_IPIXR_RX_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*)* @sxps2_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sxps2_open(%struct.serio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.serio*, align 8
  %4 = alloca %struct.xps2data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.serio* %0, %struct.serio** %3, align 8
  %7 = load %struct.serio*, %struct.serio** %3, align 8
  %8 = getelementptr inbounds %struct.serio, %struct.serio* %7, i32 0, i32 0
  %9 = load %struct.xps2data*, %struct.xps2data** %8, align 8
  store %struct.xps2data* %9, %struct.xps2data** %4, align 8
  %10 = load %struct.xps2data*, %struct.xps2data** %4, align 8
  %11 = getelementptr inbounds %struct.xps2data, %struct.xps2data* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @DRIVER_NAME, align 4
  %14 = load %struct.xps2data*, %struct.xps2data** %4, align 8
  %15 = call i32 @request_irq(i32 %12, i32* @xps2_interrupt, i32 0, i32 %13, %struct.xps2data* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load %struct.xps2data*, %struct.xps2data** %4, align 8
  %20 = getelementptr inbounds %struct.xps2data, %struct.xps2data* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.xps2data*, %struct.xps2data** %4, align 8
  %23 = getelementptr inbounds %struct.xps2data, %struct.xps2data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %44

27:                                               ; preds = %1
  %28 = load %struct.xps2data*, %struct.xps2data** %4, align 8
  %29 = getelementptr inbounds %struct.xps2data, %struct.xps2data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @XPS2_GIER_OFFSET, align 8
  %32 = add nsw i64 %30, %31
  %33 = load i32, i32* @XPS2_GIER_GIE_MASK, align 4
  %34 = call i32 @out_be32(i64 %32, i32 %33)
  %35 = load %struct.xps2data*, %struct.xps2data** %4, align 8
  %36 = getelementptr inbounds %struct.xps2data, %struct.xps2data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @XPS2_IPIER_OFFSET, align 8
  %39 = add nsw i64 %37, %38
  %40 = load i32, i32* @XPS2_IPIXR_RX_ALL, align 4
  %41 = call i32 @out_be32(i64 %39, i32 %40)
  %42 = load %struct.xps2data*, %struct.xps2data** %4, align 8
  %43 = call i32 @xps2_recv(%struct.xps2data* %42, i32* %6)
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %27, %18
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @request_irq(i32, i32*, i32, i32, %struct.xps2data*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @out_be32(i64, i32) #1

declare dso_local i32 @xps2_recv(%struct.xps2data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
