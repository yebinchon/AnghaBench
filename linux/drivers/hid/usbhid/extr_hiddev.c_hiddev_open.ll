; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hiddev.c_hiddev_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hiddev.c_hiddev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.hiddev_list* }
%struct.hiddev_list = type { %struct.hiddev*, i32, i32 }
%struct.hiddev = type { i32, i32, %struct.hid_device*, i64, i32, i32 }
%struct.hid_device = type { %struct.hiddev* }
%struct.usb_interface = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PM_HINT_FULLON = common dso_local global i32 0, align 4
@PM_HINT_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @hiddev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hiddev_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.hiddev_list*, align 8
  %7 = alloca %struct.usb_interface*, align 8
  %8 = alloca %struct.hid_device*, align 8
  %9 = alloca %struct.hiddev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.hid_device*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = call i32 @iminor(%struct.inode* %12)
  %14 = call %struct.usb_interface* @usbhid_find_interface(i32 %13)
  store %struct.usb_interface* %14, %struct.usb_interface** %7, align 8
  %15 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %16 = icmp ne %struct.usb_interface* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %160

20:                                               ; preds = %2
  %21 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %22 = call %struct.hid_device* @usb_get_intfdata(%struct.usb_interface* %21)
  store %struct.hid_device* %22, %struct.hid_device** %8, align 8
  %23 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %24 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %23, i32 0, i32 0
  %25 = load %struct.hiddev*, %struct.hiddev** %24, align 8
  store %struct.hiddev* %25, %struct.hiddev** %9, align 8
  %26 = call %struct.hiddev_list* @vzalloc(i32 16)
  store %struct.hiddev_list* %26, %struct.hiddev_list** %6, align 8
  %27 = icmp ne %struct.hiddev_list* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %160

