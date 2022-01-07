; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_add_gid_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_add_gid_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%union.ib_gid = type { i32 }
%struct.mlx4_ib_qp = type { i32, i32, i32 }
%struct.mlx4_ib_dev = type { i32 }
%struct.mlx4_ib_gid_entry = type { i32, i32, i32, %union.ib_gid }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, %union.ib_gid*)* @add_gid_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_gid_entry(%struct.ib_qp* %0, %union.ib_gid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_qp*, align 8
  %5 = alloca %union.ib_gid*, align 8
  %6 = alloca %struct.mlx4_ib_qp*, align 8
  %7 = alloca %struct.mlx4_ib_dev*, align 8
  %8 = alloca %struct.mlx4_ib_gid_entry*, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %4, align 8
  store %union.ib_gid* %1, %union.ib_gid** %5, align 8
  %9 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %10 = call %struct.mlx4_ib_qp* @to_mqp(%struct.ib_qp* %9)
  store %struct.mlx4_ib_qp* %10, %struct.mlx4_ib_qp** %6, align 8
  %11 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %12 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.mlx4_ib_dev* @to_mdev(i32 %13)
  store %struct.mlx4_ib_dev* %14, %struct.mlx4_ib_dev** %7, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.mlx4_ib_gid_entry* @kzalloc(i32 16, i32 %15)
  store %struct.mlx4_ib_gid_entry* %16, %struct.mlx4_ib_gid_entry** %8, align 8
  %17 = load %struct.mlx4_ib_gid_entry*, %struct.mlx4_ib_gid_entry** %8, align 8
  %18 = icmp ne %struct.mlx4_ib_gid_entry* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %53

22:                                               ; preds = %2
  %23 = load %struct.mlx4_ib_gid_entry*, %struct.mlx4_ib_gid_entry** %8, align 8
  %24 = getelementptr inbounds %struct.mlx4_ib_gid_entry, %struct.mlx4_ib_gid_entry* %23, i32 0, i32 3
  %25 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %26 = bitcast %union.ib_gid* %24 to i8*
  %27 = bitcast %union.ib_gid* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 4, i1 false)
  %28 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %29 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %6, align 8
  %30 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %31 = call i64 @mlx4_ib_add_mc(%struct.mlx4_ib_dev* %28, %struct.mlx4_ib_qp* %29, %union.ib_gid* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %22
  %34 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %6, align 8
  %35 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mlx4_ib_gid_entry*, %struct.mlx4_ib_gid_entry** %8, align 8
  %38 = getelementptr inbounds %struct.mlx4_ib_gid_entry, %struct.mlx4_ib_gid_entry* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.mlx4_ib_gid_entry*, %struct.mlx4_ib_gid_entry** %8, align 8
  %40 = getelementptr inbounds %struct.mlx4_ib_gid_entry, %struct.mlx4_ib_gid_entry* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %33, %22
  %42 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %6, align 8
  %43 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %42, i32 0, i32 0
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.mlx4_ib_gid_entry*, %struct.mlx4_ib_gid_entry** %8, align 8
  %46 = getelementptr inbounds %struct.mlx4_ib_gid_entry, %struct.mlx4_ib_gid_entry* %45, i32 0, i32 1
  %47 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %6, align 8
  %48 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %47, i32 0, i32 1
  %49 = call i32 @list_add_tail(i32* %46, i32* %48)
  %50 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %6, align 8
  %51 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %41, %19
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.mlx4_ib_qp* @to_mqp(%struct.ib_qp*) #1

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.mlx4_ib_gid_entry* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @mlx4_ib_add_mc(%struct.mlx4_ib_dev*, %struct.mlx4_ib_qp*, %union.ib_gid*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
