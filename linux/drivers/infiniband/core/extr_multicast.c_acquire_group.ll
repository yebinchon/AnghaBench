; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_multicast.c_acquire_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_multicast.c_acquire_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcast_group = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, %struct.mcast_port* }
%struct.TYPE_2__ = type { %union.ib_gid }
%union.ib_gid = type { i32 }
%struct.mcast_port = type { i32, i32 }

@mgid0 = common dso_local global i32 0, align 4
@MCAST_INVALID_PKEY_INDEX = common dso_local global i32 0, align 4
@mcast_work_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mcast_group* (%struct.mcast_port*, %union.ib_gid*, i32)* @acquire_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mcast_group* @acquire_group(%struct.mcast_port* %0, %union.ib_gid* %1, i32 %2) #0 {
  %4 = alloca %struct.mcast_group*, align 8
  %5 = alloca %struct.mcast_port*, align 8
  %6 = alloca %union.ib_gid*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mcast_group*, align 8
  %9 = alloca %struct.mcast_group*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.mcast_port* %0, %struct.mcast_port** %5, align 8
  store %union.ib_gid* %1, %union.ib_gid** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %union.ib_gid*, %union.ib_gid** %6, align 8
  %13 = call i32 @memcmp(i32* @mgid0, %union.ib_gid* %12, i32 4)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %3
  %20 = load %struct.mcast_port*, %struct.mcast_port** %5, align 8
  %21 = getelementptr inbounds %struct.mcast_port, %struct.mcast_port* %20, i32 0, i32 0
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.mcast_port*, %struct.mcast_port** %5, align 8
  %25 = load %union.ib_gid*, %union.ib_gid** %6, align 8
  %26 = call %struct.mcast_group* @mcast_find(%struct.mcast_port* %24, %union.ib_gid* %25)
  store %struct.mcast_group* %26, %struct.mcast_group** %8, align 8
  %27 = load %struct.mcast_group*, %struct.mcast_group** %8, align 8
  %28 = icmp ne %struct.mcast_group* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %88

30:                                               ; preds = %19
  %31 = load %struct.mcast_port*, %struct.mcast_port** %5, align 8
  %32 = getelementptr inbounds %struct.mcast_port, %struct.mcast_port* %31, i32 0, i32 0
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  br label %35

35:                                               ; preds = %30, %3
  %36 = load i32, i32* %7, align 4
  %37 = call %struct.mcast_group* @kzalloc(i32 40, i32 %36)
  store %struct.mcast_group* %37, %struct.mcast_group** %8, align 8
  %38 = load %struct.mcast_group*, %struct.mcast_group** %8, align 8
  %39 = icmp ne %struct.mcast_group* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store %struct.mcast_group* null, %struct.mcast_group** %4, align 8
  br label %97

41:                                               ; preds = %35
  %42 = load %struct.mcast_group*, %struct.mcast_group** %8, align 8
  %43 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %42, i32 0, i32 0
  store i32 3, i32* %43, align 8
  %44 = load %struct.mcast_port*, %struct.mcast_port** %5, align 8
  %45 = load %struct.mcast_group*, %struct.mcast_group** %8, align 8
  %46 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %45, i32 0, i32 8
  store %struct.mcast_port* %44, %struct.mcast_port** %46, align 8
  %47 = load %struct.mcast_group*, %struct.mcast_group** %8, align 8
  %48 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %47, i32 0, i32 7
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load %union.ib_gid*, %union.ib_gid** %6, align 8
  %51 = bitcast %union.ib_gid* %49 to i8*
  %52 = bitcast %union.ib_gid* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 %52, i64 4, i1 false)
  %53 = load i32, i32* @MCAST_INVALID_PKEY_INDEX, align 4
  %54 = load %struct.mcast_group*, %struct.mcast_group** %8, align 8
  %55 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %54, i32 0, i32 6
  store i32 %53, i32* %55, align 8
  %56 = load %struct.mcast_group*, %struct.mcast_group** %8, align 8
  %57 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %56, i32 0, i32 5
  %58 = call i32 @INIT_LIST_HEAD(i32* %57)
  %59 = load %struct.mcast_group*, %struct.mcast_group** %8, align 8
  %60 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %59, i32 0, i32 4
  %61 = call i32 @INIT_LIST_HEAD(i32* %60)
  %62 = load %struct.mcast_group*, %struct.mcast_group** %8, align 8
  %63 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %62, i32 0, i32 3
  %64 = load i32, i32* @mcast_work_handler, align 4
  %65 = call i32 @INIT_WORK(i32* %63, i32 %64)
  %66 = load %struct.mcast_group*, %struct.mcast_group** %8, align 8
  %67 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %66, i32 0, i32 2
  %68 = call i32 @spin_lock_init(i32* %67)
  %69 = load %struct.mcast_port*, %struct.mcast_port** %5, align 8
  %70 = getelementptr inbounds %struct.mcast_port, %struct.mcast_port* %69, i32 0, i32 0
  %71 = load i64, i64* %10, align 8
  %72 = call i32 @spin_lock_irqsave(i32* %70, i64 %71)
  %73 = load %struct.mcast_port*, %struct.mcast_port** %5, align 8
  %74 = load %struct.mcast_group*, %struct.mcast_group** %8, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call %struct.mcast_group* @mcast_insert(%struct.mcast_port* %73, %struct.mcast_group* %74, i32 %75)
  store %struct.mcast_group* %76, %struct.mcast_group** %9, align 8
  %77 = load %struct.mcast_group*, %struct.mcast_group** %9, align 8
  %78 = icmp ne %struct.mcast_group* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %41
  %80 = load %struct.mcast_group*, %struct.mcast_group** %8, align 8
  %81 = call i32 @kfree(%struct.mcast_group* %80)
  %82 = load %struct.mcast_group*, %struct.mcast_group** %9, align 8
  store %struct.mcast_group* %82, %struct.mcast_group** %8, align 8
  br label %87

83:                                               ; preds = %41
  %84 = load %struct.mcast_port*, %struct.mcast_port** %5, align 8
  %85 = getelementptr inbounds %struct.mcast_port, %struct.mcast_port* %84, i32 0, i32 1
  %86 = call i32 @atomic_inc(i32* %85)
  br label %87

87:                                               ; preds = %83, %79
  br label %88

88:                                               ; preds = %87, %29
  %89 = load %struct.mcast_group*, %struct.mcast_group** %8, align 8
  %90 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %89, i32 0, i32 1
  %91 = call i32 @atomic_inc(i32* %90)
  %92 = load %struct.mcast_port*, %struct.mcast_port** %5, align 8
  %93 = getelementptr inbounds %struct.mcast_port, %struct.mcast_port* %92, i32 0, i32 0
  %94 = load i64, i64* %10, align 8
  %95 = call i32 @spin_unlock_irqrestore(i32* %93, i64 %94)
  %96 = load %struct.mcast_group*, %struct.mcast_group** %8, align 8
  store %struct.mcast_group* %96, %struct.mcast_group** %4, align 8
  br label %97

97:                                               ; preds = %88, %40
  %98 = load %struct.mcast_group*, %struct.mcast_group** %4, align 8
  ret %struct.mcast_group* %98
}

declare dso_local i32 @memcmp(i32*, %union.ib_gid*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.mcast_group* @mcast_find(%struct.mcast_port*, %union.ib_gid*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.mcast_group* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.mcast_group* @mcast_insert(%struct.mcast_port*, %struct.mcast_group*, i32) #1

declare dso_local i32 @kfree(%struct.mcast_group*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
