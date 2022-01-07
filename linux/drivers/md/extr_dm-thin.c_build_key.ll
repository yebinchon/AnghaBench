; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_build_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_build_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_thin_device = type { i32 }
%struct.dm_cell_key = type { i32, i8*, i8*, i32 }

@VIRTUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_thin_device*, i32, i8*, i8*, %struct.dm_cell_key*)* @build_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_key(%struct.dm_thin_device* %0, i32 %1, i8* %2, i8* %3, %struct.dm_cell_key* %4) #0 {
  %6 = alloca %struct.dm_thin_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.dm_cell_key*, align 8
  store %struct.dm_thin_device* %0, %struct.dm_thin_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.dm_cell_key* %4, %struct.dm_cell_key** %10, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @VIRTUAL, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load %struct.dm_cell_key*, %struct.dm_cell_key** %10, align 8
  %16 = getelementptr inbounds %struct.dm_cell_key, %struct.dm_cell_key* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.dm_thin_device*, %struct.dm_thin_device** %6, align 8
  %18 = call i32 @dm_thin_dev_id(%struct.dm_thin_device* %17)
  %19 = load %struct.dm_cell_key*, %struct.dm_cell_key** %10, align 8
  %20 = getelementptr inbounds %struct.dm_cell_key, %struct.dm_cell_key* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load %struct.dm_cell_key*, %struct.dm_cell_key** %10, align 8
  %23 = getelementptr inbounds %struct.dm_cell_key, %struct.dm_cell_key* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load %struct.dm_cell_key*, %struct.dm_cell_key** %10, align 8
  %26 = getelementptr inbounds %struct.dm_cell_key, %struct.dm_cell_key* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  ret void
}

declare dso_local i32 @dm_thin_dev_id(%struct.dm_thin_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
