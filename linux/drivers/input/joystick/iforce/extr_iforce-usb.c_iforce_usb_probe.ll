; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/iforce/extr_iforce-usb.c_iforce_usb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/iforce/extr_iforce-usb.c_iforce_usb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i32 }
%struct.iforce_usb = type { i8*, i8*, %struct.TYPE_6__, i32, i32, %struct.usb_interface*, %struct.usb_device* }
%struct.TYPE_6__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@iforce_usb_xport_ops = common dso_local global i32 0, align 4
@iforce_usb_irq = common dso_local global i32 0, align 4
@iforce_usb_out = common dso_local global i32 0, align 4
@BUS_USB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @iforce_usb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iforce_usb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_host_interface*, align 8
  %8 = alloca %struct.usb_endpoint_descriptor*, align 8
  %9 = alloca %struct.usb_endpoint_descriptor*, align 8
  %10 = alloca %struct.iforce_usb*, align 8
  %11 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %13 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %12)
  store %struct.usb_device* %13, %struct.usb_device** %6, align 8
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %11, align 4
  %16 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %17 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %16, i32 0, i32 1
  %18 = load %struct.usb_host_interface*, %struct.usb_host_interface** %17, align 8
  store %struct.usb_host_interface* %18, %struct.usb_host_interface** %7, align 8
  %19 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %20 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %152

27:                                               ; preds = %2
  %28 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %29 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %32, %struct.usb_endpoint_descriptor** %8, align 8
  %33 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %34 = call i32 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %27
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %152

