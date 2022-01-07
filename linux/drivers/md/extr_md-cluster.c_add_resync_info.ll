; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_add_resync_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_add_resync_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_lock_resource = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.resync_info = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_lock_resource*, i32, i32)* @add_resync_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_resync_info(%struct.dlm_lock_resource* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dlm_lock_resource*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.resync_info*, align 8
  store %struct.dlm_lock_resource* %0, %struct.dlm_lock_resource** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %9 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.resync_info*
  store %struct.resync_info* %12, %struct.resync_info** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i8* @cpu_to_le64(i32 %13)
  %15 = load %struct.resync_info*, %struct.resync_info** %7, align 8
  %16 = getelementptr inbounds %struct.resync_info, %struct.resync_info* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i8* @cpu_to_le64(i32 %17)
  %19 = load %struct.resync_info*, %struct.resync_info** %7, align 8
  %20 = getelementptr inbounds %struct.resync_info, %struct.resync_info* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  ret void
}

declare dso_local i8* @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
