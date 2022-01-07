; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/extr_device.c_i3c_device_get_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/extr_device.c_i3c_device_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i3c_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.i3c_device_info }
%struct.i3c_device_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i3c_device_get_info(%struct.i3c_device* %0, %struct.i3c_device_info* %1) #0 {
  %3 = alloca %struct.i3c_device*, align 8
  %4 = alloca %struct.i3c_device_info*, align 8
  store %struct.i3c_device* %0, %struct.i3c_device** %3, align 8
  store %struct.i3c_device_info* %1, %struct.i3c_device_info** %4, align 8
  %5 = load %struct.i3c_device_info*, %struct.i3c_device_info** %4, align 8
  %6 = icmp ne %struct.i3c_device_info* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %30

8:                                                ; preds = %2
  %9 = load %struct.i3c_device*, %struct.i3c_device** %3, align 8
  %10 = getelementptr inbounds %struct.i3c_device, %struct.i3c_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @i3c_bus_normaluse_lock(i32 %11)
  %13 = load %struct.i3c_device*, %struct.i3c_device** %3, align 8
  %14 = getelementptr inbounds %struct.i3c_device, %struct.i3c_device* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %8
  %18 = load %struct.i3c_device_info*, %struct.i3c_device_info** %4, align 8
  %19 = load %struct.i3c_device*, %struct.i3c_device** %3, align 8
  %20 = getelementptr inbounds %struct.i3c_device, %struct.i3c_device* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = bitcast %struct.i3c_device_info* %18 to i8*
  %24 = bitcast %struct.i3c_device_info* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 4, i1 false)
  br label %25

25:                                               ; preds = %17, %8
  %26 = load %struct.i3c_device*, %struct.i3c_device** %3, align 8
  %27 = getelementptr inbounds %struct.i3c_device, %struct.i3c_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @i3c_bus_normaluse_unlock(i32 %28)
  br label %30

30:                                               ; preds = %25, %7
  ret void
}

declare dso_local i32 @i3c_bus_normaluse_lock(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @i3c_bus_normaluse_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
