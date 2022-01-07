; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-steam.c_steam_client_ll_raw_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-steam.c_steam_client_ll_raw_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.steam_device* }
%struct.steam_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, i8, i32*, i64, i8, i32)* @steam_client_ll_raw_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @steam_client_ll_raw_request(%struct.hid_device* %0, i8 zeroext %1, i32* %2, i64 %3, i8 zeroext %4, i32 %5) #0 {
  %7 = alloca %struct.hid_device*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca %struct.steam_device*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %7, align 8
  store i8 %1, i8* %8, align 1
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8 %4, i8* %11, align 1
  store i32 %5, i32* %12, align 4
  %14 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %15 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %14, i32 0, i32 0
  %16 = load %struct.steam_device*, %struct.steam_device** %15, align 8
  store %struct.steam_device* %16, %struct.steam_device** %13, align 8
  %17 = load %struct.steam_device*, %struct.steam_device** %13, align 8
  %18 = getelementptr inbounds %struct.steam_device, %struct.steam_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i8, i8* %8, align 1
  %21 = load i32*, i32** %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i8, i8* %11, align 1
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @hid_hw_raw_request(i32 %19, i8 zeroext %20, i32* %21, i64 %22, i8 zeroext %23, i32 %24)
  ret i32 %25
}

declare dso_local i32 @hid_hw_raw_request(i32, i8 zeroext, i32*, i64, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
