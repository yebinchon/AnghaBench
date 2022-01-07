; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_thunderx_edac.c_thunderx_create_debugfs_nodes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_thunderx_edac.c_thunderx_create_debugfs_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.debugfs_entry = type { i32, i32, i32 }

@CONFIG_EDAC_DEBUG = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.debugfs_entry**, i8*, i64)* @thunderx_create_debugfs_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thunderx_create_debugfs_nodes(%struct.dentry* %0, %struct.debugfs_entry** %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.debugfs_entry**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store %struct.debugfs_entry** %1, %struct.debugfs_entry*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i32, i32* @CONFIG_EDAC_DEBUG, align 4
  %13 = call i32 @IS_ENABLED(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %61

16:                                               ; preds = %4
  %17 = load %struct.dentry*, %struct.dentry** %6, align 8
  %18 = icmp ne %struct.dentry* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %61

22:                                               ; preds = %16
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %56, %22
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %9, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %59

28:                                               ; preds = %23
  %29 = load %struct.debugfs_entry**, %struct.debugfs_entry*** %7, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.debugfs_entry*, %struct.debugfs_entry** %29, i64 %31
  %33 = load %struct.debugfs_entry*, %struct.debugfs_entry** %32, align 8
  %34 = getelementptr inbounds %struct.debugfs_entry, %struct.debugfs_entry* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.debugfs_entry**, %struct.debugfs_entry*** %7, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.debugfs_entry*, %struct.debugfs_entry** %36, i64 %38
  %40 = load %struct.debugfs_entry*, %struct.debugfs_entry** %39, align 8
  %41 = getelementptr inbounds %struct.debugfs_entry, %struct.debugfs_entry* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.dentry*, %struct.dentry** %6, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load %struct.debugfs_entry**, %struct.debugfs_entry*** %7, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.debugfs_entry*, %struct.debugfs_entry** %45, i64 %47
  %49 = load %struct.debugfs_entry*, %struct.debugfs_entry** %48, align 8
  %50 = getelementptr inbounds %struct.debugfs_entry, %struct.debugfs_entry* %49, i32 0, i32 0
  %51 = call %struct.dentry* @edac_debugfs_create_file(i32 %35, i32 %42, %struct.dentry* %43, i8* %44, i32* %50)
  store %struct.dentry* %51, %struct.dentry** %11, align 8
  %52 = load %struct.dentry*, %struct.dentry** %11, align 8
  %53 = icmp ne %struct.dentry* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %28
  br label %59

55:                                               ; preds = %28
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %23

59:                                               ; preds = %54, %23
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %59, %19, %15
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local %struct.dentry* @edac_debugfs_create_file(i32, i32, %struct.dentry*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
