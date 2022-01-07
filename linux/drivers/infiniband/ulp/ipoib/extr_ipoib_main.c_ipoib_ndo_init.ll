; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_ndo_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_ndo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32*, i32, i32 }
%struct.ipoib_dev_priv = type { i32, i32, i32, i32, %struct.net_device*, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@IPOIB_CM_MTU = common dso_local global i32 0, align 4
@IPOIB_FLAG_DEV_ADDR_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"%s: failed to initialize device: %s port %d (ret = %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ipoib_ndo_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoib_ndo_init(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ipoib_dev_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipoib_dev_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %7)
  store %struct.ipoib_dev_priv* %8, %struct.ipoib_dev_priv** %4, align 8
  %9 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %10 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %9, i32 0, i32 4
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  %12 = icmp ne %struct.net_device* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call i32 @ipoib_child_init(%struct.net_device* %14)
  br label %24

16:                                               ; preds = %1
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call i32 @ipoib_parent_init(%struct.net_device* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %116

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23, %13
  %25 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %26 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %25, i32 0, i32 11
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @IPOIB_UD_MTU(i32 %27)
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %35 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %34, i32 0, i32 9
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %37 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %36, i32 0, i32 10
  store i32 %33, i32* %37, align 8
  %38 = load i32, i32* @IPOIB_CM_MTU, align 4
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  store i32 4, i32* %42, align 8
  %43 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %44 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, 32768
  store i32 %46, i32* %44, align 8
  %47 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %48 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = ashr i32 %49, 8
  %51 = load %struct.net_device*, %struct.net_device** %3, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 8
  store i32 %50, i32* %54, align 4
  %55 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %56 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, 255
  %59 = load %struct.net_device*, %struct.net_device** %3, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 9
  store i32 %58, i32* %62, align 4
  %63 = load i32, i32* @IPOIB_FLAG_DEV_ADDR_SET, align 4
  %64 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %65 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %64, i32 0, i32 8
  %66 = call i32 @set_bit(i32 %63, i32* %65)
  %67 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %68 = call i32 @ipoib_set_dev_features(%struct.ipoib_dev_priv* %67)
  %69 = load %struct.net_device*, %struct.net_device** %3, align 8
  %70 = call i32 @ipoib_dev_init(%struct.net_device* %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %90

73:                                               ; preds = %24
  %74 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %75 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %74, i32 0, i32 7
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %80 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %79, i32 0, i32 6
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %85 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @pr_warn(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %83, i32 %86, i32 %87)
  %89 = load i32, i32* %5, align 4
  store i32 %89, i32* %2, align 4
  br label %116

90:                                               ; preds = %24
  %91 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %92 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %91, i32 0, i32 4
  %93 = load %struct.net_device*, %struct.net_device** %92, align 8
  %94 = icmp ne %struct.net_device* %93, null
  br i1 %94, label %95, label %115

95:                                               ; preds = %90
  %96 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %97 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %96, i32 0, i32 4
  %98 = load %struct.net_device*, %struct.net_device** %97, align 8
  %99 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %98)
  store %struct.ipoib_dev_priv* %99, %struct.ipoib_dev_priv** %6, align 8
  %100 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %101 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %100, i32 0, i32 4
  %102 = load %struct.net_device*, %struct.net_device** %101, align 8
  %103 = call i32 @dev_hold(%struct.net_device* %102)
  %104 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %105 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %104, i32 0, i32 1
  %106 = call i32 @down_write(i32* %105)
  %107 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %108 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %107, i32 0, i32 3
  %109 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %110 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %109, i32 0, i32 2
  %111 = call i32 @list_add_tail(i32* %108, i32* %110)
  %112 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %113 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %112, i32 0, i32 1
  %114 = call i32 @up_write(i32* %113)
  br label %115

115:                                              ; preds = %95, %90
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %115, %73, %21
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device*) #1

declare dso_local i32 @ipoib_child_init(%struct.net_device*) #1

declare dso_local i32 @ipoib_parent_init(%struct.net_device*) #1

declare dso_local i32 @IPOIB_UD_MTU(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ipoib_set_dev_features(%struct.ipoib_dev_priv*) #1

declare dso_local i32 @ipoib_dev_init(%struct.net_device*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
