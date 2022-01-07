; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_memfree.c_mthca_init_user_db_tab.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_memfree.c_mthca_init_user_db_tab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_user_db_table = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i64, i64 }
%struct.mthca_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@MTHCA_ICM_PAGE_SIZE = common dso_local global i32 0, align 4
@page = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mthca_user_db_table* @mthca_init_user_db_tab(%struct.mthca_dev* %0) #0 {
  %2 = alloca %struct.mthca_user_db_table*, align 8
  %3 = alloca %struct.mthca_dev*, align 8
  %4 = alloca %struct.mthca_user_db_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %3, align 8
  %7 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %8 = call i32 @mthca_is_memfree(%struct.mthca_dev* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.mthca_user_db_table* null, %struct.mthca_user_db_table** %2, align 8
  br label %66

11:                                               ; preds = %1
  %12 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %13 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MTHCA_ICM_PAGE_SIZE, align 4
  %17 = sdiv i32 %15, %16
  store i32 %17, i32* %5, align 4
  %18 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %4, align 8
  %19 = load i32, i32* @page, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @struct_size(%struct.mthca_user_db_table* %18, i32 %19, i32 %20)
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.mthca_user_db_table* @kmalloc(i32 %21, i32 %22)
  store %struct.mthca_user_db_table* %23, %struct.mthca_user_db_table** %4, align 8
  %24 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %4, align 8
  %25 = icmp ne %struct.mthca_user_db_table* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %11
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.mthca_user_db_table* @ERR_PTR(i32 %28)
  store %struct.mthca_user_db_table* %29, %struct.mthca_user_db_table** %2, align 8
  br label %66

30:                                               ; preds = %11
  %31 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %4, align 8
  %32 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %31, i32 0, i32 1
  %33 = call i32 @mutex_init(i32* %32)
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %61, %30
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %64

38:                                               ; preds = %34
  %39 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %4, align 8
  %40 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %4, align 8
  %47 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %4, align 8
  %54 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = call i32 @sg_init_table(i32* %59, i32 1)
  br label %61

61:                                               ; preds = %38
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %34

64:                                               ; preds = %34
  %65 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %4, align 8
  store %struct.mthca_user_db_table* %65, %struct.mthca_user_db_table** %2, align 8
  br label %66

66:                                               ; preds = %64, %26, %10
  %67 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %2, align 8
  ret %struct.mthca_user_db_table* %67
}

declare dso_local i32 @mthca_is_memfree(%struct.mthca_dev*) #1

declare dso_local %struct.mthca_user_db_table* @kmalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.mthca_user_db_table*, i32, i32) #1

declare dso_local %struct.mthca_user_db_table* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @sg_init_table(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
