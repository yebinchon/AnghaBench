; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/stm/extr_core.c___stm_source_link_drop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/stm/extr_core.c___stm_source_link_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm_source_device = type { %struct.TYPE_6__, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*)* }
%struct.stm_device = type { %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32, i32)* }

@stm_source_srcu = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm_source_device*, %struct.stm_device*)* @__stm_source_link_drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__stm_source_link_drop(%struct.stm_source_device* %0, %struct.stm_device* %1) #0 {
  %3 = alloca %struct.stm_source_device*, align 8
  %4 = alloca %struct.stm_device*, align 8
  %5 = alloca %struct.stm_device*, align 8
  %6 = alloca i32, align 4
  store %struct.stm_source_device* %0, %struct.stm_source_device** %3, align 8
  store %struct.stm_device* %1, %struct.stm_device** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.stm_device*, %struct.stm_device** %4, align 8
  %8 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %7, i32 0, i32 3
  %9 = call i32 @lockdep_assert_held(i32* %8)
  %10 = load %struct.stm_device*, %struct.stm_device** %4, align 8
  %11 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %10, i32 0, i32 1
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.stm_source_device*, %struct.stm_source_device** %3, align 8
  %14 = getelementptr inbounds %struct.stm_source_device, %struct.stm_source_device* %13, i32 0, i32 2
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.stm_source_device*, %struct.stm_source_device** %3, align 8
  %17 = getelementptr inbounds %struct.stm_source_device, %struct.stm_source_device* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.stm_device* @srcu_dereference_check(i32 %18, i32* @stm_source_srcu, i32 1)
  store %struct.stm_device* %19, %struct.stm_device** %5, align 8
  %20 = load %struct.stm_device*, %struct.stm_device** %5, align 8
  %21 = load %struct.stm_device*, %struct.stm_device** %4, align 8
  %22 = icmp ne %struct.stm_device* %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EAGAIN, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %46

26:                                               ; preds = %2
  %27 = load %struct.stm_device*, %struct.stm_device** %5, align 8
  %28 = load %struct.stm_source_device*, %struct.stm_source_device** %3, align 8
  %29 = getelementptr inbounds %struct.stm_source_device, %struct.stm_source_device* %28, i32 0, i32 0
  %30 = call i32 @stm_output_free(%struct.stm_device* %27, %struct.TYPE_6__* %29)
  %31 = load %struct.stm_source_device*, %struct.stm_source_device** %3, align 8
  %32 = getelementptr inbounds %struct.stm_source_device, %struct.stm_source_device* %31, i32 0, i32 4
  %33 = call i32 @list_del_init(i32* %32)
  %34 = load %struct.stm_device*, %struct.stm_device** %5, align 8
  %35 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %34, i32 0, i32 2
  %36 = call i32 @pm_runtime_mark_last_busy(i32* %35)
  %37 = load %struct.stm_device*, %struct.stm_device** %5, align 8
  %38 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %37, i32 0, i32 2
  %39 = call i32 @pm_runtime_put_autosuspend(i32* %38)
  %40 = load %struct.stm_device*, %struct.stm_device** %5, align 8
  %41 = call i32 @stm_put_device(%struct.stm_device* %40)
  %42 = load %struct.stm_source_device*, %struct.stm_source_device** %3, align 8
  %43 = getelementptr inbounds %struct.stm_source_device, %struct.stm_source_device* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @rcu_assign_pointer(i32 %44, i32* null)
  br label %46

46:                                               ; preds = %26, %23
  %47 = load %struct.stm_source_device*, %struct.stm_source_device** %3, align 8
  %48 = getelementptr inbounds %struct.stm_source_device, %struct.stm_source_device* %47, i32 0, i32 2
  %49 = call i32 @spin_unlock(i32* %48)
  %50 = load %struct.stm_device*, %struct.stm_device** %4, align 8
  %51 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %50, i32 0, i32 1
  %52 = call i32 @spin_unlock(i32* %51)
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %98, label %55

55:                                               ; preds = %46
  %56 = load %struct.stm_source_device*, %struct.stm_source_device** %3, align 8
  %57 = getelementptr inbounds %struct.stm_source_device, %struct.stm_source_device* %56, i32 0, i32 1
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %59, align 8
  %61 = icmp ne i32 (%struct.TYPE_5__*)* %60, null
  br i1 %61, label %62, label %72

62:                                               ; preds = %55
  %63 = load %struct.stm_source_device*, %struct.stm_source_device** %3, align 8
  %64 = getelementptr inbounds %struct.stm_source_device, %struct.stm_source_device* %63, i32 0, i32 1
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %66, align 8
  %68 = load %struct.stm_source_device*, %struct.stm_source_device** %3, align 8
  %69 = getelementptr inbounds %struct.stm_source_device, %struct.stm_source_device* %68, i32 0, i32 1
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = call i32 %67(%struct.TYPE_5__* %70)
  br label %72

72:                                               ; preds = %62, %55
  %73 = load %struct.stm_device*, %struct.stm_device** %4, align 8
  %74 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32 (%struct.TYPE_4__*, i32, i32)*, i32 (%struct.TYPE_4__*, i32, i32)** %76, align 8
  %78 = icmp ne i32 (%struct.TYPE_4__*, i32, i32)* %77, null
  br i1 %78, label %79, label %97

79:                                               ; preds = %72
  %80 = load %struct.stm_device*, %struct.stm_device** %4, align 8
  %81 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32 (%struct.TYPE_4__*, i32, i32)*, i32 (%struct.TYPE_4__*, i32, i32)** %83, align 8
  %85 = load %struct.stm_device*, %struct.stm_device** %4, align 8
  %86 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = load %struct.stm_source_device*, %struct.stm_source_device** %3, align 8
  %89 = getelementptr inbounds %struct.stm_source_device, %struct.stm_source_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.stm_source_device*, %struct.stm_source_device** %3, align 8
  %93 = getelementptr inbounds %struct.stm_source_device, %struct.stm_source_device* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 %84(%struct.TYPE_4__* %87, i32 %91, i32 %95)
  br label %97

97:                                               ; preds = %79, %72
  br label %98

98:                                               ; preds = %97, %46
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.stm_device* @srcu_dereference_check(i32, i32*, i32) #1

declare dso_local i32 @stm_output_free(%struct.stm_device*, %struct.TYPE_6__*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32*) #1

declare dso_local i32 @stm_put_device(%struct.stm_device*) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
