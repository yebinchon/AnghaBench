; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_security.c_ib_mad_agent_security_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_security.c_ib_mad_agent_security_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_agent = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IB_QPT_SMI = common dso_local global i32 0, align 4
@mad_agent_list_lock = common dso_local global i32 0, align 4
@mad_agent_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_mad_agent_security_setup(%struct.ib_mad_agent* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_mad_agent*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ib_mad_agent* %0, %struct.ib_mad_agent** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %4, align 8
  %8 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %7, i32 0, i32 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %4, align 8
  %11 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @rdma_protocol_ib(%struct.TYPE_2__* %9, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %65

16:                                               ; preds = %2
  %17 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %4, align 8
  %18 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %17, i32 0, i32 1
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %4, align 8
  %21 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %20, i32 0, i32 0
  %22 = call i32 @security_ib_alloc_security(i32* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %65

27:                                               ; preds = %16
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @IB_QPT_SMI, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %65

32:                                               ; preds = %27
  %33 = call i32 @spin_lock(i32* @mad_agent_list_lock)
  %34 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %4, align 8
  %35 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %4, align 8
  %38 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %37, i32 0, i32 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @dev_name(i32* %40)
  %42 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %4, align 8
  %43 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @security_ib_endport_manage_subnet(i32 %36, i32 %41, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %32
  br label %58

49:                                               ; preds = %32
  %50 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %4, align 8
  %51 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @WRITE_ONCE(i32 %52, i32 1)
  %54 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %4, align 8
  %55 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %54, i32 0, i32 1
  %56 = call i32 @list_add(i32* %55, i32* @mad_agent_list)
  %57 = call i32 @spin_unlock(i32* @mad_agent_list_lock)
  store i32 0, i32* %3, align 4
  br label %65

58:                                               ; preds = %48
  %59 = call i32 @spin_unlock(i32* @mad_agent_list_lock)
  %60 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %4, align 8
  %61 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @security_ib_free_security(i32 %62)
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %58, %49, %31, %25, %15
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @rdma_protocol_ib(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @security_ib_alloc_security(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @security_ib_endport_manage_subnet(i32, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @security_ib_free_security(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
