; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/stm/extr_policy.c_stp_policy_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/stm/extr_policy.c_stp_policy_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stp_policy = type { %struct.stm_device* }
%struct.stm_device = type { i32, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stp_policy_unbind(%struct.stp_policy* %0) #0 {
  %2 = alloca %struct.stp_policy*, align 8
  %3 = alloca %struct.stm_device*, align 8
  store %struct.stp_policy* %0, %struct.stp_policy** %2, align 8
  %4 = load %struct.stp_policy*, %struct.stp_policy** %2, align 8
  %5 = getelementptr inbounds %struct.stp_policy, %struct.stp_policy* %4, i32 0, i32 0
  %6 = load %struct.stm_device*, %struct.stm_device** %5, align 8
  store %struct.stm_device* %6, %struct.stm_device** %3, align 8
  %7 = load %struct.stp_policy*, %struct.stp_policy** %2, align 8
  %8 = getelementptr inbounds %struct.stp_policy, %struct.stp_policy* %7, i32 0, i32 0
  %9 = load %struct.stm_device*, %struct.stm_device** %8, align 8
  %10 = icmp ne %struct.stm_device* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @WARN_ON_ONCE(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %30

16:                                               ; preds = %1
  %17 = load %struct.stm_device*, %struct.stm_device** %3, align 8
  %18 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %17, i32 0, i32 2
  %19 = call i32 @lockdep_assert_held(i32* %18)
  %20 = load %struct.stm_device*, %struct.stm_device** %3, align 8
  %21 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %20, i32 0, i32 1
  store i32* null, i32** %21, align 8
  %22 = load %struct.stp_policy*, %struct.stp_policy** %2, align 8
  %23 = getelementptr inbounds %struct.stp_policy, %struct.stp_policy* %22, i32 0, i32 0
  store %struct.stm_device* null, %struct.stm_device** %23, align 8
  %24 = load %struct.stm_device*, %struct.stm_device** %3, align 8
  %25 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @stm_put_protocol(i32 %26)
  %28 = load %struct.stm_device*, %struct.stm_device** %3, align 8
  %29 = call i32 @stm_put_device(%struct.stm_device* %28)
  br label %30

30:                                               ; preds = %16, %15
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @stm_put_protocol(i32) #1

declare dso_local i32 @stm_put_device(%struct.stm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
