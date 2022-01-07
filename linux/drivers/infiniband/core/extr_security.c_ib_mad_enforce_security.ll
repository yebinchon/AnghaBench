; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_security.c_ib_mad_enforce_security.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_security.c_ib_mad_enforce_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_agent_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@IB_QPT_SMI = common dso_local global i64 0, align 8
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_mad_enforce_security(%struct.ib_mad_agent_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_mad_agent_private*, align 8
  %5 = alloca i32, align 4
  store %struct.ib_mad_agent_private* %0, %struct.ib_mad_agent_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %4, align 8
  %7 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %4, align 8
  %11 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @rdma_protocol_ib(i32 %9, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %52

17:                                               ; preds = %2
  %18 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %4, align 8
  %19 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IB_QPT_SMI, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %17
  %27 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %4, align 8
  %28 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @READ_ONCE(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @EACCES, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %52

36:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %52

37:                                               ; preds = %17
  %38 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %4, align 8
  %39 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %4, align 8
  %43 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %4, align 8
  %48 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ib_security_pkey_access(i32 %41, i32 %45, i32 %46, i32 %50)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %37, %36, %33, %16
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @rdma_protocol_ib(i32, i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @ib_security_pkey_access(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
