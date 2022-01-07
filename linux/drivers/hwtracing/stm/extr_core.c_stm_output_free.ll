; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/stm/extr_core.c_stm_output_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/stm/extr_core.c_stm_output_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.stm_output*)* }
%struct.stm_output = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm_device*, %struct.stm_output*)* @stm_output_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm_output_free(%struct.stm_device* %0, %struct.stm_output* %1) #0 {
  %3 = alloca %struct.stm_device*, align 8
  %4 = alloca %struct.stm_output*, align 8
  store %struct.stm_device* %0, %struct.stm_device** %3, align 8
  store %struct.stm_output* %1, %struct.stm_output** %4, align 8
  %5 = load %struct.stm_device*, %struct.stm_device** %3, align 8
  %6 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %5, i32 0, i32 0
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load %struct.stm_output*, %struct.stm_output** %4, align 8
  %9 = getelementptr inbounds %struct.stm_output, %struct.stm_output* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.stm_output*, %struct.stm_output** %4, align 8
  %12 = getelementptr inbounds %struct.stm_output, %struct.stm_output* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.stm_device*, %struct.stm_device** %3, align 8
  %17 = load %struct.stm_output*, %struct.stm_output** %4, align 8
  %18 = call i32 @stm_output_disclaim(%struct.stm_device* %16, %struct.stm_output* %17)
  br label %19

19:                                               ; preds = %15, %2
  %20 = load %struct.stm_device*, %struct.stm_device** %3, align 8
  %21 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %24, label %39

24:                                               ; preds = %19
  %25 = load %struct.stm_device*, %struct.stm_device** %3, align 8
  %26 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.stm_output*)*, i32 (%struct.stm_output*)** %28, align 8
  %30 = icmp ne i32 (%struct.stm_output*)* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load %struct.stm_device*, %struct.stm_device** %3, align 8
  %33 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.stm_output*)*, i32 (%struct.stm_output*)** %35, align 8
  %37 = load %struct.stm_output*, %struct.stm_output** %4, align 8
  %38 = call i32 %36(%struct.stm_output* %37)
  br label %39

39:                                               ; preds = %31, %24, %19
  %40 = load %struct.stm_output*, %struct.stm_output** %4, align 8
  %41 = getelementptr inbounds %struct.stm_output, %struct.stm_output* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock(i32* %41)
  %43 = load %struct.stm_device*, %struct.stm_device** %3, align 8
  %44 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock(i32* %44)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @stm_output_disclaim(%struct.stm_device*, %struct.stm_output*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
