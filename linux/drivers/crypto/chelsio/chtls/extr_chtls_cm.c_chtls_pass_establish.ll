; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_pass_establish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_pass_establish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chtls_dev = type { i32 }
%struct.sk_buff = type { %struct.sock* }
%struct.sock = type { i32, i32 (%struct.sock*)*, %struct.chtls_sock* }
%struct.chtls_sock = type { i32, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.cpl_pass_establish = type { i32, i32, i32 }
%struct.listen_ctx = type { %struct.sock* }
%struct.TYPE_4__ = type { i32, %struct.chtls_dev* }

@RSS_HDR = common dso_local global i32 0, align 4
@CPL_RET_UNKNOWN_TID = common dso_local global i32 0, align 4
@CPL_RET_BUF_DONE = common dso_local global i32 0, align 4
@POLL_OUT = common dso_local global i32 0, align 4
@bl_add_pass_open_to_parent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.chtls_dev*, %struct.sk_buff*)* @chtls_pass_establish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chtls_pass_establish(%struct.chtls_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.chtls_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.cpl_pass_establish*, align 8
  %7 = alloca %struct.chtls_sock*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.chtls_dev* %0, %struct.chtls_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call %struct.cpl_pass_establish* @cplhdr(%struct.sk_buff* %13)
  %15 = load i32, i32* @RSS_HDR, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.cpl_pass_establish, %struct.cpl_pass_establish* %14, i64 %16
  store %struct.cpl_pass_establish* %17, %struct.cpl_pass_establish** %6, align 8
  %18 = load %struct.cpl_pass_establish*, %struct.cpl_pass_establish** %6, align 8
  %19 = call i32 @GET_TID(%struct.cpl_pass_establish* %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.chtls_dev*, %struct.chtls_dev** %4, align 8
  %21 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call %struct.sock* @lookup_tid(i32 %22, i32 %23)
  store %struct.sock* %24, %struct.sock** %9, align 8
  %25 = load %struct.sock*, %struct.sock** %9, align 8
  %26 = icmp ne %struct.sock* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @CPL_RET_UNKNOWN_TID, align 4
  %29 = load i32, i32* @CPL_RET_BUF_DONE, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %3, align 4
  br label %141

31:                                               ; preds = %2
  %32 = load %struct.sock*, %struct.sock** %9, align 8
  %33 = call i32 @bh_lock_sock(%struct.sock* %32)
  %34 = load %struct.sock*, %struct.sock** %9, align 8
  %35 = call i32 @sock_owned_by_user(%struct.sock* %34)
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = call i32 @kfree_skb(%struct.sk_buff* %39)
  br label %137

41:                                               ; preds = %31
  %42 = load %struct.sock*, %struct.sock** %9, align 8
  %43 = getelementptr inbounds %struct.sock, %struct.sock* %42, i32 0, i32 2
  %44 = load %struct.chtls_sock*, %struct.chtls_sock** %43, align 8
  store %struct.chtls_sock* %44, %struct.chtls_sock** %7, align 8
  %45 = load %struct.chtls_sock*, %struct.chtls_sock** %7, align 8
  %46 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %45, i32 0, i32 0
  store i32 64, i32* %46, align 8
  %47 = load %struct.chtls_sock*, %struct.chtls_sock** %7, align 8
  %48 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %47, i32 0, i32 1
  store i32 64, i32* %48, align 4
  %49 = load %struct.chtls_sock*, %struct.chtls_sock** %7, align 8
  %50 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %49, i32 0, i32 3
  store i64 0, i64* %50, align 8
  %51 = load %struct.sock*, %struct.sock** %9, align 8
  %52 = load %struct.cpl_pass_establish*, %struct.cpl_pass_establish** %6, align 8
  %53 = getelementptr inbounds %struct.cpl_pass_establish, %struct.cpl_pass_establish* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ntohl(i32 %54)
  %56 = load %struct.cpl_pass_establish*, %struct.cpl_pass_establish** %6, align 8
  %57 = getelementptr inbounds %struct.cpl_pass_establish, %struct.cpl_pass_establish* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ntohs(i32 %58)
  %60 = call i32 @make_established(%struct.sock* %51, i32 %55, i32 %59)
  %61 = load %struct.cpl_pass_establish*, %struct.cpl_pass_establish** %6, align 8
  %62 = getelementptr inbounds %struct.cpl_pass_establish, %struct.cpl_pass_establish* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ntohl(i32 %63)
  %65 = call i32 @PASS_OPEN_TID_G(i32 %64)
  store i32 %65, i32* %11, align 4
  %66 = load %struct.sock*, %struct.sock** %9, align 8
  %67 = getelementptr inbounds %struct.sock, %struct.sock* %66, i32 0, i32 1
  %68 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %67, align 8
  %69 = load %struct.sock*, %struct.sock** %9, align 8
  %70 = call i32 %68(%struct.sock* %69)
  %71 = load %struct.sock*, %struct.sock** %9, align 8
  %72 = getelementptr inbounds %struct.sock, %struct.sock* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %41
  %77 = load %struct.sock*, %struct.sock** %9, align 8
  %78 = load i32, i32* @POLL_OUT, align 4
  %79 = call i32 @sk_wake_async(%struct.sock* %77, i32 0, i32 %78)
  br label %80

80:                                               ; preds = %76, %41
  %81 = load %struct.chtls_dev*, %struct.chtls_dev** %4, align 8
  %82 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i8* @lookup_stid(i32 %83, i32 %84)
  store i8* %85, i8** %12, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = bitcast i8* %86 to %struct.listen_ctx*
  %88 = getelementptr inbounds %struct.listen_ctx, %struct.listen_ctx* %87, i32 0, i32 0
  %89 = load %struct.sock*, %struct.sock** %88, align 8
  store %struct.sock* %89, %struct.sock** %8, align 8
  %90 = load %struct.sock*, %struct.sock** %8, align 8
  %91 = call i32 @bh_lock_sock(%struct.sock* %90)
  %92 = load %struct.chtls_sock*, %struct.chtls_sock** %7, align 8
  %93 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %92, i32 0, i32 2
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = call i32 @skb_queue_empty(i32* %95)
  %97 = call i64 @unlikely(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %80
  %100 = load %struct.sock*, %struct.sock** %8, align 8
  %101 = call i32 @bh_unlock_sock(%struct.sock* %100)
  %102 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %103 = call i32 @kfree_skb(%struct.sk_buff* %102)
  br label %138

104:                                              ; preds = %80
  %105 = load %struct.sock*, %struct.sock** %8, align 8
  %106 = call i32 @sock_owned_by_user(%struct.sock* %105)
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  %110 = call i64 @likely(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %104
  %113 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %114 = call i32 @kfree_skb(%struct.sk_buff* %113)
  %115 = load %struct.sock*, %struct.sock** %9, align 8
  %116 = load %struct.sock*, %struct.sock** %8, align 8
  %117 = load %struct.chtls_dev*, %struct.chtls_dev** %4, align 8
  %118 = call i32 @add_pass_open_to_parent(%struct.sock* %115, %struct.sock* %116, %struct.chtls_dev* %117)
  br label %134

119:                                              ; preds = %104
  %120 = load %struct.sock*, %struct.sock** %9, align 8
  %121 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %122 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %121, i32 0, i32 0
  store %struct.sock* %120, %struct.sock** %122, align 8
  %123 = load %struct.chtls_dev*, %struct.chtls_dev** %4, align 8
  %124 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %125 = call %struct.TYPE_4__* @BLOG_SKB_CB(%struct.sk_buff* %124)
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  store %struct.chtls_dev* %123, %struct.chtls_dev** %126, align 8
  %127 = load i32, i32* @bl_add_pass_open_to_parent, align 4
  %128 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %129 = call %struct.TYPE_4__* @BLOG_SKB_CB(%struct.sk_buff* %128)
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  store i32 %127, i32* %130, align 8
  %131 = load %struct.sock*, %struct.sock** %8, align 8
  %132 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %133 = call i32 @__sk_add_backlog(%struct.sock* %131, %struct.sk_buff* %132)
  br label %134

134:                                              ; preds = %119, %112
  %135 = load %struct.sock*, %struct.sock** %8, align 8
  %136 = call i32 @bh_unlock_sock(%struct.sock* %135)
  br label %137

137:                                              ; preds = %134, %38
  br label %138

138:                                              ; preds = %137, %99
  %139 = load %struct.sock*, %struct.sock** %9, align 8
  %140 = call i32 @bh_unlock_sock(%struct.sock* %139)
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %138, %27
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local %struct.cpl_pass_establish* @cplhdr(%struct.sk_buff*) #1

declare dso_local i32 @GET_TID(%struct.cpl_pass_establish*) #1

declare dso_local %struct.sock* @lookup_tid(i32, i32) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @make_established(%struct.sock*, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @PASS_OPEN_TID_G(i32) #1

declare dso_local i32 @sk_wake_async(%struct.sock*, i32, i32) #1

declare dso_local i8* @lookup_stid(i32, i32) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @add_pass_open_to_parent(%struct.sock*, %struct.sock*, %struct.chtls_dev*) #1

declare dso_local %struct.TYPE_4__* @BLOG_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @__sk_add_backlog(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
