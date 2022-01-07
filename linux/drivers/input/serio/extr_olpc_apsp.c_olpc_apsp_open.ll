; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_olpc_apsp.c_olpc_apsp_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_olpc_apsp.c_olpc_apsp_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { %struct.olpc_apsp* }
%struct.olpc_apsp = type { i64, i32, i32 }

@COMMAND_FIFO_STATUS = common dso_local global i64 0, align 8
@CMD_STS_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"SP cannot accept commands.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@PJ_INTERRUPT_MASK = common dso_local global i64 0, align 8
@INT_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*)* @olpc_apsp_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @olpc_apsp_open(%struct.serio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.serio*, align 8
  %4 = alloca %struct.olpc_apsp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.serio* %0, %struct.serio** %3, align 8
  %7 = load %struct.serio*, %struct.serio** %3, align 8
  %8 = getelementptr inbounds %struct.serio, %struct.serio* %7, i32 0, i32 0
  %9 = load %struct.olpc_apsp*, %struct.olpc_apsp** %8, align 8
  store %struct.olpc_apsp* %9, %struct.olpc_apsp** %4, align 8
  %10 = load %struct.olpc_apsp*, %struct.olpc_apsp** %4, align 8
  %11 = getelementptr inbounds %struct.olpc_apsp, %struct.olpc_apsp* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 4
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %15, label %52

15:                                               ; preds = %1
  %16 = load %struct.olpc_apsp*, %struct.olpc_apsp** %4, align 8
  %17 = getelementptr inbounds %struct.olpc_apsp, %struct.olpc_apsp* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @COMMAND_FIFO_STATUS, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i8* @readl(i64 %20)
  %22 = ptrtoint i8* %21 to i64
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @CMD_STS_MASK, align 8
  %25 = and i64 %23, %24
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %15
  %28 = load %struct.olpc_apsp*, %struct.olpc_apsp** %4, align 8
  %29 = getelementptr inbounds %struct.olpc_apsp, %struct.olpc_apsp* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %53

34:                                               ; preds = %15
  %35 = load %struct.olpc_apsp*, %struct.olpc_apsp** %4, align 8
  %36 = getelementptr inbounds %struct.olpc_apsp, %struct.olpc_apsp* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PJ_INTERRUPT_MASK, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i8* @readl(i64 %39)
  %41 = ptrtoint i8* %40 to i32
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @INT_0, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  %46 = load %struct.olpc_apsp*, %struct.olpc_apsp** %4, align 8
  %47 = getelementptr inbounds %struct.olpc_apsp, %struct.olpc_apsp* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PJ_INTERRUPT_MASK, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writel(i32 %45, i64 %50)
  br label %52

52:                                               ; preds = %34, %1
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %27
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i8* @readl(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
