; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_master_retrieve_dev_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_master_retrieve_dev_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i3c_dev_desc = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.i3c_master_controller = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@I3C_ADDR_SLOT_RSVD = common dso_local global i32 0, align 4
@I3C_ADDR_SLOT_I2C_DEV = common dso_local global i32 0, align 4
@I3C_BCR_MAX_DATA_SPEED_LIM = common dso_local global i32 0, align 4
@I3C_BCR_IBI_PAYLOAD = common dso_local global i32 0, align 4
@I3C_BCR_HDR_CAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i3c_dev_desc*)* @i3c_master_retrieve_dev_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i3c_master_retrieve_dev_info(%struct.i3c_dev_desc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i3c_dev_desc*, align 8
  %4 = alloca %struct.i3c_master_controller*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i3c_dev_desc* %0, %struct.i3c_dev_desc** %3, align 8
  %7 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %3, align 8
  %8 = call %struct.i3c_master_controller* @i3c_dev_get_master(%struct.i3c_dev_desc* %7)
  store %struct.i3c_master_controller* %8, %struct.i3c_master_controller** %4, align 8
  %9 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %3, align 8
  %10 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %119

17:                                               ; preds = %1
  %18 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %19 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %18, i32 0, i32 0
  %20 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %3, align 8
  %21 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @i3c_bus_get_addr_slot_status(i32* %19, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @I3C_ADDR_SLOT_RSVD, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %17
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @I3C_ADDR_SLOT_I2C_DEV, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28, %17
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %119

35:                                               ; preds = %28
  %36 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %37 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %3, align 8
  %38 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %37, i32 0, i32 0
  %39 = call i32 @i3c_master_getpid_locked(%struct.i3c_master_controller* %36, %struct.TYPE_8__* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %119

44:                                               ; preds = %35
  %45 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %46 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %3, align 8
  %47 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %46, i32 0, i32 0
  %48 = call i32 @i3c_master_getbcr_locked(%struct.i3c_master_controller* %45, %struct.TYPE_8__* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %119

53:                                               ; preds = %44
  %54 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %55 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %3, align 8
  %56 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %55, i32 0, i32 0
  %57 = call i32 @i3c_master_getdcr_locked(%struct.i3c_master_controller* %54, %struct.TYPE_8__* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %2, align 4
  br label %119

62:                                               ; preds = %53
  %63 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %3, align 8
  %64 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @I3C_BCR_MAX_DATA_SPEED_LIM, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %62
  %71 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %72 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %3, align 8
  %73 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %72, i32 0, i32 0
  %74 = call i32 @i3c_master_getmxds_locked(%struct.i3c_master_controller* %71, %struct.TYPE_8__* %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %2, align 4
  br label %119

79:                                               ; preds = %70
  br label %80

80:                                               ; preds = %79, %62
  %81 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %3, align 8
  %82 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @I3C_BCR_IBI_PAYLOAD, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %80
  %89 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %3, align 8
  %90 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  store i32 1, i32* %91, align 4
  br label %92

92:                                               ; preds = %88, %80
  %93 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %94 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %3, align 8
  %95 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %94, i32 0, i32 0
  %96 = call i32 @i3c_master_getmrl_locked(%struct.i3c_master_controller* %93, %struct.TYPE_8__* %95)
  %97 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %98 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %3, align 8
  %99 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %98, i32 0, i32 0
  %100 = call i32 @i3c_master_getmwl_locked(%struct.i3c_master_controller* %97, %struct.TYPE_8__* %99)
  %101 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %3, align 8
  %102 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @I3C_BCR_HDR_CAP, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %92
  %109 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %110 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %3, align 8
  %111 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %110, i32 0, i32 0
  %112 = call i32 @i3c_master_gethdrcap_locked(%struct.i3c_master_controller* %109, %struct.TYPE_8__* %111)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %108
  %116 = load i32, i32* %6, align 4
  store i32 %116, i32* %2, align 4
  br label %119

117:                                              ; preds = %108
  br label %118

118:                                              ; preds = %117, %92
  store i32 0, i32* %2, align 4
  br label %119

119:                                              ; preds = %118, %115, %77, %60, %51, %42, %32, %14
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local %struct.i3c_master_controller* @i3c_dev_get_master(%struct.i3c_dev_desc*) #1

declare dso_local i32 @i3c_bus_get_addr_slot_status(i32*, i32) #1

declare dso_local i32 @i3c_master_getpid_locked(%struct.i3c_master_controller*, %struct.TYPE_8__*) #1

declare dso_local i32 @i3c_master_getbcr_locked(%struct.i3c_master_controller*, %struct.TYPE_8__*) #1

declare dso_local i32 @i3c_master_getdcr_locked(%struct.i3c_master_controller*, %struct.TYPE_8__*) #1

declare dso_local i32 @i3c_master_getmxds_locked(%struct.i3c_master_controller*, %struct.TYPE_8__*) #1

declare dso_local i32 @i3c_master_getmrl_locked(%struct.i3c_master_controller*, %struct.TYPE_8__*) #1

declare dso_local i32 @i3c_master_getmwl_locked(%struct.i3c_master_controller*, %struct.TYPE_8__*) #1

declare dso_local i32 @i3c_master_gethdrcap_locked(%struct.i3c_master_controller*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
