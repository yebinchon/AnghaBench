; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_dev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.ipoib_dev_priv = type { i32*, i32*, %struct.TYPE_3__*, %struct.TYPE_4__*, i32* }
%struct.TYPE_3__ = type { i32 (%struct.net_device*)* }
%struct.TYPE_4__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ipoib_wq\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"%s: failed to allocate device WQ\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"%s: failed to allocate PD\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"%s failed to init HW resource\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"%s failed to init neigh hash\0A\00", align 1
@IFF_UP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"%s failed to open device\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ipoib_dev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoib_dev_init(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ipoib_dev_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %6)
  store %struct.ipoib_dev_priv* %7, %struct.ipoib_dev_priv** %4, align 8
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %11 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %10, i32 0, i32 4
  store i32* null, i32** %11, align 8
  %12 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %13 = call i32* @alloc_ordered_workqueue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %15 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %14, i32 0, i32 0
  store i32* %13, i32** %15, align 8
  %16 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %17 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pr_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  br label %121

25:                                               ; preds = %1
  %26 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %27 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %26, i32 0, i32 3
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = call i32* @ib_alloc_pd(%struct.TYPE_4__* %28, i32 0)
  %30 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %31 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %30, i32 0, i32 1
  store i32* %29, i32** %31, align 8
  %32 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %33 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i64 @IS_ERR(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %25
  %38 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %39 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %38, i32 0, i32 3
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @pr_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  br label %108

44:                                               ; preds = %25
  %45 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %46 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %45, i32 0, i32 2
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %48, align 8
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = call i32 %49(%struct.net_device* %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %44
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @pr_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  br label %95

59:                                               ; preds = %44
  %60 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %61 = call i32 @ipoib_neigh_hash_init(%struct.ipoib_dev_priv* %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.net_device*, %struct.net_device** %3, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @pr_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %67)
  br label %92

69:                                               ; preds = %59
  %70 = load %struct.net_device*, %struct.net_device** %3, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @IFF_UP, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %69
  %77 = load %struct.net_device*, %struct.net_device** %3, align 8
  %78 = call i64 @ipoib_ib_dev_open(%struct.net_device* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %76
  %81 = load %struct.net_device*, %struct.net_device** %3, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @pr_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @ENODEV, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %5, align 4
  br label %89

87:                                               ; preds = %76
  br label %88

88:                                               ; preds = %87, %69
  store i32 0, i32* %2, align 4
  br label %123

89:                                               ; preds = %80
  %90 = load %struct.net_device*, %struct.net_device** %3, align 8
  %91 = call i32 @ipoib_neigh_hash_uninit(%struct.net_device* %90)
  br label %92

92:                                               ; preds = %89, %64
  %93 = load %struct.net_device*, %struct.net_device** %3, align 8
  %94 = call i32 @ipoib_ib_dev_cleanup(%struct.net_device* %93)
  br label %95

95:                                               ; preds = %92, %54
  %96 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %97 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %107

100:                                              ; preds = %95
  %101 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %102 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @ib_dealloc_pd(i32* %103)
  %105 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %106 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %105, i32 0, i32 1
  store i32* null, i32** %106, align 8
  br label %107

107:                                              ; preds = %100, %95
  br label %108

108:                                              ; preds = %107, %37
  %109 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %110 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %120

113:                                              ; preds = %108
  %114 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %115 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @destroy_workqueue(i32* %116)
  %118 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %119 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %118, i32 0, i32 0
  store i32* null, i32** %119, align 8
  br label %120

120:                                              ; preds = %113, %108
  br label %121

121:                                              ; preds = %120, %20
  %122 = load i32, i32* %5, align 4
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %121, %88
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device*) #1

declare dso_local i32* @alloc_ordered_workqueue(i8*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32* @ib_alloc_pd(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @ipoib_neigh_hash_init(%struct.ipoib_dev_priv*) #1

declare dso_local i64 @ipoib_ib_dev_open(%struct.net_device*) #1

declare dso_local i32 @ipoib_neigh_hash_uninit(%struct.net_device*) #1

declare dso_local i32 @ipoib_ib_dev_cleanup(%struct.net_device*) #1

declare dso_local i32 @ib_dealloc_pd(i32*) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
