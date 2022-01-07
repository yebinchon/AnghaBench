; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_select_mss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_select_mss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chtls_sock = type { %struct.chtls_dev*, %struct.sock* }
%struct.chtls_dev = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.sock = type { i32 }
%struct.cpl_pass_accept_req = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.dst_entry = type { i32 }
%struct.tcp_sock = type { i32 }
%struct.TYPE_6__ = type { i32 }

@TCPOLEN_TIMESTAMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.chtls_sock*, i32, %struct.cpl_pass_accept_req*)* @chtls_select_mss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chtls_select_mss(%struct.chtls_sock* %0, i32 %1, %struct.cpl_pass_accept_req* %2) #0 {
  %4 = alloca %struct.chtls_sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpl_pass_accept_req*, align 8
  %7 = alloca %struct.chtls_dev*, align 8
  %8 = alloca %struct.dst_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tcp_sock*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.sock*, align 8
  store %struct.chtls_sock* %0, %struct.chtls_sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.cpl_pass_accept_req* %2, %struct.cpl_pass_accept_req** %6, align 8
  %15 = load %struct.cpl_pass_accept_req*, %struct.cpl_pass_accept_req** %6, align 8
  %16 = getelementptr inbounds %struct.cpl_pass_accept_req, %struct.cpl_pass_accept_req* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @ntohs(i32 %18)
  store i32 %19, i32* %13, align 4
  %20 = load %struct.chtls_sock*, %struct.chtls_sock** %4, align 8
  %21 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %20, i32 0, i32 1
  %22 = load %struct.sock*, %struct.sock** %21, align 8
  store %struct.sock* %22, %struct.sock** %14, align 8
  %23 = load %struct.sock*, %struct.sock** %14, align 8
  %24 = call %struct.dst_entry* @__sk_dst_get(%struct.sock* %23)
  store %struct.dst_entry* %24, %struct.dst_entry** %8, align 8
  %25 = load %struct.chtls_sock*, %struct.chtls_sock** %4, align 8
  %26 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %25, i32 0, i32 0
  %27 = load %struct.chtls_dev*, %struct.chtls_dev** %26, align 8
  store %struct.chtls_dev* %27, %struct.chtls_dev** %7, align 8
  %28 = load %struct.sock*, %struct.sock** %14, align 8
  %29 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %28)
  store %struct.tcp_sock* %29, %struct.tcp_sock** %12, align 8
  store i32 0, i32* %9, align 4
  store i32 8, i32* %10, align 4
  %30 = load %struct.cpl_pass_accept_req*, %struct.cpl_pass_accept_req** %6, align 8
  %31 = getelementptr inbounds %struct.cpl_pass_accept_req, %struct.cpl_pass_accept_req* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %3
  %36 = load i32, i32* @TCPOLEN_TIMESTAMP, align 4
  %37 = call i64 @round_up(i32 %36, i32 4)
  %38 = load i32, i32* %9, align 4
  %39 = zext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %35, %3
  %43 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %44 = call i32 @dst_metric_advmss(%struct.dst_entry* %43)
  %45 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %46 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %48 = call i32 @USER_MSS(%struct.tcp_sock* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %42
  %51 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %52 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %55 = call i32 @USER_MSS(%struct.tcp_sock* %54)
  %56 = icmp ugt i32 %53, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %59 = call i32 @USER_MSS(%struct.tcp_sock* %58)
  %60 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %61 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %57, %50, %42
  %63 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %64 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %10, align 4
  %68 = sub i32 %66, %67
  %69 = icmp ugt i32 %65, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %62
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %10, align 4
  %73 = sub i32 %71, %72
  %74 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %75 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %70, %62
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %76
  %80 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %81 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp ugt i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load i32, i32* %13, align 4
  %87 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %88 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %85, %79, %76
  %90 = load %struct.chtls_dev*, %struct.chtls_dev** %7, align 8
  %91 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %90, i32 0, i32 0
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %9, align 4
  %97 = add i32 %95, %96
  %98 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %99 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %9, align 4
  %102 = sub i32 %100, %101
  %103 = call i32 @cxgb4_best_aligned_mtu(i32 %94, i32 %97, i32 %102, i32 8, i32* %11)
  %104 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %105 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* %10, align 4
  %107 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %108 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = sub i32 %109, %106
  store i32 %110, i32* %108, align 4
  %111 = load i32, i32* %5, align 4
  %112 = load %struct.sock*, %struct.sock** %14, align 8
  %113 = call %struct.TYPE_6__* @inet_csk(%struct.sock* %112)
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  store i32 %111, i32* %114, align 4
  %115 = load i32, i32* %11, align 4
  ret i32 %115
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.dst_entry* @__sk_dst_get(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @round_up(i32, i32) #1

declare dso_local i32 @dst_metric_advmss(%struct.dst_entry*) #1

declare dso_local i32 @USER_MSS(%struct.tcp_sock*) #1

declare dso_local i32 @cxgb4_best_aligned_mtu(i32, i32, i32, i32, i32*) #1

declare dso_local %struct.TYPE_6__* @inet_csk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
