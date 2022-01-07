; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_verbs.c_pvrdma_modify_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_verbs.c_pvrdma_modify_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_port_modify = type { i32, i32 }
%struct.ib_port_attr = type { i32 }
%struct.pvrdma_dev = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IB_PORT_SHUTDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unsupported port modify mask %#x\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvrdma_modify_port(%struct.ib_device* %0, i32 %1, i32 %2, %struct.ib_port_modify* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_port_modify*, align 8
  %10 = alloca %struct.ib_port_attr, align 4
  %11 = alloca %struct.pvrdma_dev*, align 8
  %12 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ib_port_modify* %3, %struct.ib_port_modify** %9, align 8
  %13 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %14 = call %struct.pvrdma_dev* @to_vdev(%struct.ib_device* %13)
  store %struct.pvrdma_dev* %14, %struct.pvrdma_dev** %11, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @IB_PORT_SHUTDOWN, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %4
  %21 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %11, align 8
  %22 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %21, i32 0, i32 3
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @dev_warn(i32* %24, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %68

29:                                               ; preds = %4
  %30 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %11, align 8
  %31 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %30, i32 0, i32 1
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @ib_query_port(%struct.ib_device* %33, i32 %34, %struct.ib_port_attr* %10)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %63

39:                                               ; preds = %29
  %40 = load %struct.ib_port_modify*, %struct.ib_port_modify** %9, align 8
  %41 = getelementptr inbounds %struct.ib_port_modify, %struct.ib_port_modify* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %11, align 8
  %44 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.ib_port_modify*, %struct.ib_port_modify** %9, align 8
  %48 = getelementptr inbounds %struct.ib_port_modify, %struct.ib_port_modify* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %11, align 8
  %52 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @IB_PORT_SHUTDOWN, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %39
  %60 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %11, align 8
  %61 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %60, i32 0, i32 0
  store i32 0, i32* %61, align 8
  br label %62

62:                                               ; preds = %59, %39
  br label %63

63:                                               ; preds = %62, %38
  %64 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %11, align 8
  %65 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %64, i32 0, i32 1
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %63, %20
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local %struct.pvrdma_dev* @to_vdev(%struct.ib_device*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ib_query_port(%struct.ib_device*, i32, %struct.ib_port_attr*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
