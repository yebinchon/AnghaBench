; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pxa.c_i2c_pxa_slave_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pxa.c_i2c_pxa_slave_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_i2c = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ICR_START = common dso_local global i32 0, align 4
@ICR_STOP = common dso_local global i32 0, align 4
@ICR_TB = common dso_local global i32 0, align 4
@ICR_ACKNAK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"timeout waiting for SCL high\0A\00", align 1
@ICR_SCLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa_i2c*, i32)* @i2c_pxa_slave_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_pxa_slave_start(%struct.pxa_i2c* %0, i32 %1) #0 {
  %3 = alloca %struct.pxa_i2c*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pxa_i2c* %0, %struct.pxa_i2c** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %7 = call i32 @_ICR(%struct.pxa_i2c* %6)
  %8 = call i32 @readl(i32 %7)
  %9 = load i32, i32* @ICR_START, align 4
  %10 = load i32, i32* @ICR_STOP, align 4
  %11 = or i32 %9, %10
  %12 = xor i32 %11, -1
  %13 = and i32 %8, %12
  %14 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %15 = call i32 @_ICR(%struct.pxa_i2c* %14)
  %16 = call i32 @writel(i32 %13, i32 %15)
  %17 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %18 = call i32 @_ICR(%struct.pxa_i2c* %17)
  %19 = call i32 @readl(i32 %18)
  %20 = load i32, i32* @ICR_TB, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @ICR_ACKNAK, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %25 = call i32 @_ICR(%struct.pxa_i2c* %24)
  %26 = call i32 @writel(i32 %23, i32 %25)
  store i32 65536, i32* %5, align 4
  br label %27

27:                                               ; preds = %2, %44
  %28 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %29 = call i32 @_IBMR(%struct.pxa_i2c* %28)
  %30 = call i32 @readl(i32 %29)
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %45

34:                                               ; preds = %27
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp sle i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %41 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %45

44:                                               ; preds = %34
  br label %27

45:                                               ; preds = %39, %33
  %46 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %47 = call i32 @_ICR(%struct.pxa_i2c* %46)
  %48 = call i32 @readl(i32 %47)
  %49 = load i32, i32* @ICR_SCLE, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  %52 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %53 = call i32 @_ICR(%struct.pxa_i2c* %52)
  %54 = call i32 @writel(i32 %51, i32 %53)
  ret void
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @_ICR(%struct.pxa_i2c*) #1

declare dso_local i32 @_IBMR(%struct.pxa_i2c*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
