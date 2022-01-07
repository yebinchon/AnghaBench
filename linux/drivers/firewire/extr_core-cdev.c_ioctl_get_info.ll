; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-cdev.c_ioctl_get_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-cdev.c_ioctl_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.fw_cdev_event_bus_reset*, %struct.TYPE_3__* }
%struct.fw_cdev_event_bus_reset = type { i32 }
%struct.TYPE_3__ = type { i32 }
%union.ioctl_arg = type { %struct.fw_cdev_get_info }
%struct.fw_cdev_get_info = type { i64, i64, i64, i32, i32, i32 }

@FW_CDEV_KERNEL_VERSION = common dso_local global i32 0, align 4
@fw_device_rwsem = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.client*, %union.ioctl_arg*)* @ioctl_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_get_info(%struct.client* %0, %union.ioctl_arg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.client*, align 8
  %5 = alloca %union.ioctl_arg*, align 8
  %6 = alloca %struct.fw_cdev_get_info*, align 8
  %7 = alloca %struct.fw_cdev_event_bus_reset, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.client* %0, %struct.client** %4, align 8
  store %union.ioctl_arg* %1, %union.ioctl_arg** %5, align 8
  %11 = load %union.ioctl_arg*, %union.ioctl_arg** %5, align 8
  %12 = bitcast %union.ioctl_arg* %11 to %struct.fw_cdev_get_info*
  store %struct.fw_cdev_get_info* %12, %struct.fw_cdev_get_info** %6, align 8
  store i64 0, i64* %8, align 8
  %13 = load %struct.fw_cdev_get_info*, %struct.fw_cdev_get_info** %6, align 8
  %14 = getelementptr inbounds %struct.fw_cdev_get_info, %struct.fw_cdev_get_info* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.client*, %struct.client** %4, align 8
  %17 = getelementptr inbounds %struct.client, %struct.client* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @FW_CDEV_KERNEL_VERSION, align 4
  %19 = load %struct.fw_cdev_get_info*, %struct.fw_cdev_get_info** %6, align 8
  %20 = getelementptr inbounds %struct.fw_cdev_get_info, %struct.fw_cdev_get_info* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 8
  %21 = load %struct.client*, %struct.client** %4, align 8
  %22 = getelementptr inbounds %struct.client, %struct.client* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.fw_cdev_get_info*, %struct.fw_cdev_get_info** %6, align 8
  %29 = getelementptr inbounds %struct.fw_cdev_get_info, %struct.fw_cdev_get_info* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = call i32 @down_read(i32* @fw_device_rwsem)
  %31 = load %struct.fw_cdev_get_info*, %struct.fw_cdev_get_info** %6, align 8
  %32 = getelementptr inbounds %struct.fw_cdev_get_info, %struct.fw_cdev_get_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %2
  %36 = load %struct.fw_cdev_get_info*, %struct.fw_cdev_get_info** %6, align 8
  %37 = getelementptr inbounds %struct.fw_cdev_get_info, %struct.fw_cdev_get_info* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %9, align 8
  %39 = load %struct.client*, %struct.client** %4, align 8
  %40 = getelementptr inbounds %struct.client, %struct.client* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = mul nsw i32 %43, 4
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %10, align 8
  %46 = load %struct.fw_cdev_get_info*, %struct.fw_cdev_get_info** %6, align 8
  %47 = getelementptr inbounds %struct.fw_cdev_get_info, %struct.fw_cdev_get_info* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @u64_to_uptr(i64 %48)
  %50 = load %struct.client*, %struct.client** %4, align 8
  %51 = getelementptr inbounds %struct.client, %struct.client* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  %54 = load %struct.fw_cdev_event_bus_reset*, %struct.fw_cdev_event_bus_reset** %53, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = call i32 @min(i64 %55, i64 %56)
  %58 = call i64 @copy_to_user(i32 %49, %struct.fw_cdev_event_bus_reset* %54, i32 %57)
  store i64 %58, i64* %8, align 8
  br label %59

59:                                               ; preds = %35, %2
  %60 = load %struct.client*, %struct.client** %4, align 8
  %61 = getelementptr inbounds %struct.client, %struct.client* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = mul nsw i32 %64, 4
  %66 = sext i32 %65 to i64
  %67 = load %struct.fw_cdev_get_info*, %struct.fw_cdev_get_info** %6, align 8
  %68 = getelementptr inbounds %struct.fw_cdev_get_info, %struct.fw_cdev_get_info* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = call i32 @up_read(i32* @fw_device_rwsem)
  %70 = load i64, i64* %8, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %59
  %73 = load i32, i32* @EFAULT, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %128

75:                                               ; preds = %59
  %76 = load %struct.client*, %struct.client** %4, align 8
  %77 = getelementptr inbounds %struct.client, %struct.client* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = call i32 @mutex_lock(i32* %79)
  %81 = load %struct.fw_cdev_get_info*, %struct.fw_cdev_get_info** %6, align 8
  %82 = getelementptr inbounds %struct.fw_cdev_get_info, %struct.fw_cdev_get_info* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.client*, %struct.client** %4, align 8
  %85 = getelementptr inbounds %struct.client, %struct.client* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  %86 = load %struct.fw_cdev_get_info*, %struct.fw_cdev_get_info** %6, align 8
  %87 = getelementptr inbounds %struct.fw_cdev_get_info, %struct.fw_cdev_get_info* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %75
  %91 = load %struct.client*, %struct.client** %4, align 8
  %92 = call i32 @fill_bus_reset_event(%struct.fw_cdev_event_bus_reset* %7, %struct.client* %91)
  %93 = load %struct.fw_cdev_get_info*, %struct.fw_cdev_get_info** %6, align 8
  %94 = getelementptr inbounds %struct.fw_cdev_get_info, %struct.fw_cdev_get_info* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @u64_to_uptr(i64 %95)
  %97 = call i64 @copy_to_user(i32 %96, %struct.fw_cdev_event_bus_reset* %7, i32 36)
  store i64 %97, i64* %8, align 8
  br label %98

98:                                               ; preds = %90, %75
  %99 = load i64, i64* %8, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %98
  %102 = load %struct.client*, %struct.client** %4, align 8
  %103 = getelementptr inbounds %struct.client, %struct.client* %102, i32 0, i32 1
  %104 = call i64 @list_empty(i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load %struct.client*, %struct.client** %4, align 8
  %108 = getelementptr inbounds %struct.client, %struct.client* %107, i32 0, i32 1
  %109 = load %struct.client*, %struct.client** %4, align 8
  %110 = getelementptr inbounds %struct.client, %struct.client* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 2
  %113 = call i32 @list_add_tail(i32* %108, i32* %112)
  br label %114

114:                                              ; preds = %106, %101, %98
  %115 = load %struct.client*, %struct.client** %4, align 8
  %116 = getelementptr inbounds %struct.client, %struct.client* %115, i32 0, i32 0
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = call i32 @mutex_unlock(i32* %118)
  %120 = load i64, i64* %8, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %114
  %123 = load i32, i32* @EFAULT, align 4
  %124 = sub nsw i32 0, %123
  br label %126

125:                                              ; preds = %114
  br label %126

126:                                              ; preds = %125, %122
  %127 = phi i32 [ %124, %122 ], [ 0, %125 ]
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %126, %72
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @copy_to_user(i32, %struct.fw_cdev_event_bus_reset*, i32) #1

declare dso_local i32 @u64_to_uptr(i64) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fill_bus_reset_event(%struct.fw_cdev_event_bus_reset*, %struct.client*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
