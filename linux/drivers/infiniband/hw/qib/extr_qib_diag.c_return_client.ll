; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_diag.c_return_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_diag.c_return_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_diag_client = type { %struct.qib_diag_client*, i64, %struct.qib_devdata*, i32 }
%struct.qib_devdata = type { %struct.qib_diag_client* }

@UNUSED = common dso_local global i32 0, align 4
@client_pool = common dso_local global %struct.qib_diag_client* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_diag_client*)* @return_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @return_client(%struct.qib_diag_client* %0) #0 {
  %2 = alloca %struct.qib_diag_client*, align 8
  %3 = alloca %struct.qib_devdata*, align 8
  %4 = alloca %struct.qib_diag_client*, align 8
  %5 = alloca %struct.qib_diag_client*, align 8
  store %struct.qib_diag_client* %0, %struct.qib_diag_client** %2, align 8
  %6 = load %struct.qib_diag_client*, %struct.qib_diag_client** %2, align 8
  %7 = getelementptr inbounds %struct.qib_diag_client, %struct.qib_diag_client* %6, i32 0, i32 2
  %8 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  store %struct.qib_devdata* %8, %struct.qib_devdata** %3, align 8
  store %struct.qib_diag_client* null, %struct.qib_diag_client** %5, align 8
  %9 = load %struct.qib_diag_client*, %struct.qib_diag_client** %2, align 8
  %10 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %11 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %10, i32 0, i32 0
  %12 = load %struct.qib_diag_client*, %struct.qib_diag_client** %11, align 8
  %13 = icmp eq %struct.qib_diag_client* %9, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.qib_diag_client*, %struct.qib_diag_client** %2, align 8
  %16 = getelementptr inbounds %struct.qib_diag_client, %struct.qib_diag_client* %15, i32 0, i32 0
  %17 = load %struct.qib_diag_client*, %struct.qib_diag_client** %16, align 8
  %18 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %19 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %18, i32 0, i32 0
  store %struct.qib_diag_client* %17, %struct.qib_diag_client** %19, align 8
  %20 = load %struct.qib_diag_client*, %struct.qib_diag_client** %2, align 8
  store %struct.qib_diag_client* %20, %struct.qib_diag_client** %5, align 8
  br label %48

21:                                               ; preds = %1
  %22 = load %struct.qib_diag_client*, %struct.qib_diag_client** %2, align 8
  %23 = getelementptr inbounds %struct.qib_diag_client, %struct.qib_diag_client* %22, i32 0, i32 2
  %24 = load %struct.qib_devdata*, %struct.qib_devdata** %23, align 8
  %25 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %24, i32 0, i32 0
  %26 = load %struct.qib_diag_client*, %struct.qib_diag_client** %25, align 8
  store %struct.qib_diag_client* %26, %struct.qib_diag_client** %4, align 8
  br label %27

27:                                               ; preds = %43, %21
  %28 = load %struct.qib_diag_client*, %struct.qib_diag_client** %4, align 8
  %29 = icmp ne %struct.qib_diag_client* %28, null
  br i1 %29, label %30, label %47

30:                                               ; preds = %27
  %31 = load %struct.qib_diag_client*, %struct.qib_diag_client** %2, align 8
  %32 = load %struct.qib_diag_client*, %struct.qib_diag_client** %4, align 8
  %33 = getelementptr inbounds %struct.qib_diag_client, %struct.qib_diag_client* %32, i32 0, i32 0
  %34 = load %struct.qib_diag_client*, %struct.qib_diag_client** %33, align 8
  %35 = icmp eq %struct.qib_diag_client* %31, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load %struct.qib_diag_client*, %struct.qib_diag_client** %2, align 8
  %38 = getelementptr inbounds %struct.qib_diag_client, %struct.qib_diag_client* %37, i32 0, i32 0
  %39 = load %struct.qib_diag_client*, %struct.qib_diag_client** %38, align 8
  %40 = load %struct.qib_diag_client*, %struct.qib_diag_client** %4, align 8
  %41 = getelementptr inbounds %struct.qib_diag_client, %struct.qib_diag_client* %40, i32 0, i32 0
  store %struct.qib_diag_client* %39, %struct.qib_diag_client** %41, align 8
  %42 = load %struct.qib_diag_client*, %struct.qib_diag_client** %2, align 8
  store %struct.qib_diag_client* %42, %struct.qib_diag_client** %5, align 8
  br label %47

43:                                               ; preds = %30
  %44 = load %struct.qib_diag_client*, %struct.qib_diag_client** %4, align 8
  %45 = getelementptr inbounds %struct.qib_diag_client, %struct.qib_diag_client* %44, i32 0, i32 0
  %46 = load %struct.qib_diag_client*, %struct.qib_diag_client** %45, align 8
  store %struct.qib_diag_client* %46, %struct.qib_diag_client** %4, align 8
  br label %27

47:                                               ; preds = %36, %27
  br label %48

48:                                               ; preds = %47, %14
  %49 = load %struct.qib_diag_client*, %struct.qib_diag_client** %5, align 8
  %50 = icmp ne %struct.qib_diag_client* %49, null
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load i32, i32* @UNUSED, align 4
  %53 = load %struct.qib_diag_client*, %struct.qib_diag_client** %5, align 8
  %54 = getelementptr inbounds %struct.qib_diag_client, %struct.qib_diag_client* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load %struct.qib_diag_client*, %struct.qib_diag_client** %5, align 8
  %56 = getelementptr inbounds %struct.qib_diag_client, %struct.qib_diag_client* %55, i32 0, i32 2
  store %struct.qib_devdata* null, %struct.qib_devdata** %56, align 8
  %57 = load %struct.qib_diag_client*, %struct.qib_diag_client** %5, align 8
  %58 = getelementptr inbounds %struct.qib_diag_client, %struct.qib_diag_client* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = load %struct.qib_diag_client*, %struct.qib_diag_client** @client_pool, align 8
  %60 = load %struct.qib_diag_client*, %struct.qib_diag_client** %5, align 8
  %61 = getelementptr inbounds %struct.qib_diag_client, %struct.qib_diag_client* %60, i32 0, i32 0
  store %struct.qib_diag_client* %59, %struct.qib_diag_client** %61, align 8
  %62 = load %struct.qib_diag_client*, %struct.qib_diag_client** %5, align 8
  store %struct.qib_diag_client* %62, %struct.qib_diag_client** @client_pool, align 8
  br label %63

63:                                               ; preds = %51, %48
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
