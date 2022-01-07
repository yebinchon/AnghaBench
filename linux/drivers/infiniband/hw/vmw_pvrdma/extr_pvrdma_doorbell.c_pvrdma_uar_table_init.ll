; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_doorbell.c_pvrdma_uar_table_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_doorbell.c_pvrdma_uar_table_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvrdma_dev = type { %struct.TYPE_4__, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { %struct.pvrdma_id_table }
%struct.pvrdma_id_table = type { i32, i32, i8*, i8*, i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvrdma_uar_table_init(%struct.pvrdma_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pvrdma_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pvrdma_id_table*, align 8
  store %struct.pvrdma_dev* %0, %struct.pvrdma_dev** %3, align 8
  %7 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %3, align 8
  %8 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %7, i32 0, i32 1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr i8, i8* %13, i64 -1
  store i8* %14, i8** %5, align 8
  %15 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %3, align 8
  %16 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.pvrdma_id_table* %17, %struct.pvrdma_id_table** %6, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @is_power_of_2(i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %56

24:                                               ; preds = %1
  %25 = load %struct.pvrdma_id_table*, %struct.pvrdma_id_table** %6, align 8
  %26 = getelementptr inbounds %struct.pvrdma_id_table, %struct.pvrdma_id_table* %25, i32 0, i32 5
  store i64 0, i64* %26, align 8
  %27 = load %struct.pvrdma_id_table*, %struct.pvrdma_id_table** %6, align 8
  %28 = getelementptr inbounds %struct.pvrdma_id_table, %struct.pvrdma_id_table* %27, i32 0, i32 4
  store i64 0, i64* %28, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = load %struct.pvrdma_id_table*, %struct.pvrdma_id_table** %6, align 8
  %31 = getelementptr inbounds %struct.pvrdma_id_table, %struct.pvrdma_id_table* %30, i32 0, i32 3
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load %struct.pvrdma_id_table*, %struct.pvrdma_id_table** %6, align 8
  %34 = getelementptr inbounds %struct.pvrdma_id_table, %struct.pvrdma_id_table* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load %struct.pvrdma_id_table*, %struct.pvrdma_id_table** %6, align 8
  %36 = getelementptr inbounds %struct.pvrdma_id_table, %struct.pvrdma_id_table* %35, i32 0, i32 1
  %37 = call i32 @spin_lock_init(i32* %36)
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @BITS_TO_LONGS(i8* %38)
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i32 @kcalloc(i32 %39, i32 8, i32 %40)
  %42 = load %struct.pvrdma_id_table*, %struct.pvrdma_id_table** %6, align 8
  %43 = getelementptr inbounds %struct.pvrdma_id_table, %struct.pvrdma_id_table* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.pvrdma_id_table*, %struct.pvrdma_id_table** %6, align 8
  %45 = getelementptr inbounds %struct.pvrdma_id_table, %struct.pvrdma_id_table* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %24
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %56

51:                                               ; preds = %24
  %52 = load %struct.pvrdma_id_table*, %struct.pvrdma_id_table** %6, align 8
  %53 = getelementptr inbounds %struct.pvrdma_id_table, %struct.pvrdma_id_table* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @set_bit(i32 0, i32 %54)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %51, %48, %21
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @is_power_of_2(i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i8*) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
