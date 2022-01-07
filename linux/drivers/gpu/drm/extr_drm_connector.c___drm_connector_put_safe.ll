; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_connector.c___drm_connector_put_safe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_connector.c___drm_connector_put_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.drm_mode_config }
%struct.drm_mode_config = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*)* @__drm_connector_put_safe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__drm_connector_put_safe(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.drm_mode_config*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %4 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %5 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %4, i32 0, i32 2
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store %struct.drm_mode_config* %7, %struct.drm_mode_config** %3, align 8
  %8 = load %struct.drm_mode_config*, %struct.drm_mode_config** %3, align 8
  %9 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %8, i32 0, i32 2
  %10 = call i32 @lockdep_assert_held(i32* %9)
  %11 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %12 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = call i32 @refcount_dec_and_test(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %27

18:                                               ; preds = %1
  %19 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %20 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %19, i32 0, i32 0
  %21 = load %struct.drm_mode_config*, %struct.drm_mode_config** %3, align 8
  %22 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %21, i32 0, i32 1
  %23 = call i32 @llist_add(i32* %20, i32* %22)
  %24 = load %struct.drm_mode_config*, %struct.drm_mode_config** %3, align 8
  %25 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %24, i32 0, i32 0
  %26 = call i32 @schedule_work(i32* %25)
  br label %27

27:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @llist_add(i32*, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
