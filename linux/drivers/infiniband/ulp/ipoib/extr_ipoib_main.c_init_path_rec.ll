; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_init_path_rec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_init_path_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_dev_priv = type { %struct.TYPE_8__*, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.ipoib_path = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@SA_PATH_REC_TYPE_OPA = common dso_local global i32 0, align 4
@SA_PATH_REC_TYPE_IB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipoib_dev_priv*, %struct.ipoib_path*, i8*)* @init_path_rec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_path_rec(%struct.ipoib_dev_priv* %0, %struct.ipoib_path* %1, i8* %2) #0 {
  %4 = alloca %struct.ipoib_dev_priv*, align 8
  %5 = alloca %struct.ipoib_path*, align 8
  %6 = alloca i8*, align 8
  store %struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv** %4, align 8
  store %struct.ipoib_path* %1, %struct.ipoib_path** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %8 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.ipoib_path*, %struct.ipoib_path** %5, align 8
  %11 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %13 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %16 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @rdma_cap_opa_ah(i32 %14, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load i32, i32* @SA_PATH_REC_TYPE_OPA, align 4
  %22 = load %struct.ipoib_path*, %struct.ipoib_path** %5, align 8
  %23 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 5
  store i32 %21, i32* %24, align 4
  br label %30

25:                                               ; preds = %3
  %26 = load i32, i32* @SA_PATH_REC_TYPE_IB, align 4
  %27 = load %struct.ipoib_path*, %struct.ipoib_path** %5, align 8
  %28 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 5
  store i32 %26, i32* %29, align 4
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.ipoib_path*, %struct.ipoib_path** %5, align 8
  %32 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @memcpy(i32 %35, i8* %36, i32 4)
  %38 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %39 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ipoib_path*, %struct.ipoib_path** %5, align 8
  %42 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  store i32 %40, i32* %43, align 4
  %44 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %45 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @cpu_to_be16(i32 %46)
  %48 = load %struct.ipoib_path*, %struct.ipoib_path** %5, align 8
  %49 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 4
  %51 = load %struct.ipoib_path*, %struct.ipoib_path** %5, align 8
  %52 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 4
  %54 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %55 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ipoib_path*, %struct.ipoib_path** %5, align 8
  %61 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  ret void
}

declare dso_local i64 @rdma_cap_opa_ah(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
