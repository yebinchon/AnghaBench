; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_bind_control_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_bind_control_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pool = type { i32, %struct.TYPE_2__, %struct.dm_target* }
%struct.TYPE_2__ = type { i32 }
%struct.dm_target = type { %struct.pool_c* }
%struct.pool_c = type { i32, %struct.TYPE_2__ }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pool*, %struct.dm_target*)* @bind_control_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bind_control_target(%struct.pool* %0, %struct.dm_target* %1) #0 {
  %3 = alloca %struct.pool*, align 8
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca %struct.pool_c*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pool* %0, %struct.pool** %3, align 8
  store %struct.dm_target* %1, %struct.dm_target** %4, align 8
  %8 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %9 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %8, i32 0, i32 0
  %10 = load %struct.pool_c*, %struct.pool_c** %9, align 8
  store %struct.pool_c* %10, %struct.pool_c** %5, align 8
  %11 = load %struct.pool*, %struct.pool** %3, align 8
  %12 = call i32 @get_pool_mode(%struct.pool* %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.pool_c*, %struct.pool_c** %5, align 8
  %14 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.pool_c*, %struct.pool_c** %5, align 8
  %19 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %22 = load %struct.pool*, %struct.pool** %3, align 8
  %23 = getelementptr inbounds %struct.pool, %struct.pool* %22, i32 0, i32 2
  store %struct.dm_target* %21, %struct.dm_target** %23, align 8
  %24 = load %struct.pool*, %struct.pool** %3, align 8
  %25 = getelementptr inbounds %struct.pool, %struct.pool* %24, i32 0, i32 1
  %26 = load %struct.pool_c*, %struct.pool_c** %5, align 8
  %27 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %26, i32 0, i32 1
  %28 = bitcast %struct.TYPE_2__* %25 to i8*
  %29 = bitcast %struct.TYPE_2__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 4, i1 false)
  %30 = load %struct.pool_c*, %struct.pool_c** %5, align 8
  %31 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.pool*, %struct.pool** %3, align 8
  %34 = getelementptr inbounds %struct.pool, %struct.pool* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.pool*, %struct.pool** %3, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @set_pool_mode(%struct.pool* %35, i32 %36)
  ret i32 0
}

declare dso_local i32 @get_pool_mode(%struct.pool*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @set_pool_mode(%struct.pool*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
