; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c_fail_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c_fail_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pgpath = type { i32, %struct.TYPE_10__, i32, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_9__, %struct.multipath* }
%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)* }
%struct.multipath = type { i32, i32, i32, i32, %struct.pgpath* }

@.str = private unnamed_addr constant [17 x i8] c"Failing path %s.\00", align 1
@DM_UEVENT_PATH_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pgpath*)* @fail_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fail_path(%struct.pgpath* %0) #0 {
  %2 = alloca %struct.pgpath*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.multipath*, align 8
  store %struct.pgpath* %0, %struct.pgpath** %2, align 8
  %5 = load %struct.pgpath*, %struct.pgpath** %2, align 8
  %6 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %5, i32 0, i32 3
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %9 = load %struct.multipath*, %struct.multipath** %8, align 8
  store %struct.multipath* %9, %struct.multipath** %4, align 8
  %10 = load %struct.multipath*, %struct.multipath** %4, align 8
  %11 = getelementptr inbounds %struct.multipath, %struct.multipath* %10, i32 0, i32 0
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.pgpath*, %struct.pgpath** %2, align 8
  %15 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %77

19:                                               ; preds = %1
  %20 = load %struct.pgpath*, %struct.pgpath** %2, align 8
  %21 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @DMWARN(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.pgpath*, %struct.pgpath** %2, align 8
  %28 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %27, i32 0, i32 3
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)*, i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)** %33, align 8
  %35 = load %struct.pgpath*, %struct.pgpath** %2, align 8
  %36 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %35, i32 0, i32 3
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load %struct.pgpath*, %struct.pgpath** %2, align 8
  %40 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %39, i32 0, i32 1
  %41 = call i32 %34(%struct.TYPE_9__* %38, %struct.TYPE_10__* %40)
  %42 = load %struct.pgpath*, %struct.pgpath** %2, align 8
  %43 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  %44 = load %struct.pgpath*, %struct.pgpath** %2, align 8
  %45 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  %48 = load %struct.multipath*, %struct.multipath** %4, align 8
  %49 = getelementptr inbounds %struct.multipath, %struct.multipath* %48, i32 0, i32 2
  %50 = call i32 @atomic_dec(i32* %49)
  %51 = load %struct.pgpath*, %struct.pgpath** %2, align 8
  %52 = load %struct.multipath*, %struct.multipath** %4, align 8
  %53 = getelementptr inbounds %struct.multipath, %struct.multipath* %52, i32 0, i32 4
  %54 = load %struct.pgpath*, %struct.pgpath** %53, align 8
  %55 = icmp eq %struct.pgpath* %51, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %19
  %57 = load %struct.multipath*, %struct.multipath** %4, align 8
  %58 = getelementptr inbounds %struct.multipath, %struct.multipath* %57, i32 0, i32 4
  store %struct.pgpath* null, %struct.pgpath** %58, align 8
  br label %59

59:                                               ; preds = %56, %19
  %60 = load i32, i32* @DM_UEVENT_PATH_FAILED, align 4
  %61 = load %struct.multipath*, %struct.multipath** %4, align 8
  %62 = getelementptr inbounds %struct.multipath, %struct.multipath* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.pgpath*, %struct.pgpath** %2, align 8
  %65 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.multipath*, %struct.multipath** %4, align 8
  %71 = getelementptr inbounds %struct.multipath, %struct.multipath* %70, i32 0, i32 2
  %72 = call i32 @atomic_read(i32* %71)
  %73 = call i32 @dm_path_uevent(i32 %60, i32 %63, i32 %69, i32 %72)
  %74 = load %struct.multipath*, %struct.multipath** %4, align 8
  %75 = getelementptr inbounds %struct.multipath, %struct.multipath* %74, i32 0, i32 1
  %76 = call i32 @schedule_work(i32* %75)
  br label %77

77:                                               ; preds = %59, %18
  %78 = load %struct.multipath*, %struct.multipath** %4, align 8
  %79 = getelementptr inbounds %struct.multipath, %struct.multipath* %78, i32 0, i32 0
  %80 = load i64, i64* %3, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @DMWARN(i8*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @dm_path_uevent(i32, i32, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
