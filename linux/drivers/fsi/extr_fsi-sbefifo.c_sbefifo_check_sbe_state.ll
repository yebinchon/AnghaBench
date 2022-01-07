; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-sbefifo.c_sbefifo_check_sbe_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-sbefifo.c_sbefifo_check_sbe_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbefifo = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CFAM_GP_MBOX_SBM_ADDR = common dso_local global i32 0, align 4
@CFAM_SBM_SBE_BOOTED = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@CFAM_SBM_SBE_STATE_MASK = common dso_local global i32 0, align 4
@CFAM_SBM_SBE_STATE_SHIFT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CFAM_SBM_SBE_ASYNC_FFDC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbefifo*)* @sbefifo_check_sbe_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbefifo_check_sbe_state(%struct.sbefifo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sbefifo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sbefifo* %0, %struct.sbefifo** %3, align 8
  %7 = load %struct.sbefifo*, %struct.sbefifo** %3, align 8
  %8 = getelementptr inbounds %struct.sbefifo, %struct.sbefifo* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @CFAM_GP_MBOX_SBM_ADDR, align 4
  %13 = call i32 @fsi_slave_read(i32 %11, i32 %12, i32* %4, i32 4)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %53

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @be32_to_cpu(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @CFAM_SBM_SBE_BOOTED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @ESHUTDOWN, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %53

28:                                               ; preds = %18
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @CFAM_SBM_SBE_STATE_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @CFAM_SBM_SBE_STATE_SHIFT, align 4
  %33 = ashr i32 %31, %32
  switch i32 %33, label %44 [
    i32 128, label %34
    i32 136, label %37
    i32 133, label %40
    i32 132, label %40
    i32 131, label %40
    i32 129, label %40
    i32 135, label %40
    i32 134, label %41
    i32 130, label %41
  ]

34:                                               ; preds = %28
  %35 = load i32, i32* @ESHUTDOWN, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %53

37:                                               ; preds = %28
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %53

40:                                               ; preds = %28, %28, %28, %28, %28
  br label %44

41:                                               ; preds = %28, %28
  %42 = load i32, i32* @ESHUTDOWN, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %53

44:                                               ; preds = %28, %40
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @CFAM_SBM_SBE_ASYNC_FFDC, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.sbefifo*, %struct.sbefifo** %3, align 8
  %51 = getelementptr inbounds %struct.sbefifo, %struct.sbefifo* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  br label %52

52:                                               ; preds = %49, %44
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %41, %37, %34, %25, %16
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @fsi_slave_read(i32, i32, i32*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
