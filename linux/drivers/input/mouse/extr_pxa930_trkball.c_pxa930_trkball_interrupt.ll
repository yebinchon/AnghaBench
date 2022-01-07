; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_pxa930_trkball.c_pxa930_trkball_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_pxa930_trkball.c_pxa930_trkball_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa930_trkball = type { i64, %struct.input_dev* }
%struct.input_dev = type { i32 }

@TBCNTR = common dso_local global i64 0, align 8
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@TBSBC_TBSBC = common dso_local global i32 0, align 4
@TBSBC = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pxa930_trkball_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa930_trkball_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pxa930_trkball*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.pxa930_trkball*
  store %struct.pxa930_trkball* %11, %struct.pxa930_trkball** %5, align 8
  %12 = load %struct.pxa930_trkball*, %struct.pxa930_trkball** %5, align 8
  %13 = getelementptr inbounds %struct.pxa930_trkball, %struct.pxa930_trkball* %12, i32 0, i32 1
  %14 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  store %struct.input_dev* %14, %struct.input_dev** %6, align 8
  %15 = load %struct.pxa930_trkball*, %struct.pxa930_trkball** %5, align 8
  %16 = getelementptr inbounds %struct.pxa930_trkball, %struct.pxa930_trkball* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TBCNTR, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @__raw_readl(i64 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.pxa930_trkball*, %struct.pxa930_trkball** %5, align 8
  %23 = getelementptr inbounds %struct.pxa930_trkball, %struct.pxa930_trkball* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TBCNTR, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @__raw_readl(i64 %26)
  %28 = icmp eq i32 %21, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %2
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @TBCNTR_XP(i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @TBCNTR_XM(i32 %32)
  %34 = sub nsw i32 %31, %33
  %35 = sdiv i32 %34, 2
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @TBCNTR_YP(i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @TBCNTR_YM(i32 %38)
  %40 = sub nsw i32 %37, %39
  %41 = sdiv i32 %40, 2
  store i32 %41, i32* %9, align 4
  %42 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %43 = load i32, i32* @REL_X, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @input_report_rel(%struct.input_dev* %42, i32 %43, i32 %44)
  %46 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %47 = load i32, i32* @REL_Y, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @input_report_rel(%struct.input_dev* %46, i32 %47, i32 %48)
  %50 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %51 = call i32 @input_sync(%struct.input_dev* %50)
  br label %52

52:                                               ; preds = %29, %2
  %53 = load i32, i32* @TBSBC_TBSBC, align 4
  %54 = load %struct.pxa930_trkball*, %struct.pxa930_trkball** %5, align 8
  %55 = getelementptr inbounds %struct.pxa930_trkball, %struct.pxa930_trkball* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @TBSBC, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @__raw_writel(i32 %53, i64 %58)
  %60 = load %struct.pxa930_trkball*, %struct.pxa930_trkball** %5, align 8
  %61 = getelementptr inbounds %struct.pxa930_trkball, %struct.pxa930_trkball* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @TBSBC, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @__raw_writel(i32 0, i64 %64)
  %66 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %66
}

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @TBCNTR_XP(i32) #1

declare dso_local i32 @TBCNTR_XM(i32) #1

declare dso_local i32 @TBCNTR_YP(i32) #1

declare dso_local i32 @TBCNTR_YM(i32) #1

declare dso_local i32 @input_report_rel(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
