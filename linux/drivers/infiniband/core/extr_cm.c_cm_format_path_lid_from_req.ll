; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_format_path_lid_from_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_format_path_lid_from_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_req_msg = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sa_path_rec = type { i64 }

@SA_PATH_REC_TYPE_OPA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cm_req_msg*, %struct.sa_path_rec*, %struct.sa_path_rec*)* @cm_format_path_lid_from_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_format_path_lid_from_req(%struct.cm_req_msg* %0, %struct.sa_path_rec* %1, %struct.sa_path_rec* %2) #0 {
  %4 = alloca %struct.cm_req_msg*, align 8
  %5 = alloca %struct.sa_path_rec*, align 8
  %6 = alloca %struct.sa_path_rec*, align 8
  %7 = alloca i32, align 4
  store %struct.cm_req_msg* %0, %struct.cm_req_msg** %4, align 8
  store %struct.sa_path_rec* %1, %struct.sa_path_rec** %5, align 8
  store %struct.sa_path_rec* %2, %struct.sa_path_rec** %6, align 8
  %8 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %9 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SA_PATH_REC_TYPE_OPA, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %3
  %14 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %15 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %16 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ntohs(i32 %17)
  %19 = call i32 @sa_path_set_dlid(%struct.sa_path_rec* %14, i32 %18)
  %20 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %21 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %22 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ntohs(i32 %23)
  %25 = call i32 @sa_path_set_slid(%struct.sa_path_rec* %20, i32 %24)
  br label %39

26:                                               ; preds = %3
  %27 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %28 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %27, i32 0, i32 5
  %29 = call i32 @opa_get_lid_from_gid(i32* %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @sa_path_set_dlid(%struct.sa_path_rec* %30, i32 %31)
  %33 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %34 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %33, i32 0, i32 4
  %35 = call i32 @opa_get_lid_from_gid(i32* %34)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @sa_path_set_slid(%struct.sa_path_rec* %36, i32 %37)
  br label %39

39:                                               ; preds = %26, %13
  %40 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %41 = call i32 @cm_req_has_alt_path(%struct.cm_req_msg* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  br label %76

44:                                               ; preds = %39
  %45 = load %struct.sa_path_rec*, %struct.sa_path_rec** %6, align 8
  %46 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SA_PATH_REC_TYPE_OPA, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %44
  %51 = load %struct.sa_path_rec*, %struct.sa_path_rec** %6, align 8
  %52 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %53 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ntohs(i32 %54)
  %56 = call i32 @sa_path_set_dlid(%struct.sa_path_rec* %51, i32 %55)
  %57 = load %struct.sa_path_rec*, %struct.sa_path_rec** %6, align 8
  %58 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %59 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ntohs(i32 %60)
  %62 = call i32 @sa_path_set_slid(%struct.sa_path_rec* %57, i32 %61)
  br label %76

63:                                               ; preds = %44
  %64 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %65 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %64, i32 0, i32 1
  %66 = call i32 @opa_get_lid_from_gid(i32* %65)
  store i32 %66, i32* %7, align 4
  %67 = load %struct.sa_path_rec*, %struct.sa_path_rec** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @sa_path_set_dlid(%struct.sa_path_rec* %67, i32 %68)
  %70 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %71 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %70, i32 0, i32 0
  %72 = call i32 @opa_get_lid_from_gid(i32* %71)
  store i32 %72, i32* %7, align 4
  %73 = load %struct.sa_path_rec*, %struct.sa_path_rec** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @sa_path_set_slid(%struct.sa_path_rec* %73, i32 %74)
  br label %76

76:                                               ; preds = %43, %63, %50
  ret void
}

declare dso_local i32 @sa_path_set_dlid(%struct.sa_path_rec*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @sa_path_set_slid(%struct.sa_path_rec*, i32) #1

declare dso_local i32 @opa_get_lid_from_gid(i32*) #1

declare dso_local i32 @cm_req_has_alt_path(%struct.cm_req_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
