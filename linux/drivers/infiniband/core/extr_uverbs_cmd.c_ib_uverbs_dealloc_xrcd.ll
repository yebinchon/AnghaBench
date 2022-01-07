; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_ib_uverbs_dealloc_xrcd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_ib_uverbs_dealloc_xrcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_uobject = type { i32 }
%struct.ib_xrcd = type { i32, %struct.inode* }
%struct.inode = type { i32 }
%struct.uverbs_attr_bundle = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ib_uverbs_device* }
%struct.ib_uverbs_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_uverbs_dealloc_xrcd(%struct.ib_uobject* %0, %struct.ib_xrcd* %1, i32 %2, %struct.uverbs_attr_bundle* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_uobject*, align 8
  %7 = alloca %struct.ib_xrcd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.uverbs_attr_bundle*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ib_uverbs_device*, align 8
  store %struct.ib_uobject* %0, %struct.ib_uobject** %6, align 8
  store %struct.ib_xrcd* %1, %struct.ib_xrcd** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.uverbs_attr_bundle* %3, %struct.uverbs_attr_bundle** %9, align 8
  %13 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %9, align 8
  %14 = getelementptr inbounds %struct.uverbs_attr_bundle, %struct.uverbs_attr_bundle* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %16, align 8
  store %struct.ib_uverbs_device* %17, %struct.ib_uverbs_device** %12, align 8
  %18 = load %struct.ib_xrcd*, %struct.ib_xrcd** %7, align 8
  %19 = getelementptr inbounds %struct.ib_xrcd, %struct.ib_xrcd* %18, i32 0, i32 1
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %10, align 8
  %21 = load %struct.inode*, %struct.inode** %10, align 8
  %22 = icmp ne %struct.inode* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load %struct.ib_xrcd*, %struct.ib_xrcd** %7, align 8
  %25 = getelementptr inbounds %struct.ib_xrcd, %struct.ib_xrcd* %24, i32 0, i32 0
  %26 = call i32 @atomic_dec_and_test(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %53

29:                                               ; preds = %23, %4
  %30 = load %struct.ib_xrcd*, %struct.ib_xrcd** %7, align 8
  %31 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %9, align 8
  %32 = getelementptr inbounds %struct.uverbs_attr_bundle, %struct.uverbs_attr_bundle* %31, i32 0, i32 0
  %33 = call i32 @ib_dealloc_xrcd(%struct.ib_xrcd* %30, i32* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.ib_uobject*, %struct.ib_uobject** %6, align 8
  %37 = call i64 @ib_is_destroy_retryable(i32 %34, i32 %35, %struct.ib_uobject* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %29
  %40 = load %struct.ib_xrcd*, %struct.ib_xrcd** %7, align 8
  %41 = getelementptr inbounds %struct.ib_xrcd, %struct.ib_xrcd* %40, i32 0, i32 0
  %42 = call i32 @atomic_inc(i32* %41)
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %5, align 4
  br label %53

44:                                               ; preds = %29
  %45 = load %struct.inode*, %struct.inode** %10, align 8
  %46 = icmp ne %struct.inode* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %12, align 8
  %49 = load %struct.inode*, %struct.inode** %10, align 8
  %50 = call i32 @xrcd_table_delete(%struct.ib_uverbs_device* %48, %struct.inode* %49)
  br label %51

51:                                               ; preds = %47, %44
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %51, %39, %28
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @ib_dealloc_xrcd(%struct.ib_xrcd*, i32*) #1

declare dso_local i64 @ib_is_destroy_retryable(i32, i32, %struct.ib_uobject*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @xrcd_table_delete(%struct.ib_uverbs_device*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
