; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-steam.c_steam_create_client_hid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-steam.c_steam_create_client_hid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }

@steam_client_ll_driver = common dso_local global i32 0, align 4
@HID_GROUP_STEAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hid_device* (%struct.hid_device*)* @steam_create_client_hid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hid_device* @steam_create_client_hid(%struct.hid_device* %0) #0 {
  %2 = alloca %struct.hid_device*, align 8
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.hid_device*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  %5 = call %struct.hid_device* (...) @hid_allocate_device()
  store %struct.hid_device* %5, %struct.hid_device** %4, align 8
  %6 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %7 = call i64 @IS_ERR(%struct.hid_device* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  store %struct.hid_device* %10, %struct.hid_device** %2, align 8
  br label %69

11:                                               ; preds = %1
  %12 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %13 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %12, i32 0, i32 10
  store i32* @steam_client_ll_driver, i32** %13, align 8
  %14 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %15 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %14, i32 0, i32 9
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %19 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %18, i32 0, i32 9
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %22 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %25 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %24, i32 0, i32 8
  store i32 %23, i32* %25, align 8
  %26 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %27 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %30 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %29, i32 0, i32 7
  store i32 %28, i32* %30, align 4
  %31 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %32 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %35 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 8
  %36 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %37 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %40 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 4
  %41 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %42 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %45 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  %46 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %47 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %50 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %52 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %55 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @strlcpy(i32 %53, i32 %56, i32 4)
  %58 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %59 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %62 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @strlcpy(i32 %60, i32 %63, i32 4)
  %65 = load i32, i32* @HID_GROUP_STEAM, align 4
  %66 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %67 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  store %struct.hid_device* %68, %struct.hid_device** %2, align 8
  br label %69

69:                                               ; preds = %11, %9
  %70 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  ret %struct.hid_device* %70
}

declare dso_local %struct.hid_device* @hid_allocate_device(...) #1

declare dso_local i64 @IS_ERR(%struct.hid_device*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
