; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iscsi_iser_conn_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iscsi_iser_conn_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.iser_conn* }
%struct.iser_conn = type { i32, i32, i32* }

@.str = private unnamed_addr constant [40 x i8] c"stopping iscsi_conn: %p, iser_conn: %p\0A\00", align 1
@unbind_iser_conn_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_cls_conn*, i32)* @iscsi_iser_conn_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_iser_conn_stop(%struct.iscsi_cls_conn* %0, i32 %1) #0 {
  %3 = alloca %struct.iscsi_cls_conn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.iser_conn*, align 8
  store %struct.iscsi_cls_conn* %0, %struct.iscsi_cls_conn** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %3, align 8
  %8 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %7, i32 0, i32 0
  %9 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  store %struct.iscsi_conn* %9, %struct.iscsi_conn** %5, align 8
  %10 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %11 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %10, i32 0, i32 0
  %12 = load %struct.iser_conn*, %struct.iser_conn** %11, align 8
  store %struct.iser_conn* %12, %struct.iser_conn** %6, align 8
  %13 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %14 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %15 = call i32 @iser_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.iscsi_conn* %13, %struct.iser_conn* %14)
  %16 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %17 = icmp ne %struct.iser_conn* %16, null
  br i1 %17, label %18, label %39

18:                                               ; preds = %2
  %19 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %20 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = call i32 @mutex_lock(i32* @unbind_iser_conn_mutex)
  %23 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %24 = call i32 @iser_conn_terminate(%struct.iser_conn* %23)
  %25 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @iscsi_conn_stop(%struct.iscsi_cls_conn* %25, i32 %26)
  %28 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %29 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %28, i32 0, i32 2
  store i32* null, i32** %29, align 8
  %30 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %31 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %30, i32 0, i32 0
  store %struct.iser_conn* null, %struct.iser_conn** %31, align 8
  %32 = call i32 @mutex_unlock(i32* @unbind_iser_conn_mutex)
  %33 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %34 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %33, i32 0, i32 1
  %35 = call i32 @complete(i32* %34)
  %36 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %37 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  br label %43

39:                                               ; preds = %2
  %40 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @iscsi_conn_stop(%struct.iscsi_cls_conn* %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %18
  ret void
}

declare dso_local i32 @iser_info(i8*, %struct.iscsi_conn*, %struct.iser_conn*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iser_conn_terminate(%struct.iser_conn*) #1

declare dso_local i32 @iscsi_conn_stop(%struct.iscsi_cls_conn*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
