; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_path_set_rec_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_path_set_rec_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.sa_path_rec = type { i32 }
%union.ib_gid = type { i32 }

@SA_PATH_REC_TYPE_OPA = common dso_local global i32 0, align 4
@SA_PATH_REC_TYPE_IB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*, i32, %struct.sa_path_rec*, %union.ib_gid*)* @cm_path_set_rec_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_path_set_rec_type(%struct.ib_device* %0, i32 %1, %struct.sa_path_rec* %2, %union.ib_gid* %3) #0 {
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sa_path_rec*, align 8
  %8 = alloca %union.ib_gid*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sa_path_rec* %2, %struct.sa_path_rec** %7, align 8
  store %union.ib_gid* %3, %union.ib_gid** %8, align 8
  %9 = load %union.ib_gid*, %union.ib_gid** %8, align 8
  %10 = call i64 @ib_is_opa_gid(%union.ib_gid* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %4
  %13 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @rdma_cap_opa_ah(%struct.ib_device* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32, i32* @SA_PATH_REC_TYPE_OPA, align 4
  %19 = load %struct.sa_path_rec*, %struct.sa_path_rec** %7, align 8
  %20 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  br label %25

21:                                               ; preds = %12, %4
  %22 = load i32, i32* @SA_PATH_REC_TYPE_IB, align 4
  %23 = load %struct.sa_path_rec*, %struct.sa_path_rec** %7, align 8
  %24 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %21, %17
  ret void
}

declare dso_local i64 @ib_is_opa_gid(%union.ib_gid*) #1

declare dso_local i64 @rdma_cap_opa_ah(%struct.ib_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
