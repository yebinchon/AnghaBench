; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_uinput.c_uinput_fetch_next_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_uinput.c_uinput_fetch_next_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uinput_device = type { i64, i64, %struct.TYPE_2__*, %struct.input_event* }
%struct.TYPE_2__ = type { i32 }
%struct.input_event = type { i32 }

@UINPUT_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uinput_device*, %struct.input_event*)* @uinput_fetch_next_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uinput_fetch_next_event(%struct.uinput_device* %0, %struct.input_event* %1) #0 {
  %3 = alloca %struct.uinput_device*, align 8
  %4 = alloca %struct.input_event*, align 8
  %5 = alloca i32, align 4
  store %struct.uinput_device* %0, %struct.uinput_device** %3, align 8
  store %struct.input_event* %1, %struct.input_event** %4, align 8
  %6 = load %struct.uinput_device*, %struct.uinput_device** %3, align 8
  %7 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @spin_lock_irq(i32* %9)
  %11 = load %struct.uinput_device*, %struct.uinput_device** %3, align 8
  %12 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.uinput_device*, %struct.uinput_device** %3, align 8
  %15 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %13, %16
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %2
  %22 = load %struct.input_event*, %struct.input_event** %4, align 8
  %23 = load %struct.uinput_device*, %struct.uinput_device** %3, align 8
  %24 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %23, i32 0, i32 3
  %25 = load %struct.input_event*, %struct.input_event** %24, align 8
  %26 = load %struct.uinput_device*, %struct.uinput_device** %3, align 8
  %27 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.input_event, %struct.input_event* %25, i64 %28
  %30 = bitcast %struct.input_event* %22 to i8*
  %31 = bitcast %struct.input_event* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 4, i1 false)
  %32 = load %struct.uinput_device*, %struct.uinput_device** %3, align 8
  %33 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, 1
  %36 = load i32, i32* @UINPUT_BUFFER_SIZE, align 4
  %37 = sext i32 %36 to i64
  %38 = urem i64 %35, %37
  %39 = load %struct.uinput_device*, %struct.uinput_device** %3, align 8
  %40 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %21, %2
  %42 = load %struct.uinput_device*, %struct.uinput_device** %3, align 8
  %43 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @spin_unlock_irq(i32* %45)
  %47 = load i32, i32* %5, align 4
  ret i32 %47
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
