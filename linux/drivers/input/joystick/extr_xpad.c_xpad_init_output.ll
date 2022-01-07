; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_xpad.c_xpad_init_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_xpad.c_xpad_init_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_xpad = type { i64, i32, i32, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.usb_endpoint_descriptor = type { i32, i32 }

@XTYPE_UNKNOWN = common dso_local global i64 0, align 8
@XPAD_PKT_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@xpad_irq_out = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_xpad*, %struct.usb_endpoint_descriptor*)* @xpad_init_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpad_init_output(%struct.usb_interface* %0, %struct.usb_xpad* %1, %struct.usb_endpoint_descriptor* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca %struct.usb_xpad*, align 8
  %7 = alloca %struct.usb_endpoint_descriptor*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %5, align 8
  store %struct.usb_xpad* %1, %struct.usb_xpad** %6, align 8
  store %struct.usb_endpoint_descriptor* %2, %struct.usb_endpoint_descriptor** %7, align 8
  %9 = load %struct.usb_xpad*, %struct.usb_xpad** %6, align 8
  %10 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @XTYPE_UNKNOWN, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %102

15:                                               ; preds = %3
  %16 = load %struct.usb_xpad*, %struct.usb_xpad** %6, align 8
  %17 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %16, i32 0, i32 6
  %18 = call i32 @init_usb_anchor(i32* %17)
  %19 = load %struct.usb_xpad*, %struct.usb_xpad** %6, align 8
  %20 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @XPAD_PKT_LEN, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = load %struct.usb_xpad*, %struct.usb_xpad** %6, align 8
  %25 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %24, i32 0, i32 1
  %26 = call i32 @usb_alloc_coherent(i32 %21, i32 %22, i32 %23, i32* %25)
  %27 = load %struct.usb_xpad*, %struct.usb_xpad** %6, align 8
  %28 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.usb_xpad*, %struct.usb_xpad** %6, align 8
  %30 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %15
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %102

36:                                               ; preds = %15
  %37 = load %struct.usb_xpad*, %struct.usb_xpad** %6, align 8
  %38 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %37, i32 0, i32 5
  %39 = call i32 @spin_lock_init(i32* %38)
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.TYPE_3__* @usb_alloc_urb(i32 0, i32 %40)
  %42 = load %struct.usb_xpad*, %struct.usb_xpad** %6, align 8
  %43 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %42, i32 0, i32 4
  store %struct.TYPE_3__* %41, %struct.TYPE_3__** %43, align 8
  %44 = load %struct.usb_xpad*, %struct.usb_xpad** %6, align 8
  %45 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %44, i32 0, i32 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = icmp ne %struct.TYPE_3__* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %36
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %8, align 4
  br label %89

51:                                               ; preds = %36
  %52 = load %struct.usb_xpad*, %struct.usb_xpad** %6, align 8
  %53 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %52, i32 0, i32 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = load %struct.usb_xpad*, %struct.usb_xpad** %6, align 8
  %56 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.usb_xpad*, %struct.usb_xpad** %6, align 8
  %59 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %62 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @usb_sndintpipe(i32 %60, i32 %63)
  %65 = load %struct.usb_xpad*, %struct.usb_xpad** %6, align 8
  %66 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @XPAD_PKT_LEN, align 4
  %69 = load i32, i32* @xpad_irq_out, align 4
  %70 = load %struct.usb_xpad*, %struct.usb_xpad** %6, align 8
  %71 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %72 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @usb_fill_int_urb(%struct.TYPE_3__* %54, i32 %57, i32 %64, i32 %67, i32 %68, i32 %69, %struct.usb_xpad* %70, i32 %73)
  %75 = load %struct.usb_xpad*, %struct.usb_xpad** %6, align 8
  %76 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.usb_xpad*, %struct.usb_xpad** %6, align 8
  %79 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %78, i32 0, i32 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  store i32 %77, i32* %81, align 4
  %82 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %83 = load %struct.usb_xpad*, %struct.usb_xpad** %6, align 8
  %84 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %83, i32 0, i32 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %82
  store i32 %88, i32* %86, align 4
  store i32 0, i32* %4, align 4
  br label %102

89:                                               ; preds = %48
  %90 = load %struct.usb_xpad*, %struct.usb_xpad** %6, align 8
  %91 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @XPAD_PKT_LEN, align 4
  %94 = load %struct.usb_xpad*, %struct.usb_xpad** %6, align 8
  %95 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.usb_xpad*, %struct.usb_xpad** %6, align 8
  %98 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @usb_free_coherent(i32 %92, i32 %93, i32 %96, i32 %99)
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %89, %51, %33, %14
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @init_usb_anchor(i32*) #1

declare dso_local i32 @usb_alloc_coherent(i32, i32, i32, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.TYPE_3__* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(%struct.TYPE_3__*, i32, i32, i32, i32, i32, %struct.usb_xpad*, i32) #1

declare dso_local i32 @usb_sndintpipe(i32, i32) #1

declare dso_local i32 @usb_free_coherent(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
