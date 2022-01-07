; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_ensure_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_ensure_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl08x_driver_data = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@PL080_CONFIG_ENABLE = common dso_local global i32 0, align 4
@FTDMAC020_CSR = common dso_local global i64 0, align 8
@PL080_CONFIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pl08x_driver_data*)* @pl08x_ensure_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl08x_ensure_on(%struct.pl08x_driver_data* %0) #0 {
  %2 = alloca %struct.pl08x_driver_data*, align 8
  store %struct.pl08x_driver_data* %0, %struct.pl08x_driver_data** %2, align 8
  %3 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %2, align 8
  %4 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %33

10:                                               ; preds = %1
  %11 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %2, align 8
  %12 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %10
  %18 = load i32, i32* @PL080_CONFIG_ENABLE, align 4
  %19 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %2, align 8
  %20 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @FTDMAC020_CSR, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel(i32 %18, i64 %23)
  br label %33

25:                                               ; preds = %10
  %26 = load i32, i32* @PL080_CONFIG_ENABLE, align 4
  %27 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %2, align 8
  %28 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PL080_CONFIG, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 %26, i64 %31)
  br label %33

33:                                               ; preds = %25, %17, %9
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
