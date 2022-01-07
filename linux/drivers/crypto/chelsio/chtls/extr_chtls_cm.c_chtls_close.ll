; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 (%struct.sock*, i32)* }
%struct.chtls_sock = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_6__ = type { i64 }

@SHUTDOWN_MASK = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i32 0, align 4
@TCP_SYN_SENT = common dso_local global i32 0, align 4
@CPL_ABORT_SEND_RST = common dso_local global i32 0, align 4
@SOCK_LINGER = common dso_local global i32 0, align 4
@TCP_FIN_WAIT2 = common dso_local global i32 0, align 4
@CSK_ABORT_SHUTDOWN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chtls_close(%struct.sock* %0, i64 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.chtls_sock*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock* %9)
  store %struct.chtls_sock* %10, %struct.chtls_sock** %7, align 8
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = call i32 @lock_sock(%struct.sock* %11)
  %13 = load i32, i32* @SHUTDOWN_MASK, align 4
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load %struct.sock*, %struct.sock** %3, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 3
  %20 = call i32 @skb_queue_len(i32* %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.chtls_sock*, %struct.chtls_sock** %7, align 8
  %22 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i32 @skb_queue_len(i32* %23)
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load %struct.sock*, %struct.sock** %3, align 8
  %28 = call i32 @chtls_purge_recv_queue(%struct.sock* %27)
  %29 = load %struct.sock*, %struct.sock** %3, align 8
  %30 = call i32 @chtls_purge_receive_queue(%struct.sock* %29)
  %31 = load %struct.sock*, %struct.sock** %3, align 8
  %32 = getelementptr inbounds %struct.sock, %struct.sock* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @TCP_CLOSE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %2
  br label %81

37:                                               ; preds = %2
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = load %struct.sock*, %struct.sock** %3, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @TCP_SYN_SENT, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %40, %37
  %47 = load %struct.sock*, %struct.sock** %3, align 8
  %48 = load i32, i32* @CPL_ABORT_SEND_RST, align 4
  %49 = call i32 @chtls_send_reset(%struct.sock* %47, i32 %48, %struct.sk_buff* null)
  %50 = load %struct.sock*, %struct.sock** %3, align 8
  %51 = call i32 @release_tcp_port(%struct.sock* %50)
  br label %89

52:                                               ; preds = %40
  %53 = load %struct.sock*, %struct.sock** %3, align 8
  %54 = load i32, i32* @SOCK_LINGER, align 4
  %55 = call i64 @sock_flag(%struct.sock* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %52
  %58 = load %struct.sock*, %struct.sock** %3, align 8
  %59 = getelementptr inbounds %struct.sock, %struct.sock* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %57
  %63 = load %struct.sock*, %struct.sock** %3, align 8
  %64 = getelementptr inbounds %struct.sock, %struct.sock* %63, i32 0, i32 1
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32 (%struct.sock*, i32)*, i32 (%struct.sock*, i32)** %66, align 8
  %68 = load %struct.sock*, %struct.sock** %3, align 8
  %69 = call i32 %67(%struct.sock* %68, i32 0)
  br label %78

70:                                               ; preds = %57, %52
  %71 = load %struct.sock*, %struct.sock** %3, align 8
  %72 = call i64 @make_close_transition(%struct.sock* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load %struct.sock*, %struct.sock** %3, align 8
  %76 = call i32 @chtls_close_conn(%struct.sock* %75)
  br label %77

77:                                               ; preds = %74, %70
  br label %78

78:                                               ; preds = %77, %62
  br label %79

79:                                               ; preds = %78
  br label %80

80:                                               ; preds = %79
  br label %81

81:                                               ; preds = %80, %36
  %82 = load i64, i64* %4, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load %struct.sock*, %struct.sock** %3, align 8
  %86 = load i64, i64* %4, align 8
  %87 = call i32 @sk_stream_wait_close(%struct.sock* %85, i64 %86)
  br label %88

88:                                               ; preds = %84, %81
  br label %89

89:                                               ; preds = %88, %46
  %90 = load %struct.sock*, %struct.sock** %3, align 8
  %91 = getelementptr inbounds %struct.sock, %struct.sock* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %6, align 4
  %93 = load %struct.sock*, %struct.sock** %3, align 8
  %94 = call i32 @sock_hold(%struct.sock* %93)
  %95 = load %struct.sock*, %struct.sock** %3, align 8
  %96 = call i32 @sock_orphan(%struct.sock* %95)
  %97 = load %struct.sock*, %struct.sock** %3, align 8
  %98 = call i32 @release_sock(%struct.sock* %97)
  %99 = call i32 (...) @local_bh_disable()
  %100 = load %struct.sock*, %struct.sock** %3, align 8
  %101 = call i32 @bh_lock_sock(%struct.sock* %100)
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @TCP_CLOSE, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %89
  %106 = load %struct.sock*, %struct.sock** %3, align 8
  %107 = getelementptr inbounds %struct.sock, %struct.sock* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @TCP_CLOSE, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  br label %150

112:                                              ; preds = %105, %89
  %113 = load %struct.sock*, %struct.sock** %3, align 8
  %114 = getelementptr inbounds %struct.sock, %struct.sock* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @TCP_FIN_WAIT2, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %140

118:                                              ; preds = %112
  %119 = load %struct.sock*, %struct.sock** %3, align 8
  %120 = call %struct.TYPE_6__* @tcp_sk(%struct.sock* %119)
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %124, label %140

124:                                              ; preds = %118
  %125 = load %struct.sock*, %struct.sock** %3, align 8
  %126 = load i32, i32* @CSK_ABORT_SHUTDOWN, align 4
  %127 = call i32 @csk_flag(%struct.sock* %125, i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %140, label %129

129:                                              ; preds = %124
  %130 = load i32, i32* @GFP_ATOMIC, align 4
  %131 = call %struct.sk_buff* @alloc_skb(i32 4, i32 %130)
  store %struct.sk_buff* %131, %struct.sk_buff** %8, align 8
  %132 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %133 = icmp ne %struct.sk_buff* %132, null
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = load %struct.sock*, %struct.sock** %3, align 8
  %136 = load i32, i32* @CPL_ABORT_SEND_RST, align 4
  %137 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %138 = call i32 @chtls_send_reset(%struct.sock* %135, i32 %136, %struct.sk_buff* %137)
  br label %139

139:                                              ; preds = %134, %129
  br label %140

140:                                              ; preds = %139, %124, %118, %112
  %141 = load %struct.sock*, %struct.sock** %3, align 8
  %142 = getelementptr inbounds %struct.sock, %struct.sock* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @TCP_CLOSE, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %140
  %147 = load %struct.sock*, %struct.sock** %3, align 8
  %148 = call i32 @inet_csk_destroy_sock(%struct.sock* %147)
  br label %149

149:                                              ; preds = %146, %140
  br label %150

150:                                              ; preds = %149, %111
  %151 = load %struct.sock*, %struct.sock** %3, align 8
  %152 = call i32 @bh_unlock_sock(%struct.sock* %151)
  %153 = call i32 (...) @local_bh_enable()
  %154 = load %struct.sock*, %struct.sock** %3, align 8
  %155 = call i32 @sock_put(%struct.sock* %154)
  ret void
}

declare dso_local %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local i32 @chtls_purge_recv_queue(%struct.sock*) #1

declare dso_local i32 @chtls_purge_receive_queue(%struct.sock*) #1

declare dso_local i32 @chtls_send_reset(%struct.sock*, i32, %struct.sk_buff*) #1

declare dso_local i32 @release_tcp_port(%struct.sock*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i64 @make_close_transition(%struct.sock*) #1

declare dso_local i32 @chtls_close_conn(%struct.sock*) #1

declare dso_local i32 @sk_stream_wait_close(%struct.sock*, i64) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @sock_orphan(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local %struct.TYPE_6__* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @csk_flag(%struct.sock*, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @inet_csk_destroy_sock(%struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
