; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_evdev.c_evdev_fetch_next_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_evdev.c_evdev_fetch_next_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdev_client = type { i32, i32, i32, i32, %struct.input_event* }
%struct.input_event = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evdev_client*, %struct.input_event*)* @evdev_fetch_next_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evdev_fetch_next_event(%struct.evdev_client* %0, %struct.input_event* %1) #0 {
  %3 = alloca %struct.evdev_client*, align 8
  %4 = alloca %struct.input_event*, align 8
  %5 = alloca i32, align 4
  store %struct.evdev_client* %0, %struct.evdev_client** %3, align 8
  store %struct.input_event* %1, %struct.input_event** %4, align 8
  %6 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %7 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %6, i32 0, i32 3
  %8 = call i32 @spin_lock_irq(i32* %7)
  %9 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %10 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %13 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %11, %14
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %2
  %20 = load %struct.input_event*, %struct.input_event** %4, align 8
  %21 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %22 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %21, i32 0, i32 4
  %23 = load %struct.input_event*, %struct.input_event** %22, align 8
  %24 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %25 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds %struct.input_event, %struct.input_event* %23, i64 %28
  %30 = bitcast %struct.input_event* %20 to i8*
  %31 = bitcast %struct.input_event* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 4, i1 false)
  %32 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %33 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, 1
  %36 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %37 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %19, %2
  %41 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %42 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %41, i32 0, i32 3
  %43 = call i32 @spin_unlock_irq(i32* %42)
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @spin_lock_irq(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
