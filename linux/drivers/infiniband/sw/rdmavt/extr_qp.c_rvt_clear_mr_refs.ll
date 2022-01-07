; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_clear_mr_refs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_clear_mr_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i64, i64, i64, %struct.rvt_ack_entry*, i32*, i32, i32, i32, %struct.TYPE_3__ }
%struct.rvt_ack_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }
%struct.rvt_dev_info = type { i32 }
%struct.rvt_swqe = type { i32 }

@RVT_R_REWIND_SGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvt_qp*, i32)* @rvt_clear_mr_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rvt_clear_mr_refs(%struct.rvt_qp* %0, i32 %1) #0 {
  %3 = alloca %struct.rvt_qp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rvt_dev_info*, align 8
  %7 = alloca %struct.rvt_swqe*, align 8
  %8 = alloca %struct.rvt_ack_entry*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %10 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %9, i32 0, i32 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.rvt_dev_info* @ib_to_rvt(i32 %12)
  store %struct.rvt_dev_info* %13, %struct.rvt_dev_info** %6, align 8
  %14 = load i32, i32* @RVT_R_REWIND_SGE, align 4
  %15 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %16 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %15, i32 0, i32 7
  %17 = call i64 @test_and_clear_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %21 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %20, i32 0, i32 6
  %22 = call i32 @rvt_put_ss(i32* %21)
  br label %23

23:                                               ; preds = %19, %2
  %24 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %25 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %24, i32 0, i32 5
  %26 = call i32 @rvt_put_ss(i32* %25)
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %73

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %58, %29
  %31 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %32 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %35 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %38, label %60

38:                                               ; preds = %30
  %39 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %40 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %41 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call %struct.rvt_swqe* @rvt_get_swqe_ptr(%struct.rvt_qp* %39, i64 %42)
  store %struct.rvt_swqe* %43, %struct.rvt_swqe** %7, align 8
  %44 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %45 = load %struct.rvt_swqe*, %struct.rvt_swqe** %7, align 8
  %46 = call i32 @rvt_put_qp_swqe(%struct.rvt_qp* %44, %struct.rvt_swqe* %45)
  %47 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %48 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %48, align 8
  %51 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %52 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp sge i64 %50, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %38
  %56 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %57 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %55, %38
  %59 = call i32 (...) @smp_wmb()
  br label %30

60:                                               ; preds = %30
  %61 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %62 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %67 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %66, i32 0, i32 4
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @rvt_put_mr(i32* %68)
  %70 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %71 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %70, i32 0, i32 4
  store i32* null, i32** %71, align 8
  br label %72

72:                                               ; preds = %65, %60
  br label %73

73:                                               ; preds = %72, %23
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %108, %73
  %75 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %76 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %75, i32 0, i32 3
  %77 = load %struct.rvt_ack_entry*, %struct.rvt_ack_entry** %76, align 8
  %78 = icmp ne %struct.rvt_ack_entry* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %6, align 8
  %82 = call i32 @rvt_max_atomic(%struct.rvt_dev_info* %81)
  %83 = icmp ult i32 %80, %82
  br label %84

84:                                               ; preds = %79, %74
  %85 = phi i1 [ false, %74 ], [ %83, %79 ]
  br i1 %85, label %86, label %111

86:                                               ; preds = %84
  %87 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %88 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %87, i32 0, i32 3
  %89 = load %struct.rvt_ack_entry*, %struct.rvt_ack_entry** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.rvt_ack_entry, %struct.rvt_ack_entry* %89, i64 %91
  store %struct.rvt_ack_entry* %92, %struct.rvt_ack_entry** %8, align 8
  %93 = load %struct.rvt_ack_entry*, %struct.rvt_ack_entry** %8, align 8
  %94 = getelementptr inbounds %struct.rvt_ack_entry, %struct.rvt_ack_entry* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %107

98:                                               ; preds = %86
  %99 = load %struct.rvt_ack_entry*, %struct.rvt_ack_entry** %8, align 8
  %100 = getelementptr inbounds %struct.rvt_ack_entry, %struct.rvt_ack_entry* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @rvt_put_mr(i32* %102)
  %104 = load %struct.rvt_ack_entry*, %struct.rvt_ack_entry** %8, align 8
  %105 = getelementptr inbounds %struct.rvt_ack_entry, %struct.rvt_ack_entry* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  store i32* null, i32** %106, align 8
  br label %107

107:                                              ; preds = %98, %86
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %5, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %5, align 4
  br label %74

111:                                              ; preds = %84
  ret void
}

declare dso_local %struct.rvt_dev_info* @ib_to_rvt(i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @rvt_put_ss(i32*) #1

declare dso_local %struct.rvt_swqe* @rvt_get_swqe_ptr(%struct.rvt_qp*, i64) #1

declare dso_local i32 @rvt_put_qp_swqe(%struct.rvt_qp*, %struct.rvt_swqe*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @rvt_put_mr(i32*) #1

declare dso_local i32 @rvt_max_atomic(%struct.rvt_dev_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
