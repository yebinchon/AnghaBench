; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sun6i-p2wi.c_p2wi_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sun6i-p2wi.c_p2wi_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2wi = type { i64, i32, i64 }

@P2WI_INTS = common dso_local global i64 0, align 8
@P2WI_INTS_LOAD_BSY = common dso_local global i64 0, align 8
@P2WI_INTS_TRANS_ERR = common dso_local global i64 0, align 8
@P2WI_INTS_TRANS_OVER = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @p2wi_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p2wi_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.p2wi*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.p2wi*
  store %struct.p2wi* %8, %struct.p2wi** %5, align 8
  %9 = load %struct.p2wi*, %struct.p2wi** %5, align 8
  %10 = getelementptr inbounds %struct.p2wi, %struct.p2wi* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @P2WI_INTS, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i64 @readl(i64 %13)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.p2wi*, %struct.p2wi** %5, align 8
  %17 = getelementptr inbounds %struct.p2wi, %struct.p2wi* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load i64, i64* @P2WI_INTS_LOAD_BSY, align 8
  %19 = load i64, i64* @P2WI_INTS_TRANS_ERR, align 8
  %20 = or i64 %18, %19
  %21 = load i64, i64* @P2WI_INTS_TRANS_OVER, align 8
  %22 = or i64 %20, %21
  %23 = load i64, i64* %6, align 8
  %24 = and i64 %23, %22
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.p2wi*, %struct.p2wi** %5, align 8
  %27 = getelementptr inbounds %struct.p2wi, %struct.p2wi* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @P2WI_INTS, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i64 %25, i64 %30)
  %32 = load %struct.p2wi*, %struct.p2wi** %5, align 8
  %33 = getelementptr inbounds %struct.p2wi, %struct.p2wi* %32, i32 0, i32 1
  %34 = call i32 @complete(i32* %33)
  %35 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %35
}

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
