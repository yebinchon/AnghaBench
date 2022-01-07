; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c___ib_alloc_pd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c___ib_alloc_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { i32, %struct.ib_mr*, i32, i32, %struct.ib_device*, %struct.TYPE_7__, i32, i32* }
%struct.ib_mr = type { i32, i32, i32, i32*, i32, %struct.ib_pd*, %struct.ib_device* }
%struct.TYPE_7__ = type { i32 }
%struct.ib_device = type { %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 (%struct.ib_pd*, i32*)*, %struct.ib_mr* (%struct.ib_pd*, i32)* }

@ib_pd = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RDMA_RESTRACK_PD = common dso_local global i32 0, align 4
@IB_DEVICE_LOCAL_DMA_LKEY = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@IB_PD_UNSAFE_GLOBAL_RKEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s: enabling unsafe global rkey\0A\00", align 1
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@IB_MR_TYPE_DMA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_pd* @__ib_alloc_pd(%struct.ib_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ib_pd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ib_mr*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %13 = load i32, i32* @ib_pd, align 4
  %14 = call %struct.ib_pd* @rdma_zalloc_drv_obj(%struct.ib_device* %12, i32 %13)
  store %struct.ib_pd* %14, %struct.ib_pd** %8, align 8
  %15 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %16 = icmp ne %struct.ib_pd* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.ib_pd* @ERR_PTR(i32 %19)
  store %struct.ib_pd* %20, %struct.ib_pd** %4, align 8
  br label %161

21:                                               ; preds = %3
  %22 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %23 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %24 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %23, i32 0, i32 4
  store %struct.ib_device* %22, %struct.ib_device** %24, align 8
  %25 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %26 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %25, i32 0, i32 7
  store i32* null, i32** %26, align 8
  %27 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %28 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %27, i32 0, i32 1
  store %struct.ib_mr* null, %struct.ib_mr** %28, align 8
  %29 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %30 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %29, i32 0, i32 6
  %31 = call i32 @atomic_set(i32* %30, i32 0)
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %34 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @RDMA_RESTRACK_PD, align 4
  %36 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %37 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %40 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %39, i32 0, i32 5
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @rdma_restrack_set_task(%struct.TYPE_7__* %40, i8* %41)
  %43 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %44 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32 (%struct.ib_pd*, i32*)*, i32 (%struct.ib_pd*, i32*)** %45, align 8
  %47 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %48 = call i32 %46(%struct.ib_pd* %47, i32* null)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %21
  %52 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %53 = call i32 @kfree(%struct.ib_pd* %52)
  %54 = load i32, i32* %10, align 4
  %55 = call %struct.ib_pd* @ERR_PTR(i32 %54)
  store %struct.ib_pd* %55, %struct.ib_pd** %4, align 8
  br label %161

56:                                               ; preds = %21
  %57 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %58 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %57, i32 0, i32 5
  %59 = call i32 @rdma_restrack_kadd(%struct.TYPE_7__* %58)
  %60 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %61 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @IB_DEVICE_LOCAL_DMA_LKEY, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %56
  %68 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %69 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %72 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  br label %77

73:                                               ; preds = %56
  %74 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %75 = load i32, i32* %9, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %73, %67
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @IB_PD_UNSAFE_GLOBAL_RKEY, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %77
  %83 = load i8*, i8** %7, align 8
  %84 = call i32 @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %83)
  %85 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %86 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* %9, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %9, align 4
  br label %90

90:                                               ; preds = %82, %77
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %159

93:                                               ; preds = %90
  %94 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %95 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %94, i32 0, i32 4
  %96 = load %struct.ib_device*, %struct.ib_device** %95, align 8
  %97 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = load %struct.ib_mr* (%struct.ib_pd*, i32)*, %struct.ib_mr* (%struct.ib_pd*, i32)** %98, align 8
  %100 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %101 = load i32, i32* %9, align 4
  %102 = call %struct.ib_mr* %99(%struct.ib_pd* %100, i32 %101)
  store %struct.ib_mr* %102, %struct.ib_mr** %11, align 8
  %103 = load %struct.ib_mr*, %struct.ib_mr** %11, align 8
  %104 = call i64 @IS_ERR(%struct.ib_mr* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %93
  %107 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %108 = call i32 @ib_dealloc_pd(%struct.ib_pd* %107)
  %109 = load %struct.ib_mr*, %struct.ib_mr** %11, align 8
  %110 = call %struct.ib_pd* @ERR_CAST(%struct.ib_mr* %109)
  store %struct.ib_pd* %110, %struct.ib_pd** %4, align 8
  br label %161

111:                                              ; preds = %93
  %112 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %113 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %112, i32 0, i32 4
  %114 = load %struct.ib_device*, %struct.ib_device** %113, align 8
  %115 = load %struct.ib_mr*, %struct.ib_mr** %11, align 8
  %116 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %115, i32 0, i32 6
  store %struct.ib_device* %114, %struct.ib_device** %116, align 8
  %117 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %118 = load %struct.ib_mr*, %struct.ib_mr** %11, align 8
  %119 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %118, i32 0, i32 5
  store %struct.ib_pd* %117, %struct.ib_pd** %119, align 8
  %120 = load i32, i32* @IB_MR_TYPE_DMA, align 4
  %121 = load %struct.ib_mr*, %struct.ib_mr** %11, align 8
  %122 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 8
  %123 = load %struct.ib_mr*, %struct.ib_mr** %11, align 8
  %124 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %123, i32 0, i32 3
  store i32* null, i32** %124, align 8
  %125 = load %struct.ib_mr*, %struct.ib_mr** %11, align 8
  %126 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %125, i32 0, i32 0
  store i32 0, i32* %126, align 8
  %127 = load %struct.ib_mr*, %struct.ib_mr** %11, align 8
  %128 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %129 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %128, i32 0, i32 1
  store %struct.ib_mr* %127, %struct.ib_mr** %129, align 8
  %130 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %131 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @IB_DEVICE_LOCAL_DMA_LKEY, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %145, label %137

137:                                              ; preds = %111
  %138 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %139 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %138, i32 0, i32 1
  %140 = load %struct.ib_mr*, %struct.ib_mr** %139, align 8
  %141 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %144 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 4
  br label %145

145:                                              ; preds = %137, %111
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* @IB_PD_UNSAFE_GLOBAL_RKEY, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %145
  %151 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %152 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %151, i32 0, i32 1
  %153 = load %struct.ib_mr*, %struct.ib_mr** %152, align 8
  %154 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %157 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %156, i32 0, i32 2
  store i32 %155, i32* %157, align 8
  br label %158

158:                                              ; preds = %150, %145
  br label %159

159:                                              ; preds = %158, %90
  %160 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  store %struct.ib_pd* %160, %struct.ib_pd** %4, align 8
  br label %161

161:                                              ; preds = %159, %106, %51, %17
  %162 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  ret %struct.ib_pd* %162
}

declare dso_local %struct.ib_pd* @rdma_zalloc_drv_obj(%struct.ib_device*, i32) #1

declare dso_local %struct.ib_pd* @ERR_PTR(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @rdma_restrack_set_task(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @kfree(%struct.ib_pd*) #1

declare dso_local i32 @rdma_restrack_kadd(%struct.TYPE_7__*) #1

declare dso_local i32 @pr_warn(i8*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.ib_mr*) #1

declare dso_local i32 @ib_dealloc_pd(%struct.ib_pd*) #1

declare dso_local %struct.ib_pd* @ERR_CAST(%struct.ib_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
