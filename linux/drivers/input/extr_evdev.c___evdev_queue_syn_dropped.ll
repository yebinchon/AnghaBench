; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_evdev.c___evdev_queue_syn_dropped.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_evdev.c___evdev_queue_syn_dropped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdev_client = type { i64, i32, i32, i32, i32, %struct.input_event*, %struct.TYPE_4__* }
%struct.input_event = type { i32, i64, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.timespec64 = type { i32, i32 }

@NSEC_PER_USEC = common dso_local global i32 0, align 4
@EV_SYN = common dso_local global i32 0, align 4
@SYN_DROPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evdev_client*)* @__evdev_queue_syn_dropped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__evdev_queue_syn_dropped(%struct.evdev_client* %0) #0 {
  %2 = alloca %struct.evdev_client*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.timespec64, align 4
  %5 = alloca %struct.input_event, align 8
  store %struct.evdev_client* %0, %struct.evdev_client** %2, align 8
  %6 = load %struct.evdev_client*, %struct.evdev_client** %2, align 8
  %7 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %6, i32 0, i32 6
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32* @input_get_timestamp(i32 %11)
  store i32* %12, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = load %struct.evdev_client*, %struct.evdev_client** %2, align 8
  %15 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @ktime_to_timespec64(i32 %18)
  %20 = bitcast %struct.timespec64* %4 to i64*
  store i64 %19, i64* %20, align 4
  %21 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %4, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.input_event, %struct.input_event* %5, i32 0, i32 4
  store i32 %22, i32* %23, align 8
  %24 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %4, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @NSEC_PER_USEC, align 4
  %27 = sdiv i32 %25, %26
  %28 = getelementptr inbounds %struct.input_event, %struct.input_event* %5, i32 0, i32 0
  store i32 %27, i32* %28, align 8
  %29 = load i32, i32* @EV_SYN, align 4
  %30 = getelementptr inbounds %struct.input_event, %struct.input_event* %5, i32 0, i32 3
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @SYN_DROPPED, align 4
  %32 = getelementptr inbounds %struct.input_event, %struct.input_event* %5, i32 0, i32 2
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct.input_event, %struct.input_event* %5, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.evdev_client*, %struct.evdev_client** %2, align 8
  %35 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %34, i32 0, i32 5
  %36 = load %struct.input_event*, %struct.input_event** %35, align 8
  %37 = load %struct.evdev_client*, %struct.evdev_client** %2, align 8
  %38 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds %struct.input_event, %struct.input_event* %36, i64 %41
  %43 = bitcast %struct.input_event* %42 to i8*
  %44 = bitcast %struct.input_event* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 8 %44, i64 32, i1 false)
  %45 = load %struct.evdev_client*, %struct.evdev_client** %2, align 8
  %46 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %47, 1
  %49 = load %struct.evdev_client*, %struct.evdev_client** %2, align 8
  %50 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load %struct.evdev_client*, %struct.evdev_client** %2, align 8
  %54 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.evdev_client*, %struct.evdev_client** %2, align 8
  %57 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %55, %58
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %1
  %64 = load %struct.evdev_client*, %struct.evdev_client** %2, align 8
  %65 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %66, 1
  %68 = load %struct.evdev_client*, %struct.evdev_client** %2, align 8
  %69 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %70, 1
  %72 = and i32 %67, %71
  %73 = load %struct.evdev_client*, %struct.evdev_client** %2, align 8
  %74 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 8
  %75 = load %struct.evdev_client*, %struct.evdev_client** %2, align 8
  %76 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.evdev_client*, %struct.evdev_client** %2, align 8
  %79 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %63, %1
  ret void
}

declare dso_local i32* @input_get_timestamp(i32) #1

declare dso_local i64 @ktime_to_timespec64(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
