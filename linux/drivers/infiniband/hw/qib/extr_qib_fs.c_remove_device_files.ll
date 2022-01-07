; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_fs.c_remove_device_files.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_fs.c_remove_device_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.qib_devdata = type { i32, i32, i32 }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Lookup of %s failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"counters\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"counter_names\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"portcounter_names\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"port%dcounters\00", align 1
@QIB_HAS_QSFP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"qsfp%d\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"flash\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.qib_devdata*)* @remove_device_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_device_files(%struct.super_block* %0, %struct.qib_devdata* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.qib_devdata*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca [10 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [24 x i8], align 16
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.qib_devdata* %1, %struct.qib_devdata** %4, align 8
  %11 = load %struct.super_block*, %struct.super_block** %3, align 8
  %12 = getelementptr inbounds %struct.super_block, %struct.super_block* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.dentry* @dget(i32 %13)
  store %struct.dentry* %14, %struct.dentry** %6, align 8
  %15 = load %struct.dentry*, %struct.dentry** %6, align 8
  %16 = call i32 @d_inode(%struct.dentry* %15)
  %17 = call i32 @inode_lock(i32 %16)
  %18 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %19 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %20 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @snprintf(i8* %18, i32 10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %24 = load %struct.dentry*, %struct.dentry** %6, align 8
  %25 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %26 = call i32 @strlen(i8* %25)
  %27 = call %struct.dentry* @lookup_one_len(i8* %23, %struct.dentry* %24, i32 %26)
  store %struct.dentry* %27, %struct.dentry** %5, align 8
  %28 = load %struct.dentry*, %struct.dentry** %5, align 8
  %29 = call i64 @IS_ERR(%struct.dentry* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %2
  %32 = load %struct.dentry*, %struct.dentry** %5, align 8
  %33 = call i32 @PTR_ERR(%struct.dentry* %32)
  store i32 %33, i32* %8, align 4
  %34 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  br label %92

36:                                               ; preds = %2
  %37 = load %struct.dentry*, %struct.dentry** %5, align 8
  %38 = call i32 @d_inode(%struct.dentry* %37)
  %39 = call i32 @inode_lock(i32 %38)
  %40 = load %struct.dentry*, %struct.dentry** %5, align 8
  %41 = call i32 @remove_file(%struct.dentry* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %42 = load %struct.dentry*, %struct.dentry** %5, align 8
  %43 = call i32 @remove_file(%struct.dentry* %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %44 = load %struct.dentry*, %struct.dentry** %5, align 8
  %45 = call i32 @remove_file(%struct.dentry* %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %75, %36
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %49 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %78

52:                                               ; preds = %46
  %53 = getelementptr inbounds [24 x i8], [24 x i8]* %10, i64 0, i64 0
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  %56 = call i32 @sprintf(i8* %53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %55)
  %57 = load %struct.dentry*, %struct.dentry** %5, align 8
  %58 = getelementptr inbounds [24 x i8], [24 x i8]* %10, i64 0, i64 0
  %59 = call i32 @remove_file(%struct.dentry* %57, i8* %58)
  %60 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %61 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @QIB_HAS_QSFP, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %52
  %67 = getelementptr inbounds [24 x i8], [24 x i8]* %10, i64 0, i64 0
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  %70 = call i32 @sprintf(i8* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %69)
  %71 = load %struct.dentry*, %struct.dentry** %5, align 8
  %72 = getelementptr inbounds [24 x i8], [24 x i8]* %10, i64 0, i64 0
  %73 = call i32 @remove_file(%struct.dentry* %71, i8* %72)
  br label %74

74:                                               ; preds = %66, %52
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %46

78:                                               ; preds = %46
  %79 = load %struct.dentry*, %struct.dentry** %5, align 8
  %80 = call i32 @remove_file(%struct.dentry* %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %81 = load %struct.dentry*, %struct.dentry** %5, align 8
  %82 = call i32 @d_inode(%struct.dentry* %81)
  %83 = call i32 @inode_unlock(i32 %82)
  %84 = load %struct.dentry*, %struct.dentry** %6, align 8
  %85 = call i32 @d_inode(%struct.dentry* %84)
  %86 = load %struct.dentry*, %struct.dentry** %5, align 8
  %87 = call i32 @simple_rmdir(i32 %85, %struct.dentry* %86)
  store i32 %87, i32* %8, align 4
  %88 = load %struct.dentry*, %struct.dentry** %5, align 8
  %89 = call i32 @d_drop(%struct.dentry* %88)
  %90 = load %struct.dentry*, %struct.dentry** %5, align 8
  %91 = call i32 @dput(%struct.dentry* %90)
  br label %92

92:                                               ; preds = %78, %31
  %93 = load %struct.dentry*, %struct.dentry** %6, align 8
  %94 = call i32 @d_inode(%struct.dentry* %93)
  %95 = call i32 @inode_unlock(i32 %94)
  %96 = load %struct.dentry*, %struct.dentry** %6, align 8
  %97 = call i32 @dput(%struct.dentry* %96)
  %98 = load i32, i32* %8, align 4
  ret i32 %98
}

declare dso_local %struct.dentry* @dget(i32) #1

declare dso_local i32 @inode_lock(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.dentry* @lookup_one_len(i8*, %struct.dentry*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i32 @remove_file(%struct.dentry*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @inode_unlock(i32) #1

declare dso_local i32 @simple_rmdir(i32, %struct.dentry*) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
