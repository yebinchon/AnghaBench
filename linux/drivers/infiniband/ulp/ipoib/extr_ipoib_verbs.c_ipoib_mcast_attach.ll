; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_verbs.c_ipoib_mcast_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_verbs.c_ipoib_mcast_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ib_device = type { i32 }
%union.ib_gid = type { i32 }
%struct.ipoib_dev_priv = type { i32, i32, i32, i32, i32 }
%struct.ib_qp_attr = type { i32 }

@IPOIB_PKEY_ASSIGNED = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IB_QP_QKEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to modify QP, ret = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"failed to attach to multicast group, ret = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipoib_mcast_attach(%struct.net_device* %0, %struct.ib_device* %1, %union.ib_gid* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.ib_device*, align 8
  %9 = alloca %union.ib_gid*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ipoib_dev_priv*, align 8
  %14 = alloca %struct.ib_qp_attr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.ib_device* %1, %struct.ib_device** %8, align 8
  store %union.ib_gid* %2, %union.ib_gid** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load %struct.net_device*, %struct.net_device** %7, align 8
  %18 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %17)
  store %struct.ipoib_dev_priv* %18, %struct.ipoib_dev_priv** %13, align 8
  store %struct.ib_qp_attr* null, %struct.ib_qp_attr** %14, align 8
  %19 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %13, align 8
  %20 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %13, align 8
  %23 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %13, align 8
  %26 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @ib_find_pkey(i32 %21, i32 %24, i32 %27, i32* %16)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %6
  %31 = load i32, i32* @IPOIB_PKEY_ASSIGNED, align 4
  %32 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %13, align 8
  %33 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %32, i32 0, i32 1
  %34 = call i32 @clear_bit(i32 %31, i32* %33)
  %35 = load i32, i32* @ENXIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %15, align 4
  br label %83

37:                                               ; preds = %6
  %38 = load i32, i32* @IPOIB_PKEY_ASSIGNED, align 4
  %39 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %13, align 8
  %40 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %39, i32 0, i32 1
  %41 = call i32 @set_bit(i32 %38, i32* %40)
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %69

44:                                               ; preds = %37
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.ib_qp_attr* @kmalloc(i32 4, i32 %47)
  store %struct.ib_qp_attr* %48, %struct.ib_qp_attr** %14, align 8
  %49 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %14, align 8
  %50 = icmp ne %struct.ib_qp_attr* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %44
  br label %83

52:                                               ; preds = %44
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %14, align 8
  %55 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %13, align 8
  %57 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %14, align 8
  %60 = load i32, i32* @IB_QP_QKEY, align 4
  %61 = call i32 @ib_modify_qp(i32 %58, %struct.ib_qp_attr* %59, i32 %60)
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %15, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %52
  %65 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %13, align 8
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %65, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %66)
  br label %83

68:                                               ; preds = %52
  br label %69

69:                                               ; preds = %68, %37
  %70 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %13, align 8
  %71 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %union.ib_gid*, %union.ib_gid** %9, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @ib_attach_mcast(i32 %72, %union.ib_gid* %73, i32 %74)
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %15, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %69
  %79 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %13, align 8
  %80 = load i32, i32* %15, align 4
  %81 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %79, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %78, %69
  br label %83

83:                                               ; preds = %82, %64, %51, %30
  %84 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %14, align 8
  %85 = call i32 @kfree(%struct.ib_qp_attr* %84)
  %86 = load i32, i32* %15, align 4
  ret i32 %86
}

declare dso_local %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device*) #1

declare dso_local i64 @ib_find_pkey(i32, i32, i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local %struct.ib_qp_attr* @kmalloc(i32, i32) #1

declare dso_local i32 @ib_modify_qp(i32, %struct.ib_qp_attr*, i32) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, i32) #1

declare dso_local i32 @ib_attach_mcast(i32, %union.ib_gid*, i32) #1

declare dso_local i32 @kfree(%struct.ib_qp_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
