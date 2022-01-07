; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_alloc_ucontext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_alloc_ucontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ucontext = type { %struct.ib_device* }
%struct.ib_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.ib_udata = type { i32 }
%struct.mlx4_ib_dev = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.mlx4_ib_ucontext = type { i32, i32, i32, i32, i32 }
%struct.mlx4_ib_alloc_ucontext_resp_v3 = type { i32, i32, i32, i32, i32 }
%struct.mlx4_ib_alloc_ucontext_resp = type { i32, i32, i32, i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@MLX4_IB_UVERBS_NO_DEV_CAPS_ABI_VERSION = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_ucontext*, %struct.ib_udata*)* @mlx4_ib_alloc_ucontext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_ib_alloc_ucontext(%struct.ib_ucontext* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_ucontext*, align 8
  %5 = alloca %struct.ib_udata*, align 8
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca %struct.mlx4_ib_dev*, align 8
  %8 = alloca %struct.mlx4_ib_ucontext*, align 8
  %9 = alloca %struct.mlx4_ib_alloc_ucontext_resp_v3, align 4
  %10 = alloca %struct.mlx4_ib_alloc_ucontext_resp, align 4
  %11 = alloca i32, align 4
  store %struct.ib_ucontext* %0, %struct.ib_ucontext** %4, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %5, align 8
  %12 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %13 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %12, i32 0, i32 0
  %14 = load %struct.ib_device*, %struct.ib_device** %13, align 8
  store %struct.ib_device* %14, %struct.ib_device** %6, align 8
  %15 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %16 = call %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device* %15)
  store %struct.mlx4_ib_dev* %16, %struct.mlx4_ib_dev** %7, align 8
  %17 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %18 = call %struct.mlx4_ib_ucontext* @to_mucontext(%struct.ib_ucontext* %17)
  store %struct.mlx4_ib_ucontext* %18, %struct.mlx4_ib_ucontext** %8, align 8
  %19 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %20 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @EAGAIN, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %144

26:                                               ; preds = %2
  %27 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %28 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MLX4_IB_UVERBS_NO_DEV_CAPS_ABI_VERSION, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %55

33:                                               ; preds = %26
  %34 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %35 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.mlx4_ib_alloc_ucontext_resp_v3, %struct.mlx4_ib_alloc_ucontext_resp_v3* %9, i32 0, i32 3
  store i32 %39, i32* %40, align 4
  %41 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %42 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.mlx4_ib_alloc_ucontext_resp_v3, %struct.mlx4_ib_alloc_ucontext_resp_v3* %9, i32 0, i32 2
  store i32 %46, i32* %47, align 4
  %48 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %49 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.mlx4_ib_alloc_ucontext_resp_v3, %struct.mlx4_ib_alloc_ucontext_resp_v3* %9, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  br label %91

55:                                               ; preds = %26
  %56 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %57 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.mlx4_ib_alloc_ucontext_resp, %struct.mlx4_ib_alloc_ucontext_resp* %10, i32 0, i32 4
  store i32 %61, i32* %62, align 4
  %63 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %64 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.mlx4_ib_alloc_ucontext_resp, %struct.mlx4_ib_alloc_ucontext_resp* %10, i32 0, i32 3
  store i32 %68, i32* %69, align 4
  %70 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %71 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.mlx4_ib_alloc_ucontext_resp, %struct.mlx4_ib_alloc_ucontext_resp* %10, i32 0, i32 2
  store i32 %75, i32* %76, align 4
  %77 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %78 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %77, i32 0, i32 0
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.mlx4_ib_alloc_ucontext_resp, %struct.mlx4_ib_alloc_ucontext_resp* %10, i32 0, i32 1
  store i32 %82, i32* %83, align 4
  %84 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %85 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %84, i32 0, i32 0
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.mlx4_ib_alloc_ucontext_resp, %struct.mlx4_ib_alloc_ucontext_resp* %10, i32 0, i32 0
  store i32 %89, i32* %90, align 4
  br label %91

