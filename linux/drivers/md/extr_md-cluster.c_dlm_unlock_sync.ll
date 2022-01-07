; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_dlm_unlock_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_dlm_unlock_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_lock_resource = type { i32 }

@DLM_LOCK_NL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_lock_resource*)* @dlm_unlock_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_unlock_sync(%struct.dlm_lock_resource* %0) #0 {
  %2 = alloca %struct.dlm_lock_resource*, align 8
  store %struct.dlm_lock_resource* %0, %struct.dlm_lock_resource** %2, align 8
  %3 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %2, align 8
  %4 = load i32, i32* @DLM_LOCK_NL, align 4
  %5 = call i32 @dlm_lock_sync(%struct.dlm_lock_resource* %3, i32 %4)
  ret i32 %5
}

declare dso_local i32 @dlm_lock_sync(%struct.dlm_lock_resource*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
