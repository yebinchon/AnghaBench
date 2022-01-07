; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_modify_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_modify_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_device_modify = type { i32, i32 }
%struct.hfi1_devdata = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hfi1_ibport }
%struct.hfi1_ibport = type { i32 }

@IB_DEVICE_MODIFY_SYS_IMAGE_GUID = common dso_local global i32 0, align 4
@IB_DEVICE_MODIFY_NODE_DESC = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IB_DEVICE_NODE_DESC_MAX = common dso_local global i32 0, align 4
@ib_hfi1_sys_image_guid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, %struct.ib_device_modify*)* @modify_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @modify_device(%struct.ib_device* %0, i32 %1, %struct.ib_device_modify* %2) #0 {
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device_modify*, align 8
  %7 = alloca %struct.hfi1_devdata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hfi1_ibport*, align 8
  %11 = alloca %struct.hfi1_ibport*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_device_modify* %2, %struct.ib_device_modify** %6, align 8
  %12 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %13 = call %struct.hfi1_devdata* @dd_from_ibdev(%struct.ib_device* %12)
  store %struct.hfi1_devdata* %13, %struct.hfi1_devdata** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @IB_DEVICE_MODIFY_SYS_IMAGE_GUID, align 4
  %16 = load i32, i32* @IB_DEVICE_MODIFY_NODE_DESC, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = and i32 %14, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %9, align 4
  br label %89

24:                                               ; preds = %3
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @IB_DEVICE_MODIFY_NODE_DESC, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %58

29:                                               ; preds = %24
  %30 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %31 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ib_device_modify*, %struct.ib_device_modify** %6, align 8
  %34 = getelementptr inbounds %struct.ib_device_modify, %struct.ib_device_modify* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IB_DEVICE_NODE_DESC_MAX, align 4
  %37 = call i32 @memcpy(i32 %32, i32 %35, i32 %36)
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %54, %29
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %41 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ult i32 %39, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %38
  %45 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %46 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store %struct.hfi1_ibport* %51, %struct.hfi1_ibport** %10, align 8
  %52 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %10, align 8
  %53 = call i32 @hfi1_node_desc_chg(%struct.hfi1_ibport* %52)
  br label %54

54:                                               ; preds = %44
  %55 = load i32, i32* %8, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %38

57:                                               ; preds = %38
  br label %58

58:                                               ; preds = %57, %24
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @IB_DEVICE_MODIFY_SYS_IMAGE_GUID, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %88

63:                                               ; preds = %58
  %64 = load %struct.ib_device_modify*, %struct.ib_device_modify** %6, align 8
  %65 = getelementptr inbounds %struct.ib_device_modify, %struct.ib_device_modify* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @cpu_to_be64(i32 %66)
  store i32 %67, i32* @ib_hfi1_sys_image_guid, align 4
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %84, %63
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %71 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ult i32 %69, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %68
  %75 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %76 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store %struct.hfi1_ibport* %81, %struct.hfi1_ibport** %11, align 8
  %82 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %11, align 8
  %83 = call i32 @hfi1_sys_guid_chg(%struct.hfi1_ibport* %82)
  br label %84

84:                                               ; preds = %74
  %85 = load i32, i32* %8, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %68

87:                                               ; preds = %68
  br label %88

88:                                               ; preds = %87, %58
  store i32 0, i32* %9, align 4
  br label %89

89:                                               ; preds = %88, %21
  %90 = load i32, i32* %9, align 4
  ret i32 %90
}

declare dso_local %struct.hfi1_devdata* @dd_from_ibdev(%struct.ib_device*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @hfi1_node_desc_chg(%struct.hfi1_ibport*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @hfi1_sys_guid_chg(%struct.hfi1_ibport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