91:                                               ; preds = %55, %33
  %92 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %93 = call %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device* %92)
  %94 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %93, i32 0, i32 0
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = load %struct.mlx4_ib_ucontext*, %struct.mlx4_ib_ucontext** %8, align 8
  %97 = getelementptr inbounds %struct.mlx4_ib_ucontext, %struct.mlx4_ib_ucontext* %96, i32 0, i32 0
  %98 = call i32 @mlx4_uar_alloc(%struct.TYPE_7__* %95, i32* %97)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %91
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %3, align 4
  br label %144

103:                                              ; preds = %91
  %104 = load %struct.mlx4_ib_ucontext*, %struct.mlx4_ib_ucontext** %8, align 8
  %105 = getelementptr inbounds %struct.mlx4_ib_ucontext, %struct.mlx4_ib_ucontext* %104, i32 0, i32 4
  %106 = call i32 @INIT_LIST_HEAD(i32* %105)
  %107 = load %struct.mlx4_ib_ucontext*, %struct.mlx4_ib_ucontext** %8, align 8
  %108 = getelementptr inbounds %struct.mlx4_ib_ucontext, %struct.mlx4_ib_ucontext* %107, i32 0, i32 3
  %109 = call i32 @mutex_init(i32* %108)
  %110 = load %struct.mlx4_ib_ucontext*, %struct.mlx4_ib_ucontext** %8, align 8
  %111 = getelementptr inbounds %struct.mlx4_ib_ucontext, %struct.mlx4_ib_ucontext* %110, i32 0, i32 2
  %112 = call i32 @INIT_LIST_HEAD(i32* %111)
  %113 = load %struct.mlx4_ib_ucontext*, %struct.mlx4_ib_ucontext** %8, align 8
  %114 = getelementptr inbounds %struct.mlx4_ib_ucontext, %struct.mlx4_ib_ucontext* %113, i32 0, i32 1
  %115 = call i32 @mutex_init(i32* %114)
  %116 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %117 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @MLX4_IB_UVERBS_NO_DEV_CAPS_ABI_VERSION, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %103
  %123 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %124 = call i32 @ib_copy_to_udata(%struct.ib_udata* %123, %struct.mlx4_ib_alloc_ucontext_resp_v3* %9, i32 20)
  store i32 %124, i32* %11, align 4
  br label %129

125:                                              ; preds = %103
  %126 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %127 = bitcast %struct.mlx4_ib_alloc_ucontext_resp* %10 to %struct.mlx4_ib_alloc_ucontext_resp_v3*
  %128 = call i32 @ib_copy_to_udata(%struct.ib_udata* %126, %struct.mlx4_ib_alloc_ucontext_resp_v3* %127, i32 20)
  store i32 %128, i32* %11, align 4
  br label %129

129:                                              ; preds = %125, %122
  %130 = load i32, i32* %11, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %129
  %133 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %134 = call %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device* %133)
  %135 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %134, i32 0, i32 0
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = load %struct.mlx4_ib_ucontext*, %struct.mlx4_ib_ucontext** %8, align 8
  %138 = getelementptr inbounds %struct.mlx4_ib_ucontext, %struct.mlx4_ib_ucontext* %137, i32 0, i32 0
  %139 = call i32 @mlx4_uar_free(%struct.TYPE_7__* %136, i32* %138)
  %140 = load i32, i32* @EFAULT, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %3, align 4
  br label %144

142:                                              ; preds = %129
  %143 = load i32, i32* %11, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %142, %132, %101, %23
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local %struct.mlx4_ib_ucontext* @to_mucontext(%struct.ib_ucontext*) #1

declare dso_local i32 @mlx4_uar_alloc(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ib_copy_to_udata(%struct.ib_udata*, %struct.mlx4_ib_alloc_ucontext_resp_v3*, i32) #1

declare dso_local i32 @mlx4_uar_free(%struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
