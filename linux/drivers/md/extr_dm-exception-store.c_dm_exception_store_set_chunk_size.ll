; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-exception-store.c_dm_exception_store_set_chunk_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-exception-store.c_dm_exception_store_set_chunk_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_exception_store = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Chunk size is not a power of 2\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Chunk size is not a multiple of device blocksize\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@SECTOR_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Chunk size is too high\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_exception_store_set_chunk_size(%struct.dm_exception_store* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_exception_store*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  store %struct.dm_exception_store* %0, %struct.dm_exception_store** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = call i32 @is_power_of_2(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %65

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.dm_exception_store*, %struct.dm_exception_store** %5, align 8
  %18 = getelementptr inbounds %struct.dm_exception_store, %struct.dm_exception_store* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_4__* @dm_snap_cow(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @bdev_logical_block_size(i32 %22)
  %24 = ashr i32 %23, 9
  %25 = urem i32 %16, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %15
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.dm_exception_store*, %struct.dm_exception_store** %5, align 8
  %30 = getelementptr inbounds %struct.dm_exception_store, %struct.dm_exception_store* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.TYPE_3__* @dm_snap_origin(i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @bdev_logical_block_size(i32 %34)
  %36 = ashr i32 %35, 9
  %37 = urem i32 %28, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %27, %15
  %40 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8** %40, align 8
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %65

43:                                               ; preds = %27
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @INT_MAX, align 4
  %46 = load i32, i32* @SECTOR_SHIFT, align 4
  %47 = lshr i32 %45, %46
  %48 = icmp ugt i32 %44, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8** %50, align 8
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %65

53:                                               ; preds = %43
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.dm_exception_store*, %struct.dm_exception_store** %5, align 8
  %56 = getelementptr inbounds %struct.dm_exception_store, %struct.dm_exception_store* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %6, align 4
  %58 = sub i32 %57, 1
  %59 = load %struct.dm_exception_store*, %struct.dm_exception_store** %5, align 8
  %60 = getelementptr inbounds %struct.dm_exception_store, %struct.dm_exception_store* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @__ffs(i32 %61)
  %63 = load %struct.dm_exception_store*, %struct.dm_exception_store** %5, align 8
  %64 = getelementptr inbounds %struct.dm_exception_store, %struct.dm_exception_store* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %53, %49, %39, %11
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @bdev_logical_block_size(i32) #1

declare dso_local %struct.TYPE_4__* @dm_snap_cow(i32) #1

declare dso_local %struct.TYPE_3__* @dm_snap_origin(i32) #1

declare dso_local i32 @__ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
