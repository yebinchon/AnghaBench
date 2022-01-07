; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-writecache.c_writecache_dtr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-writecache.c_writecache_dtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.dm_writecache* }
%struct.dm_writecache = type { i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*)* @writecache_dtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writecache_dtr(%struct.dm_target* %0) #0 {
  %2 = alloca %struct.dm_target*, align 8
  %3 = alloca %struct.dm_writecache*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %2, align 8
  %4 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %5 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %4, i32 0, i32 0
  %6 = load %struct.dm_writecache*, %struct.dm_writecache** %5, align 8
  store %struct.dm_writecache* %6, %struct.dm_writecache** %3, align 8
  %7 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %8 = icmp ne %struct.dm_writecache* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %129

10:                                               ; preds = %1
  %11 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %12 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %11, i32 0, i32 11
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %17 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %16, i32 0, i32 11
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @kthread_stop(i64 %18)
  br label %20

20:                                               ; preds = %15, %10
  %21 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %22 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %21, i32 0, i32 10
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %27 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %26, i32 0, i32 10
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @kthread_stop(i64 %28)
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %32 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %31, i32 0, i32 9
  %33 = call i32 @bioset_exit(i32* %32)
  %34 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %35 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %34, i32 0, i32 8
  %36 = call i32 @mempool_exit(i32* %35)
  %37 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %38 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %37, i32 0, i32 7
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %30
  %42 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %43 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %42, i32 0, i32 7
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @destroy_workqueue(i64 %44)
  br label %46

46:                                               ; preds = %41, %30
  %47 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %48 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %47, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %53 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %54 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %53, i32 0, i32 6
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @dm_put_device(%struct.dm_target* %52, i64 %55)
  br label %57

57:                                               ; preds = %51, %46
  %58 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %59 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %64 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %65 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @dm_put_device(%struct.dm_target* %63, i64 %66)
  br label %68

68:                                               ; preds = %62, %57
  %69 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %70 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %75 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @vfree(i64 %76)
  br label %78

78:                                               ; preds = %73, %68
  %79 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %80 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %78
  %84 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %85 = call i64 @WC_MODE_PMEM(%struct.dm_writecache* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %89 = call i32 @persistent_memory_release(%struct.dm_writecache* %88)
  br label %95

90:                                               ; preds = %83
  %91 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %92 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @vfree(i64 %93)
  br label %95

95:                                               ; preds = %90, %87
  br label %96

96:                                               ; preds = %95, %78
  %97 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %98 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %103 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @dm_kcopyd_client_destroy(i64 %104)
  br label %106

106:                                              ; preds = %101, %96
  %107 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %108 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %113 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @dm_io_client_destroy(i64 %114)
  br label %116

116:                                              ; preds = %111, %106
  %117 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %118 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %116
  %122 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %123 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @vfree(i64 %124)
  br label %126

126:                                              ; preds = %121, %116
  %127 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %128 = call i32 @kfree(%struct.dm_writecache* %127)
  br label %129

129:                                              ; preds = %126, %9
  ret void
}

declare dso_local i32 @kthread_stop(i64) #1

declare dso_local i32 @bioset_exit(i32*) #1

declare dso_local i32 @mempool_exit(i32*) #1

declare dso_local i32 @destroy_workqueue(i64) #1

declare dso_local i32 @dm_put_device(%struct.dm_target*, i64) #1

declare dso_local i32 @vfree(i64) #1

declare dso_local i64 @WC_MODE_PMEM(%struct.dm_writecache*) #1

declare dso_local i32 @persistent_memory_release(%struct.dm_writecache*) #1

declare dso_local i32 @dm_kcopyd_client_destroy(i64) #1

declare dso_local i32 @dm_io_client_destroy(i64) #1

declare dso_local i32 @kfree(%struct.dm_writecache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
