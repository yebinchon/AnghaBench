; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_bus_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_bus_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i3c_bus = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@I3C_BUS_MODE_PURE = common dso_local global i32 0, align 4
@i3c_core_lock = common dso_local global i32 0, align 4
@i3c_bus_idr = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i3c_bus*)* @i3c_bus_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i3c_bus_init(%struct.i3c_bus* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i3c_bus*, align 8
  %4 = alloca i32, align 4
  store %struct.i3c_bus* %0, %struct.i3c_bus** %3, align 8
  %5 = load %struct.i3c_bus*, %struct.i3c_bus** %3, align 8
  %6 = getelementptr inbounds %struct.i3c_bus, %struct.i3c_bus* %5, i32 0, i32 3
  %7 = call i32 @init_rwsem(i32* %6)
  %8 = load %struct.i3c_bus*, %struct.i3c_bus** %3, align 8
  %9 = getelementptr inbounds %struct.i3c_bus, %struct.i3c_bus* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = load %struct.i3c_bus*, %struct.i3c_bus** %3, align 8
  %13 = getelementptr inbounds %struct.i3c_bus, %struct.i3c_bus* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load %struct.i3c_bus*, %struct.i3c_bus** %3, align 8
  %17 = call i32 @i3c_bus_init_addrslots(%struct.i3c_bus* %16)
  %18 = load i32, i32* @I3C_BUS_MODE_PURE, align 4
  %19 = load %struct.i3c_bus*, %struct.i3c_bus** %3, align 8
  %20 = getelementptr inbounds %struct.i3c_bus, %struct.i3c_bus* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = call i32 @mutex_lock(i32* @i3c_core_lock)
  %22 = load %struct.i3c_bus*, %struct.i3c_bus** %3, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i32 @idr_alloc(i32* @i3c_bus_idr, %struct.i3c_bus* %22, i32 0, i32 0, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = call i32 @mutex_unlock(i32* @i3c_core_lock)
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %34

30:                                               ; preds = %1
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.i3c_bus*, %struct.i3c_bus** %3, align 8
  %33 = getelementptr inbounds %struct.i3c_bus, %struct.i3c_bus* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %30, %28
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @i3c_bus_init_addrslots(%struct.i3c_bus*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_alloc(i32*, %struct.i3c_bus*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
