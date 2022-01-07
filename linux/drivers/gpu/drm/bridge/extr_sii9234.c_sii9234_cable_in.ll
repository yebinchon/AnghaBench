; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sii9234.c_sii9234_cable_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sii9234.c_sii9234_cable_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii9234 = type { i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ST_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sii9234*)* @sii9234_cable_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sii9234_cable_in(%struct.sii9234* %0) #0 {
  %2 = alloca %struct.sii9234*, align 8
  %3 = alloca i32, align 4
  store %struct.sii9234* %0, %struct.sii9234** %2, align 8
  %4 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %5 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %4, i32 0, i32 1
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %8 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ST_OFF, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %31

13:                                               ; preds = %1
  %14 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %15 = call i32 @sii9234_hw_on(%struct.sii9234* %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %31

19:                                               ; preds = %13
  %20 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %21 = call i32 @sii9234_hw_reset(%struct.sii9234* %20)
  %22 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %23 = call i32 @sii9234_goto_d3(%struct.sii9234* %22)
  %24 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %25 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.TYPE_2__* @to_i2c_client(i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @enable_irq(i32 %29)
  br label %31

31:                                               ; preds = %19, %18, %12
  %32 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %33 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %32, i32 0, i32 1
  %34 = call i32 @mutex_unlock(i32* %33)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sii9234_hw_on(%struct.sii9234*) #1

declare dso_local i32 @sii9234_hw_reset(%struct.sii9234*) #1

declare dso_local i32 @sii9234_goto_d3(%struct.sii9234*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local %struct.TYPE_2__* @to_i2c_client(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
