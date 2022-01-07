; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pxa.c_i2c_pxa_pio_set_master.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pxa.c_i2c_pxa_pio_set_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_i2c = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DEF_TIMEOUT = common dso_local global i32 0, align 4
@ISR_IBB = common dso_local global i32 0, align 4
@ISR_UB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"i2c_pxa: timeout waiting for bus free\0A\00", align 1
@I2C_RETRY = common dso_local global i32 0, align 4
@ICR_SCLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa_i2c*)* @i2c_pxa_pio_set_master to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_pxa_pio_set_master(%struct.pxa_i2c* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pxa_i2c*, align 8
  %4 = alloca i64, align 8
  store %struct.pxa_i2c* %0, %struct.pxa_i2c** %3, align 8
  %5 = load i32, i32* @DEF_TIMEOUT, align 4
  %6 = mul nsw i32 2, %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %4, align 8
  br label %8

8:                                                ; preds = %23, %1
  %9 = load i64, i64* %4, align 8
  %10 = add nsw i64 %9, -1
  store i64 %10, i64* %4, align 8
  %11 = icmp ne i64 %9, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %14 = call i32 @_ISR(%struct.pxa_i2c* %13)
  %15 = call i32 @readl(i32 %14)
  %16 = load i32, i32* @ISR_IBB, align 4
  %17 = load i32, i32* @ISR_UB, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %12, %8
  %22 = phi i1 [ false, %8 ], [ %20, %12 ]
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  %24 = call i32 @udelay(i32 1000)
  %25 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %26 = call i32 @show_state(%struct.pxa_i2c* %25)
  br label %8

27:                                               ; preds = %21
  %28 = load i64, i64* %4, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %32 = call i32 @show_state(%struct.pxa_i2c* %31)
  %33 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %34 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @I2C_RETRY, align 4
  store i32 %37, i32* %2, align 4
  br label %47

38:                                               ; preds = %27
  %39 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %40 = call i32 @_ICR(%struct.pxa_i2c* %39)
  %41 = call i32 @readl(i32 %40)
  %42 = load i32, i32* @ICR_SCLE, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %45 = call i32 @_ICR(%struct.pxa_i2c* %44)
  %46 = call i32 @writel(i32 %43, i32 %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %38, %30
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @_ISR(%struct.pxa_i2c*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @show_state(%struct.pxa_i2c*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @_ICR(%struct.pxa_i2c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
