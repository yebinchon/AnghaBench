; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c___bind_mempools.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c___bind_mempools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { i32, i32 }
%struct.dm_table = type { i32 }
%struct.dm_md_mempools = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mapped_device*, %struct.dm_table*)* @__bind_mempools to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bind_mempools(%struct.mapped_device* %0, %struct.dm_table* %1) #0 {
  %3 = alloca %struct.mapped_device*, align 8
  %4 = alloca %struct.dm_table*, align 8
  %5 = alloca %struct.dm_md_mempools*, align 8
  %6 = alloca i32, align 4
  store %struct.mapped_device* %0, %struct.mapped_device** %3, align 8
  store %struct.dm_table* %1, %struct.dm_table** %4, align 8
  %7 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %8 = call %struct.dm_md_mempools* @dm_table_get_md_mempools(%struct.dm_table* %7)
  store %struct.dm_md_mempools* %8, %struct.dm_md_mempools** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %10 = call i64 @dm_table_bio_based(%struct.dm_table* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %14 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %13, i32 0, i32 0
  %15 = call i32 @bioset_exit(i32* %14)
  %16 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %17 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %16, i32 0, i32 1
  %18 = call i32 @bioset_exit(i32* %17)
  br label %26

19:                                               ; preds = %2
  %20 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %21 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %20, i32 0, i32 0
  %22 = call i64 @bioset_initialized(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %64

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %12
  %27 = load %struct.dm_md_mempools*, %struct.dm_md_mempools** %5, align 8
  %28 = icmp ne %struct.dm_md_mempools* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %31 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %30, i32 0, i32 0
  %32 = call i64 @bioset_initialized(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %36 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %35, i32 0, i32 1
  %37 = call i64 @bioset_initialized(i32* %36)
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %34, %29, %26
  %40 = phi i1 [ true, %29 ], [ true, %26 ], [ %38, %34 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @BUG_ON(i32 %41)
  %43 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %44 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %43, i32 0, i32 0
  %45 = load %struct.dm_md_mempools*, %struct.dm_md_mempools** %5, align 8
  %46 = getelementptr inbounds %struct.dm_md_mempools, %struct.dm_md_mempools* %45, i32 0, i32 1
  %47 = call i32 @bioset_init_from_src(i32* %44, i32* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  br label %64

51:                                               ; preds = %39
  %52 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %53 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %52, i32 0, i32 1
  %54 = load %struct.dm_md_mempools*, %struct.dm_md_mempools** %5, align 8
  %55 = getelementptr inbounds %struct.dm_md_mempools, %struct.dm_md_mempools* %54, i32 0, i32 0
  %56 = call i32 @bioset_init_from_src(i32* %53, i32* %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %61 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %60, i32 0, i32 0
  %62 = call i32 @bioset_exit(i32* %61)
  br label %63

63:                                               ; preds = %59, %51
  br label %64

64:                                               ; preds = %63, %50, %24
  %65 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %66 = call i32 @dm_table_free_md_mempools(%struct.dm_table* %65)
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local %struct.dm_md_mempools* @dm_table_get_md_mempools(%struct.dm_table*) #1

declare dso_local i64 @dm_table_bio_based(%struct.dm_table*) #1

declare dso_local i32 @bioset_exit(i32*) #1

declare dso_local i64 @bioset_initialized(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @bioset_init_from_src(i32*, i32*) #1

declare dso_local i32 @dm_table_free_md_mempools(%struct.dm_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
