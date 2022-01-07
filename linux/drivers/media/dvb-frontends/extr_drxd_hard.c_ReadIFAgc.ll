; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_ReadIFAgc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_ReadIFAgc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drxd_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32 }

@AGC_CTRL_OFF = common dso_local global i64 0, align 8
@FE_AG_REG_GC1_AGC_DAT__A = common dso_local global i32 0, align 4
@FE_AG_REG_GC1_AGC_DAT__M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drxd_state*, i32*)* @ReadIFAgc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadIFAgc(%struct.drxd_state* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drxd_state*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.drxd_state* %0, %struct.drxd_state** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = load i32*, i32** %5, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %17 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AGC_CTRL_OFF, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %84

22:                                               ; preds = %2
  %23 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %24 = load i32, i32* @FE_AG_REG_GC1_AGC_DAT__A, align 4
  %25 = call i32 @Read16(%struct.drxd_state* %23, i32 %24, i32* %7, i32 0)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @FE_AG_REG_GC1_AGC_DAT__M, align 4
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %83

31:                                               ; preds = %22
  %32 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %33 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %8, align 4
  %36 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %37 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %9, align 4
  %40 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %41 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %31
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %10, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49, %46
  store i32 0, i32* %3, align 4
  br label %86

53:                                               ; preds = %49, %31
  %54 = load i32, i32* %9, align 4
  %55 = mul nsw i32 3300, %54
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %56, %57
  %59 = sdiv i32 %55, %58
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = mul nsw i32 %60, %61
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %63, %64
  %66 = sdiv i32 %62, %65
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = mul nsw i32 3300, %67
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %69, %70
  %72 = sdiv i32 %68, %71
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %13, align 4
  %76 = sub nsw i32 %74, %75
  %77 = load i32, i32* %7, align 4
  %78 = mul nsw i32 %76, %77
  %79 = sdiv i32 %78, 1024
  %80 = add nsw i32 %73, %79
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = load i32*, i32** %5, align 8
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %53, %22
  br label %84

84:                                               ; preds = %83, %2
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %84, %52
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @Read16(%struct.drxd_state*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
