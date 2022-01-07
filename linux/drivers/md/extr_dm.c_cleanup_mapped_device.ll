; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_cleanup_mapped_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_cleanup_mapped_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { i32, i32, i32, i32*, i32, i64, %struct.TYPE_3__*, i32*, i32, i32, i64 }
%struct.TYPE_3__ = type { i32* }

@_minor_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mapped_device*)* @cleanup_mapped_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_mapped_device(%struct.mapped_device* %0) #0 {
  %2 = alloca %struct.mapped_device*, align 8
  store %struct.mapped_device* %0, %struct.mapped_device** %2, align 8
  %3 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %4 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %3, i32 0, i32 10
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %9 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %8, i32 0, i32 10
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @destroy_workqueue(i64 %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %14 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %13, i32 0, i32 9
  %15 = call i32 @bioset_exit(i32* %14)
  %16 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %17 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %16, i32 0, i32 8
  %18 = call i32 @bioset_exit(i32* %17)
  %19 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %20 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %19, i32 0, i32 7
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %12
  %24 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %25 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %24, i32 0, i32 7
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @kill_dax(i32* %26)
  %28 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %29 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %28, i32 0, i32 7
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @put_dax(i32* %30)
  %32 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %33 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %32, i32 0, i32 7
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %23, %12
  %35 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %36 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %35, i32 0, i32 6
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = icmp ne %struct.TYPE_3__* %37, null
  br i1 %38, label %39, label %54

39:                                               ; preds = %34
  %40 = call i32 @spin_lock(i32* @_minor_lock)
  %41 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %42 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %41, i32 0, i32 6
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32* null, i32** %44, align 8
  %45 = call i32 @spin_unlock(i32* @_minor_lock)
  %46 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %47 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %46, i32 0, i32 6
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = call i32 @del_gendisk(%struct.TYPE_3__* %48)
  %50 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %51 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %50, i32 0, i32 6
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = call i32 @put_disk(%struct.TYPE_3__* %52)
  br label %54

54:                                               ; preds = %39, %34
  %55 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %56 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %61 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @blk_cleanup_queue(i64 %62)
  br label %64

64:                                               ; preds = %59, %54
  %65 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %66 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %65, i32 0, i32 4
  %67 = call i32 @cleanup_srcu_struct(i32* %66)
  %68 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %69 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %64
  %73 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %74 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @bdput(i32* %75)
  %77 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %78 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %77, i32 0, i32 3
  store i32* null, i32** %78, align 8
  br label %79

79:                                               ; preds = %72, %64
  %80 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %81 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %80, i32 0, i32 2
  %82 = call i32 @mutex_destroy(i32* %81)
  %83 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %84 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %83, i32 0, i32 1
  %85 = call i32 @mutex_destroy(i32* %84)
  %86 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %87 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %86, i32 0, i32 0
  %88 = call i32 @mutex_destroy(i32* %87)
  %89 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %90 = call i32 @dm_mq_cleanup_mapped_device(%struct.mapped_device* %89)
  ret void
}

declare dso_local i32 @destroy_workqueue(i64) #1

declare dso_local i32 @bioset_exit(i32*) #1

declare dso_local i32 @kill_dax(i32*) #1

declare dso_local i32 @put_dax(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @del_gendisk(%struct.TYPE_3__*) #1

declare dso_local i32 @put_disk(%struct.TYPE_3__*) #1

declare dso_local i32 @blk_cleanup_queue(i64) #1

declare dso_local i32 @cleanup_srcu_struct(i32*) #1

declare dso_local i32 @bdput(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @dm_mq_cleanup_mapped_device(%struct.mapped_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
