; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c__create_raw_flow_rule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c__create_raw_flow_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_flow_handler = type { %struct.mlx5_ib_dev*, %struct.mlx5_ib_flow_prio*, i32, i32 }
%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_flow_prio = type { %struct.mlx5_flow_table*, i32 }
%struct.mlx5_flow_table = type { i32 }
%struct.mlx5_flow_destination = type { i32 }
%struct.mlx5_ib_flow_matcher = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.mlx5_flow_context = type { i32 }
%struct.mlx5_flow_act = type { i32 }
%struct.mlx5_flow_spec = type { %struct.mlx5_flow_context, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_ib_flow_handler* (%struct.mlx5_ib_dev*, %struct.mlx5_ib_flow_prio*, %struct.mlx5_flow_destination*, %struct.mlx5_ib_flow_matcher*, %struct.mlx5_flow_context*, %struct.mlx5_flow_act*, i8*, i32, i32)* @_create_raw_flow_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_ib_flow_handler* @_create_raw_flow_rule(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_flow_prio* %1, %struct.mlx5_flow_destination* %2, %struct.mlx5_ib_flow_matcher* %3, %struct.mlx5_flow_context* %4, %struct.mlx5_flow_act* %5, i8* %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.mlx5_ib_dev*, align 8
  %11 = alloca %struct.mlx5_ib_flow_prio*, align 8
  %12 = alloca %struct.mlx5_flow_destination*, align 8
  %13 = alloca %struct.mlx5_ib_flow_matcher*, align 8
  %14 = alloca %struct.mlx5_flow_context*, align 8
  %15 = alloca %struct.mlx5_flow_act*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.mlx5_ib_flow_handler*, align 8
  %20 = alloca %struct.mlx5_flow_spec*, align 8
  %21 = alloca %struct.mlx5_flow_table*, align 8
  %22 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %10, align 8
  store %struct.mlx5_ib_flow_prio* %1, %struct.mlx5_ib_flow_prio** %11, align 8
  store %struct.mlx5_flow_destination* %2, %struct.mlx5_flow_destination** %12, align 8
  store %struct.mlx5_ib_flow_matcher* %3, %struct.mlx5_ib_flow_matcher** %13, align 8
  store %struct.mlx5_flow_context* %4, %struct.mlx5_flow_context** %14, align 8
  store %struct.mlx5_flow_act* %5, %struct.mlx5_flow_act** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %23 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %11, align 8
  %24 = getelementptr inbounds %struct.mlx5_ib_flow_prio, %struct.mlx5_ib_flow_prio* %23, i32 0, i32 0
  %25 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %24, align 8
  store %struct.mlx5_flow_table* %25, %struct.mlx5_flow_table** %21, align 8
  store i32 0, i32* %22, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.mlx5_flow_spec* @kvzalloc(i32 16, i32 %26)
  store %struct.mlx5_flow_spec* %27, %struct.mlx5_flow_spec** %20, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.mlx5_ib_flow_handler* @kzalloc(i32 24, i32 %28)
  store %struct.mlx5_ib_flow_handler* %29, %struct.mlx5_ib_flow_handler** %19, align 8
  %30 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %19, align 8
  %31 = icmp ne %struct.mlx5_ib_flow_handler* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %9
  %33 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %20, align 8
  %34 = icmp ne %struct.mlx5_flow_spec* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32, %9
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %22, align 4
  br label %101

38:                                               ; preds = %32
  %39 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %19, align 8
  %40 = getelementptr inbounds %struct.mlx5_ib_flow_handler, %struct.mlx5_ib_flow_handler* %39, i32 0, i32 3
  %41 = call i32 @INIT_LIST_HEAD(i32* %40)
  %42 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %20, align 8
  %43 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %16, align 8
  %46 = load i32, i32* %17, align 4
  %47 = call i32 @memcpy(i32 %44, i8* %45, i32 %46)
  %48 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %20, align 8
  %49 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.mlx5_ib_flow_matcher*, %struct.mlx5_ib_flow_matcher** %13, align 8
  %52 = getelementptr inbounds %struct.mlx5_ib_flow_matcher, %struct.mlx5_ib_flow_matcher* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.mlx5_ib_flow_matcher*, %struct.mlx5_ib_flow_matcher** %13, align 8
  %56 = getelementptr inbounds %struct.mlx5_ib_flow_matcher, %struct.mlx5_ib_flow_matcher* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @memcpy(i32 %50, i8* %54, i32 %57)
  %59 = load %struct.mlx5_ib_flow_matcher*, %struct.mlx5_ib_flow_matcher** %13, align 8
  %60 = getelementptr inbounds %struct.mlx5_ib_flow_matcher, %struct.mlx5_ib_flow_matcher* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %20, align 8
  %63 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %20, align 8
  %65 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %64, i32 0, i32 0
  %66 = load %struct.mlx5_flow_context*, %struct.mlx5_flow_context** %14, align 8
  %67 = bitcast %struct.mlx5_flow_context* %65 to i8*
  %68 = bitcast %struct.mlx5_flow_context* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %67, i8* align 4 %68, i64 4, i1 false)
  %69 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %21, align 8
  %70 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %20, align 8
  %71 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %15, align 8
  %72 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %12, align 8
  %73 = load i32, i32* %18, align 4
  %74 = call i32 @mlx5_add_flow_rules(%struct.mlx5_flow_table* %69, %struct.mlx5_flow_spec* %70, %struct.mlx5_flow_act* %71, %struct.mlx5_flow_destination* %72, i32 %73)
  %75 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %19, align 8
  %76 = getelementptr inbounds %struct.mlx5_ib_flow_handler, %struct.mlx5_ib_flow_handler* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %19, align 8
  %78 = getelementptr inbounds %struct.mlx5_ib_flow_handler, %struct.mlx5_ib_flow_handler* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @IS_ERR(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %38
  %83 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %19, align 8
  %84 = getelementptr inbounds %struct.mlx5_ib_flow_handler, %struct.mlx5_ib_flow_handler* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @PTR_ERR(i32 %85)
  store i32 %86, i32* %22, align 4
  br label %101

87:                                               ; preds = %38
  %88 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %11, align 8
  %89 = getelementptr inbounds %struct.mlx5_ib_flow_prio, %struct.mlx5_ib_flow_prio* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 8
  %92 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %11, align 8
  %93 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %19, align 8
  %94 = getelementptr inbounds %struct.mlx5_ib_flow_handler, %struct.mlx5_ib_flow_handler* %93, i32 0, i32 1
  store %struct.mlx5_ib_flow_prio* %92, %struct.mlx5_ib_flow_prio** %94, align 8
  %95 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %10, align 8
  %96 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %19, align 8
  %97 = getelementptr inbounds %struct.mlx5_ib_flow_handler, %struct.mlx5_ib_flow_handler* %96, i32 0, i32 0
  store %struct.mlx5_ib_dev* %95, %struct.mlx5_ib_dev** %97, align 8
  %98 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %21, align 8
  %99 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %11, align 8
  %100 = getelementptr inbounds %struct.mlx5_ib_flow_prio, %struct.mlx5_ib_flow_prio* %99, i32 0, i32 0
  store %struct.mlx5_flow_table* %98, %struct.mlx5_flow_table** %100, align 8
  br label %101

101:                                              ; preds = %87, %82, %35
  %102 = load i32, i32* %22, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %19, align 8
  %106 = call i32 @kfree(%struct.mlx5_ib_flow_handler* %105)
  br label %107

107:                                              ; preds = %104, %101
  %108 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %20, align 8
  %109 = call i32 @kvfree(%struct.mlx5_flow_spec* %108)
  %110 = load i32, i32* %22, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load i32, i32* %22, align 4
  %114 = call %struct.mlx5_ib_flow_handler* @ERR_PTR(i32 %113)
  br label %117

115:                                              ; preds = %107
  %116 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %19, align 8
  br label %117

117:                                              ; preds = %115, %112
  %118 = phi %struct.mlx5_ib_flow_handler* [ %114, %112 ], [ %116, %115 ]
  ret %struct.mlx5_ib_flow_handler* %118
}

declare dso_local %struct.mlx5_flow_spec* @kvzalloc(i32, i32) #1

declare dso_local %struct.mlx5_ib_flow_handler* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mlx5_add_flow_rules(%struct.mlx5_flow_table*, %struct.mlx5_flow_spec*, %struct.mlx5_flow_act*, %struct.mlx5_flow_destination*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @kfree(%struct.mlx5_ib_flow_handler*) #1

declare dso_local i32 @kvfree(%struct.mlx5_flow_spec*) #1

declare dso_local %struct.mlx5_ib_flow_handler* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
