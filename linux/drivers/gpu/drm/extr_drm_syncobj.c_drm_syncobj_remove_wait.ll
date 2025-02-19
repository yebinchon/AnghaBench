; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_syncobj.c_drm_syncobj_remove_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_syncobj.c_drm_syncobj_remove_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_syncobj = type { i32 }
%struct.syncobj_wait_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_syncobj*, %struct.syncobj_wait_entry*)* @drm_syncobj_remove_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_syncobj_remove_wait(%struct.drm_syncobj* %0, %struct.syncobj_wait_entry* %1) #0 {
  %3 = alloca %struct.drm_syncobj*, align 8
  %4 = alloca %struct.syncobj_wait_entry*, align 8
  store %struct.drm_syncobj* %0, %struct.drm_syncobj** %3, align 8
  store %struct.syncobj_wait_entry* %1, %struct.syncobj_wait_entry** %4, align 8
  %5 = load %struct.syncobj_wait_entry*, %struct.syncobj_wait_entry** %4, align 8
  %6 = getelementptr inbounds %struct.syncobj_wait_entry, %struct.syncobj_wait_entry* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %21

11:                                               ; preds = %2
  %12 = load %struct.drm_syncobj*, %struct.drm_syncobj** %3, align 8
  %13 = getelementptr inbounds %struct.drm_syncobj, %struct.drm_syncobj* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.syncobj_wait_entry*, %struct.syncobj_wait_entry** %4, align 8
  %16 = getelementptr inbounds %struct.syncobj_wait_entry, %struct.syncobj_wait_entry* %15, i32 0, i32 0
  %17 = call i32 @list_del_init(%struct.TYPE_2__* %16)
  %18 = load %struct.drm_syncobj*, %struct.drm_syncobj** %3, align 8
  %19 = getelementptr inbounds %struct.drm_syncobj, %struct.drm_syncobj* %18, i32 0, i32 0
  %20 = call i32 @spin_unlock(i32* %19)
  br label %21

21:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
