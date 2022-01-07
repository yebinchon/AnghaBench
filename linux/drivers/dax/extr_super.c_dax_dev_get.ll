; ModuleID = '/home/carl/AnghaBench/linux/drivers/dax/extr_super.c_dax_dev_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dax/extr_super.c_dax_dev_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dax_device = type { i32, i32 }
%struct.inode = type { i32, i32, i32, i32, i32* }

@dax_superblock = common dso_local global i32 0, align 4
@DAXFS_MAGIC = common dso_local global i64 0, align 8
@dax_test = common dso_local global i32 0, align 4
@dax_set = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4
@DAXDEV_ALIVE = common dso_local global i32 0, align 4
@S_IFCHR = common dso_local global i32 0, align 4
@S_DAX = common dso_local global i32 0, align 4
@GFP_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dax_device* (i64)* @dax_dev_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dax_device* @dax_dev_get(i64 %0) #0 {
  %2 = alloca %struct.dax_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.dax_device*, align 8
  %5 = alloca %struct.inode*, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i32, i32* @dax_superblock, align 4
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @DAXFS_MAGIC, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @hash_32(i64 %9, i32 31)
  %11 = load i32, i32* @dax_test, align 4
  %12 = load i32, i32* @dax_set, align 4
  %13 = call %struct.inode* @iget5_locked(i32 %6, i32 %10, i32 %11, i32 %12, i64* %3)
  store %struct.inode* %13, %struct.inode** %5, align 8
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = icmp ne %struct.inode* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store %struct.dax_device* null, %struct.dax_device** %2, align 8
  br label %49

17:                                               ; preds = %1
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = call %struct.dax_device* @to_dax_dev(%struct.inode* %18)
  store %struct.dax_device* %19, %struct.dax_device** %4, align 8
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @I_NEW, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %17
  %27 = load i32, i32* @DAXDEV_ALIVE, align 4
  %28 = load %struct.dax_device*, %struct.dax_device** %4, align 8
  %29 = getelementptr inbounds %struct.dax_device, %struct.dax_device* %28, i32 0, i32 1
  %30 = call i32 @set_bit(i32 %27, i32* %29)
  %31 = load %struct.dax_device*, %struct.dax_device** %4, align 8
  %32 = getelementptr inbounds %struct.dax_device, %struct.dax_device* %31, i32 0, i32 0
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 4
  store i32* %32, i32** %34, align 8
  %35 = load i32, i32* @S_IFCHR, align 4
  %36 = load %struct.inode*, %struct.inode** %5, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @S_DAX, align 4
  %39 = load %struct.inode*, %struct.inode** %5, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.inode*, %struct.inode** %5, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 1
  %43 = load i32, i32* @GFP_USER, align 4
  %44 = call i32 @mapping_set_gfp_mask(i32* %42, i32 %43)
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = call i32 @unlock_new_inode(%struct.inode* %45)
  br label %47

47:                                               ; preds = %26, %17
  %48 = load %struct.dax_device*, %struct.dax_device** %4, align 8
  store %struct.dax_device* %48, %struct.dax_device** %2, align 8
  br label %49

49:                                               ; preds = %47, %16
  %50 = load %struct.dax_device*, %struct.dax_device** %2, align 8
  ret %struct.dax_device* %50
}

declare dso_local %struct.inode* @iget5_locked(i32, i32, i32, i32, i64*) #1

declare dso_local i32 @hash_32(i64, i32) #1

declare dso_local %struct.dax_device* @to_dax_dev(%struct.inode*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mapping_set_gfp_mask(i32*, i32) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
