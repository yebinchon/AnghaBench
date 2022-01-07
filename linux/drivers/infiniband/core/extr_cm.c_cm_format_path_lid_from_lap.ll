; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_format_path_lid_from_lap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_format_path_lid_from_lap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_lap_msg = type { i32, i32, i32, i32 }
%struct.sa_path_rec = type { i64 }

@SA_PATH_REC_TYPE_OPA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cm_lap_msg*, %struct.sa_path_rec*)* @cm_format_path_lid_from_lap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_format_path_lid_from_lap(%struct.cm_lap_msg* %0, %struct.sa_path_rec* %1) #0 {
  %3 = alloca %struct.cm_lap_msg*, align 8
  %4 = alloca %struct.sa_path_rec*, align 8
  %5 = alloca i32, align 4
  store %struct.cm_lap_msg* %0, %struct.cm_lap_msg** %3, align 8
  store %struct.sa_path_rec* %1, %struct.sa_path_rec** %4, align 8
  %6 = load %struct.sa_path_rec*, %struct.sa_path_rec** %4, align 8
  %7 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SA_PATH_REC_TYPE_OPA, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load %struct.sa_path_rec*, %struct.sa_path_rec** %4, align 8
  %13 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %3, align 8
  %14 = getelementptr inbounds %struct.cm_lap_msg, %struct.cm_lap_msg* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ntohs(i32 %15)
  %17 = call i32 @sa_path_set_dlid(%struct.sa_path_rec* %12, i32 %16)
  %18 = load %struct.sa_path_rec*, %struct.sa_path_rec** %4, align 8
  %19 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %3, align 8
  %20 = getelementptr inbounds %struct.cm_lap_msg, %struct.cm_lap_msg* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ntohs(i32 %21)
  %23 = call i32 @sa_path_set_slid(%struct.sa_path_rec* %18, i32 %22)
  br label %37

24:                                               ; preds = %2
  %25 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %3, align 8
  %26 = getelementptr inbounds %struct.cm_lap_msg, %struct.cm_lap_msg* %25, i32 0, i32 1
  %27 = call i32 @opa_get_lid_from_gid(i32* %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.sa_path_rec*, %struct.sa_path_rec** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @sa_path_set_dlid(%struct.sa_path_rec* %28, i32 %29)
  %31 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %3, align 8
  %32 = getelementptr inbounds %struct.cm_lap_msg, %struct.cm_lap_msg* %31, i32 0, i32 0
  %33 = call i32 @opa_get_lid_from_gid(i32* %32)
  store i32 %33, i32* %5, align 4
  %34 = load %struct.sa_path_rec*, %struct.sa_path_rec** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @sa_path_set_slid(%struct.sa_path_rec* %34, i32 %35)
  br label %37

37:                                               ; preds = %24, %11
  ret void
}

declare dso_local i32 @sa_path_set_dlid(%struct.sa_path_rec*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @sa_path_set_slid(%struct.sa_path_rec*, i32) #1

declare dso_local i32 @opa_get_lid_from_gid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
