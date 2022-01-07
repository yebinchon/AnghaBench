; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_mcast.c_rxe_mcast_get_grp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_mcast.c_rxe_mcast_get_grp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%union.ib_gid = type { i32 }
%struct.rxe_mc_grp = type { %struct.rxe_dev*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rxe_mcast_get_grp(%struct.rxe_dev* %0, %union.ib_gid* %1, %struct.rxe_mc_grp** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rxe_dev*, align 8
  %6 = alloca %union.ib_gid*, align 8
  %7 = alloca %struct.rxe_mc_grp**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rxe_mc_grp*, align 8
  store %struct.rxe_dev* %0, %struct.rxe_dev** %5, align 8
  store %union.ib_gid* %1, %union.ib_gid** %6, align 8
  store %struct.rxe_mc_grp** %2, %struct.rxe_mc_grp*** %7, align 8
  %10 = load %struct.rxe_dev*, %struct.rxe_dev** %5, align 8
  %11 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %8, align 4
  br label %61

18:                                               ; preds = %3
  %19 = load %struct.rxe_dev*, %struct.rxe_dev** %5, align 8
  %20 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %19, i32 0, i32 0
  %21 = load %union.ib_gid*, %union.ib_gid** %6, align 8
  %22 = call %struct.rxe_mc_grp* @rxe_pool_get_key(i32* %20, %union.ib_gid* %21)
  store %struct.rxe_mc_grp* %22, %struct.rxe_mc_grp** %9, align 8
  %23 = load %struct.rxe_mc_grp*, %struct.rxe_mc_grp** %9, align 8
  %24 = icmp ne %struct.rxe_mc_grp* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %55

26:                                               ; preds = %18
  %27 = load %struct.rxe_dev*, %struct.rxe_dev** %5, align 8
  %28 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %27, i32 0, i32 0
  %29 = call %struct.rxe_mc_grp* @rxe_alloc(i32* %28)
  store %struct.rxe_mc_grp* %29, %struct.rxe_mc_grp** %9, align 8
  %30 = load %struct.rxe_mc_grp*, %struct.rxe_mc_grp** %9, align 8
  %31 = icmp ne %struct.rxe_mc_grp* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %8, align 4
  br label %61

35:                                               ; preds = %26
  %36 = load %struct.rxe_mc_grp*, %struct.rxe_mc_grp** %9, align 8
  %37 = getelementptr inbounds %struct.rxe_mc_grp, %struct.rxe_mc_grp* %36, i32 0, i32 2
  %38 = call i32 @INIT_LIST_HEAD(i32* %37)
  %39 = load %struct.rxe_mc_grp*, %struct.rxe_mc_grp** %9, align 8
  %40 = getelementptr inbounds %struct.rxe_mc_grp, %struct.rxe_mc_grp* %39, i32 0, i32 1
  %41 = call i32 @spin_lock_init(i32* %40)
  %42 = load %struct.rxe_dev*, %struct.rxe_dev** %5, align 8
  %43 = load %struct.rxe_mc_grp*, %struct.rxe_mc_grp** %9, align 8
  %44 = getelementptr inbounds %struct.rxe_mc_grp, %struct.rxe_mc_grp* %43, i32 0, i32 0
  store %struct.rxe_dev* %42, %struct.rxe_dev** %44, align 8
  %45 = load %struct.rxe_mc_grp*, %struct.rxe_mc_grp** %9, align 8
  %46 = load %union.ib_gid*, %union.ib_gid** %6, align 8
  %47 = call i32 @rxe_add_key(%struct.rxe_mc_grp* %45, %union.ib_gid* %46)
  %48 = load %struct.rxe_dev*, %struct.rxe_dev** %5, align 8
  %49 = load %union.ib_gid*, %union.ib_gid** %6, align 8
  %50 = call i32 @rxe_mcast_add(%struct.rxe_dev* %48, %union.ib_gid* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %35
  br label %58

54:                                               ; preds = %35
  br label %55

55:                                               ; preds = %54, %25
  %56 = load %struct.rxe_mc_grp*, %struct.rxe_mc_grp** %9, align 8
  %57 = load %struct.rxe_mc_grp**, %struct.rxe_mc_grp*** %7, align 8
  store %struct.rxe_mc_grp* %56, %struct.rxe_mc_grp** %57, align 8
  store i32 0, i32* %4, align 4
  br label %63

58:                                               ; preds = %53
  %59 = load %struct.rxe_mc_grp*, %struct.rxe_mc_grp** %9, align 8
  %60 = call i32 @rxe_drop_ref(%struct.rxe_mc_grp* %59)
  br label %61

61:                                               ; preds = %58, %32, %15
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %61, %55
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.rxe_mc_grp* @rxe_pool_get_key(i32*, %union.ib_gid*) #1

declare dso_local %struct.rxe_mc_grp* @rxe_alloc(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @rxe_add_key(%struct.rxe_mc_grp*, %union.ib_gid*) #1

declare dso_local i32 @rxe_mcast_add(%struct.rxe_dev*, %union.ib_gid*) #1

declare dso_local i32 @rxe_drop_ref(%struct.rxe_mc_grp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
