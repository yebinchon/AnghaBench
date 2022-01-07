; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-adap.c_cec_adap_unconfigure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-adap.c_cec_adap_unconfigure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { i64, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 (%struct.cec_adapter*, i32)* }

@CEC_PHYS_ADDR_INVALID = common dso_local global i64 0, align 8
@CEC_LOG_ADDR_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cec_adapter*)* @cec_adap_unconfigure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cec_adap_unconfigure(%struct.cec_adapter* %0) #0 {
  %2 = alloca %struct.cec_adapter*, align 8
  store %struct.cec_adapter* %0, %struct.cec_adapter** %2, align 8
  %3 = load %struct.cec_adapter*, %struct.cec_adapter** %2, align 8
  %4 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %3, i32 0, i32 7
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.cec_adapter*, %struct.cec_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CEC_PHYS_ADDR_INVALID, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %7, %1
  %14 = load %struct.cec_adapter*, %struct.cec_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %14, i32 0, i32 6
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32 (%struct.cec_adapter*, i32)*, i32 (%struct.cec_adapter*, i32)** %17, align 8
  %19 = load %struct.cec_adapter*, %struct.cec_adapter** %2, align 8
  %20 = load i32, i32* @CEC_LOG_ADDR_INVALID, align 4
  %21 = call i32 %18(%struct.cec_adapter* %19, i32 %20)
  %22 = call i32 @WARN_ON(i32 %21)
  br label %23

23:                                               ; preds = %13, %7
  %24 = load %struct.cec_adapter*, %struct.cec_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load %struct.cec_adapter*, %struct.cec_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %27, i32 0, i32 1
  store i32 0, i32* %28, align 8
  %29 = load %struct.cec_adapter*, %struct.cec_adapter** %2, align 8
  %30 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %29, i32 0, i32 2
  store i32 0, i32* %30, align 4
  %31 = load %struct.cec_adapter*, %struct.cec_adapter** %2, align 8
  %32 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @memset(i32 %33, i32 255, i32 4)
  %35 = load %struct.cec_adapter*, %struct.cec_adapter** %2, align 8
  %36 = call i32 @cec_flush(%struct.cec_adapter* %35)
  %37 = load %struct.cec_adapter*, %struct.cec_adapter** %2, align 8
  %38 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %37, i32 0, i32 3
  %39 = call i32 @wake_up_interruptible(i32* %38)
  %40 = load %struct.cec_adapter*, %struct.cec_adapter** %2, align 8
  %41 = call i32 @cec_post_state_event(%struct.cec_adapter* %40)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @cec_flush(%struct.cec_adapter*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @cec_post_state_event(%struct.cec_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
