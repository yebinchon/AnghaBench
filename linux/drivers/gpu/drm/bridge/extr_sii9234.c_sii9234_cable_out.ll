; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sii9234.c_sii9234_cable_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sii9234.c_sii9234_cable_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii9234 = type { i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ST_OFF = common dso_local global i64 0, align 8
@TPI_DPD_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sii9234*)* @sii9234_cable_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sii9234_cable_out(%struct.sii9234* %0) #0 {
  %2 = alloca %struct.sii9234*, align 8
  store %struct.sii9234* %0, %struct.sii9234** %2, align 8
  %3 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %4 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %3, i32 0, i32 1
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %7 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @ST_OFF, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %28

12:                                               ; preds = %1
  %13 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %14 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.TYPE_2__* @to_i2c_client(i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @disable_irq(i32 %18)
  %20 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %21 = load i32, i32* @TPI_DPD_REG, align 4
  %22 = call i32 @tpi_writeb(%struct.sii9234* %20, i32 %21, i32 0)
  %23 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %24 = call i32 @sii9234_hw_off(%struct.sii9234* %23)
  %25 = load i64, i64* @ST_OFF, align 8
  %26 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %27 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %12, %11
  %29 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %30 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %29, i32 0, i32 1
  %31 = call i32 @mutex_unlock(i32* %30)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local %struct.TYPE_2__* @to_i2c_client(i32) #1

declare dso_local i32 @tpi_writeb(%struct.sii9234*, i32, i32) #1

declare dso_local i32 @sii9234_hw_off(%struct.sii9234*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
