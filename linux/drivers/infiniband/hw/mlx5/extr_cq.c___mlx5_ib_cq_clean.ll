; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_cq.c___mlx5_ib_cq_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_cq.c___mlx5_ib_cq_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_cq = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mlx5_ib_srq = type { i32 }
%struct.mlx5_cqe64 = type { i32, i32, i32 }

@MLX5_CQE_OWNER_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__mlx5_ib_cq_clean(%struct.mlx5_ib_cq* %0, i32 %1, %struct.mlx5_ib_srq* %2) #0 {
  %4 = alloca %struct.mlx5_ib_cq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_ib_srq*, align 8
  %7 = alloca %struct.mlx5_cqe64*, align 8
  %8 = alloca %struct.mlx5_cqe64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlx5_ib_cq* %0, %struct.mlx5_ib_cq** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mlx5_ib_srq* %2, %struct.mlx5_ib_srq** %6, align 8
  store i32 0, i32* %12, align 4
  %14 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %4, align 8
  %15 = icmp ne %struct.mlx5_ib_cq* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %165

17:                                               ; preds = %3
  %18 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %4, align 8
  %19 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  br label %22

22:                                               ; preds = %41, %17
  %23 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %4, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i64 @get_sw_cqe(%struct.mlx5_ib_cq* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %22
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %4, align 8
  %30 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %4, align 8
  %34 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %32, %36
  %38 = icmp eq i32 %28, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  br label %44

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %11, align 4
  br label %22

44:                                               ; preds = %39, %22
  br label %45

45:                                               ; preds = %150, %44
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %11, align 4
  %48 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %4, align 8
  %49 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %47, %51
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %151

54:                                               ; preds = %45
  %55 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %4, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %4, align 8
  %58 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %56, %60
  %62 = call i8* @get_cqe(%struct.mlx5_ib_cq* %55, i32 %61)
  store i8* %62, i8** %9, align 8
  %63 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %4, align 8
  %64 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 64
  br i1 %67, label %68, label %70

68:                                               ; preds = %54
  %69 = load i8*, i8** %9, align 8
  br label %73

70:                                               ; preds = %54
  %71 = load i8*, i8** %9, align 8
  %72 = getelementptr i8, i8* %71, i64 64
  br label %73

73:                                               ; preds = %70, %68
  %74 = phi i8* [ %69, %68 ], [ %72, %70 ]
  %75 = bitcast i8* %74 to %struct.mlx5_cqe64*
  store %struct.mlx5_cqe64* %75, %struct.mlx5_cqe64** %7, align 8
  %76 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %7, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i64 @is_equal_rsn(%struct.mlx5_cqe64* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %100

80:                                               ; preds = %73
  %81 = load %struct.mlx5_ib_srq*, %struct.mlx5_ib_srq** %6, align 8
  %82 = icmp ne %struct.mlx5_ib_srq* %81, null
  br i1 %82, label %83, label %97

83:                                               ; preds = %80
  %84 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %7, align 8
  %85 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @ntohl(i32 %86)
  %88 = and i32 %87, 16777215
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %83
  %91 = load %struct.mlx5_ib_srq*, %struct.mlx5_ib_srq** %6, align 8
  %92 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %7, align 8
  %93 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @be16_to_cpu(i32 %94)
  %96 = call i32 @mlx5_ib_free_srq_wqe(%struct.mlx5_ib_srq* %91, i32 %95)
  br label %97

97:                                               ; preds = %90, %83, %80
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %12, align 4
  br label %150

100:                                              ; preds = %73
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %149

103:                                              ; preds = %100
  %104 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %4, align 8
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %105, %106
  %108 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %4, align 8
  %109 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %107, %111
  %113 = call i8* @get_cqe(%struct.mlx5_ib_cq* %104, i32 %112)
  store i8* %113, i8** %10, align 8
  %114 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %4, align 8
  %115 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, 64
  br i1 %118, label %119, label %121

119:                                              ; preds = %103
  %120 = load i8*, i8** %10, align 8
  br label %124

121:                                              ; preds = %103
  %122 = load i8*, i8** %10, align 8
  %123 = getelementptr i8, i8* %122, i64 64
  br label %124

124:                                              ; preds = %121, %119
  %125 = phi i8* [ %120, %119 ], [ %123, %121 ]
  %126 = bitcast i8* %125 to %struct.mlx5_cqe64*
  store %struct.mlx5_cqe64* %126, %struct.mlx5_cqe64** %8, align 8
  %127 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %8, align 8
  %128 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @MLX5_CQE_OWNER_MASK, align 4
  %131 = and i32 %129, %130
  store i32 %131, i32* %13, align 4
  %132 = load i8*, i8** %10, align 8
  %133 = load i8*, i8** %9, align 8
  %134 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %4, align 8
  %135 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @memcpy(i8* %132, i8* %133, i32 %137)
  %139 = load i32, i32* %13, align 4
  %140 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %8, align 8
  %141 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @MLX5_CQE_OWNER_MASK, align 4
  %144 = xor i32 %143, -1
  %145 = and i32 %142, %144
  %146 = or i32 %139, %145
  %147 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %8, align 8
  %148 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 4
  br label %149

149:                                              ; preds = %124, %100
  br label %150

150:                                              ; preds = %149, %97
  br label %45

151:                                              ; preds = %45
  %152 = load i32, i32* %12, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %165

154:                                              ; preds = %151
  %155 = load i32, i32* %12, align 4
  %156 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %4, align 8
  %157 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, %155
  store i32 %160, i32* %158, align 4
  %161 = call i32 (...) @wmb()
  %162 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %4, align 8
  %163 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %162, i32 0, i32 0
  %164 = call i32 @mlx5_cq_set_ci(%struct.TYPE_4__* %163)
  br label %165

165:                                              ; preds = %16, %154, %151
  ret void
}

declare dso_local i64 @get_sw_cqe(%struct.mlx5_ib_cq*, i32) #1

declare dso_local i8* @get_cqe(%struct.mlx5_ib_cq*, i32) #1

declare dso_local i64 @is_equal_rsn(%struct.mlx5_cqe64*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @mlx5_ib_free_srq_wqe(%struct.mlx5_ib_srq*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @mlx5_cq_set_ci(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
