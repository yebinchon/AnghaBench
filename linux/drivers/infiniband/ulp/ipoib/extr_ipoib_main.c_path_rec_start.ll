; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_path_rec_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_path_rec_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipoib_path = type { i32, i32, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ipoib_dev_priv = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Start path record lookup for %pI6\0A\00", align 1
@ipoib_sa_client = common dso_local global i32 0, align 4
@IB_SA_PATH_REC_DGID = common dso_local global i32 0, align 4
@IB_SA_PATH_REC_SGID = common dso_local global i32 0, align 4
@IB_SA_PATH_REC_NUMB_PATH = common dso_local global i32 0, align 4
@IB_SA_PATH_REC_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@IB_SA_PATH_REC_PKEY = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@path_rec_completion = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"ib_sa_path_rec_get failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ipoib_path*)* @path_rec_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @path_rec_start(%struct.net_device* %0, %struct.ipoib_path* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ipoib_path*, align 8
  %6 = alloca %struct.ipoib_dev_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ipoib_path* %1, %struct.ipoib_path** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %7)
  store %struct.ipoib_dev_priv* %8, %struct.ipoib_dev_priv** %6, align 8
  %9 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %10 = load %struct.ipoib_path*, %struct.ipoib_path** %5, align 8
  %11 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @ipoib_dbg(%struct.ipoib_dev_priv* %9, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.ipoib_path*, %struct.ipoib_path** %5, align 8
  %17 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %16, i32 0, i32 1
  %18 = call i32 @init_completion(i32* %17)
  %19 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %20 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %23 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ipoib_path*, %struct.ipoib_path** %5, align 8
  %26 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %25, i32 0, i32 3
  %27 = load i32, i32* @IB_SA_PATH_REC_DGID, align 4
  %28 = load i32, i32* @IB_SA_PATH_REC_SGID, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @IB_SA_PATH_REC_NUMB_PATH, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @IB_SA_PATH_REC_TRAFFIC_CLASS, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @IB_SA_PATH_REC_PKEY, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @GFP_ATOMIC, align 4
  %37 = load i32, i32* @path_rec_completion, align 4
  %38 = load %struct.ipoib_path*, %struct.ipoib_path** %5, align 8
  %39 = load %struct.ipoib_path*, %struct.ipoib_path** %5, align 8
  %40 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %39, i32 0, i32 2
  %41 = call i32 @ib_sa_path_rec_get(i32* @ipoib_sa_client, i32 %21, i32 %24, %struct.TYPE_4__* %26, i32 %35, i32 1000, i32 %36, i32 %37, %struct.ipoib_path* %38, i32** %40)
  %42 = load %struct.ipoib_path*, %struct.ipoib_path** %5, align 8
  %43 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.ipoib_path*, %struct.ipoib_path** %5, align 8
  %45 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %2
  %49 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %50 = load %struct.ipoib_path*, %struct.ipoib_path** %5, align 8
  %51 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load %struct.ipoib_path*, %struct.ipoib_path** %5, align 8
  %55 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %54, i32 0, i32 2
  store i32* null, i32** %55, align 8
  %56 = load %struct.ipoib_path*, %struct.ipoib_path** %5, align 8
  %57 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %56, i32 0, i32 1
  %58 = call i32 @complete(i32* %57)
  %59 = load %struct.ipoib_path*, %struct.ipoib_path** %5, align 8
  %60 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %3, align 4
  br label %63

62:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %48
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device*) #1

declare dso_local i32 @ipoib_dbg(%struct.ipoib_dev_priv*, i8*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @ib_sa_path_rec_get(i32*, i32, i32, %struct.TYPE_4__*, i32, i32, i32, i32, %struct.ipoib_path*, i32**) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
