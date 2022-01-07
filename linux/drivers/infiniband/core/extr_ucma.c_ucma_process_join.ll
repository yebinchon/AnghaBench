; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_ucma.c_ucma_process_join.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_ucma.c_ucma_process_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucma_file = type { i32 }
%struct.rdma_ucm_join_mcast = type { i64, i64, i32, i32, i32, i32 }
%struct.rdma_ucm_create_id_resp = type { i32 }
%struct.ucma_context = type { i32 }
%struct.ucma_multicast = type { i32, i32, i32, i32, i32 }
%struct.sockaddr = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RDMA_MC_JOIN_FLAG_FULLMEMBER = common dso_local global i64 0, align 8
@FULLMEMBER_JOIN = common dso_local global i32 0, align 4
@RDMA_MC_JOIN_FLAG_SENDONLY_FULLMEMBER = common dso_local global i64 0, align 8
@SENDONLY_FULLMEMBER_JOIN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@multicast_table = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucma_file*, %struct.rdma_ucm_join_mcast*, i32)* @ucma_process_join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucma_process_join(%struct.ucma_file* %0, %struct.rdma_ucm_join_mcast* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ucma_file*, align 8
  %6 = alloca %struct.rdma_ucm_join_mcast*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rdma_ucm_create_id_resp, align 4
  %9 = alloca %struct.ucma_context*, align 8
  %10 = alloca %struct.ucma_multicast*, align 8
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ucma_file* %0, %struct.ucma_file** %5, align 8
  store %struct.rdma_ucm_join_mcast* %1, %struct.rdma_ucm_join_mcast** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %15, 4
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOSPC, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %158

20:                                               ; preds = %3
  %21 = load %struct.rdma_ucm_join_mcast*, %struct.rdma_ucm_join_mcast** %6, align 8
  %22 = getelementptr inbounds %struct.rdma_ucm_join_mcast, %struct.rdma_ucm_join_mcast* %21, i32 0, i32 5
  %23 = bitcast i32* %22 to %struct.sockaddr*
  store %struct.sockaddr* %23, %struct.sockaddr** %11, align 8
  %24 = load %struct.rdma_ucm_join_mcast*, %struct.rdma_ucm_join_mcast** %6, align 8
  %25 = getelementptr inbounds %struct.rdma_ucm_join_mcast, %struct.rdma_ucm_join_mcast* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %28 = call i64 @rdma_addr_size(%struct.sockaddr* %27)
  %29 = icmp ne i64 %26, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %158

33:                                               ; preds = %20
  %34 = load %struct.rdma_ucm_join_mcast*, %struct.rdma_ucm_join_mcast** %6, align 8
  %35 = getelementptr inbounds %struct.rdma_ucm_join_mcast, %struct.rdma_ucm_join_mcast* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @RDMA_MC_JOIN_FLAG_FULLMEMBER, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @FULLMEMBER_JOIN, align 4
  %41 = call i32 @BIT(i32 %40)
  store i32 %41, i32* %13, align 4
  br label %55

42:                                               ; preds = %33
  %43 = load %struct.rdma_ucm_join_mcast*, %struct.rdma_ucm_join_mcast** %6, align 8
  %44 = getelementptr inbounds %struct.rdma_ucm_join_mcast, %struct.rdma_ucm_join_mcast* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @RDMA_MC_JOIN_FLAG_SENDONLY_FULLMEMBER, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @SENDONLY_FULLMEMBER_JOIN, align 4
  %50 = call i32 @BIT(i32 %49)
  store i32 %50, i32* %13, align 4
  br label %54

51:                                               ; preds = %42
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %158

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %39
  %56 = load %struct.ucma_file*, %struct.ucma_file** %5, align 8
  %57 = load %struct.rdma_ucm_join_mcast*, %struct.rdma_ucm_join_mcast** %6, align 8
  %58 = getelementptr inbounds %struct.rdma_ucm_join_mcast, %struct.rdma_ucm_join_mcast* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = call %struct.ucma_context* @ucma_get_ctx_dev(%struct.ucma_file* %56, i32 %59)
  store %struct.ucma_context* %60, %struct.ucma_context** %9, align 8
  %61 = load %struct.ucma_context*, %struct.ucma_context** %9, align 8
  %62 = call i64 @IS_ERR(%struct.ucma_context* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = load %struct.ucma_context*, %struct.ucma_context** %9, align 8
  %66 = call i32 @PTR_ERR(%struct.ucma_context* %65)
  store i32 %66, i32* %4, align 4
  br label %158

67:                                               ; preds = %55
  %68 = load %struct.ucma_file*, %struct.ucma_file** %5, align 8
  %69 = getelementptr inbounds %struct.ucma_file, %struct.ucma_file* %68, i32 0, i32 0
  %70 = call i32 @mutex_lock(i32* %69)
  %71 = load %struct.ucma_context*, %struct.ucma_context** %9, align 8
  %72 = call %struct.ucma_multicast* @ucma_alloc_multicast(%struct.ucma_context* %71)
  store %struct.ucma_multicast* %72, %struct.ucma_multicast** %10, align 8
  %73 = load %struct.ucma_multicast*, %struct.ucma_multicast** %10, align 8
  %74 = icmp ne %struct.ucma_multicast* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %67
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %12, align 4
  br label %151

78:                                               ; preds = %67
  %79 = load i32, i32* %13, align 4
  %80 = load %struct.ucma_multicast*, %struct.ucma_multicast** %10, align 8
  %81 = getelementptr inbounds %struct.ucma_multicast, %struct.ucma_multicast* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 4
  %82 = load %struct.rdma_ucm_join_mcast*, %struct.rdma_ucm_join_mcast** %6, align 8
  %83 = getelementptr inbounds %struct.rdma_ucm_join_mcast, %struct.rdma_ucm_join_mcast* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ucma_multicast*, %struct.ucma_multicast** %10, align 8
  %86 = getelementptr inbounds %struct.ucma_multicast, %struct.ucma_multicast* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load %struct.ucma_multicast*, %struct.ucma_multicast** %10, align 8
  %88 = getelementptr inbounds %struct.ucma_multicast, %struct.ucma_multicast* %87, i32 0, i32 2
  %89 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %90 = load %struct.rdma_ucm_join_mcast*, %struct.rdma_ucm_join_mcast** %6, align 8
  %91 = getelementptr inbounds %struct.rdma_ucm_join_mcast, %struct.rdma_ucm_join_mcast* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @memcpy(i32* %88, %struct.sockaddr* %89, i64 %92)
  %94 = load %struct.ucma_context*, %struct.ucma_context** %9, align 8
  %95 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ucma_multicast*, %struct.ucma_multicast** %10, align 8
  %98 = getelementptr inbounds %struct.ucma_multicast, %struct.ucma_multicast* %97, i32 0, i32 2
  %99 = bitcast i32* %98 to %struct.sockaddr*
  %100 = load i32, i32* %13, align 4
  %101 = load %struct.ucma_multicast*, %struct.ucma_multicast** %10, align 8
  %102 = call i32 @rdma_join_multicast(i32 %96, %struct.sockaddr* %99, i32 %100, %struct.ucma_multicast* %101)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %78
  br label %141

106:                                              ; preds = %78
  %107 = load %struct.ucma_multicast*, %struct.ucma_multicast** %10, align 8
  %108 = getelementptr inbounds %struct.ucma_multicast, %struct.ucma_multicast* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.rdma_ucm_create_id_resp, %struct.rdma_ucm_create_id_resp* %8, i32 0, i32 0
  store i32 %109, i32* %110, align 4
  %111 = load %struct.rdma_ucm_join_mcast*, %struct.rdma_ucm_join_mcast** %6, align 8
  %112 = getelementptr inbounds %struct.rdma_ucm_join_mcast, %struct.rdma_ucm_join_mcast* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @u64_to_user_ptr(i32 %113)
  %115 = call i64 @copy_to_user(i32 %114, %struct.rdma_ucm_create_id_resp* %8, i32 4)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %106
  %118 = load i32, i32* @EFAULT, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %12, align 4
  br label %131

120:                                              ; preds = %106
  %121 = load %struct.ucma_multicast*, %struct.ucma_multicast** %10, align 8
  %122 = getelementptr inbounds %struct.ucma_multicast, %struct.ucma_multicast* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.ucma_multicast*, %struct.ucma_multicast** %10, align 8
  %125 = call i32 @xa_store(i32* @multicast_table, i32 %123, %struct.ucma_multicast* %124, i32 0)
  %126 = load %struct.ucma_file*, %struct.ucma_file** %5, align 8
  %127 = getelementptr inbounds %struct.ucma_file, %struct.ucma_file* %126, i32 0, i32 0
  %128 = call i32 @mutex_unlock(i32* %127)
  %129 = load %struct.ucma_context*, %struct.ucma_context** %9, align 8
  %130 = call i32 @ucma_put_ctx(%struct.ucma_context* %129)
  store i32 0, i32* %4, align 4
  br label %158

131:                                              ; preds = %117
  %132 = load %struct.ucma_context*, %struct.ucma_context** %9, align 8
  %133 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.ucma_multicast*, %struct.ucma_multicast** %10, align 8
  %136 = getelementptr inbounds %struct.ucma_multicast, %struct.ucma_multicast* %135, i32 0, i32 2
  %137 = bitcast i32* %136 to %struct.sockaddr*
  %138 = call i32 @rdma_leave_multicast(i32 %134, %struct.sockaddr* %137)
  %139 = load %struct.ucma_multicast*, %struct.ucma_multicast** %10, align 8
  %140 = call i32 @ucma_cleanup_mc_events(%struct.ucma_multicast* %139)
  br label %141

141:                                              ; preds = %131, %105
  %142 = load %struct.ucma_multicast*, %struct.ucma_multicast** %10, align 8
  %143 = getelementptr inbounds %struct.ucma_multicast, %struct.ucma_multicast* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @xa_erase(i32* @multicast_table, i32 %144)
  %146 = load %struct.ucma_multicast*, %struct.ucma_multicast** %10, align 8
  %147 = getelementptr inbounds %struct.ucma_multicast, %struct.ucma_multicast* %146, i32 0, i32 0
  %148 = call i32 @list_del(i32* %147)
  %149 = load %struct.ucma_multicast*, %struct.ucma_multicast** %10, align 8
  %150 = call i32 @kfree(%struct.ucma_multicast* %149)
  br label %151

151:                                              ; preds = %141, %75
  %152 = load %struct.ucma_file*, %struct.ucma_file** %5, align 8
  %153 = getelementptr inbounds %struct.ucma_file, %struct.ucma_file* %152, i32 0, i32 0
  %154 = call i32 @mutex_unlock(i32* %153)
  %155 = load %struct.ucma_context*, %struct.ucma_context** %9, align 8
  %156 = call i32 @ucma_put_ctx(%struct.ucma_context* %155)
  %157 = load i32, i32* %12, align 4
  store i32 %157, i32* %4, align 4
  br label %158

158:                                              ; preds = %151, %120, %64, %51, %30, %17
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local i64 @rdma_addr_size(%struct.sockaddr*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local %struct.ucma_context* @ucma_get_ctx_dev(%struct.ucma_file*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ucma_context*) #1

declare dso_local i32 @PTR_ERR(%struct.ucma_context*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.ucma_multicast* @ucma_alloc_multicast(%struct.ucma_context*) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr*, i64) #1

declare dso_local i32 @rdma_join_multicast(i32, %struct.sockaddr*, i32, %struct.ucma_multicast*) #1

declare dso_local i64 @copy_to_user(i32, %struct.rdma_ucm_create_id_resp*, i32) #1

declare dso_local i32 @u64_to_user_ptr(i32) #1

declare dso_local i32 @xa_store(i32*, i32, %struct.ucma_multicast*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ucma_put_ctx(%struct.ucma_context*) #1

declare dso_local i32 @rdma_leave_multicast(i32, %struct.sockaddr*) #1

declare dso_local i32 @ucma_cleanup_mc_events(%struct.ucma_multicast*) #1

declare dso_local i32 @xa_erase(i32*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.ucma_multicast*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
