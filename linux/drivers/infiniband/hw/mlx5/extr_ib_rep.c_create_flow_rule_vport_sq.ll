; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_ib_rep.c_create_flow_rule_vport_sq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_ib_rep.c_create_flow_rule_vport_sq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_handle = type { i32 }
%struct.mlx5_ib_dev = type { %struct.TYPE_10__*, i32, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { %struct.mlx5_eswitch_rep* }
%struct.mlx5_eswitch_rep = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.mlx5_eswitch* }
%struct.mlx5_eswitch = type { i32 }
%struct.mlx5_ib_sq = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5_flow_handle* @create_flow_rule_vport_sq(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_sq* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5_flow_handle*, align 8
  %5 = alloca %struct.mlx5_ib_dev*, align 8
  %6 = alloca %struct.mlx5_ib_sq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_eswitch*, align 8
  %9 = alloca %struct.mlx5_eswitch_rep*, align 8
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %5, align 8
  store %struct.mlx5_ib_sq* %1, %struct.mlx5_ib_sq** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %11 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %10, i32 0, i32 2
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %14, align 8
  store %struct.mlx5_eswitch* %15, %struct.mlx5_eswitch** %8, align 8
  %16 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %17 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20, %3
  store %struct.mlx5_flow_handle* null, %struct.mlx5_flow_handle** %4, align 8
  br label %59

24:                                               ; preds = %20
  %25 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %26 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %32, align 8
  %34 = icmp ne %struct.mlx5_eswitch_rep* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %24
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  %38 = call %struct.mlx5_flow_handle* @ERR_PTR(i32 %37)
  store %struct.mlx5_flow_handle* %38, %struct.mlx5_flow_handle** %4, align 8
  br label %59

39:                                               ; preds = %24
  %40 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %41 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %40, i32 0, i32 0
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %47, align 8
  store %struct.mlx5_eswitch_rep* %48, %struct.mlx5_eswitch_rep** %9, align 8
  %49 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %8, align 8
  %50 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %9, align 8
  %51 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.mlx5_ib_sq*, %struct.mlx5_ib_sq** %6, align 8
  %54 = getelementptr inbounds %struct.mlx5_ib_sq, %struct.mlx5_ib_sq* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.mlx5_flow_handle* @mlx5_eswitch_add_send_to_vport_rule(%struct.mlx5_eswitch* %49, i32 %52, i32 %57)
  store %struct.mlx5_flow_handle* %58, %struct.mlx5_flow_handle** %4, align 8
  br label %59

59:                                               ; preds = %39, %35, %23
  %60 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %4, align 8
  ret %struct.mlx5_flow_handle* %60
}

declare dso_local %struct.mlx5_flow_handle* @ERR_PTR(i32) #1

declare dso_local %struct.mlx5_flow_handle* @mlx5_eswitch_add_send_to_vport_rule(%struct.mlx5_eswitch*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
