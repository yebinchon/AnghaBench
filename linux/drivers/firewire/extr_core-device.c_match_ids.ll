; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-device.c_match_ids.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-device.c_match_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee1394_device_id = type { i32, i32, i32, i32, i32 }

@IEEE1394_MATCH_VENDOR_ID = common dso_local global i32 0, align 4
@IEEE1394_MATCH_MODEL_ID = common dso_local global i32 0, align 4
@IEEE1394_MATCH_SPECIFIER_ID = common dso_local global i32 0, align 4
@IEEE1394_MATCH_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee1394_device_id*, i32*)* @match_ids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_ids(%struct.ieee1394_device_id* %0, i32* %1) #0 {
  %3 = alloca %struct.ieee1394_device_id*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee1394_device_id* %0, %struct.ieee1394_device_id** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32*, i32** %4, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ieee1394_device_id*, %struct.ieee1394_device_id** %3, align 8
  %10 = getelementptr inbounds %struct.ieee1394_device_id, %struct.ieee1394_device_id* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %8, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @IEEE1394_MATCH_VENDOR_ID, align 4
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %13, %2
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ieee1394_device_id*, %struct.ieee1394_device_id** %3, align 8
  %22 = getelementptr inbounds %struct.ieee1394_device_id, %struct.ieee1394_device_id* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load i32, i32* @IEEE1394_MATCH_MODEL_ID, align 4
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %25, %17
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ieee1394_device_id*, %struct.ieee1394_device_id** %3, align 8
  %34 = getelementptr inbounds %struct.ieee1394_device_id, %struct.ieee1394_device_id* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load i32, i32* @IEEE1394_MATCH_SPECIFIER_ID, align 4
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %37, %29
  %42 = load i32*, i32** %4, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ieee1394_device_id*, %struct.ieee1394_device_id** %3, align 8
  %46 = getelementptr inbounds %struct.ieee1394_device_id, %struct.ieee1394_device_id* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %44, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load i32, i32* @IEEE1394_MATCH_VERSION, align 4
  %51 = load i32, i32* %5, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %49, %41
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.ieee1394_device_id*, %struct.ieee1394_device_id** %3, align 8
  %56 = getelementptr inbounds %struct.ieee1394_device_id, %struct.ieee1394_device_id* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %54, %57
  %59 = load %struct.ieee1394_device_id*, %struct.ieee1394_device_id** %3, align 8
  %60 = getelementptr inbounds %struct.ieee1394_device_id, %struct.ieee1394_device_id* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %58, %61
  %63 = zext i1 %62 to i32
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
