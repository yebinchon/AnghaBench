; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-cdev.c_init_iso_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-cdev.c_init_iso_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i32 }
%struct.fw_cdev_allocate_iso_resource = type { i64, i64, i32, i32 }
%struct.iso_resource_event = type { i32, i32, i64, i64, %struct.TYPE_4__, %struct.TYPE_3__, %struct.iso_resource_event*, %struct.iso_resource_event*, %struct.client*, i32 }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.iso_resource = type { i32, i32, i64, i64, %struct.TYPE_4__, %struct.TYPE_3__, %struct.iso_resource*, %struct.iso_resource*, %struct.client*, i32 }

@BANDWIDTH_AVAILABLE_INITIAL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@iso_resource_work = common dso_local global i32 0, align 4
@FW_CDEV_EVENT_ISO_RESOURCE_ALLOCATED = common dso_local global i32 0, align 4
@FW_CDEV_EVENT_ISO_RESOURCE_DEALLOCATED = common dso_local global i32 0, align 4
@ISO_RES_ALLOC = common dso_local global i32 0, align 4
@release_iso_resource = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.client*, %struct.fw_cdev_allocate_iso_resource*, i32)* @init_iso_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_iso_resource(%struct.client* %0, %struct.fw_cdev_allocate_iso_resource* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.client*, align 8
  %6 = alloca %struct.fw_cdev_allocate_iso_resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iso_resource_event*, align 8
  %9 = alloca %struct.iso_resource_event*, align 8
  %10 = alloca %struct.iso_resource*, align 8
  %11 = alloca i32, align 4
  store %struct.client* %0, %struct.client** %5, align 8
  store %struct.fw_cdev_allocate_iso_resource* %1, %struct.fw_cdev_allocate_iso_resource** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.fw_cdev_allocate_iso_resource*, %struct.fw_cdev_allocate_iso_resource** %6, align 8
  %13 = getelementptr inbounds %struct.fw_cdev_allocate_iso_resource, %struct.fw_cdev_allocate_iso_resource* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.fw_cdev_allocate_iso_resource*, %struct.fw_cdev_allocate_iso_resource** %6, align 8
  %18 = getelementptr inbounds %struct.fw_cdev_allocate_iso_resource, %struct.fw_cdev_allocate_iso_resource* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %16, %3
  %22 = load %struct.fw_cdev_allocate_iso_resource*, %struct.fw_cdev_allocate_iso_resource** %6, align 8
  %23 = getelementptr inbounds %struct.fw_cdev_allocate_iso_resource, %struct.fw_cdev_allocate_iso_resource* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @BANDWIDTH_AVAILABLE_INITIAL, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21, %16
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %143

30:                                               ; preds = %21
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.iso_resource_event* @kmalloc(i32 80, i32 %31)
  %33 = bitcast %struct.iso_resource_event* %32 to %struct.iso_resource*
  store %struct.iso_resource* %33, %struct.iso_resource** %10, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.iso_resource_event* @kmalloc(i32 80, i32 %34)
  store %struct.iso_resource_event* %35, %struct.iso_resource_event** %8, align 8
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.iso_resource_event* @kmalloc(i32 80, i32 %36)
  store %struct.iso_resource_event* %37, %struct.iso_resource_event** %9, align 8
  %38 = load %struct.iso_resource*, %struct.iso_resource** %10, align 8
  %39 = icmp eq %struct.iso_resource* %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %30
  %41 = load %struct.iso_resource_event*, %struct.iso_resource_event** %8, align 8
  %42 = icmp eq %struct.iso_resource_event* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load %struct.iso_resource_event*, %struct.iso_resource_event** %9, align 8
  %45 = icmp eq %struct.iso_resource_event* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43, %40, %30
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %11, align 4
  br label %134

49:                                               ; preds = %43
  %50 = load %struct.iso_resource*, %struct.iso_resource** %10, align 8
  %51 = getelementptr inbounds %struct.iso_resource, %struct.iso_resource* %50, i32 0, i32 9
  %52 = load i32, i32* @iso_resource_work, align 4
  %53 = call i32 @INIT_DELAYED_WORK(i32* %51, i32 %52)
  %54 = load %struct.client*, %struct.client** %5, align 8
  %55 = load %struct.iso_resource*, %struct.iso_resource** %10, align 8
  %56 = getelementptr inbounds %struct.iso_resource, %struct.iso_resource* %55, i32 0, i32 8
  store %struct.client* %54, %struct.client** %56, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.iso_resource*, %struct.iso_resource** %10, align 8
  %59 = getelementptr inbounds %struct.iso_resource, %struct.iso_resource* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.iso_resource*, %struct.iso_resource** %10, align 8
  %61 = getelementptr inbounds %struct.iso_resource, %struct.iso_resource* %60, i32 0, i32 1
  store i32 -1, i32* %61, align 4
  %62 = load %struct.fw_cdev_allocate_iso_resource*, %struct.fw_cdev_allocate_iso_resource** %6, align 8
  %63 = getelementptr inbounds %struct.fw_cdev_allocate_iso_resource, %struct.fw_cdev_allocate_iso_resource* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.iso_resource*, %struct.iso_resource** %10, align 8
  %66 = getelementptr inbounds %struct.iso_resource, %struct.iso_resource* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  %67 = load %struct.fw_cdev_allocate_iso_resource*, %struct.fw_cdev_allocate_iso_resource** %6, align 8
  %68 = getelementptr inbounds %struct.fw_cdev_allocate_iso_resource, %struct.fw_cdev_allocate_iso_resource* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.iso_resource*, %struct.iso_resource** %10, align 8
  %71 = getelementptr inbounds %struct.iso_resource, %struct.iso_resource* %70, i32 0, i32 3
  store i64 %69, i64* %71, align 8
  %72 = load %struct.iso_resource_event*, %struct.iso_resource_event** %8, align 8
  %73 = bitcast %struct.iso_resource_event* %72 to %struct.iso_resource*
  %74 = load %struct.iso_resource*, %struct.iso_resource** %10, align 8
  %75 = getelementptr inbounds %struct.iso_resource, %struct.iso_resource* %74, i32 0, i32 7
  store %struct.iso_resource* %73, %struct.iso_resource** %75, align 8
  %76 = load %struct.iso_resource_event*, %struct.iso_resource_event** %9, align 8
  %77 = bitcast %struct.iso_resource_event* %76 to %struct.iso_resource*
  %78 = load %struct.iso_resource*, %struct.iso_resource** %10, align 8
  %79 = getelementptr inbounds %struct.iso_resource, %struct.iso_resource* %78, i32 0, i32 6
  store %struct.iso_resource* %77, %struct.iso_resource** %79, align 8
  %80 = load %struct.fw_cdev_allocate_iso_resource*, %struct.fw_cdev_allocate_iso_resource** %6, align 8
  %81 = getelementptr inbounds %struct.fw_cdev_allocate_iso_resource, %struct.fw_cdev_allocate_iso_resource* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.iso_resource_event*, %struct.iso_resource_event** %8, align 8
  %84 = getelementptr inbounds %struct.iso_resource_event, %struct.iso_resource_event* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* @FW_CDEV_EVENT_ISO_RESOURCE_ALLOCATED, align 4
  %87 = load %struct.iso_resource_event*, %struct.iso_resource_event** %8, align 8
  %88 = getelementptr inbounds %struct.iso_resource_event, %struct.iso_resource_event* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 8
  %90 = load %struct.fw_cdev_allocate_iso_resource*, %struct.fw_cdev_allocate_iso_resource** %6, align 8
  %91 = getelementptr inbounds %struct.fw_cdev_allocate_iso_resource, %struct.fw_cdev_allocate_iso_resource* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.iso_resource_event*, %struct.iso_resource_event** %9, align 8
  %94 = getelementptr inbounds %struct.iso_resource_event, %struct.iso_resource_event* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  store i32 %92, i32* %95, align 4
  %96 = load i32, i32* @FW_CDEV_EVENT_ISO_RESOURCE_DEALLOCATED, align 4
  %97 = load %struct.iso_resource_event*, %struct.iso_resource_event** %9, align 8
  %98 = getelementptr inbounds %struct.iso_resource_event, %struct.iso_resource_event* %97, i32 0, i32 5
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 8
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @ISO_RES_ALLOC, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %117

103:                                              ; preds = %49
  %104 = load i32*, i32** @release_iso_resource, align 8
  %105 = load %struct.iso_resource*, %struct.iso_resource** %10, align 8
  %106 = getelementptr inbounds %struct.iso_resource, %struct.iso_resource* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  store i32* %104, i32** %107, align 8
  %108 = load %struct.client*, %struct.client** %5, align 8
  %109 = load %struct.iso_resource*, %struct.iso_resource** %10, align 8
  %110 = getelementptr inbounds %struct.iso_resource, %struct.iso_resource* %109, i32 0, i32 4
  %111 = load i32, i32* @GFP_KERNEL, align 4
  %112 = call i32 @add_client_resource(%struct.client* %108, %struct.TYPE_4__* %110, i32 %111)
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %103
  br label %134

116:                                              ; preds = %103
  br label %127

117:                                              ; preds = %49
  %118 = load %struct.iso_resource*, %struct.iso_resource** %10, align 8
  %119 = getelementptr inbounds %struct.iso_resource, %struct.iso_resource* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  store i32* null, i32** %120, align 8
  %121 = load %struct.iso_resource*, %struct.iso_resource** %10, align 8
  %122 = getelementptr inbounds %struct.iso_resource, %struct.iso_resource* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  store i32 -1, i32* %123, align 8
  %124 = load %struct.iso_resource*, %struct.iso_resource** %10, align 8
  %125 = bitcast %struct.iso_resource* %124 to %struct.iso_resource_event*
  %126 = call i32 @schedule_iso_resource(%struct.iso_resource_event* %125, i32 0)
  br label %127

127:                                              ; preds = %117, %116
  %128 = load %struct.iso_resource*, %struct.iso_resource** %10, align 8
  %129 = getelementptr inbounds %struct.iso_resource, %struct.iso_resource* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.fw_cdev_allocate_iso_resource*, %struct.fw_cdev_allocate_iso_resource** %6, align 8
  %133 = getelementptr inbounds %struct.fw_cdev_allocate_iso_resource, %struct.fw_cdev_allocate_iso_resource* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  store i32 0, i32* %4, align 4
  br label %143

134:                                              ; preds = %115, %46
  %135 = load %struct.iso_resource*, %struct.iso_resource** %10, align 8
  %136 = bitcast %struct.iso_resource* %135 to %struct.iso_resource_event*
  %137 = call i32 @kfree(%struct.iso_resource_event* %136)
  %138 = load %struct.iso_resource_event*, %struct.iso_resource_event** %8, align 8
  %139 = call i32 @kfree(%struct.iso_resource_event* %138)
  %140 = load %struct.iso_resource_event*, %struct.iso_resource_event** %9, align 8
  %141 = call i32 @kfree(%struct.iso_resource_event* %140)
  %142 = load i32, i32* %11, align 4
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %134, %127, %27
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local %struct.iso_resource_event* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @add_client_resource(%struct.client*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @schedule_iso_resource(%struct.iso_resource_event*, i32) #1

declare dso_local i32 @kfree(%struct.iso_resource_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
