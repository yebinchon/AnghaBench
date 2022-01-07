; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_hw.c_i40iw_cqp_ce_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_hw.c_i40iw_cqp_ce_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { i32, %struct.i40iw_sc_dev }
%struct.i40iw_sc_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.i40iw_sc_cq*, %struct.i40iw_ccq_cqe_info*)*, i32 (%struct.i40iw_sc_cq*)* }
%struct.i40iw_ccq_cqe_info = type { i64, i32, i32, i32, i32, i64 }
%struct.i40iw_sc_cq = type { i32 }
%struct.i40iw_cqp_request = type { i32, i32 (%struct.i40iw_cqp_request*, i32)*, i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [55 x i8] c"opcode = 0x%x maj_err_code = 0x%x min_err_code = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_device*, %struct.i40iw_sc_cq*, i32)* @i40iw_cqp_ce_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_cqp_ce_handler(%struct.i40iw_device* %0, %struct.i40iw_sc_cq* %1, i32 %2) #0 {
  %4 = alloca %struct.i40iw_device*, align 8
  %5 = alloca %struct.i40iw_sc_cq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i40iw_cqp_request*, align 8
  %8 = alloca %struct.i40iw_sc_dev*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i40iw_ccq_cqe_info, align 8
  %11 = alloca i32, align 4
  store %struct.i40iw_device* %0, %struct.i40iw_device** %4, align 8
  store %struct.i40iw_sc_cq* %1, %struct.i40iw_sc_cq** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %13 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %12, i32 0, i32 1
  store %struct.i40iw_sc_dev* %13, %struct.i40iw_sc_dev** %8, align 8
  store i64 0, i64* %9, align 8
  br label %14

14:                                               ; preds = %99, %3
  %15 = call i32 @memset(%struct.i40iw_ccq_cqe_info* %10, i32 0, i32 32)
  %16 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %8, align 8
  %17 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32 (%struct.i40iw_sc_cq*, %struct.i40iw_ccq_cqe_info*)*, i32 (%struct.i40iw_sc_cq*, %struct.i40iw_ccq_cqe_info*)** %19, align 8
  %21 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %5, align 8
  %22 = call i32 %20(%struct.i40iw_sc_cq* %21, %struct.i40iw_ccq_cqe_info* %10)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  br label %100

26:                                               ; preds = %14
  %27 = getelementptr inbounds %struct.i40iw_ccq_cqe_info, %struct.i40iw_ccq_cqe_info* %10, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.i40iw_cqp_request*
  store %struct.i40iw_cqp_request* %29, %struct.i40iw_cqp_request** %7, align 8
  %30 = getelementptr inbounds %struct.i40iw_ccq_cqe_info, %struct.i40iw_ccq_cqe_info* %10, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.i40iw_ccq_cqe_info, %struct.i40iw_ccq_cqe_info* %10, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.i40iw_ccq_cqe_info, %struct.i40iw_ccq_cqe_info* %10, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.i40iw_ccq_cqe_info, %struct.i40iw_ccq_cqe_info* %10, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %37, i32 %39)
  br label %41

41:                                               ; preds = %33, %26
  %42 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %7, align 8
  %43 = icmp ne %struct.i40iw_cqp_request* %42, null
  br i1 %43, label %44, label %96

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.i40iw_ccq_cqe_info, %struct.i40iw_ccq_cqe_info* %10, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %7, align 8
  %48 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  store i32 %46, i32* %49, align 8
  %50 = getelementptr inbounds %struct.i40iw_ccq_cqe_info, %struct.i40iw_ccq_cqe_info* %10, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %7, align 8
  %53 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  store i32 %51, i32* %54, align 4
  %55 = getelementptr inbounds %struct.i40iw_ccq_cqe_info, %struct.i40iw_ccq_cqe_info* %10, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %7, align 8
  %58 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 8
  %60 = getelementptr inbounds %struct.i40iw_ccq_cqe_info, %struct.i40iw_ccq_cqe_info* %10, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %7, align 8
  %63 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i64 %61, i64* %64, align 8
  %65 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %7, align 8
  %66 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %44
  %70 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %7, align 8
  %71 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  %72 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %7, align 8
  %73 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %72, i32 0, i32 2
  %74 = call i32 @wake_up(i32* %73)
  %75 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %76 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %75, i32 0, i32 0
  %77 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %7, align 8
  %78 = call i32 @i40iw_put_cqp_request(i32* %76, %struct.i40iw_cqp_request* %77)
  br label %95

79:                                               ; preds = %44
  %80 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %7, align 8
  %81 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %80, i32 0, i32 1
  %82 = load i32 (%struct.i40iw_cqp_request*, i32)*, i32 (%struct.i40iw_cqp_request*, i32)** %81, align 8
  %83 = icmp ne i32 (%struct.i40iw_cqp_request*, i32)* %82, null
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %7, align 8
  %86 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %85, i32 0, i32 1
  %87 = load i32 (%struct.i40iw_cqp_request*, i32)*, i32 (%struct.i40iw_cqp_request*, i32)** %86, align 8
  %88 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %7, align 8
  %89 = call i32 %87(%struct.i40iw_cqp_request* %88, i32 1)
  br label %90

90:                                               ; preds = %84, %79
  %91 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %92 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %91, i32 0, i32 0
  %93 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %7, align 8
  %94 = call i32 @i40iw_put_cqp_request(i32* %92, %struct.i40iw_cqp_request* %93)
  br label %95

95:                                               ; preds = %90, %69
  br label %96

96:                                               ; preds = %95, %41
  %97 = load i64, i64* %9, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %9, align 8
  br label %99

99:                                               ; preds = %96
  br i1 true, label %14, label %100

100:                                              ; preds = %99, %25
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %116

103:                                              ; preds = %100
  %104 = load i64, i64* %9, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %103
  %107 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %8, align 8
  %108 = call i32 @i40iw_process_bh(%struct.i40iw_sc_dev* %107)
  %109 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %8, align 8
  %110 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i32 (%struct.i40iw_sc_cq*)*, i32 (%struct.i40iw_sc_cq*)** %112, align 8
  %114 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %5, align 8
  %115 = call i32 %113(%struct.i40iw_sc_cq* %114)
  br label %116

116:                                              ; preds = %106, %103, %100
  ret void
}

declare dso_local i32 @memset(%struct.i40iw_ccq_cqe_info*, i32, i32) #1

declare dso_local i32 @i40iw_pr_err(i8*, i32, i32, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @i40iw_put_cqp_request(i32*, %struct.i40iw_cqp_request*) #1

declare dso_local i32 @i40iw_process_bh(%struct.i40iw_sc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
