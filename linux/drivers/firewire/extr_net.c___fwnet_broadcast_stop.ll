; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_net.c___fwnet_broadcast_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_net.c___fwnet_broadcast_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwnet_device = type { i64, i32*, i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@FWNET_BROADCAST_ERROR = common dso_local global i64 0, align 8
@FWNET_ISO_PAGE_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fwnet_device*)* @__fwnet_broadcast_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__fwnet_broadcast_stop(%struct.fwnet_device* %0) #0 {
  %2 = alloca %struct.fwnet_device*, align 8
  %3 = alloca i32, align 4
  store %struct.fwnet_device* %0, %struct.fwnet_device** %2, align 8
  %4 = load %struct.fwnet_device*, %struct.fwnet_device** %2, align 8
  %5 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @FWNET_BROADCAST_ERROR, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %34

9:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %24, %9
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @FWNET_ISO_PAGE_COUNT, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = load %struct.fwnet_device*, %struct.fwnet_device** %2, align 8
  %16 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @kunmap(i32 %22)
  br label %24

24:                                               ; preds = %14
  %25 = load i32, i32* %3, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %10

27:                                               ; preds = %10
  %28 = load %struct.fwnet_device*, %struct.fwnet_device** %2, align 8
  %29 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %28, i32 0, i32 4
  %30 = load %struct.fwnet_device*, %struct.fwnet_device** %2, align 8
  %31 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @fw_iso_buffer_destroy(%struct.TYPE_2__* %29, i32 %32)
  br label %34

34:                                               ; preds = %27, %1
  %35 = load %struct.fwnet_device*, %struct.fwnet_device** %2, align 8
  %36 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.fwnet_device*, %struct.fwnet_device** %2, align 8
  %41 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @fw_iso_context_destroy(i32* %42)
  %44 = load %struct.fwnet_device*, %struct.fwnet_device** %2, align 8
  %45 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %44, i32 0, i32 2
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %39, %34
  %47 = load %struct.fwnet_device*, %struct.fwnet_device** %2, align 8
  %48 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @kfree(i32* %49)
  %51 = load %struct.fwnet_device*, %struct.fwnet_device** %2, align 8
  %52 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %51, i32 0, i32 1
  store i32* null, i32** %52, align 8
  %53 = load i64, i64* @FWNET_BROADCAST_ERROR, align 8
  %54 = load %struct.fwnet_device*, %struct.fwnet_device** %2, align 8
  %55 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  ret void
}

declare dso_local i32 @kunmap(i32) #1

declare dso_local i32 @fw_iso_buffer_destroy(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @fw_iso_context_destroy(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
