; ModuleID = '/home/carl/AnghaBench/linux/drivers/dax/extr_device.c_dax_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dax/extr_device.c_dax_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, %struct.inode* }
%struct.file = type { %struct.dev_dax*, %struct.TYPE_2__*, i32 }
%struct.dev_dax = type { i32 }
%struct.dax_device = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"trace\0A\00", align 1
@dev_dax_aops = common dso_local global i32 0, align 4
@S_DAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @dax_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dax_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.dax_device*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dev_dax*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = call %struct.dax_device* @inode_dax(%struct.inode* %8)
  store %struct.dax_device* %9, %struct.dax_device** %5, align 8
  %10 = load %struct.dax_device*, %struct.dax_device** %5, align 8
  %11 = call %struct.inode* @dax_inode(%struct.dax_device* %10)
  store %struct.inode* %11, %struct.inode** %6, align 8
  %12 = load %struct.dax_device*, %struct.dax_device** %5, align 8
  %13 = call %struct.dev_dax* @dax_get_private(%struct.dax_device* %12)
  store %struct.dev_dax* %13, %struct.dev_dax** %7, align 8
  %14 = load %struct.dev_dax*, %struct.dev_dax** %7, align 8
  %15 = getelementptr inbounds %struct.dev_dax, %struct.dev_dax* %14, i32 0, i32 0
  %16 = call i32 @dev_dbg(i32* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 1
  store %struct.TYPE_2__* %19, %struct.TYPE_2__** %21, align 8
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = load %struct.inode*, %struct.inode** %3, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store %struct.inode* %22, %struct.inode** %26, align 8
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32* @dev_dax_aops, i32** %30, align 8
  %31 = load %struct.inode*, %struct.inode** %3, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load %struct.file*, %struct.file** %4, align 8
  %35 = getelementptr inbounds %struct.file, %struct.file* %34, i32 0, i32 1
  store %struct.TYPE_2__* %33, %struct.TYPE_2__** %35, align 8
  %36 = load %struct.file*, %struct.file** %4, align 8
  %37 = getelementptr inbounds %struct.file, %struct.file* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = call i32 @filemap_sample_wb_err(%struct.TYPE_2__* %38)
  %40 = load %struct.file*, %struct.file** %4, align 8
  %41 = getelementptr inbounds %struct.file, %struct.file* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.dev_dax*, %struct.dev_dax** %7, align 8
  %43 = load %struct.file*, %struct.file** %4, align 8
  %44 = getelementptr inbounds %struct.file, %struct.file* %43, i32 0, i32 0
  store %struct.dev_dax* %42, %struct.dev_dax** %44, align 8
  %45 = load i32, i32* @S_DAX, align 4
  %46 = load %struct.inode*, %struct.inode** %3, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  ret i32 0
}

declare dso_local %struct.dax_device* @inode_dax(%struct.inode*) #1

declare dso_local %struct.inode* @dax_inode(%struct.dax_device*) #1

declare dso_local %struct.dev_dax* @dax_get_private(%struct.dax_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @filemap_sample_wb_err(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
