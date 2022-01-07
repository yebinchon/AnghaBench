; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_create_srq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_create_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i64, %struct.TYPE_15__, %struct.ib_pd*, i32, i32, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 (%struct.ib_srq*, %struct.ib_srq_init_attr*, i32*)* }
%struct.ib_pd = type { i32, %struct.TYPE_16__* }
%struct.ib_srq_init_attr = type { i64, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_14__* }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ib_srq = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IB_SRQT_XRC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_srq* @ib_create_srq(%struct.ib_pd* %0, %struct.ib_srq_init_attr* %1) #0 {
  %3 = alloca %struct.ib_srq*, align 8
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca %struct.ib_srq_init_attr*, align 8
  %6 = alloca %struct.ib_srq*, align 8
  %7 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %4, align 8
  store %struct.ib_srq_init_attr* %1, %struct.ib_srq_init_attr** %5, align 8
  %8 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %9 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %8, i32 0, i32 1
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i32 (%struct.ib_srq*, %struct.ib_srq_init_attr*, i32*)*, i32 (%struct.ib_srq*, %struct.ib_srq_init_attr*, i32*)** %12, align 8
  %14 = icmp ne i32 (%struct.ib_srq*, %struct.ib_srq_init_attr*, i32*)* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.ib_srq* @ERR_PTR(i32 %17)
  store %struct.ib_srq* %18, %struct.ib_srq** %3, align 8
  br label %151

19:                                               ; preds = %2
  %20 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %21 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %20, i32 0, i32 1
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %23 = load i32, i32* @ib_srq, align 4
  %24 = call %struct.ib_srq* @rdma_zalloc_drv_obj(%struct.TYPE_16__* %22, i32 %23)
  store %struct.ib_srq* %24, %struct.ib_srq** %6, align 8
  %25 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %26 = icmp ne %struct.ib_srq* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.ib_srq* @ERR_PTR(i32 %29)
  store %struct.ib_srq* %30, %struct.ib_srq** %3, align 8
  br label %151

31:                                               ; preds = %19
  %32 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %33 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %32, i32 0, i32 1
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %33, align 8
  %35 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %36 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %35, i32 0, i32 5
  store %struct.TYPE_16__* %34, %struct.TYPE_16__** %36, align 8
  %37 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %38 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %39 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %38, i32 0, i32 2
  store %struct.ib_pd* %37, %struct.ib_pd** %39, align 8
  %40 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %5, align 8
  %41 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %44 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %5, align 8
  %46 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %49 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %5, align 8
  %51 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %54 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %56 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @ib_srq_has_cq(i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %31
  %61 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %5, align 8
  %62 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %63, align 8
  %65 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %66 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  store %struct.TYPE_14__* %64, %struct.TYPE_14__** %67, align 8
  %68 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %69 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = call i32 @atomic_inc(i32* %72)
  br label %74

74:                                               ; preds = %60, %31
  %75 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %76 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @IB_SRQT_XRC, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %97

80:                                               ; preds = %74
  %81 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %5, align 8
  %82 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %84, align 8
  %86 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %87 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  store %struct.TYPE_12__* %85, %struct.TYPE_12__** %89, align 8
  %90 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %91 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = call i32 @atomic_inc(i32* %95)
  br label %97

97:                                               ; preds = %80, %74
  %98 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %99 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %98, i32 0, i32 0
  %100 = call i32 @atomic_inc(i32* %99)
  %101 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %102 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %101, i32 0, i32 1
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i32 (%struct.ib_srq*, %struct.ib_srq_init_attr*, i32*)*, i32 (%struct.ib_srq*, %struct.ib_srq_init_attr*, i32*)** %105, align 8
  %107 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %108 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %5, align 8
  %109 = call i32 %106(%struct.ib_srq* %107, %struct.ib_srq_init_attr* %108, i32* null)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %149

112:                                              ; preds = %97
  %113 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %114 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %113, i32 0, i32 2
  %115 = load %struct.ib_pd*, %struct.ib_pd** %114, align 8
  %116 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %115, i32 0, i32 0
  %117 = call i32 @atomic_dec(i32* %116)
  %118 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %119 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @IB_SRQT_XRC, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %131

123:                                              ; preds = %112
  %124 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %125 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = call i32 @atomic_dec(i32* %129)
  br label %131

131:                                              ; preds = %123, %112
  %132 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %133 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = call i64 @ib_srq_has_cq(i64 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %131
  %138 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %139 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  %143 = call i32 @atomic_dec(i32* %142)
  br label %144

144:                                              ; preds = %137, %131
  %145 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %146 = call i32 @kfree(%struct.ib_srq* %145)
  %147 = load i32, i32* %7, align 4
  %148 = call %struct.ib_srq* @ERR_PTR(i32 %147)
  store %struct.ib_srq* %148, %struct.ib_srq** %3, align 8
  br label %151

149:                                              ; preds = %97
  %150 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  store %struct.ib_srq* %150, %struct.ib_srq** %3, align 8
  br label %151

151:                                              ; preds = %149, %144, %27, %15
  %152 = load %struct.ib_srq*, %struct.ib_srq** %3, align 8
  ret %struct.ib_srq* %152
}

declare dso_local %struct.ib_srq* @ERR_PTR(i32) #1

declare dso_local %struct.ib_srq* @rdma_zalloc_drv_obj(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @ib_srq_has_cq(i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @kfree(%struct.ib_srq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
