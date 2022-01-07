; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_uhid.c_uhid_dev_create2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_uhid.c_uhid_dev_create2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.uhid_device = type { i32, i64, i32*, i32, %struct.hid_device* }
%struct.hid_device = type { %struct.TYPE_7__, %struct.uhid_device*, i32, i32, i32, i32, i32, i32*, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.uhid_event = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EALREADY = common dso_local global i32 0, align 4
@HID_MAX_DESCRIPTOR_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@uhid_hid_driver = common dso_local global i32 0, align 4
@uhid_misc = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uhid_device*, %struct.uhid_event*)* @uhid_dev_create2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhid_dev_create2(%struct.uhid_device* %0, %struct.uhid_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uhid_device*, align 8
  %5 = alloca %struct.uhid_event*, align 8
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.uhid_device* %0, %struct.uhid_device** %4, align 8
  store %struct.uhid_event* %1, %struct.uhid_event** %5, align 8
  %11 = load %struct.uhid_device*, %struct.uhid_device** %4, align 8
  %12 = getelementptr inbounds %struct.uhid_device, %struct.uhid_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EALREADY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %164

18:                                               ; preds = %2
  %19 = load %struct.uhid_event*, %struct.uhid_event** %5, align 8
  %20 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp ule i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %18
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @HID_MAX_DESCRIPTOR_SIZE, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26, %18
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %164

33:                                               ; preds = %26
  %34 = load %struct.uhid_event*, %struct.uhid_event** %5, align 8
  %35 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i8* @kmemdup(i32 %38, i64 %39, i32 %40)
  store i8* %41, i8** %9, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %33
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %164

47:                                               ; preds = %33
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.uhid_device*, %struct.uhid_device** %4, align 8
  %50 = getelementptr inbounds %struct.uhid_device, %struct.uhid_device* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = bitcast i8* %51 to i32*
  %53 = load %struct.uhid_device*, %struct.uhid_device** %4, align 8
  %54 = getelementptr inbounds %struct.uhid_device, %struct.uhid_device* %53, i32 0, i32 2
  store i32* %52, i32** %54, align 8
  %55 = call %struct.hid_device* (...) @hid_allocate_device()
  store %struct.hid_device* %55, %struct.hid_device** %6, align 8
  %56 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %57 = call i64 @IS_ERR(%struct.hid_device* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %47
  %60 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %61 = call i32 @PTR_ERR(%struct.hid_device* %60)
  store i32 %61, i32* %10, align 4
  br label %154

62:                                               ; preds = %47
  %63 = call i32 @min(i32 4, i32 4)
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %8, align 8
  %66 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %67 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %66, i32 0, i32 10
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.uhid_event*, %struct.uhid_event** %5, align 8
  %70 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 8
  %73 = load i32, i32* %72, align 4
  %74 = load i64, i64* %8, align 8
  %75 = call i32 @strncpy(i32 %68, i32 %73, i64 %74)
  %76 = call i32 @min(i32 4, i32 4)
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  store i64 %78, i64* %8, align 8
  %79 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %80 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %79, i32 0, i32 9
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.uhid_event*, %struct.uhid_event** %5, align 8
  %83 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 8
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @strncpy(i32 %81, i32 %86, i64 %87)
  %89 = call i32 @min(i32 4, i32 4)
  %90 = sub nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  store i64 %91, i64* %8, align 8
  %92 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %93 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %92, i32 0, i32 8
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.uhid_event*, %struct.uhid_event** %5, align 8
  %96 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 4
  %100 = load i64, i64* %8, align 8
  %101 = call i32 @strncpy(i32 %94, i32 %99, i64 %100)
  %102 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %103 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %102, i32 0, i32 7
  store i32* @uhid_hid_driver, i32** %103, align 8
  %104 = load %struct.uhid_event*, %struct.uhid_event** %5, align 8
  %105 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %110 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %109, i32 0, i32 6
  store i32 %108, i32* %110, align 8
  %111 = load %struct.uhid_event*, %struct.uhid_event** %5, align 8
  %112 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %117 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %116, i32 0, i32 5
  store i32 %115, i32* %117, align 4
  %118 = load %struct.uhid_event*, %struct.uhid_event** %5, align 8
  %119 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %124 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %123, i32 0, i32 4
  store i32 %122, i32* %124, align 8
  %125 = load %struct.uhid_event*, %struct.uhid_event** %5, align 8
  %126 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %131 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 4
  %132 = load %struct.uhid_event*, %struct.uhid_event** %5, align 8
  %133 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %138 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 8
  %139 = load %struct.uhid_device*, %struct.uhid_device** %4, align 8
  %140 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %141 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %140, i32 0, i32 1
  store %struct.uhid_device* %139, %struct.uhid_device** %141, align 8
  %142 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uhid_misc, i32 0, i32 0), align 4
  %143 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %144 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  store i32 %142, i32* %145, align 8
  %146 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %147 = load %struct.uhid_device*, %struct.uhid_device** %4, align 8
  %148 = getelementptr inbounds %struct.uhid_device, %struct.uhid_device* %147, i32 0, i32 4
  store %struct.hid_device* %146, %struct.hid_device** %148, align 8
  %149 = load %struct.uhid_device*, %struct.uhid_device** %4, align 8
  %150 = getelementptr inbounds %struct.uhid_device, %struct.uhid_device* %149, i32 0, i32 0
  store i32 1, i32* %150, align 8
  %151 = load %struct.uhid_device*, %struct.uhid_device** %4, align 8
  %152 = getelementptr inbounds %struct.uhid_device, %struct.uhid_device* %151, i32 0, i32 3
  %153 = call i32 @schedule_work(i32* %152)
  store i32 0, i32* %3, align 4
  br label %164

154:                                              ; preds = %59
  %155 = load %struct.uhid_device*, %struct.uhid_device** %4, align 8
  %156 = getelementptr inbounds %struct.uhid_device, %struct.uhid_device* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  %158 = call i32 @kfree(i32* %157)
  %159 = load %struct.uhid_device*, %struct.uhid_device** %4, align 8
  %160 = getelementptr inbounds %struct.uhid_device, %struct.uhid_device* %159, i32 0, i32 2
  store i32* null, i32** %160, align 8
  %161 = load %struct.uhid_device*, %struct.uhid_device** %4, align 8
  %162 = getelementptr inbounds %struct.uhid_device, %struct.uhid_device* %161, i32 0, i32 1
  store i64 0, i64* %162, align 8
  %163 = load i32, i32* %10, align 4
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %154, %62, %44, %30, %15
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i8* @kmemdup(i32, i64, i32) #1

declare dso_local %struct.hid_device* @hid_allocate_device(...) #1

declare dso_local i64 @IS_ERR(%struct.hid_device*) #1

declare dso_local i32 @PTR_ERR(%struct.hid_device*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @strncpy(i32, i32, i64) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
