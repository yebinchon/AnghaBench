; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_unregister_mad_agent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_unregister_mad_agent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srpt_device = type { %struct.TYPE_2__*, %struct.srpt_port* }
%struct.TYPE_2__ = type { i32 }
%struct.srpt_port = type { i32, i32* }
%struct.ib_port_modify = type { i32 }

@IB_PORT_DEVICE_MGMT_SUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"disabling MAD processing failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.srpt_device*)* @srpt_unregister_mad_agent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srpt_unregister_mad_agent(%struct.srpt_device* %0) #0 {
  %2 = alloca %struct.srpt_device*, align 8
  %3 = alloca %struct.ib_port_modify, align 4
  %4 = alloca %struct.srpt_port*, align 8
  %5 = alloca i32, align 4
  store %struct.srpt_device* %0, %struct.srpt_device** %2, align 8
  %6 = getelementptr inbounds %struct.ib_port_modify, %struct.ib_port_modify* %3, i32 0, i32 0
  %7 = load i32, i32* @IB_PORT_DEVICE_MGMT_SUP, align 4
  store i32 %7, i32* %6, align 4
  store i32 1, i32* %5, align 4
  br label %8

8:                                                ; preds = %52, %1
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.srpt_device*, %struct.srpt_device** %2, align 8
  %11 = getelementptr inbounds %struct.srpt_device, %struct.srpt_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sle i32 %9, %14
  br i1 %15, label %16, label %55

16:                                               ; preds = %8
  %17 = load %struct.srpt_device*, %struct.srpt_device** %2, align 8
  %18 = getelementptr inbounds %struct.srpt_device, %struct.srpt_device* %17, i32 0, i32 1
  %19 = load %struct.srpt_port*, %struct.srpt_port** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %19, i64 %22
  store %struct.srpt_port* %23, %struct.srpt_port** %4, align 8
  %24 = load %struct.srpt_port*, %struct.srpt_port** %4, align 8
  %25 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ON(i32 %29)
  %31 = load %struct.srpt_device*, %struct.srpt_device** %2, align 8
  %32 = getelementptr inbounds %struct.srpt_device, %struct.srpt_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @ib_modify_port(%struct.TYPE_2__* %33, i32 %34, i32 0, %struct.ib_port_modify* %3)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %16
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %16
  %40 = load %struct.srpt_port*, %struct.srpt_port** %4, align 8
  %41 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load %struct.srpt_port*, %struct.srpt_port** %4, align 8
  %46 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @ib_unregister_mad_agent(i32* %47)
  %49 = load %struct.srpt_port*, %struct.srpt_port** %4, align 8
  %50 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %49, i32 0, i32 1
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %44, %39
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %8

55:                                               ; preds = %8
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @ib_modify_port(%struct.TYPE_2__*, i32, i32, %struct.ib_port_modify*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @ib_unregister_mad_agent(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
