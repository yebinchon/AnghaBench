; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_conn_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_conn_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iser_conn = type { i32, i32, i32, i32, i32, i32, %struct.ib_conn }
%struct.ib_conn = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@ISER_CONN_INIT = common dso_local global i32 0, align 4
@iser_reg_comp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iser_conn_init(%struct.iser_conn* %0) #0 {
  %2 = alloca %struct.iser_conn*, align 8
  %3 = alloca %struct.ib_conn*, align 8
  store %struct.iser_conn* %0, %struct.iser_conn** %2, align 8
  %4 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %5 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %4, i32 0, i32 6
  store %struct.ib_conn* %5, %struct.ib_conn** %3, align 8
  %6 = load i32, i32* @ISER_CONN_INIT, align 4
  %7 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %8 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %7, i32 0, i32 5
  store i32 %6, i32* %8, align 4
  %9 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %10 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %9, i32 0, i32 4
  %11 = call i32 @init_completion(i32* %10)
  %12 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %13 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %12, i32 0, i32 3
  %14 = call i32 @init_completion(i32* %13)
  %15 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %16 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %15, i32 0, i32 2
  %17 = call i32 @init_completion(i32* %16)
  %18 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %19 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %18, i32 0, i32 1
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %22 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %21, i32 0, i32 0
  %23 = call i32 @mutex_init(i32* %22)
  %24 = load %struct.ib_conn*, %struct.ib_conn** %3, align 8
  %25 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @iser_reg_comp, align 4
  %27 = load %struct.ib_conn*, %struct.ib_conn** %3, align 8
  %28 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  ret void
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
