; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_multicast.c_join_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_multicast.c_join_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcast_group = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mcast_member = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }

@MCAST_MEMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mcast_group*, %struct.mcast_member*, i32)* @join_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @join_group(%struct.mcast_group* %0, %struct.mcast_member* %1, i32 %2) #0 {
  %4 = alloca %struct.mcast_group*, align 8
  %5 = alloca %struct.mcast_member*, align 8
  %6 = alloca i32, align 4
  store %struct.mcast_group* %0, %struct.mcast_group** %4, align 8
  store %struct.mcast_member* %1, %struct.mcast_member** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @MCAST_MEMBER, align 4
  %8 = load %struct.mcast_member*, %struct.mcast_member** %5, align 8
  %9 = getelementptr inbounds %struct.mcast_member, %struct.mcast_member* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 4
  %10 = load %struct.mcast_group*, %struct.mcast_group** %4, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @adjust_membership(%struct.mcast_group* %10, i32 %11, i32 1)
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.mcast_group*, %struct.mcast_group** %4, align 8
  %15 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %13
  store i32 %18, i32* %16, align 4
  %19 = load %struct.mcast_member*, %struct.mcast_member** %5, align 8
  %20 = getelementptr inbounds %struct.mcast_member, %struct.mcast_member* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.mcast_group*, %struct.mcast_group** %4, align 8
  %23 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %22, i32 0, i32 1
  %24 = bitcast %struct.TYPE_4__* %21 to i8*
  %25 = bitcast %struct.TYPE_4__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 4, i1 false)
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.mcast_member*, %struct.mcast_member** %5, align 8
  %28 = getelementptr inbounds %struct.mcast_member, %struct.mcast_member* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 %26, i32* %30, align 4
  %31 = load %struct.mcast_member*, %struct.mcast_member** %5, align 8
  %32 = getelementptr inbounds %struct.mcast_member, %struct.mcast_member* %31, i32 0, i32 0
  %33 = load %struct.mcast_group*, %struct.mcast_group** %4, align 8
  %34 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %33, i32 0, i32 0
  %35 = call i32 @list_move(i32* %32, i32* %34)
  ret void
}

declare dso_local i32 @adjust_membership(%struct.mcast_group*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @list_move(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
