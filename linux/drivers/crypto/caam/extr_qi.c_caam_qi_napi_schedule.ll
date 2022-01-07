; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_qi.c_caam_qi_napi_schedule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_qi.c_caam_qi_napi_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_portal = type { i32 }
%struct.caam_napi = type { i32, %struct.qman_portal* }

@QM_PIRQ_DQRI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qman_portal*, %struct.caam_napi*)* @caam_qi_napi_schedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @caam_qi_napi_schedule(%struct.qman_portal* %0, %struct.caam_napi* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qman_portal*, align 8
  %5 = alloca %struct.caam_napi*, align 8
  store %struct.qman_portal* %0, %struct.qman_portal** %4, align 8
  store %struct.caam_napi* %1, %struct.caam_napi** %5, align 8
  %6 = call i64 (...) @in_irq()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = call i32 (...) @in_serving_softirq()
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi i1 [ true, %2 ], [ %11, %8 ]
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = load %struct.qman_portal*, %struct.qman_portal** %4, align 8
  %19 = load i32, i32* @QM_PIRQ_DQRI, align 4
  %20 = call i32 @qman_p_irqsource_remove(%struct.qman_portal* %18, i32 %19)
  %21 = load %struct.qman_portal*, %struct.qman_portal** %4, align 8
  %22 = load %struct.caam_napi*, %struct.caam_napi** %5, align 8
  %23 = getelementptr inbounds %struct.caam_napi, %struct.caam_napi* %22, i32 0, i32 1
  store %struct.qman_portal* %21, %struct.qman_portal** %23, align 8
  %24 = load %struct.caam_napi*, %struct.caam_napi** %5, align 8
  %25 = getelementptr inbounds %struct.caam_napi, %struct.caam_napi* %24, i32 0, i32 0
  %26 = call i32 @napi_schedule(i32* %25)
  store i32 1, i32* %3, align 4
  br label %28

27:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %17
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @in_irq(...) #1

declare dso_local i32 @in_serving_softirq(...) #1

declare dso_local i32 @qman_p_irqsource_remove(%struct.qman_portal*, i32) #1

declare dso_local i32 @napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
