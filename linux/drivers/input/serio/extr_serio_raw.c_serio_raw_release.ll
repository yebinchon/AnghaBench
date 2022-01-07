; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_serio_raw.c_serio_raw_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_serio_raw.c_serio_raw_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.serio_raw_client* }
%struct.serio_raw_client = type { i32, %struct.serio_raw* }
%struct.serio_raw = type { i32, i32 }

@serio_raw_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @serio_raw_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serio_raw_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.serio_raw_client*, align 8
  %6 = alloca %struct.serio_raw*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.serio_raw_client*, %struct.serio_raw_client** %8, align 8
  store %struct.serio_raw_client* %9, %struct.serio_raw_client** %5, align 8
  %10 = load %struct.serio_raw_client*, %struct.serio_raw_client** %5, align 8
  %11 = getelementptr inbounds %struct.serio_raw_client, %struct.serio_raw_client* %10, i32 0, i32 1
  %12 = load %struct.serio_raw*, %struct.serio_raw** %11, align 8
  store %struct.serio_raw* %12, %struct.serio_raw** %6, align 8
  %13 = load %struct.serio_raw*, %struct.serio_raw** %6, align 8
  %14 = getelementptr inbounds %struct.serio_raw, %struct.serio_raw* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @serio_pause_rx(i32 %15)
  %17 = load %struct.serio_raw_client*, %struct.serio_raw_client** %5, align 8
  %18 = getelementptr inbounds %struct.serio_raw_client, %struct.serio_raw_client* %17, i32 0, i32 0
  %19 = call i32 @list_del(i32* %18)
  %20 = load %struct.serio_raw*, %struct.serio_raw** %6, align 8
  %21 = getelementptr inbounds %struct.serio_raw, %struct.serio_raw* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @serio_continue_rx(i32 %22)
  %24 = load %struct.serio_raw_client*, %struct.serio_raw_client** %5, align 8
  %25 = call i32 @kfree(%struct.serio_raw_client* %24)
  %26 = load %struct.serio_raw*, %struct.serio_raw** %6, align 8
  %27 = getelementptr inbounds %struct.serio_raw, %struct.serio_raw* %26, i32 0, i32 0
  %28 = load i32, i32* @serio_raw_free, align 4
  %29 = call i32 @kref_put(i32* %27, i32 %28)
  ret i32 0
}

declare dso_local i32 @serio_pause_rx(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @serio_continue_rx(i32) #1

declare dso_local i32 @kfree(%struct.serio_raw_client*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
