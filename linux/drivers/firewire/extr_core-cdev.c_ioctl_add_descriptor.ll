; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-cdev.c_ioctl_add_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-cdev.c_ioctl_add_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%union.ioctl_arg = type { %struct.fw_cdev_add_descriptor }
%struct.fw_cdev_add_descriptor = type { i32, i32, i32, i32, i32 }
%struct.descriptor_resource = type { %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@ENOSYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@release_descriptor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.client*, %union.ioctl_arg*)* @ioctl_add_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_add_descriptor(%struct.client* %0, %union.ioctl_arg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.client*, align 8
  %5 = alloca %union.ioctl_arg*, align 8
  %6 = alloca %struct.fw_cdev_add_descriptor*, align 8
  %7 = alloca %struct.descriptor_resource*, align 8
  %8 = alloca i32, align 4
  store %struct.client* %0, %struct.client** %4, align 8
  store %union.ioctl_arg* %1, %union.ioctl_arg** %5, align 8
  %9 = load %union.ioctl_arg*, %union.ioctl_arg** %5, align 8
  %10 = bitcast %union.ioctl_arg* %9 to %struct.fw_cdev_add_descriptor*
  store %struct.fw_cdev_add_descriptor* %10, %struct.fw_cdev_add_descriptor** %6, align 8
  %11 = load %struct.client*, %struct.client** %4, align 8
  %12 = getelementptr inbounds %struct.client, %struct.client* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOSYS, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %118

20:                                               ; preds = %2
  %21 = load %struct.fw_cdev_add_descriptor*, %struct.fw_cdev_add_descriptor** %6, align 8
  %22 = getelementptr inbounds %struct.fw_cdev_add_descriptor, %struct.fw_cdev_add_descriptor* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %23, 256
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %118

28:                                               ; preds = %20
  %29 = load %struct.fw_cdev_add_descriptor*, %struct.fw_cdev_add_descriptor** %6, align 8
  %30 = getelementptr inbounds %struct.fw_cdev_add_descriptor, %struct.fw_cdev_add_descriptor* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %31, 4
  %33 = sext i32 %32 to i64
  %34 = add i64 28, %33
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.descriptor_resource* @kmalloc(i32 %35, i32 %36)
  store %struct.descriptor_resource* %37, %struct.descriptor_resource** %7, align 8
  %38 = load %struct.descriptor_resource*, %struct.descriptor_resource** %7, align 8
  %39 = icmp eq %struct.descriptor_resource* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %28
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %118

43:                                               ; preds = %28
  %44 = load %struct.descriptor_resource*, %struct.descriptor_resource** %7, align 8
  %45 = getelementptr inbounds %struct.descriptor_resource, %struct.descriptor_resource* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.fw_cdev_add_descriptor*, %struct.fw_cdev_add_descriptor** %6, align 8
  %48 = getelementptr inbounds %struct.fw_cdev_add_descriptor, %struct.fw_cdev_add_descriptor* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @u64_to_uptr(i32 %49)
  %51 = load %struct.fw_cdev_add_descriptor*, %struct.fw_cdev_add_descriptor** %6, align 8
  %52 = getelementptr inbounds %struct.fw_cdev_add_descriptor, %struct.fw_cdev_add_descriptor* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %53, 4
  %55 = call i64 @copy_from_user(i32 %46, i32 %50, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %43
  %58 = load i32, i32* @EFAULT, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %8, align 4
  br label %114

60:                                               ; preds = %43
  %61 = load %struct.fw_cdev_add_descriptor*, %struct.fw_cdev_add_descriptor** %6, align 8
  %62 = getelementptr inbounds %struct.fw_cdev_add_descriptor, %struct.fw_cdev_add_descriptor* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.descriptor_resource*, %struct.descriptor_resource** %7, align 8
  %65 = getelementptr inbounds %struct.descriptor_resource, %struct.descriptor_resource* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 4
  %67 = load %struct.fw_cdev_add_descriptor*, %struct.fw_cdev_add_descriptor** %6, align 8
  %68 = getelementptr inbounds %struct.fw_cdev_add_descriptor, %struct.fw_cdev_add_descriptor* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.descriptor_resource*, %struct.descriptor_resource** %7, align 8
  %71 = getelementptr inbounds %struct.descriptor_resource, %struct.descriptor_resource* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 3
  store i32 %69, i32* %72, align 4
  %73 = load %struct.fw_cdev_add_descriptor*, %struct.fw_cdev_add_descriptor** %6, align 8
  %74 = getelementptr inbounds %struct.fw_cdev_add_descriptor, %struct.fw_cdev_add_descriptor* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.descriptor_resource*, %struct.descriptor_resource** %7, align 8
  %77 = getelementptr inbounds %struct.descriptor_resource, %struct.descriptor_resource* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  store i32 %75, i32* %78, align 4
  %79 = load %struct.descriptor_resource*, %struct.descriptor_resource** %7, align 8
  %80 = getelementptr inbounds %struct.descriptor_resource, %struct.descriptor_resource* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.descriptor_resource*, %struct.descriptor_resource** %7, align 8
  %83 = getelementptr inbounds %struct.descriptor_resource, %struct.descriptor_resource* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 4
  %85 = load %struct.descriptor_resource*, %struct.descriptor_resource** %7, align 8
  %86 = getelementptr inbounds %struct.descriptor_resource, %struct.descriptor_resource* %85, i32 0, i32 1
  %87 = call i32 @fw_core_add_descriptor(%struct.TYPE_6__* %86)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %60
  br label %114

91:                                               ; preds = %60
  %92 = load i32, i32* @release_descriptor, align 4
  %93 = load %struct.descriptor_resource*, %struct.descriptor_resource** %7, align 8
  %94 = getelementptr inbounds %struct.descriptor_resource, %struct.descriptor_resource* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  store i32 %92, i32* %95, align 4
  %96 = load %struct.client*, %struct.client** %4, align 8
  %97 = load %struct.descriptor_resource*, %struct.descriptor_resource** %7, align 8
  %98 = getelementptr inbounds %struct.descriptor_resource, %struct.descriptor_resource* %97, i32 0, i32 0
  %99 = load i32, i32* @GFP_KERNEL, align 4
  %100 = call i32 @add_client_resource(%struct.client* %96, %struct.TYPE_7__* %98, i32 %99)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %91
  %104 = load %struct.descriptor_resource*, %struct.descriptor_resource** %7, align 8
  %105 = getelementptr inbounds %struct.descriptor_resource, %struct.descriptor_resource* %104, i32 0, i32 1
  %106 = call i32 @fw_core_remove_descriptor(%struct.TYPE_6__* %105)
  br label %114

107:                                              ; preds = %91
  %108 = load %struct.descriptor_resource*, %struct.descriptor_resource** %7, align 8
  %109 = getelementptr inbounds %struct.descriptor_resource, %struct.descriptor_resource* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.fw_cdev_add_descriptor*, %struct.fw_cdev_add_descriptor** %6, align 8
  %113 = getelementptr inbounds %struct.fw_cdev_add_descriptor, %struct.fw_cdev_add_descriptor* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  store i32 0, i32* %3, align 4
  br label %118

114:                                              ; preds = %103, %90, %57
  %115 = load %struct.descriptor_resource*, %struct.descriptor_resource** %7, align 8
  %116 = call i32 @kfree(%struct.descriptor_resource* %115)
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %114, %107, %40, %25, %17
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local %struct.descriptor_resource* @kmalloc(i32, i32) #1

declare dso_local i64 @copy_from_user(i32, i32, i32) #1

declare dso_local i32 @u64_to_uptr(i32) #1

declare dso_local i32 @fw_core_add_descriptor(%struct.TYPE_6__*) #1

declare dso_local i32 @add_client_resource(%struct.client*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @fw_core_remove_descriptor(%struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.descriptor_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
