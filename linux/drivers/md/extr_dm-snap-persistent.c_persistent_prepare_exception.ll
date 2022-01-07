; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap-persistent.c_persistent_prepare_exception.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap-persistent.c_persistent_prepare_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_exception_store = type { i32, i32 }
%struct.dm_exception = type { i32 }
%struct.pstore = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_exception_store*, %struct.dm_exception*)* @persistent_prepare_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @persistent_prepare_exception(%struct.dm_exception_store* %0, %struct.dm_exception* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_exception_store*, align 8
  %5 = alloca %struct.dm_exception*, align 8
  %6 = alloca %struct.pstore*, align 8
  %7 = alloca i32, align 4
  store %struct.dm_exception_store* %0, %struct.dm_exception_store** %4, align 8
  store %struct.dm_exception* %1, %struct.dm_exception** %5, align 8
  %8 = load %struct.dm_exception_store*, %struct.dm_exception_store** %4, align 8
  %9 = call %struct.pstore* @get_info(%struct.dm_exception_store* %8)
  store %struct.pstore* %9, %struct.pstore** %6, align 8
  %10 = load %struct.dm_exception_store*, %struct.dm_exception_store** %4, align 8
  %11 = getelementptr inbounds %struct.dm_exception_store, %struct.dm_exception_store* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_2__* @dm_snap_cow(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @get_dev_size(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.pstore*, %struct.pstore** %6, align 8
  %19 = getelementptr inbounds %struct.pstore, %struct.pstore* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  %22 = load %struct.dm_exception_store*, %struct.dm_exception_store** %4, align 8
  %23 = getelementptr inbounds %struct.dm_exception_store, %struct.dm_exception_store* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %21, %24
  %26 = icmp slt i32 %17, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @ENOSPC, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %45

30:                                               ; preds = %2
  %31 = load %struct.pstore*, %struct.pstore** %6, align 8
  %32 = getelementptr inbounds %struct.pstore, %struct.pstore* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.dm_exception*, %struct.dm_exception** %5, align 8
  %35 = getelementptr inbounds %struct.dm_exception, %struct.dm_exception* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.pstore*, %struct.pstore** %6, align 8
  %37 = getelementptr inbounds %struct.pstore, %struct.pstore* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load %struct.pstore*, %struct.pstore** %6, align 8
  %41 = call i32 @skip_metadata(%struct.pstore* %40)
  %42 = load %struct.pstore*, %struct.pstore** %6, align 8
  %43 = getelementptr inbounds %struct.pstore, %struct.pstore* %42, i32 0, i32 1
  %44 = call i32 @atomic_inc(i32* %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %30, %27
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.pstore* @get_info(%struct.dm_exception_store*) #1

declare dso_local i32 @get_dev_size(i32) #1

declare dso_local %struct.TYPE_2__* @dm_snap_cow(i32) #1

declare dso_local i32 @skip_metadata(%struct.pstore*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
