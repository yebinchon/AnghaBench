; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-device.c_lookup_existing_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-device.c_lookup_existing_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.fw_device = type { i32, i64, i32, i32, i32, %struct.fw_node*, i32, i32, %struct.fw_card* }
%struct.fw_node = type { i32, %struct.fw_device* }
%struct.fw_card = type { i32, %struct.fw_node*, i32 }

@fw_device_rwsem = common dso_local global i32 0, align 4
@FW_DEVICE_GONE = common dso_local global i64 0, align 8
@FW_DEVICE_RUNNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"rediscovered device %s\0A\00", align 1
@fw_device_update = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @lookup_existing_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookup_existing_device(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fw_device*, align 8
  %7 = alloca %struct.fw_device*, align 8
  %8 = alloca %struct.fw_card*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fw_node*, align 8
  %11 = alloca %struct.fw_node*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.fw_device* @fw_device(%struct.device* %12)
  store %struct.fw_device* %13, %struct.fw_device** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.fw_device*
  store %struct.fw_device* %15, %struct.fw_device** %7, align 8
  %16 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %17 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %16, i32 0, i32 8
  %18 = load %struct.fw_card*, %struct.fw_card** %17, align 8
  store %struct.fw_card* %18, %struct.fw_card** %8, align 8
  store i32 0, i32* %9, align 4
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call i32 @is_fw_device(%struct.device* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %109

23:                                               ; preds = %2
  %24 = call i32 @down_read(i32* @fw_device_rwsem)
  %25 = load %struct.fw_card*, %struct.fw_card** %8, align 8
  %26 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %25, i32 0, i32 0
  %27 = call i32 @spin_lock_irq(i32* %26)
  %28 = load %struct.fw_device*, %struct.fw_device** %6, align 8
  %29 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %32 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @memcmp(i32 %30, i32 %33, i32 24)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %103

36:                                               ; preds = %23
  %37 = load %struct.fw_device*, %struct.fw_device** %6, align 8
  %38 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %37, i32 0, i32 6
  %39 = load i64, i64* @FW_DEVICE_GONE, align 8
  %40 = load i32, i32* @FW_DEVICE_RUNNING, align 4
  %41 = call i64 @atomic_cmpxchg(i32* %38, i64 %39, i32 %40)
  %42 = load i64, i64* @FW_DEVICE_GONE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %103

44:                                               ; preds = %36
  %45 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %46 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %45, i32 0, i32 5
  %47 = load %struct.fw_node*, %struct.fw_node** %46, align 8
  store %struct.fw_node* %47, %struct.fw_node** %10, align 8
  %48 = load %struct.fw_device*, %struct.fw_device** %6, align 8
  %49 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %48, i32 0, i32 5
  %50 = load %struct.fw_node*, %struct.fw_node** %49, align 8
  store %struct.fw_node* %50, %struct.fw_node** %11, align 8
  %51 = load %struct.fw_node*, %struct.fw_node** %11, align 8
  %52 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %53 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %52, i32 0, i32 5
  store %struct.fw_node* %51, %struct.fw_node** %53, align 8
  %54 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %55 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %56 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %55, i32 0, i32 5
  %57 = load %struct.fw_node*, %struct.fw_node** %56, align 8
  %58 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %57, i32 0, i32 1
  store %struct.fw_device* %54, %struct.fw_device** %58, align 8
  %59 = load %struct.fw_node*, %struct.fw_node** %10, align 8
  %60 = load %struct.fw_device*, %struct.fw_device** %6, align 8
  %61 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %60, i32 0, i32 5
  store %struct.fw_node* %59, %struct.fw_node** %61, align 8
  %62 = load %struct.fw_device*, %struct.fw_device** %6, align 8
  %63 = load %struct.fw_device*, %struct.fw_device** %6, align 8
  %64 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %63, i32 0, i32 5
  %65 = load %struct.fw_node*, %struct.fw_node** %64, align 8
  %66 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %65, i32 0, i32 1
  store %struct.fw_device* %62, %struct.fw_device** %66, align 8
  %67 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %68 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.fw_device*, %struct.fw_device** %6, align 8
  %71 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 8
  %72 = load %struct.fw_node*, %struct.fw_node** %10, align 8
  %73 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.fw_device*, %struct.fw_device** %6, align 8
  %76 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = call i32 (...) @smp_wmb()
  %78 = load %struct.fw_card*, %struct.fw_card** %8, align 8
  %79 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.fw_device*, %struct.fw_device** %6, align 8
  %82 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load %struct.fw_device*, %struct.fw_device** %6, align 8
  %84 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %83, i32 0, i32 1
  store i64 0, i64* %84, align 8
  %85 = load %struct.fw_card*, %struct.fw_card** %8, align 8
  %86 = load %struct.device*, %struct.device** %4, align 8
  %87 = call i32 @dev_name(%struct.device* %86)
  %88 = call i32 @fw_notice(%struct.fw_card* %85, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @fw_device_update, align 4
  %90 = load %struct.fw_device*, %struct.fw_device** %6, align 8
  %91 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.fw_device*, %struct.fw_device** %6, align 8
  %93 = call i32 @fw_schedule_device_work(%struct.fw_device* %92, i32 0)
  %94 = load %struct.fw_node*, %struct.fw_node** %10, align 8
  %95 = load %struct.fw_card*, %struct.fw_card** %8, align 8
  %96 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %95, i32 0, i32 1
  %97 = load %struct.fw_node*, %struct.fw_node** %96, align 8
  %98 = icmp eq %struct.fw_node* %94, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %44
  %100 = load %struct.fw_card*, %struct.fw_card** %8, align 8
  %101 = call i32 @fw_schedule_bm_work(%struct.fw_card* %100, i32 0)
  br label %102

102:                                              ; preds = %99, %44
  store i32 1, i32* %9, align 4
  br label %103

103:                                              ; preds = %102, %36, %23
  %104 = load %struct.fw_card*, %struct.fw_card** %8, align 8
  %105 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %104, i32 0, i32 0
  %106 = call i32 @spin_unlock_irq(i32* %105)
  %107 = call i32 @up_read(i32* @fw_device_rwsem)
  %108 = load i32, i32* %9, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %103, %22
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local %struct.fw_device* @fw_device(%struct.device*) #1

declare dso_local i32 @is_fw_device(%struct.device*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i64 @atomic_cmpxchg(i32*, i64, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @fw_notice(%struct.fw_card*, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @fw_schedule_device_work(%struct.fw_device*, i32) #1

declare dso_local i32 @fw_schedule_bm_work(%struct.fw_card*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
