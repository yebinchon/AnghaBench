; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_evdev.c_evdev_pass_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_evdev.c_evdev_pass_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdev_client = type { i64, i64, i64, i32, i64, %struct.evdev* }
%struct.evdev = type { i32 }
%struct.input_value = type { i64, i64, i32 }
%struct.input_event = type { i32, i64, i64, i32, i32 }
%struct.timespec64 = type { i32, i32 }

@NSEC_PER_USEC = common dso_local global i32 0, align 4
@EV_SYN = common dso_local global i64 0, align 8
@SYN_REPORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evdev_client*, %struct.input_value*, i32, i32*)* @evdev_pass_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evdev_pass_values(%struct.evdev_client* %0, %struct.input_value* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.evdev_client*, align 8
  %6 = alloca %struct.input_value*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.evdev*, align 8
  %10 = alloca %struct.input_value*, align 8
  %11 = alloca %struct.input_event, align 8
  %12 = alloca %struct.timespec64, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.timespec64, align 4
  store %struct.evdev_client* %0, %struct.evdev_client** %5, align 8
  store %struct.input_value* %1, %struct.input_value** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %15 = load %struct.evdev_client*, %struct.evdev_client** %5, align 8
  %16 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %15, i32 0, i32 5
  %17 = load %struct.evdev*, %struct.evdev** %16, align 8
  store %struct.evdev* %17, %struct.evdev** %9, align 8
  store i32 0, i32* %13, align 4
  %18 = load %struct.evdev_client*, %struct.evdev_client** %5, align 8
  %19 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %114

23:                                               ; preds = %4
  %24 = load i32*, i32** %8, align 8
  %25 = load %struct.evdev_client*, %struct.evdev_client** %5, align 8
  %26 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @ktime_to_timespec64(i32 %29)
  %31 = bitcast %struct.timespec64* %14 to i64*
  store i64 %30, i64* %31, align 4
  %32 = bitcast %struct.timespec64* %12 to i8*
  %33 = bitcast %struct.timespec64* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 %33, i64 8, i1 false)
  %34 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %12, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.input_event, %struct.input_event* %11, i32 0, i32 4
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %12, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @NSEC_PER_USEC, align 4
  %40 = sdiv i32 %38, %39
  %41 = getelementptr inbounds %struct.input_event, %struct.input_event* %11, i32 0, i32 0
  store i32 %40, i32* %41, align 8
  %42 = load %struct.evdev_client*, %struct.evdev_client** %5, align 8
  %43 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %42, i32 0, i32 3
  %44 = call i32 @spin_lock(i32* %43)
  %45 = load %struct.input_value*, %struct.input_value** %6, align 8
  store %struct.input_value* %45, %struct.input_value** %10, align 8
  br label %46

46:                                               ; preds = %101, %23
  %47 = load %struct.input_value*, %struct.input_value** %10, align 8
  %48 = load %struct.input_value*, %struct.input_value** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.input_value, %struct.input_value* %48, i64 %50
  %52 = icmp ne %struct.input_value* %47, %51
  br i1 %52, label %53, label %104

53:                                               ; preds = %46
  %54 = load %struct.evdev_client*, %struct.evdev_client** %5, align 8
  %55 = load %struct.input_value*, %struct.input_value** %10, align 8
  %56 = getelementptr inbounds %struct.input_value, %struct.input_value* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.input_value*, %struct.input_value** %10, align 8
  %59 = getelementptr inbounds %struct.input_value, %struct.input_value* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @__evdev_is_filtered(%struct.evdev_client* %54, i64 %57, i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %101

64:                                               ; preds = %53
  %65 = load %struct.input_value*, %struct.input_value** %10, align 8
  %66 = getelementptr inbounds %struct.input_value, %struct.input_value* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @EV_SYN, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %86

70:                                               ; preds = %64
  %71 = load %struct.input_value*, %struct.input_value** %10, align 8
  %72 = getelementptr inbounds %struct.input_value, %struct.input_value* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SYN_REPORT, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %70
  %77 = load %struct.evdev_client*, %struct.evdev_client** %5, align 8
  %78 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.evdev_client*, %struct.evdev_client** %5, align 8
  %81 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %79, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  br label %101

85:                                               ; preds = %76
  store i32 1, i32* %13, align 4
  br label %86

86:                                               ; preds = %85, %70, %64
  %87 = load %struct.input_value*, %struct.input_value** %10, align 8
  %88 = getelementptr inbounds %struct.input_value, %struct.input_value* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.input_event, %struct.input_event* %11, i32 0, i32 1
  store i64 %89, i64* %90, align 8
  %91 = load %struct.input_value*, %struct.input_value** %10, align 8
  %92 = getelementptr inbounds %struct.input_value, %struct.input_value* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.input_event, %struct.input_event* %11, i32 0, i32 2
  store i64 %93, i64* %94, align 8
  %95 = load %struct.input_value*, %struct.input_value** %10, align 8
  %96 = getelementptr inbounds %struct.input_value, %struct.input_value* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds %struct.input_event, %struct.input_event* %11, i32 0, i32 3
  store i32 %97, i32* %98, align 8
  %99 = load %struct.evdev_client*, %struct.evdev_client** %5, align 8
  %100 = call i32 @__pass_event(%struct.evdev_client* %99, %struct.input_event* %11)
  br label %101

101:                                              ; preds = %86, %84, %63
  %102 = load %struct.input_value*, %struct.input_value** %10, align 8
  %103 = getelementptr inbounds %struct.input_value, %struct.input_value* %102, i32 1
  store %struct.input_value* %103, %struct.input_value** %10, align 8
  br label %46

104:                                              ; preds = %46
  %105 = load %struct.evdev_client*, %struct.evdev_client** %5, align 8
  %106 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %105, i32 0, i32 3
  %107 = call i32 @spin_unlock(i32* %106)
  %108 = load i32, i32* %13, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = load %struct.evdev*, %struct.evdev** %9, align 8
  %112 = getelementptr inbounds %struct.evdev, %struct.evdev* %111, i32 0, i32 0
  %113 = call i32 @wake_up_interruptible(i32* %112)
  br label %114

114:                                              ; preds = %22, %110, %104
  ret void
}

declare dso_local i64 @ktime_to_timespec64(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @__evdev_is_filtered(%struct.evdev_client*, i64, i64) #1

declare dso_local i32 @__pass_event(%struct.evdev_client*, %struct.input_event*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
