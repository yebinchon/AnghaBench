; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_format_path_from_lap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_format_path_from_lap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_id_private = type { i32, i32 }
%struct.sa_path_rec = type { i32, i64, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.cm_lap_msg = type { i32, i32, i32 }

@IB_SA_EQ = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cm_id_private*, %struct.sa_path_rec*, %struct.cm_lap_msg*)* @cm_format_path_from_lap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_format_path_from_lap(%struct.cm_id_private* %0, %struct.sa_path_rec* %1, %struct.cm_lap_msg* %2) #0 {
  %4 = alloca %struct.cm_id_private*, align 8
  %5 = alloca %struct.sa_path_rec*, align 8
  %6 = alloca %struct.cm_lap_msg*, align 8
  store %struct.cm_id_private* %0, %struct.cm_id_private** %4, align 8
  store %struct.sa_path_rec* %1, %struct.sa_path_rec** %5, align 8
  store %struct.cm_lap_msg* %2, %struct.cm_lap_msg** %6, align 8
  %7 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %8 = getelementptr inbounds %struct.cm_lap_msg, %struct.cm_lap_msg* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %11 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %10, i32 0, i32 13
  store i32 %9, i32* %11, align 8
  %12 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %13 = getelementptr inbounds %struct.cm_lap_msg, %struct.cm_lap_msg* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %16 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %15, i32 0, i32 12
  store i32 %14, i32* %16, align 4
  %17 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %18 = call i32 @cm_lap_get_flow_label(%struct.cm_lap_msg* %17)
  %19 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %20 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %19, i32 0, i32 11
  store i32 %18, i32* %20, align 8
  %21 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %22 = getelementptr inbounds %struct.cm_lap_msg, %struct.cm_lap_msg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %25 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %24, i32 0, i32 10
  store i32 %23, i32* %25, align 4
  %26 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %27 = call i32 @cm_lap_get_traffic_class(%struct.cm_lap_msg* %26)
  %28 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %29 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %28, i32 0, i32 9
  store i32 %27, i32* %29, align 8
  %30 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %31 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %33 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %36 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %35, i32 0, i32 8
  store i32 %34, i32* %36, align 4
  %37 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %38 = call i32 @cm_lap_get_sl(%struct.cm_lap_msg* %37)
  %39 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %40 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %39, i32 0, i32 7
  store i32 %38, i32* %40, align 8
  %41 = load i8*, i8** @IB_SA_EQ, align 8
  %42 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %43 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %42, i32 0, i32 6
  store i8* %41, i8** %43, align 8
  %44 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %45 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %48 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 8
  %49 = load i8*, i8** @IB_SA_EQ, align 8
  %50 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %51 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %50, i32 0, i32 4
  store i8* %49, i8** %51, align 8
  %52 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %53 = call i32 @cm_lap_get_packet_rate(%struct.cm_lap_msg* %52)
  %54 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %55 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 8
  %56 = load i8*, i8** @IB_SA_EQ, align 8
  %57 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %58 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %60 = call i64 @cm_lap_get_local_ack_timeout(%struct.cm_lap_msg* %59)
  %61 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %62 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  %63 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %64 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %65, 0
  %67 = zext i1 %66 to i32
  %68 = sext i32 %67 to i64
  %69 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %70 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %71, %68
  store i64 %72, i64* %70, align 8
  %73 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %74 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %75 = call i32 @cm_format_path_lid_from_lap(%struct.cm_lap_msg* %73, %struct.sa_path_rec* %74)
  ret void
}

declare dso_local i32 @cm_lap_get_flow_label(%struct.cm_lap_msg*) #1

declare dso_local i32 @cm_lap_get_traffic_class(%struct.cm_lap_msg*) #1

declare dso_local i32 @cm_lap_get_sl(%struct.cm_lap_msg*) #1

declare dso_local i32 @cm_lap_get_packet_rate(%struct.cm_lap_msg*) #1

declare dso_local i64 @cm_lap_get_local_ack_timeout(%struct.cm_lap_msg*) #1

declare dso_local i32 @cm_format_path_lid_from_lap(%struct.cm_lap_msg*, %struct.sa_path_rec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
