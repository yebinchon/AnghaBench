; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_unregister_mad_snoop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_unregister_mad_snoop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_snoop_private = type { i64, i32, i32, %struct.ib_mad_qp_info* }
%struct.ib_mad_qp_info = type { i32, i32, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_mad_snoop_private*)* @unregister_mad_snoop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unregister_mad_snoop(%struct.ib_mad_snoop_private* %0) #0 {
  %2 = alloca %struct.ib_mad_snoop_private*, align 8
  %3 = alloca %struct.ib_mad_qp_info*, align 8
  %4 = alloca i64, align 8
  store %struct.ib_mad_snoop_private* %0, %struct.ib_mad_snoop_private** %2, align 8
  %5 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %2, align 8
  %6 = getelementptr inbounds %struct.ib_mad_snoop_private, %struct.ib_mad_snoop_private* %5, i32 0, i32 3
  %7 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %6, align 8
  store %struct.ib_mad_qp_info* %7, %struct.ib_mad_qp_info** %3, align 8
  %8 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %3, align 8
  %9 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %8, i32 0, i32 0
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %3, align 8
  %13 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %12, i32 0, i32 2
  %14 = load i32**, i32*** %13, align 8
  %15 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %2, align 8
  %16 = getelementptr inbounds %struct.ib_mad_snoop_private, %struct.ib_mad_snoop_private* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32*, i32** %14, i64 %17
  store i32* null, i32** %18, align 8
  %19 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %3, align 8
  %20 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %19, i32 0, i32 1
  %21 = call i32 @atomic_dec(i32* %20)
  %22 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %3, align 8
  %23 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %22, i32 0, i32 0
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %2, align 8
  %27 = call i32 @deref_snoop_agent(%struct.ib_mad_snoop_private* %26)
  %28 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %2, align 8
  %29 = getelementptr inbounds %struct.ib_mad_snoop_private, %struct.ib_mad_snoop_private* %28, i32 0, i32 2
  %30 = call i32 @wait_for_completion(i32* %29)
  %31 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %2, align 8
  %32 = getelementptr inbounds %struct.ib_mad_snoop_private, %struct.ib_mad_snoop_private* %31, i32 0, i32 1
  %33 = call i32 @ib_mad_agent_security_cleanup(i32* %32)
  %34 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %2, align 8
  %35 = call i32 @kfree(%struct.ib_mad_snoop_private* %34)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @deref_snoop_agent(%struct.ib_mad_snoop_private*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @ib_mad_agent_security_cleanup(i32*) #1

declare dso_local i32 @kfree(%struct.ib_mad_snoop_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
