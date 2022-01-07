; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_dtr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_dtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.crypt_config* }
%struct.crypt_config = type { i32, %struct.crypt_config*, %struct.crypt_config*, %struct.crypt_config*, %struct.crypt_config*, i64, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 (%struct.crypt_config*)* }

@dm_crypt_clients_lock = common dso_local global i32 0, align 4
@dm_crypt_clients_n = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*)* @crypt_dtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypt_dtr(%struct.dm_target* %0) #0 {
  %2 = alloca %struct.dm_target*, align 8
  %3 = alloca %struct.crypt_config*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %2, align 8
  %4 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %5 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %4, i32 0, i32 0
  %6 = load %struct.crypt_config*, %struct.crypt_config** %5, align 8
  store %struct.crypt_config* %6, %struct.crypt_config** %3, align 8
  %7 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %8 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %7, i32 0, i32 0
  store %struct.crypt_config* null, %struct.crypt_config** %8, align 8
  %9 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %10 = icmp ne %struct.crypt_config* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %128

12:                                               ; preds = %1
  %13 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %14 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %13, i32 0, i32 14
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %19 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %18, i32 0, i32 14
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @kthread_stop(i64 %20)
  br label %22

22:                                               ; preds = %17, %12
  %23 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %24 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %23, i32 0, i32 13
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %29 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %28, i32 0, i32 13
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @destroy_workqueue(i64 %30)
  br label %32

32:                                               ; preds = %27, %22
  %33 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %34 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %33, i32 0, i32 12
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %39 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %38, i32 0, i32 12
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @destroy_workqueue(i64 %40)
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %44 = call i32 @crypt_free_tfms(%struct.crypt_config* %43)
  %45 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %46 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %45, i32 0, i32 11
  %47 = call i32 @bioset_exit(i32* %46)
  %48 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %49 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %48, i32 0, i32 10
  %50 = call i32 @mempool_exit(i32* %49)
  %51 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %52 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %51, i32 0, i32 9
  %53 = call i32 @mempool_exit(i32* %52)
  %54 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %55 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %54, i32 0, i32 8
  %56 = call i32 @mempool_exit(i32* %55)
  %57 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %58 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %57, i32 0, i32 7
  %59 = call i64 @percpu_counter_sum(i32* %58)
  %60 = icmp ne i64 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 @WARN_ON(i32 %61)
  %63 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %64 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %63, i32 0, i32 7
  %65 = call i32 @percpu_counter_destroy(i32* %64)
  %66 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %67 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %66, i32 0, i32 6
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = icmp ne %struct.TYPE_2__* %68, null
  br i1 %69, label %70, label %85

70:                                               ; preds = %42
  %71 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %72 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %71, i32 0, i32 6
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32 (%struct.crypt_config*)*, i32 (%struct.crypt_config*)** %74, align 8
  %76 = icmp ne i32 (%struct.crypt_config*)* %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %70
  %78 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %79 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %78, i32 0, i32 6
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32 (%struct.crypt_config*)*, i32 (%struct.crypt_config*)** %81, align 8
  %83 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %84 = call i32 %82(%struct.crypt_config* %83)
  br label %85

85:                                               ; preds = %77, %70, %42
  %86 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %87 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %86, i32 0, i32 5
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %92 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %93 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @dm_put_device(%struct.dm_target* %91, i64 %94)
  br label %96

96:                                               ; preds = %90, %85
  %97 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %98 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %97, i32 0, i32 4
  %99 = load %struct.crypt_config*, %struct.crypt_config** %98, align 8
  %100 = call i32 @kzfree(%struct.crypt_config* %99)
  %101 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %102 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %101, i32 0, i32 3
  %103 = load %struct.crypt_config*, %struct.crypt_config** %102, align 8
  %104 = call i32 @kzfree(%struct.crypt_config* %103)
  %105 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %106 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %105, i32 0, i32 2
  %107 = load %struct.crypt_config*, %struct.crypt_config** %106, align 8
  %108 = call i32 @kzfree(%struct.crypt_config* %107)
  %109 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %110 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %109, i32 0, i32 1
  %111 = load %struct.crypt_config*, %struct.crypt_config** %110, align 8
  %112 = call i32 @kzfree(%struct.crypt_config* %111)
  %113 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %114 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %113, i32 0, i32 0
  %115 = call i32 @mutex_destroy(i32* %114)
  %116 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %117 = call i32 @kzfree(%struct.crypt_config* %116)
  %118 = call i32 @spin_lock(i32* @dm_crypt_clients_lock)
  %119 = load i32, i32* @dm_crypt_clients_n, align 4
  %120 = icmp ne i32 %119, 0
  %121 = xor i1 %120, true
  %122 = zext i1 %121 to i32
  %123 = call i32 @WARN_ON(i32 %122)
  %124 = load i32, i32* @dm_crypt_clients_n, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* @dm_crypt_clients_n, align 4
  %126 = call i32 (...) @crypt_calculate_pages_per_client()
  %127 = call i32 @spin_unlock(i32* @dm_crypt_clients_lock)
  br label %128

128:                                              ; preds = %96, %11
  ret void
}

declare dso_local i32 @kthread_stop(i64) #1

declare dso_local i32 @destroy_workqueue(i64) #1

declare dso_local i32 @crypt_free_tfms(%struct.crypt_config*) #1

declare dso_local i32 @bioset_exit(i32*) #1

declare dso_local i32 @mempool_exit(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @percpu_counter_sum(i32*) #1

declare dso_local i32 @percpu_counter_destroy(i32*) #1

declare dso_local i32 @dm_put_device(%struct.dm_target*, i64) #1

declare dso_local i32 @kzfree(%struct.crypt_config*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @crypt_calculate_pages_per_client(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
