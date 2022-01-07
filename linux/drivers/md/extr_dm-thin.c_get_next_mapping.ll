; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_get_next_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_get_next_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_thin_new_mapping = type { i32*, i32 }
%struct.pool = type { %struct.dm_thin_new_mapping* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dm_thin_new_mapping* (%struct.pool*)* @get_next_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dm_thin_new_mapping* @get_next_mapping(%struct.pool* %0) #0 {
  %2 = alloca %struct.pool*, align 8
  %3 = alloca %struct.dm_thin_new_mapping*, align 8
  store %struct.pool* %0, %struct.pool** %2, align 8
  %4 = load %struct.pool*, %struct.pool** %2, align 8
  %5 = getelementptr inbounds %struct.pool, %struct.pool* %4, i32 0, i32 0
  %6 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %5, align 8
  store %struct.dm_thin_new_mapping* %6, %struct.dm_thin_new_mapping** %3, align 8
  %7 = load %struct.pool*, %struct.pool** %2, align 8
  %8 = getelementptr inbounds %struct.pool, %struct.pool* %7, i32 0, i32 0
  %9 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %8, align 8
  %10 = icmp ne %struct.dm_thin_new_mapping* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %3, align 8
  %15 = call i32 @memset(%struct.dm_thin_new_mapping* %14, i32 0, i32 16)
  %16 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %3, align 8
  %17 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %16, i32 0, i32 1
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %3, align 8
  %20 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  %21 = load %struct.pool*, %struct.pool** %2, align 8
  %22 = getelementptr inbounds %struct.pool, %struct.pool* %21, i32 0, i32 0
  store %struct.dm_thin_new_mapping* null, %struct.dm_thin_new_mapping** %22, align 8
  %23 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %3, align 8
  ret %struct.dm_thin_new_mapping* %23
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memset(%struct.dm_thin_new_mapping*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
