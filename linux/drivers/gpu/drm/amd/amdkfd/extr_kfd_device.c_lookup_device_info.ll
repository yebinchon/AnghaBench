; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device.c_lookup_device_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device.c_lookup_device_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i16, %struct.kfd_device_info* }
%struct.kfd_device_info = type { i32 }

@supported_devices = common dso_local global %struct.TYPE_3__* null, align 8
@kfd_device = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"DID %04x is missing in supported_devices\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kfd_device_info* (i16)* @lookup_device_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kfd_device_info* @lookup_device_info(i16 zeroext %0) #0 {
  %2 = alloca %struct.kfd_device_info*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i64, align 8
  store i16 %0, i16* %3, align 2
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %36, %1
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @supported_devices, align 8
  %8 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %7)
  %9 = icmp ult i64 %6, %8
  br i1 %9, label %10, label %39

10:                                               ; preds = %5
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @supported_devices, align 8
  %12 = load i64, i64* %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i16, i16* %14, align 8
  %16 = zext i16 %15 to i32
  %17 = load i16, i16* %3, align 2
  %18 = zext i16 %17 to i32
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %10
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @supported_devices, align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load %struct.kfd_device_info*, %struct.kfd_device_info** %24, align 8
  %26 = icmp ne %struct.kfd_device_info* %25, null
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @WARN_ON(i32 %28)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @supported_devices, align 8
  %31 = load i64, i64* %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load %struct.kfd_device_info*, %struct.kfd_device_info** %33, align 8
  store %struct.kfd_device_info* %34, %struct.kfd_device_info** %2, align 8
  br label %43

35:                                               ; preds = %10
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %4, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %4, align 8
  br label %5

39:                                               ; preds = %5
  %40 = load i32, i32* @kfd_device, align 4
  %41 = load i16, i16* %3, align 2
  %42 = call i32 @dev_warn(i32 %40, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i16 zeroext %41)
  store %struct.kfd_device_info* null, %struct.kfd_device_info** %2, align 8
  br label %43

43:                                               ; preds = %39, %20
  %44 = load %struct.kfd_device_info*, %struct.kfd_device_info** %2, align 8
  ret %struct.kfd_device_info* %44
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
