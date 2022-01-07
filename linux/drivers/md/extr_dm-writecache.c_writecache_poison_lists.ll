; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-writecache.c_writecache_poison_lists.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-writecache.c_writecache_poison_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_writecache = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.TYPE_3__ = type { i8*, i8* }

@LIST_POISON1 = common dso_local global i8* null, align 8
@LIST_POISON2 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_writecache*)* @writecache_poison_lists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writecache_poison_lists(%struct.dm_writecache* %0) #0 {
  %2 = alloca %struct.dm_writecache*, align 8
  store %struct.dm_writecache* %0, %struct.dm_writecache** %2, align 8
  %3 = load %struct.dm_writecache*, %struct.dm_writecache** %2, align 8
  %4 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %3, i32 0, i32 2
  %5 = call i32 @memset(i32* %4, i32 -1, i32 4)
  %6 = load i8*, i8** @LIST_POISON1, align 8
  %7 = load %struct.dm_writecache*, %struct.dm_writecache** %2, align 8
  %8 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i8* %6, i8** %9, align 8
  %10 = load i8*, i8** @LIST_POISON2, align 8
  %11 = load %struct.dm_writecache*, %struct.dm_writecache** %2, align 8
  %12 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i8* %10, i8** %13, align 8
  %14 = load i8*, i8** @LIST_POISON1, align 8
  %15 = load %struct.dm_writecache*, %struct.dm_writecache** %2, align 8
  %16 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store i8* %14, i8** %17, align 8
  %18 = load i8*, i8** @LIST_POISON2, align 8
  %19 = load %struct.dm_writecache*, %struct.dm_writecache** %2, align 8
  %20 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i8* %18, i8** %21, align 8
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