39:                                               ; preds = %27
  %40 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %41 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %44, %struct.usb_endpoint_descriptor** %9, align 8
  %45 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %46 = call i32 @usb_endpoint_is_int_out(%struct.usb_endpoint_descriptor* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %39
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %152

51:                                               ; preds = %39
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call %struct.iforce_usb* @kzalloc(i32 48, i32 %52)
  store %struct.iforce_usb* %53, %struct.iforce_usb** %10, align 8
  %54 = load %struct.iforce_usb*, %struct.iforce_usb** %10, align 8
  %55 = icmp ne %struct.iforce_usb* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  br label %136

57:                                               ; preds = %51
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call i8* @usb_alloc_urb(i32 0, i32 %58)
  %60 = load %struct.iforce_usb*, %struct.iforce_usb** %10, align 8
  %61 = getelementptr inbounds %struct.iforce_usb, %struct.iforce_usb* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load %struct.iforce_usb*, %struct.iforce_usb** %10, align 8
  %63 = getelementptr inbounds %struct.iforce_usb, %struct.iforce_usb* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %57
  br label %136

67:                                               ; preds = %57
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call i8* @usb_alloc_urb(i32 0, i32 %68)
  %70 = load %struct.iforce_usb*, %struct.iforce_usb** %10, align 8
  %71 = getelementptr inbounds %struct.iforce_usb, %struct.iforce_usb* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  %72 = load %struct.iforce_usb*, %struct.iforce_usb** %10, align 8
  %73 = getelementptr inbounds %struct.iforce_usb, %struct.iforce_usb* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %67
  br label %136

77:                                               ; preds = %67
  %78 = load %struct.iforce_usb*, %struct.iforce_usb** %10, align 8
  %79 = getelementptr inbounds %struct.iforce_usb, %struct.iforce_usb* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  store i32* @iforce_usb_xport_ops, i32** %80, align 8
  %81 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %82 = load %struct.iforce_usb*, %struct.iforce_usb** %10, align 8
  %83 = getelementptr inbounds %struct.iforce_usb, %struct.iforce_usb* %82, i32 0, i32 6
  store %struct.usb_device* %81, %struct.usb_device** %83, align 8
  %84 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %85 = load %struct.iforce_usb*, %struct.iforce_usb** %10, align 8
  %86 = getelementptr inbounds %struct.iforce_usb, %struct.iforce_usb* %85, i32 0, i32 5
  store %struct.usb_interface* %84, %struct.usb_interface** %86, align 8
  %87 = load %struct.iforce_usb*, %struct.iforce_usb** %10, align 8
  %88 = getelementptr inbounds %struct.iforce_usb, %struct.iforce_usb* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %91 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %92 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %93 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @usb_rcvintpipe(%struct.usb_device* %91, i32 %94)
  %96 = load %struct.iforce_usb*, %struct.iforce_usb** %10, align 8
  %97 = getelementptr inbounds %struct.iforce_usb, %struct.iforce_usb* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @iforce_usb_irq, align 4
  %100 = load %struct.iforce_usb*, %struct.iforce_usb** %10, align 8
  %101 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %102 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @usb_fill_int_urb(i8* %89, %struct.usb_device* %90, i32 %95, i32 %98, i32 4, i32 %99, %struct.iforce_usb* %100, i32 %103)
  %105 = load %struct.iforce_usb*, %struct.iforce_usb** %10, align 8
  %106 = getelementptr inbounds %struct.iforce_usb, %struct.iforce_usb* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %109 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %110 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %111 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @usb_sndintpipe(%struct.usb_device* %109, i32 %112)
  %114 = load %struct.iforce_usb*, %struct.iforce_usb** %10, align 8
  %115 = getelementptr inbounds %struct.iforce_usb, %struct.iforce_usb* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @iforce_usb_out, align 4
  %118 = load %struct.iforce_usb*, %struct.iforce_usb** %10, align 8
  %119 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %120 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @usb_fill_int_urb(i8* %107, %struct.usb_device* %108, i32 %113, i32 %116, i32 4, i32 %117, %struct.iforce_usb* %118, i32 %121)
  %123 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %124 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %123, i32 0, i32 0
  %125 = load i32, i32* @BUS_USB, align 4
  %126 = load %struct.iforce_usb*, %struct.iforce_usb** %10, align 8
  %127 = getelementptr inbounds %struct.iforce_usb, %struct.iforce_usb* %126, i32 0, i32 2
  %128 = call i32 @iforce_init_device(i32* %124, i32 %125, %struct.TYPE_6__* %127)
  store i32 %128, i32* %11, align 4
  %129 = load i32, i32* %11, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %77
  br label %136

132:                                              ; preds = %77
  %133 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %134 = load %struct.iforce_usb*, %struct.iforce_usb** %10, align 8
  %135 = call i32 @usb_set_intfdata(%struct.usb_interface* %133, %struct.iforce_usb* %134)
  store i32 0, i32* %3, align 4
  br label %152

136:                                              ; preds = %131, %76, %66, %56
  %137 = load %struct.iforce_usb*, %struct.iforce_usb** %10, align 8
  %138 = icmp ne %struct.iforce_usb* %137, null
  br i1 %138, label %139, label %150

139:                                              ; preds = %136
  %140 = load %struct.iforce_usb*, %struct.iforce_usb** %10, align 8
  %141 = getelementptr inbounds %struct.iforce_usb, %struct.iforce_usb* %140, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @usb_free_urb(i8* %142)
  %144 = load %struct.iforce_usb*, %struct.iforce_usb** %10, align 8
  %145 = getelementptr inbounds %struct.iforce_usb, %struct.iforce_usb* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @usb_free_urb(i8* %146)
  %148 = load %struct.iforce_usb*, %struct.iforce_usb** %10, align 8
  %149 = call i32 @kfree(%struct.iforce_usb* %148)
  br label %150

150:                                              ; preds = %139, %136
  %151 = load i32, i32* %11, align 4
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %150, %132, %48, %36, %24
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usb_endpoint_is_int_out(%struct.usb_endpoint_descriptor*) #1

declare dso_local %struct.iforce_usb* @kzalloc(i32, i32) #1

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(i8*, %struct.usb_device*, i32, i32, i32, i32, %struct.iforce_usb*, i32) #1

declare dso_local i32 @usb_rcvintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_sndintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @iforce_init_device(i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.iforce_usb*) #1

declare dso_local i32 @usb_free_urb(i8*) #1

declare dso_local i32 @kfree(%struct.iforce_usb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
