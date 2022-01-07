; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_unregister_mad_agent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_unregister_mad_agent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_agent_private = type { i32, %struct.TYPE_4__, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.ib_mad_port_private* }
%struct.ib_mad_port_private = type { i32, i32 }

@ib_mad_clients = common dso_local global i32 0, align 4
@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_mad_agent_private*)* @unregister_mad_agent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unregister_mad_agent(%struct.ib_mad_agent_private* %0) #0 {
  %2 = alloca %struct.ib_mad_agent_private*, align 8
  %3 = alloca %struct.ib_mad_port_private*, align 8
  store %struct.ib_mad_agent_private* %0, %struct.ib_mad_agent_private** %2, align 8
  %4 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %2, align 8
  %5 = call i32 @trace_ib_mad_unregister_agent(%struct.ib_mad_agent_private* %4)
  %6 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %2, align 8
  %7 = call i32 @cancel_mads(%struct.ib_mad_agent_private* %6)
  %8 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %2, align 8
  %9 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %8, i32 0, i32 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %11, align 8
  store %struct.ib_mad_port_private* %12, %struct.ib_mad_port_private** %3, align 8
  %13 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %2, align 8
  %14 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %13, i32 0, i32 3
  %15 = call i32 @cancel_delayed_work(i32* %14)
  %16 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %3, align 8
  %17 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %16, i32 0, i32 1
  %18 = call i32 @spin_lock_irq(i32* %17)
  %19 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %2, align 8
  %20 = call i32 @remove_mad_reg_req(%struct.ib_mad_agent_private* %19)
  %21 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %3, align 8
  %22 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %21, i32 0, i32 1
  %23 = call i32 @spin_unlock_irq(i32* %22)
  %24 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %2, align 8
  %25 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @xa_erase(i32* @ib_mad_clients, i32 %27)
  %29 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %3, align 8
  %30 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @flush_workqueue(i32 %31)
  %33 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %2, align 8
  %34 = call i32 @ib_cancel_rmpp_recvs(%struct.ib_mad_agent_private* %33)
  %35 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %2, align 8
  %36 = call i32 @deref_mad_agent(%struct.ib_mad_agent_private* %35)
  %37 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %2, align 8
  %38 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %37, i32 0, i32 2
  %39 = call i32 @wait_for_completion(i32* %38)
  %40 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %2, align 8
  %41 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %40, i32 0, i32 1
  %42 = call i32 @ib_mad_agent_security_cleanup(%struct.TYPE_4__* %41)
  %43 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %2, align 8
  %44 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @kfree(i32 %45)
  %47 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %2, align 8
  %48 = load i32, i32* @rcu, align 4
  %49 = call i32 @kfree_rcu(%struct.ib_mad_agent_private* %47, i32 %48)
  ret void
}

declare dso_local i32 @trace_ib_mad_unregister_agent(%struct.ib_mad_agent_private*) #1

declare dso_local i32 @cancel_mads(%struct.ib_mad_agent_private*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @remove_mad_reg_req(%struct.ib_mad_agent_private*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @xa_erase(i32*, i32) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @ib_cancel_rmpp_recvs(%struct.ib_mad_agent_private*) #1

declare dso_local i32 @deref_mad_agent(%struct.ib_mad_agent_private*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @ib_mad_agent_security_cleanup(%struct.TYPE_4__*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @kfree_rcu(%struct.ib_mad_agent_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
