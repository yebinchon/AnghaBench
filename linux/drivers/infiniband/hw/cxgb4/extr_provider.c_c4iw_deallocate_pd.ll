; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_provider.c_c4iw_deallocate_pd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_provider.c_c4iw_deallocate_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { i32 }
%struct.ib_udata = type { i32 }
%struct.c4iw_dev = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.c4iw_pd = type { i32, %struct.c4iw_dev* }

@.str = private unnamed_addr constant [19 x i8] c"ibpd %p pdid 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_pd*, %struct.ib_udata*)* @c4iw_deallocate_pd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c4iw_deallocate_pd(%struct.ib_pd* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca %struct.ib_pd*, align 8
  %4 = alloca %struct.ib_udata*, align 8
  %5 = alloca %struct.c4iw_dev*, align 8
  %6 = alloca %struct.c4iw_pd*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %3, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %4, align 8
  %7 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %8 = call %struct.c4iw_pd* @to_c4iw_pd(%struct.ib_pd* %7)
  store %struct.c4iw_pd* %8, %struct.c4iw_pd** %6, align 8
  %9 = load %struct.c4iw_pd*, %struct.c4iw_pd** %6, align 8
  %10 = getelementptr inbounds %struct.c4iw_pd, %struct.c4iw_pd* %9, i32 0, i32 1
  %11 = load %struct.c4iw_dev*, %struct.c4iw_dev** %10, align 8
  store %struct.c4iw_dev* %11, %struct.c4iw_dev** %5, align 8
  %12 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %13 = load %struct.c4iw_pd*, %struct.c4iw_pd** %6, align 8
  %14 = getelementptr inbounds %struct.c4iw_pd, %struct.c4iw_pd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.ib_pd* %12, i32 %15)
  %17 = load %struct.c4iw_dev*, %struct.c4iw_dev** %5, align 8
  %18 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.c4iw_pd*, %struct.c4iw_pd** %6, align 8
  %22 = getelementptr inbounds %struct.c4iw_pd, %struct.c4iw_pd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @c4iw_put_resource(i32* %20, i32 %23)
  %25 = load %struct.c4iw_dev*, %struct.c4iw_dev** %5, align 8
  %26 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.c4iw_dev*, %struct.c4iw_dev** %5, align 8
  %31 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %34, align 4
  %37 = load %struct.c4iw_dev*, %struct.c4iw_dev** %5, align 8
  %38 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  ret void
}

declare dso_local %struct.c4iw_pd* @to_c4iw_pd(%struct.ib_pd*) #1

declare dso_local i32 @pr_debug(i8*, %struct.ib_pd*, i32) #1

declare dso_local i32 @c4iw_put_resource(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
