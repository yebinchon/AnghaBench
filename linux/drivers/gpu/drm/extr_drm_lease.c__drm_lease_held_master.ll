; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_lease.c__drm_lease_held_master.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_lease.c__drm_lease_held_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_master = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_master*, i32)* @_drm_lease_held_master to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_drm_lease_held_master(%struct.drm_master* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_master*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_master* %0, %struct.drm_master** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.drm_master*, %struct.drm_master** %4, align 8
  %7 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %6, i32 0, i32 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = call i32 @lockdep_assert_held(i32* %10)
  %12 = load %struct.drm_master*, %struct.drm_master** %4, align 8
  %13 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.drm_master*, %struct.drm_master** %4, align 8
  %18 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %17, i32 0, i32 0
  %19 = load i32, i32* %5, align 4
  %20 = call i32* @idr_find(i32* %18, i32 %19)
  %21 = icmp ne i32* %20, null
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %3, align 4
  br label %24

23:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %16
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32* @idr_find(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
