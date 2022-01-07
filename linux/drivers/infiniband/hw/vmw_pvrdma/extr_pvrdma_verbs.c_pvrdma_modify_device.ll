; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_verbs.c_pvrdma_modify_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_verbs.c_pvrdma_modify_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_device_modify = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@IB_DEVICE_MODIFY_SYS_IMAGE_GUID = common dso_local global i32 0, align 4
@IB_DEVICE_MODIFY_NODE_DESC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"unsupported device modify mask %#x\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvrdma_modify_device(%struct.ib_device* %0, i32 %1, %struct.ib_device_modify* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_device_modify*, align 8
  %8 = alloca i64, align 8
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_device_modify* %2, %struct.ib_device_modify** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @IB_DEVICE_MODIFY_SYS_IMAGE_GUID, align 4
  %11 = load i32, i32* @IB_DEVICE_MODIFY_NODE_DESC, align 4
  %12 = or i32 %10, %11
  %13 = xor i32 %12, -1
  %14 = and i32 %9, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %18 = call %struct.TYPE_4__* @to_vdev(%struct.ib_device* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @dev_warn(i32* %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %71

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @IB_DEVICE_MODIFY_NODE_DESC, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %26
  %32 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %33 = call %struct.TYPE_4__* @to_vdev(%struct.ib_device* %32)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %38 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ib_device_modify*, %struct.ib_device_modify** %7, align 8
  %41 = getelementptr inbounds %struct.ib_device_modify, %struct.ib_device_modify* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @memcpy(i32 %39, i32 %42, i32 64)
  %44 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %45 = call %struct.TYPE_4__* @to_vdev(%struct.ib_device* %44)
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  br label %49

49:                                               ; preds = %31, %26
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @IB_DEVICE_MODIFY_SYS_IMAGE_GUID, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %49
  %55 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %56 = call %struct.TYPE_4__* @to_vdev(%struct.ib_device* %55)
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = call i32 @mutex_lock(i32* %57)
  %59 = load %struct.ib_device_modify*, %struct.ib_device_modify** %7, align 8
  %60 = getelementptr inbounds %struct.ib_device_modify, %struct.ib_device_modify* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @cpu_to_be64(i32 %61)
  %63 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %64 = call %struct.TYPE_4__* @to_vdev(%struct.ib_device* %63)
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 4
  %66 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %67 = call %struct.TYPE_4__* @to_vdev(%struct.ib_device* %66)
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  br label %70

70:                                               ; preds = %54, %49
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %16
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local %struct.TYPE_4__* @to_vdev(%struct.ib_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
