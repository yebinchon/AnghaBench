; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_init_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_init_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_queue_manager = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_queue_manager*)* @init_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_interrupts(%struct.device_queue_manager* %0) #0 {
  %2 = alloca %struct.device_queue_manager*, align 8
  %3 = alloca i32, align 4
  store %struct.device_queue_manager* %0, %struct.device_queue_manager** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %30, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.device_queue_manager*, %struct.device_queue_manager** %2, align 8
  %7 = call i32 @get_pipes_per_mec(%struct.device_queue_manager* %6)
  %8 = icmp ult i32 %5, %7
  br i1 %8, label %9, label %33

9:                                                ; preds = %4
  %10 = load %struct.device_queue_manager*, %struct.device_queue_manager** %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @is_pipe_enabled(%struct.device_queue_manager* %10, i32 0, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %9
  %15 = load %struct.device_queue_manager*, %struct.device_queue_manager** %2, align 8
  %16 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32 (i32, i32)*, i32 (i32, i32)** %20, align 8
  %22 = load %struct.device_queue_manager*, %struct.device_queue_manager** %2, align 8
  %23 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 %21(i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %14, %9
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %3, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %4

33:                                               ; preds = %4
  ret void
}

declare dso_local i32 @get_pipes_per_mec(%struct.device_queue_manager*) #1

declare dso_local i64 @is_pipe_enabled(%struct.device_queue_manager*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
