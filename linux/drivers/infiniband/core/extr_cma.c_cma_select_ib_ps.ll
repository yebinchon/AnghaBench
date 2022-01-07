; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_select_ib_ps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_select_ib_ps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sockaddr_ib = type { i8*, i8* }
%struct.sockaddr = type { i32 }

@RDMA_IB_IP_PS_MASK = common dso_local global i32 0, align 4
@RDMA_PS_IB = common dso_local global i64 0, align 8
@RDMA_IB_IP_PS_IB = common dso_local global i32 0, align 4
@RDMA_PS_TCP = common dso_local global i64 0, align 8
@RDMA_IB_IP_PS_TCP = common dso_local global i32 0, align 4
@RDMA_PS_UDP = common dso_local global i64 0, align 8
@RDMA_IB_IP_PS_UDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*)* @cma_select_ib_ps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_select_ib_ps(%struct.rdma_id_private* %0) #0 {
  %2 = alloca %struct.rdma_id_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_ib*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %2, align 8
  store i32 0, i32* %3, align 4
  %8 = load %struct.rdma_id_private*, %struct.rdma_id_private** %2, align 8
  %9 = call i64 @cma_src_addr(%struct.rdma_id_private* %8)
  %10 = inttoptr i64 %9 to %struct.sockaddr_ib*
  store %struct.sockaddr_ib* %10, %struct.sockaddr_ib** %4, align 8
  %11 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %4, align 8
  %12 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @be64_to_cpu(i8* %13)
  %15 = load i32, i32* @RDMA_IB_IP_PS_MASK, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %4, align 8
  %18 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @be64_to_cpu(i8* %19)
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %7, align 4
  %23 = load %struct.rdma_id_private*, %struct.rdma_id_private** %2, align 8
  %24 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @RDMA_PS_IB, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %1
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @RDMA_IB_IP_PS_IB, align 4
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i32, i32* @RDMA_IB_IP_PS_IB, align 4
  store i32 %36, i32* %5, align 4
  %37 = load i64, i64* @RDMA_PS_IB, align 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %3, align 4
  br label %89

39:                                               ; preds = %29, %1
  %40 = load %struct.rdma_id_private*, %struct.rdma_id_private** %2, align 8
  %41 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @RDMA_PS_IB, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %53, label %46

46:                                               ; preds = %39
  %47 = load %struct.rdma_id_private*, %struct.rdma_id_private** %2, align 8
  %48 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @RDMA_PS_TCP, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %46, %39
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @RDMA_IB_IP_PS_TCP, align 4
  %56 = load i32, i32* %6, align 4
  %57 = and i32 %55, %56
  %58 = icmp eq i32 %54, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i32, i32* @RDMA_IB_IP_PS_TCP, align 4
  store i32 %60, i32* %5, align 4
  %61 = load i64, i64* @RDMA_PS_TCP, align 8
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %3, align 4
  br label %88

63:                                               ; preds = %53, %46
  %64 = load %struct.rdma_id_private*, %struct.rdma_id_private** %2, align 8
  %65 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @RDMA_PS_IB, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %77, label %70

70:                                               ; preds = %63
  %71 = load %struct.rdma_id_private*, %struct.rdma_id_private** %2, align 8
  %72 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @RDMA_PS_UDP, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %70, %63
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @RDMA_IB_IP_PS_UDP, align 4
  %80 = load i32, i32* %6, align 4
  %81 = and i32 %79, %80
  %82 = icmp eq i32 %78, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load i32, i32* @RDMA_IB_IP_PS_UDP, align 4
  store i32 %84, i32* %5, align 4
  %85 = load i64, i64* @RDMA_PS_UDP, align 8
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %83, %77, %70
  br label %88

88:                                               ; preds = %87, %59
  br label %89

89:                                               ; preds = %88, %35
  %90 = load i32, i32* %3, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %111

92:                                               ; preds = %89
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %4, align 8
  %95 = bitcast %struct.sockaddr_ib* %94 to %struct.sockaddr*
  %96 = call i32 @cma_port(%struct.sockaddr* %95)
  %97 = call i32 @ntohs(i32 %96)
  %98 = or i32 %93, %97
  %99 = call i8* @cpu_to_be64(i32 %98)
  %100 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %4, align 8
  %101 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %100, i32 0, i32 1
  store i8* %99, i8** %101, align 8
  %102 = load i32, i32* @RDMA_IB_IP_PS_MASK, align 4
  %103 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %4, align 8
  %104 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @be64_to_cpu(i8* %105)
  %107 = or i32 %102, %106
  %108 = call i8* @cpu_to_be64(i32 %107)
  %109 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %4, align 8
  %110 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %109, i32 0, i32 0
  store i8* %108, i8** %110, align 8
  br label %111

111:                                              ; preds = %92, %89
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i64 @cma_src_addr(%struct.rdma_id_private*) #1

declare dso_local i32 @be64_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @cma_port(%struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