31:                                               ; preds = %20
  %32 = load %struct.hiddev_list*, %struct.hiddev_list** %6, align 8
  %33 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %32, i32 0, i32 2
  %34 = call i32 @mutex_init(i32* %33)
  %35 = load %struct.hiddev*, %struct.hiddev** %9, align 8
  %36 = load %struct.hiddev_list*, %struct.hiddev_list** %6, align 8
  %37 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %36, i32 0, i32 0
  store %struct.hiddev* %35, %struct.hiddev** %37, align 8
  %38 = load %struct.hiddev_list*, %struct.hiddev_list** %6, align 8
  %39 = load %struct.file*, %struct.file** %5, align 8
  %40 = getelementptr inbounds %struct.file, %struct.file* %39, i32 0, i32 0
  store %struct.hiddev_list* %38, %struct.hiddev_list** %40, align 8
  %41 = load %struct.hiddev_list*, %struct.hiddev_list** %6, align 8
  %42 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %41, i32 0, i32 0
  %43 = load %struct.hiddev*, %struct.hiddev** %42, align 8
  %44 = getelementptr inbounds %struct.hiddev, %struct.hiddev* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %31
  %48 = load %struct.hiddev_list*, %struct.hiddev_list** %6, align 8
  %49 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %48, i32 0, i32 0
  %50 = load %struct.hiddev*, %struct.hiddev** %49, align 8
  %51 = getelementptr inbounds %struct.hiddev, %struct.hiddev* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  %54 = icmp ne i32 %52, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %47
  %56 = load %struct.hiddev*, %struct.hiddev** %9, align 8
  %57 = getelementptr inbounds %struct.hiddev, %struct.hiddev* %56, i32 0, i32 2
  %58 = load %struct.hid_device*, %struct.hid_device** %57, align 8
  %59 = call i32 @hid_hw_open(%struct.hid_device* %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %154

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63, %47
  br label %68

65:                                               ; preds = %31
  %66 = load i32, i32* @ENODEV, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %10, align 4
  br label %154

68:                                               ; preds = %64
  %69 = load %struct.hiddev_list*, %struct.hiddev_list** %6, align 8
  %70 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %69, i32 0, i32 0
  %71 = load %struct.hiddev*, %struct.hiddev** %70, align 8
  %72 = getelementptr inbounds %struct.hiddev, %struct.hiddev* %71, i32 0, i32 0
  %73 = call i32 @spin_lock_irq(i32* %72)
  %74 = load %struct.hiddev_list*, %struct.hiddev_list** %6, align 8
  %75 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %74, i32 0, i32 1
  %76 = load %struct.hiddev*, %struct.hiddev** %9, align 8
  %77 = getelementptr inbounds %struct.hiddev, %struct.hiddev* %76, i32 0, i32 5
  %78 = call i32 @list_add_tail(i32* %75, i32* %77)
  %79 = load %struct.hiddev_list*, %struct.hiddev_list** %6, align 8
  %80 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %79, i32 0, i32 0
  %81 = load %struct.hiddev*, %struct.hiddev** %80, align 8
  %82 = getelementptr inbounds %struct.hiddev, %struct.hiddev* %81, i32 0, i32 0
  %83 = call i32 @spin_unlock_irq(i32* %82)
  %84 = load %struct.hiddev*, %struct.hiddev** %9, align 8
  %85 = getelementptr inbounds %struct.hiddev, %struct.hiddev* %84, i32 0, i32 1
  %86 = call i32 @mutex_lock(i32* %85)
  %87 = load %struct.hiddev_list*, %struct.hiddev_list** %6, align 8
  %88 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %87, i32 0, i32 0
  %89 = load %struct.hiddev*, %struct.hiddev** %88, align 8
  %90 = getelementptr inbounds %struct.hiddev, %struct.hiddev* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %68
  %94 = load i32, i32* @ENODEV, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %10, align 4
  br label %137

96:                                               ; preds = %68
  %97 = load %struct.hiddev_list*, %struct.hiddev_list** %6, align 8
  %98 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %97, i32 0, i32 0
  %99 = load %struct.hiddev*, %struct.hiddev** %98, align 8
  %100 = getelementptr inbounds %struct.hiddev, %struct.hiddev* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 8
  %103 = icmp ne i32 %101, 0
  br i1 %103, label %129, label %104

104:                                              ; preds = %96
  %105 = load %struct.hiddev_list*, %struct.hiddev_list** %6, align 8
  %106 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %105, i32 0, i32 0
  %107 = load %struct.hiddev*, %struct.hiddev** %106, align 8
  %108 = getelementptr inbounds %struct.hiddev, %struct.hiddev* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %128

111:                                              ; preds = %104
  %112 = load %struct.hiddev*, %struct.hiddev** %9, align 8
  %113 = getelementptr inbounds %struct.hiddev, %struct.hiddev* %112, i32 0, i32 2
  %114 = load %struct.hid_device*, %struct.hid_device** %113, align 8
  store %struct.hid_device* %114, %struct.hid_device** %11, align 8
  %115 = load %struct.hid_device*, %struct.hid_device** %11, align 8
  %116 = load i32, i32* @PM_HINT_FULLON, align 4
  %117 = call i32 @hid_hw_power(%struct.hid_device* %115, i32 %116)
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %10, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %111
  br label %137

121:                                              ; preds = %111
  %122 = load %struct.hid_device*, %struct.hid_device** %11, align 8
  %123 = call i32 @hid_hw_open(%struct.hid_device* %122)
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  br label %133

127:                                              ; preds = %121
  br label %128

128:                                              ; preds = %127, %104
  br label %129

129:                                              ; preds = %128, %96
  %130 = load %struct.hiddev*, %struct.hiddev** %9, align 8
  %131 = getelementptr inbounds %struct.hiddev, %struct.hiddev* %130, i32 0, i32 1
  %132 = call i32 @mutex_unlock(i32* %131)
  store i32 0, i32* %3, align 4
  br label %160

133:                                              ; preds = %126
  %134 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %135 = load i32, i32* @PM_HINT_NORMAL, align 4
  %136 = call i32 @hid_hw_power(%struct.hid_device* %134, i32 %135)
  br label %137

137:                                              ; preds = %133, %120, %93
  %138 = load %struct.hiddev*, %struct.hiddev** %9, align 8
  %139 = getelementptr inbounds %struct.hiddev, %struct.hiddev* %138, i32 0, i32 1
  %140 = call i32 @mutex_unlock(i32* %139)
  %141 = load %struct.hiddev_list*, %struct.hiddev_list** %6, align 8
  %142 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %141, i32 0, i32 0
  %143 = load %struct.hiddev*, %struct.hiddev** %142, align 8
  %144 = getelementptr inbounds %struct.hiddev, %struct.hiddev* %143, i32 0, i32 0
  %145 = call i32 @spin_lock_irq(i32* %144)
  %146 = load %struct.hiddev_list*, %struct.hiddev_list** %6, align 8
  %147 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %146, i32 0, i32 1
  %148 = call i32 @list_del(i32* %147)
  %149 = load %struct.hiddev_list*, %struct.hiddev_list** %6, align 8
  %150 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %149, i32 0, i32 0
  %151 = load %struct.hiddev*, %struct.hiddev** %150, align 8
  %152 = getelementptr inbounds %struct.hiddev, %struct.hiddev* %151, i32 0, i32 0
  %153 = call i32 @spin_unlock_irq(i32* %152)
  br label %154

154:                                              ; preds = %137, %65, %62
  %155 = load %struct.file*, %struct.file** %5, align 8
  %156 = getelementptr inbounds %struct.file, %struct.file* %155, i32 0, i32 0
  store %struct.hiddev_list* null, %struct.hiddev_list** %156, align 8
  %157 = load %struct.hiddev_list*, %struct.hiddev_list** %6, align 8
  %158 = call i32 @vfree(%struct.hiddev_list* %157)
  %159 = load i32, i32* %10, align 4
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %154, %129, %28, %17
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local %struct.usb_interface* @usbhid_find_interface(i32) #1

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local %struct.hid_device* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local %struct.hiddev_list* @vzalloc(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @hid_hw_open(%struct.hid_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hid_hw_power(%struct.hid_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @vfree(%struct.hiddev_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
