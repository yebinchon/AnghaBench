; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-cdev.c_ioctl_create_iso_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-cdev.c_ioctl_create_iso_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i64, i32, i32, %struct.fw_iso_context*, i32, %struct.TYPE_2__*, i32 }
%struct.fw_iso_context = type { i32 }
%struct.TYPE_2__ = type { i32 }
%union.ioctl_arg = type { %struct.fw_cdev_create_iso_context }
%struct.fw_cdev_create_iso_context = type { i32, i32, i32, i64, i32, i32 }

@FW_CDEV_ISO_CONTEXT_TRANSMIT = common dso_local global i64 0, align 8
@FW_CDEV_ISO_CONTEXT_RECEIVE = common dso_local global i64 0, align 8
@FW_CDEV_ISO_CONTEXT_RECEIVE_MULTICHANNEL = common dso_local global i64 0, align 8
@SCODE_3200 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@iso_callback = common dso_local global i32 0, align 4
@iso_mc_callback = common dso_local global i32 0, align 4
@FW_CDEV_VERSION_AUTO_FLUSH_ISO_OVERFLOW = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.client*, %union.ioctl_arg*)* @ioctl_create_iso_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_create_iso_context(%struct.client* %0, %union.ioctl_arg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.client*, align 8
  %5 = alloca %union.ioctl_arg*, align 8
  %6 = alloca %struct.fw_cdev_create_iso_context*, align 8
  %7 = alloca %struct.fw_iso_context*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.client* %0, %struct.client** %4, align 8
  store %union.ioctl_arg* %1, %union.ioctl_arg** %5, align 8
  %10 = load %union.ioctl_arg*, %union.ioctl_arg** %5, align 8
  %11 = bitcast %union.ioctl_arg* %10 to %struct.fw_cdev_create_iso_context*
  store %struct.fw_cdev_create_iso_context* %11, %struct.fw_cdev_create_iso_context** %6, align 8
  %12 = load i64, i64* @FW_CDEV_ISO_CONTEXT_TRANSMIT, align 8
  %13 = icmp ne i64 %12, 128
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load i64, i64* @FW_CDEV_ISO_CONTEXT_RECEIVE, align 8
  %16 = icmp ne i64 %15, 130
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i64, i64* @FW_CDEV_ISO_CONTEXT_RECEIVE_MULTICHANNEL, align 8
  %19 = icmp ne i64 %18, 129
  br label %20

20:                                               ; preds = %17, %14, %2
  %21 = phi i1 [ true, %14 ], [ true, %2 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUILD_BUG_ON(i32 %22)
  %24 = load %struct.fw_cdev_create_iso_context*, %struct.fw_cdev_create_iso_context** %6, align 8
  %25 = getelementptr inbounds %struct.fw_cdev_create_iso_context, %struct.fw_cdev_create_iso_context* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %66 [
    i32 128, label %27
    i32 130, label %43
    i32 129, label %64
  ]

27:                                               ; preds = %20
  %28 = load %struct.fw_cdev_create_iso_context*, %struct.fw_cdev_create_iso_context** %6, align 8
  %29 = getelementptr inbounds %struct.fw_cdev_create_iso_context, %struct.fw_cdev_create_iso_context* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SCODE_3200, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = load %struct.fw_cdev_create_iso_context*, %struct.fw_cdev_create_iso_context** %6, align 8
  %35 = getelementptr inbounds %struct.fw_cdev_create_iso_context, %struct.fw_cdev_create_iso_context* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %36, 63
  br i1 %37, label %38, label %41

38:                                               ; preds = %33, %27
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %163

41:                                               ; preds = %33
  %42 = load i32, i32* @iso_callback, align 4
  store i32 %42, i32* %8, align 4
  br label %69

43:                                               ; preds = %20
  %44 = load %struct.fw_cdev_create_iso_context*, %struct.fw_cdev_create_iso_context** %6, align 8
  %45 = getelementptr inbounds %struct.fw_cdev_create_iso_context, %struct.fw_cdev_create_iso_context* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %46, 4
  br i1 %47, label %59, label %48

48:                                               ; preds = %43
  %49 = load %struct.fw_cdev_create_iso_context*, %struct.fw_cdev_create_iso_context** %6, align 8
  %50 = getelementptr inbounds %struct.fw_cdev_create_iso_context, %struct.fw_cdev_create_iso_context* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, 3
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %48
  %55 = load %struct.fw_cdev_create_iso_context*, %struct.fw_cdev_create_iso_context** %6, align 8
  %56 = getelementptr inbounds %struct.fw_cdev_create_iso_context, %struct.fw_cdev_create_iso_context* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %57, 63
  br i1 %58, label %59, label %62

59:                                               ; preds = %54, %48, %43
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %163

62:                                               ; preds = %54
  %63 = load i32, i32* @iso_callback, align 4
  store i32 %63, i32* %8, align 4
  br label %69

64:                                               ; preds = %20
  %65 = load i32, i32* @iso_mc_callback, align 4
  store i32 %65, i32* %8, align 4
  br label %69

66:                                               ; preds = %20
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %163

69:                                               ; preds = %64, %62, %41
  %70 = load %struct.client*, %struct.client** %4, align 8
  %71 = getelementptr inbounds %struct.client, %struct.client* %70, i32 0, i32 5
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.fw_cdev_create_iso_context*, %struct.fw_cdev_create_iso_context** %6, align 8
  %76 = getelementptr inbounds %struct.fw_cdev_create_iso_context, %struct.fw_cdev_create_iso_context* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.fw_cdev_create_iso_context*, %struct.fw_cdev_create_iso_context** %6, align 8
  %79 = getelementptr inbounds %struct.fw_cdev_create_iso_context, %struct.fw_cdev_create_iso_context* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.fw_cdev_create_iso_context*, %struct.fw_cdev_create_iso_context** %6, align 8
  %82 = getelementptr inbounds %struct.fw_cdev_create_iso_context, %struct.fw_cdev_create_iso_context* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.fw_cdev_create_iso_context*, %struct.fw_cdev_create_iso_context** %6, align 8
  %85 = getelementptr inbounds %struct.fw_cdev_create_iso_context, %struct.fw_cdev_create_iso_context* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.client*, %struct.client** %4, align 8
  %89 = call %struct.fw_iso_context* @fw_iso_context_create(i32 %74, i32 %77, i32 %80, i32 %83, i32 %86, i32 %87, %struct.client* %88)
  store %struct.fw_iso_context* %89, %struct.fw_iso_context** %7, align 8
  %90 = load %struct.fw_iso_context*, %struct.fw_iso_context** %7, align 8
  %91 = call i64 @IS_ERR(%struct.fw_iso_context* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %69
  %94 = load %struct.fw_iso_context*, %struct.fw_iso_context** %7, align 8
  %95 = call i32 @PTR_ERR(%struct.fw_iso_context* %94)
  store i32 %95, i32* %3, align 4
  br label %163

96:                                               ; preds = %69
  %97 = load %struct.client*, %struct.client** %4, align 8
  %98 = getelementptr inbounds %struct.client, %struct.client* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @FW_CDEV_VERSION_AUTO_FLUSH_ISO_OVERFLOW, align 8
  %101 = icmp slt i64 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load %struct.fw_iso_context*, %struct.fw_iso_context** %7, align 8
  %104 = getelementptr inbounds %struct.fw_iso_context, %struct.fw_iso_context* %103, i32 0, i32 0
  store i32 1, i32* %104, align 4
  br label %105

105:                                              ; preds = %102, %96
  %106 = load %struct.client*, %struct.client** %4, align 8
  %107 = getelementptr inbounds %struct.client, %struct.client* %106, i32 0, i32 2
  %108 = call i32 @spin_lock_irq(i32* %107)
  %109 = load %struct.client*, %struct.client** %4, align 8
  %110 = getelementptr inbounds %struct.client, %struct.client* %109, i32 0, i32 3
  %111 = load %struct.fw_iso_context*, %struct.fw_iso_context** %110, align 8
  %112 = icmp ne %struct.fw_iso_context* %111, null
  br i1 %112, label %113, label %121

113:                                              ; preds = %105
  %114 = load %struct.client*, %struct.client** %4, align 8
  %115 = getelementptr inbounds %struct.client, %struct.client* %114, i32 0, i32 2
  %116 = call i32 @spin_unlock_irq(i32* %115)
  %117 = load %struct.fw_iso_context*, %struct.fw_iso_context** %7, align 8
  %118 = call i32 @fw_iso_context_destroy(%struct.fw_iso_context* %117)
  %119 = load i32, i32* @EBUSY, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %3, align 4
  br label %163

121:                                              ; preds = %105
  %122 = load %struct.client*, %struct.client** %4, align 8
  %123 = getelementptr inbounds %struct.client, %struct.client* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %149, label %126

126:                                              ; preds = %121
  %127 = load %struct.client*, %struct.client** %4, align 8
  %128 = getelementptr inbounds %struct.client, %struct.client* %127, i32 0, i32 6
  %129 = load %struct.client*, %struct.client** %4, align 8
  %130 = getelementptr inbounds %struct.client, %struct.client* %129, i32 0, i32 5
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.fw_iso_context*, %struct.fw_iso_context** %7, align 8
  %135 = call i32 @iso_dma_direction(%struct.fw_iso_context* %134)
  %136 = call i32 @fw_iso_buffer_map_dma(i32* %128, i32 %133, i32 %135)
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %9, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %126
  %140 = load %struct.client*, %struct.client** %4, align 8
  %141 = getelementptr inbounds %struct.client, %struct.client* %140, i32 0, i32 2
  %142 = call i32 @spin_unlock_irq(i32* %141)
  %143 = load %struct.fw_iso_context*, %struct.fw_iso_context** %7, align 8
  %144 = call i32 @fw_iso_context_destroy(%struct.fw_iso_context* %143)
  %145 = load i32, i32* %9, align 4
  store i32 %145, i32* %3, align 4
  br label %163

146:                                              ; preds = %126
  %147 = load %struct.client*, %struct.client** %4, align 8
  %148 = getelementptr inbounds %struct.client, %struct.client* %147, i32 0, i32 1
  store i32 1, i32* %148, align 8
  br label %149

149:                                              ; preds = %146, %121
  %150 = load %struct.fw_cdev_create_iso_context*, %struct.fw_cdev_create_iso_context** %6, align 8
  %151 = getelementptr inbounds %struct.fw_cdev_create_iso_context, %struct.fw_cdev_create_iso_context* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.client*, %struct.client** %4, align 8
  %154 = getelementptr inbounds %struct.client, %struct.client* %153, i32 0, i32 4
  store i32 %152, i32* %154, align 8
  %155 = load %struct.fw_iso_context*, %struct.fw_iso_context** %7, align 8
  %156 = load %struct.client*, %struct.client** %4, align 8
  %157 = getelementptr inbounds %struct.client, %struct.client* %156, i32 0, i32 3
  store %struct.fw_iso_context* %155, %struct.fw_iso_context** %157, align 8
  %158 = load %struct.client*, %struct.client** %4, align 8
  %159 = getelementptr inbounds %struct.client, %struct.client* %158, i32 0, i32 2
  %160 = call i32 @spin_unlock_irq(i32* %159)
  %161 = load %struct.fw_cdev_create_iso_context*, %struct.fw_cdev_create_iso_context** %6, align 8
  %162 = getelementptr inbounds %struct.fw_cdev_create_iso_context, %struct.fw_cdev_create_iso_context* %161, i32 0, i32 3
  store i64 0, i64* %162, align 8
  store i32 0, i32* %3, align 4
  br label %163

163:                                              ; preds = %149, %139, %113, %93, %66, %59, %38
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local %struct.fw_iso_context* @fw_iso_context_create(i32, i32, i32, i32, i32, i32, %struct.client*) #1

declare dso_local i64 @IS_ERR(%struct.fw_iso_context*) #1

declare dso_local i32 @PTR_ERR(%struct.fw_iso_context*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @fw_iso_context_destroy(%struct.fw_iso_context*) #1

declare dso_local i32 @fw_iso_buffer_map_dma(i32*, i32, i32) #1

declare dso_local i32 @iso_dma_direction(%struct.fw_iso_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
