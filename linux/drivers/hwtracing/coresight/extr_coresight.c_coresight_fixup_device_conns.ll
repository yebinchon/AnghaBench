; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight.c_coresight_fixup_device_conns.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight.c_coresight_fixup_device_conns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coresight_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.coresight_connection* }
%struct.coresight_connection = type { i32*, i32 }
%struct.device = type { i32 }

@coresight_bustype = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coresight_device*)* @coresight_fixup_device_conns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coresight_fixup_device_conns(%struct.coresight_device* %0) #0 {
  %2 = alloca %struct.coresight_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.coresight_connection*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.coresight_device* %0, %struct.coresight_device** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %42, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.coresight_device*, %struct.coresight_device** %2, align 8
  %9 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %7, %12
  br i1 %13, label %14, label %45

14:                                               ; preds = %6
  %15 = load %struct.coresight_device*, %struct.coresight_device** %2, align 8
  %16 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.coresight_connection*, %struct.coresight_connection** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.coresight_connection, %struct.coresight_connection* %19, i64 %21
  store %struct.coresight_connection* %22, %struct.coresight_connection** %4, align 8
  store %struct.device* null, %struct.device** %5, align 8
  %23 = load %struct.coresight_connection*, %struct.coresight_connection** %4, align 8
  %24 = getelementptr inbounds %struct.coresight_connection, %struct.coresight_connection* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.device* @bus_find_device_by_fwnode(i32* @coresight_bustype, i32 %25)
  store %struct.device* %26, %struct.device** %5, align 8
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = icmp ne %struct.device* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %14
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = call i32* @to_coresight_device(%struct.device* %30)
  %32 = load %struct.coresight_connection*, %struct.coresight_connection** %4, align 8
  %33 = getelementptr inbounds %struct.coresight_connection, %struct.coresight_connection* %32, i32 0, i32 0
  store i32* %31, i32** %33, align 8
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = call i32 @put_device(%struct.device* %34)
  br label %41

36:                                               ; preds = %14
  %37 = load %struct.coresight_device*, %struct.coresight_device** %2, align 8
  %38 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load %struct.coresight_connection*, %struct.coresight_connection** %4, align 8
  %40 = getelementptr inbounds %struct.coresight_connection, %struct.coresight_connection* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %36, %29
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %6

45:                                               ; preds = %6
  ret void
}

declare dso_local %struct.device* @bus_find_device_by_fwnode(i32*, i32) #1

declare dso_local i32* @to_coresight_device(%struct.device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
