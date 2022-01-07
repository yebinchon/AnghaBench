; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_save_ib_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_save_ib_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.rdma_cm_id = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sa_path_rec = type { i32, i32, i32, i32, i32 }
%struct.sockaddr_ib = type { i32, i32, i32, i8*, i32, i64, i32 }

@AF_IB = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sockaddr*, %struct.sockaddr*, %struct.rdma_cm_id*, %struct.sa_path_rec*)* @cma_save_ib_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cma_save_ib_info(%struct.sockaddr* %0, %struct.sockaddr* %1, %struct.rdma_cm_id* %2, %struct.sa_path_rec* %3) #0 {
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.rdma_cm_id*, align 8
  %8 = alloca %struct.sa_path_rec*, align 8
  %9 = alloca %struct.sockaddr_ib*, align 8
  %10 = alloca %struct.sockaddr_ib*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store %struct.rdma_cm_id* %2, %struct.rdma_cm_id** %7, align 8
  store %struct.sa_path_rec* %3, %struct.sa_path_rec** %8, align 8
  %11 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %7, align 8
  %12 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = bitcast i32* %14 to %struct.sockaddr_ib*
  store %struct.sockaddr_ib* %15, %struct.sockaddr_ib** %9, align 8
  %16 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %17 = icmp ne %struct.sockaddr* %16, null
  br i1 %17, label %18, label %79

18:                                               ; preds = %4
  %19 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %20 = bitcast %struct.sockaddr* %19 to %struct.sockaddr_ib*
  store %struct.sockaddr_ib* %20, %struct.sockaddr_ib** %10, align 8
  %21 = load i8*, i8** @AF_IB, align 8
  %22 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %10, align 8
  %23 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %22, i32 0, i32 3
  store i8* %21, i8** %23, align 8
  %24 = load %struct.sa_path_rec*, %struct.sa_path_rec** %8, align 8
  %25 = icmp ne %struct.sa_path_rec* %24, null
  br i1 %25, label %26, label %49

26:                                               ; preds = %18
  %27 = load %struct.sa_path_rec*, %struct.sa_path_rec** %8, align 8
  %28 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %10, align 8
  %31 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.sa_path_rec*, %struct.sa_path_rec** %8, align 8
  %33 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %10, align 8
  %36 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %10, align 8
  %38 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %37, i32 0, i32 0
  %39 = load %struct.sa_path_rec*, %struct.sa_path_rec** %8, align 8
  %40 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %39, i32 0, i32 4
  %41 = call i32 @memcpy(i32* %38, i32* %40, i32 16)
  %42 = load %struct.sa_path_rec*, %struct.sa_path_rec** %8, align 8
  %43 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %10, align 8
  %46 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %45, i32 0, i32 6
  store i32 %44, i32* %46, align 8
  %47 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %10, align 8
  %48 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %47, i32 0, i32 5
  store i64 0, i64* %48, align 8
  br label %75

49:                                               ; preds = %18
  %50 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %9, align 8
  %51 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %10, align 8
  %54 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %9, align 8
  %56 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %10, align 8
  %59 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %9, align 8
  %61 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %10, align 8
  %64 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %9, align 8
  %66 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %10, align 8
  %69 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %68, i32 0, i32 6
  store i32 %67, i32* %69, align 8
  %70 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %9, align 8
  %71 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %70, i32 0, i32 5
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %10, align 8
  %74 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %73, i32 0, i32 5
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %49, %26
  %76 = call i32 @cpu_to_be64(i32 -1)
  %77 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %10, align 8
  %78 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 8
  br label %79

79:                                               ; preds = %75, %4
  %80 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %81 = icmp ne %struct.sockaddr* %80, null
  br i1 %81, label %82, label %107

82:                                               ; preds = %79
  %83 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %84 = bitcast %struct.sockaddr* %83 to %struct.sockaddr_ib*
  store %struct.sockaddr_ib* %84, %struct.sockaddr_ib** %10, align 8
  %85 = load i8*, i8** @AF_IB, align 8
  %86 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %10, align 8
  %87 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %86, i32 0, i32 3
  store i8* %85, i8** %87, align 8
  %88 = load %struct.sa_path_rec*, %struct.sa_path_rec** %8, align 8
  %89 = icmp ne %struct.sa_path_rec* %88, null
  br i1 %89, label %90, label %106

90:                                               ; preds = %82
  %91 = load %struct.sa_path_rec*, %struct.sa_path_rec** %8, align 8
  %92 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %10, align 8
  %95 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load %struct.sa_path_rec*, %struct.sa_path_rec** %8, align 8
  %97 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %10, align 8
  %100 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %10, align 8
  %102 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %101, i32 0, i32 0
  %103 = load %struct.sa_path_rec*, %struct.sa_path_rec** %8, align 8
  %104 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %103, i32 0, i32 0
  %105 = call i32 @memcpy(i32* %102, i32* %104, i32 16)
  br label %106

106:                                              ; preds = %90, %82
  br label %107

107:                                              ; preds = %106, %79
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
