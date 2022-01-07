; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c___insert_dm_origin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c___insert_dm_origin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.dm_origin = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@_dm_origins = common dso_local global %struct.list_head* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_origin*)* @__insert_dm_origin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__insert_dm_origin(%struct.dm_origin* %0) #0 {
  %2 = alloca %struct.dm_origin*, align 8
  %3 = alloca %struct.list_head*, align 8
  store %struct.dm_origin* %0, %struct.dm_origin** %2, align 8
  %4 = load %struct.list_head*, %struct.list_head** @_dm_origins, align 8
  %5 = load %struct.dm_origin*, %struct.dm_origin** %2, align 8
  %6 = getelementptr inbounds %struct.dm_origin, %struct.dm_origin* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @origin_hash(i32 %9)
  %11 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i64 %10
  store %struct.list_head* %11, %struct.list_head** %3, align 8
  %12 = load %struct.dm_origin*, %struct.dm_origin** %2, align 8
  %13 = getelementptr inbounds %struct.dm_origin, %struct.dm_origin* %12, i32 0, i32 0
  %14 = load %struct.list_head*, %struct.list_head** %3, align 8
  %15 = call i32 @list_add_tail(i32* %13, %struct.list_head* %14)
  ret void
}

declare dso_local i64 @origin_hash(i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
