; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-metadata.c_dirty_map_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-metadata.c_dirty_map_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_clone_metadata = type { %struct.TYPE_2__*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8*, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to allocate dirty bitmap\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_clone_metadata*)* @dirty_map_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dirty_map_init(%struct.dm_clone_metadata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_clone_metadata*, align 8
  store %struct.dm_clone_metadata* %0, %struct.dm_clone_metadata** %3, align 8
  %4 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %5 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %10 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @bitmap_size(i32 %11)
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kvzalloc(i32 %12, i32 %13)
  %15 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %16 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i8* %14, i8** %19, align 8
  %20 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %21 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %1
  %28 = call i32 @DMERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %73

31:                                               ; preds = %1
  %32 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %33 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %38 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @bitmap_size(i32 %39)
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i8* @kvzalloc(i32 %40, i32 %41)
  %43 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %44 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i8* %42, i8** %47, align 8
  %48 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %49 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %66, label %55

55:                                               ; preds = %31
  %56 = call i32 @DMERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %57 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %58 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @kvfree(i8* %62)
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %73

66:                                               ; preds = %31
  %67 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %68 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 0
  %71 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %72 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %71, i32 0, i32 1
  store %struct.TYPE_2__* %70, %struct.TYPE_2__** %72, align 8
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %66, %55, %27
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i8* @kvzalloc(i32, i32) #1

declare dso_local i32 @bitmap_size(i32) #1

declare dso_local i32 @DMERR(i8*) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
