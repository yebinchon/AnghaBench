; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-cdev.c_ioctl_allocate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-cdev.c_ioctl_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i64 }
%union.ioctl_arg = type { %struct.fw_cdev_allocate }
%struct.fw_cdev_allocate = type { i32, i64, i32, i64, i64 }
%struct.address_handler_resource = type { %struct.TYPE_4__, %struct.TYPE_5__, %struct.client*, i32 }
%struct.TYPE_4__ = type { i32, i32 (%struct.client*, %struct.TYPE_4__*)* }
%struct.TYPE_5__ = type { i64, %struct.address_handler_resource*, i32, i64 }
%struct.fw_address_region = type { i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FW_CDEV_VERSION_ALLOCATE_REGION_END = common dso_local global i64 0, align 8
@handle_request = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.client*, %union.ioctl_arg*)* @ioctl_allocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_allocate(%struct.client* %0, %union.ioctl_arg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.client*, align 8
  %5 = alloca %union.ioctl_arg*, align 8
  %6 = alloca %struct.fw_cdev_allocate*, align 8
  %7 = alloca %struct.address_handler_resource*, align 8
  %8 = alloca %struct.fw_address_region, align 8
  %9 = alloca i32, align 4
  store %struct.client* %0, %struct.client** %4, align 8
  store %union.ioctl_arg* %1, %union.ioctl_arg** %5, align 8
  %10 = load %union.ioctl_arg*, %union.ioctl_arg** %5, align 8
  %11 = bitcast %union.ioctl_arg* %10 to %struct.fw_cdev_allocate*
  store %struct.fw_cdev_allocate* %11, %struct.fw_cdev_allocate** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.address_handler_resource* @kmalloc(i32 64, i32 %12)
  store %struct.address_handler_resource* %13, %struct.address_handler_resource** %7, align 8
  %14 = load %struct.address_handler_resource*, %struct.address_handler_resource** %7, align 8
  %15 = icmp eq %struct.address_handler_resource* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %105

19:                                               ; preds = %2
  %20 = load %struct.fw_cdev_allocate*, %struct.fw_cdev_allocate** %6, align 8
  %21 = getelementptr inbounds %struct.fw_cdev_allocate, %struct.fw_cdev_allocate* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.fw_address_region, %struct.fw_address_region* %8, i32 0, i32 1
  store i64 %22, i64* %23, align 8
  %24 = load %struct.client*, %struct.client** %4, align 8
  %25 = getelementptr inbounds %struct.client, %struct.client* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @FW_CDEV_VERSION_ALLOCATE_REGION_END, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %19
  %30 = load %struct.fw_cdev_allocate*, %struct.fw_cdev_allocate** %6, align 8
  %31 = getelementptr inbounds %struct.fw_cdev_allocate, %struct.fw_cdev_allocate* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.fw_cdev_allocate*, %struct.fw_cdev_allocate** %6, align 8
  %34 = getelementptr inbounds %struct.fw_cdev_allocate, %struct.fw_cdev_allocate* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = getelementptr inbounds %struct.fw_address_region, %struct.fw_address_region* %8, i32 0, i32 0
  store i64 %36, i64* %37, align 8
  br label %43

38:                                               ; preds = %19
  %39 = load %struct.fw_cdev_allocate*, %struct.fw_cdev_allocate** %6, align 8
  %40 = getelementptr inbounds %struct.fw_cdev_allocate, %struct.fw_cdev_allocate* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.fw_address_region, %struct.fw_address_region* %8, i32 0, i32 0
  store i64 %41, i64* %42, align 8
  br label %43

43:                                               ; preds = %38, %29
  %44 = load %struct.fw_cdev_allocate*, %struct.fw_cdev_allocate** %6, align 8
  %45 = getelementptr inbounds %struct.fw_cdev_allocate, %struct.fw_cdev_allocate* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.address_handler_resource*, %struct.address_handler_resource** %7, align 8
  %48 = getelementptr inbounds %struct.address_handler_resource, %struct.address_handler_resource* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 3
  store i64 %46, i64* %49, align 8
  %50 = load i32, i32* @handle_request, align 4
  %51 = load %struct.address_handler_resource*, %struct.address_handler_resource** %7, align 8
  %52 = getelementptr inbounds %struct.address_handler_resource, %struct.address_handler_resource* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  store i32 %50, i32* %53, align 8
  %54 = load %struct.address_handler_resource*, %struct.address_handler_resource** %7, align 8
  %55 = load %struct.address_handler_resource*, %struct.address_handler_resource** %7, align 8
  %56 = getelementptr inbounds %struct.address_handler_resource, %struct.address_handler_resource* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  store %struct.address_handler_resource* %54, %struct.address_handler_resource** %57, align 8
  %58 = load %struct.fw_cdev_allocate*, %struct.fw_cdev_allocate** %6, align 8
  %59 = getelementptr inbounds %struct.fw_cdev_allocate, %struct.fw_cdev_allocate* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.address_handler_resource*, %struct.address_handler_resource** %7, align 8
  %62 = getelementptr inbounds %struct.address_handler_resource, %struct.address_handler_resource* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load %struct.client*, %struct.client** %4, align 8
  %64 = load %struct.address_handler_resource*, %struct.address_handler_resource** %7, align 8
  %65 = getelementptr inbounds %struct.address_handler_resource, %struct.address_handler_resource* %64, i32 0, i32 2
  store %struct.client* %63, %struct.client** %65, align 8
  %66 = load %struct.address_handler_resource*, %struct.address_handler_resource** %7, align 8
  %67 = getelementptr inbounds %struct.address_handler_resource, %struct.address_handler_resource* %66, i32 0, i32 1
  %68 = call i32 @fw_core_add_address_handler(%struct.TYPE_5__* %67, %struct.fw_address_region* %8)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %43
  %72 = load %struct.address_handler_resource*, %struct.address_handler_resource** %7, align 8
  %73 = call i32 @kfree(%struct.address_handler_resource* %72)
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %3, align 4
  br label %105

75:                                               ; preds = %43
  %76 = load %struct.address_handler_resource*, %struct.address_handler_resource** %7, align 8
  %77 = getelementptr inbounds %struct.address_handler_resource, %struct.address_handler_resource* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.fw_cdev_allocate*, %struct.fw_cdev_allocate** %6, align 8
  %81 = getelementptr inbounds %struct.fw_cdev_allocate, %struct.fw_cdev_allocate* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  %82 = load %struct.address_handler_resource*, %struct.address_handler_resource** %7, align 8
  %83 = getelementptr inbounds %struct.address_handler_resource, %struct.address_handler_resource* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  store i32 (%struct.client*, %struct.TYPE_4__*)* @release_address_handler, i32 (%struct.client*, %struct.TYPE_4__*)** %84, align 8
  %85 = load %struct.client*, %struct.client** %4, align 8
  %86 = load %struct.address_handler_resource*, %struct.address_handler_resource** %7, align 8
  %87 = getelementptr inbounds %struct.address_handler_resource, %struct.address_handler_resource* %86, i32 0, i32 0
  %88 = load i32, i32* @GFP_KERNEL, align 4
  %89 = call i32 @add_client_resource(%struct.client* %85, %struct.TYPE_4__* %87, i32 %88)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %75
  %93 = load %struct.client*, %struct.client** %4, align 8
  %94 = load %struct.address_handler_resource*, %struct.address_handler_resource** %7, align 8
  %95 = getelementptr inbounds %struct.address_handler_resource, %struct.address_handler_resource* %94, i32 0, i32 0
  %96 = call i32 @release_address_handler(%struct.client* %93, %struct.TYPE_4__* %95)
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %3, align 4
  br label %105

98:                                               ; preds = %75
  %99 = load %struct.address_handler_resource*, %struct.address_handler_resource** %7, align 8
  %100 = getelementptr inbounds %struct.address_handler_resource, %struct.address_handler_resource* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.fw_cdev_allocate*, %struct.fw_cdev_allocate** %6, align 8
  %104 = getelementptr inbounds %struct.fw_cdev_allocate, %struct.fw_cdev_allocate* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %98, %92, %71, %16
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.address_handler_resource* @kmalloc(i32, i32) #1

declare dso_local i32 @fw_core_add_address_handler(%struct.TYPE_5__*, %struct.fw_address_region*) #1

declare dso_local i32 @kfree(%struct.address_handler_resource*) #1

declare dso_local i32 @release_address_handler(%struct.client*, %struct.TYPE_4__*) #1

declare dso_local i32 @add_client_resource(%struct.client*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
