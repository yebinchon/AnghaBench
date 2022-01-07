; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_process_prepared_mapping_fail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_process_prepared_mapping_fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_thin_new_mapping = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_thin_new_mapping*)* @process_prepared_mapping_fail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_prepared_mapping_fail(%struct.dm_thin_new_mapping* %0) #0 {
  %2 = alloca %struct.dm_thin_new_mapping*, align 8
  store %struct.dm_thin_new_mapping* %0, %struct.dm_thin_new_mapping** %2, align 8
  %3 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %4 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %3, i32 0, i32 0
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %9 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @cell_error(%struct.TYPE_4__* %7, i32 %10)
  %12 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %13 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %12, i32 0, i32 1
  %14 = call i32 @list_del(i32* %13)
  %15 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %16 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %17 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i32 @mempool_free(%struct.dm_thin_new_mapping* %15, i32* %21)
  ret void
}

declare dso_local i32 @cell_error(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mempool_free(%struct.dm_thin_new_mapping*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
